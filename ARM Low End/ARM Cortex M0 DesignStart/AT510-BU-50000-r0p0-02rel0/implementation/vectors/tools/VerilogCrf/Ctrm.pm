# -----------------------------------------------------------------------------
#  The confidential and proprietary information contained in this file may
#  only be used by a person authorised under and to the extent permitted
#  by a subsisting licensing agreement from ARM Limited.
# 
#             (C) COPYRIGHT 2008-2009 ARM Limited.
#                 ALL RIGHTS RESERVED
# 
#  This entire notice must be reproduced on all copies of this file
#  and copies of this file may only be made by a person if such person is
#  permitted to do so under the terms of a subsisting license agreement
#  from ARM Limited.
# 
#       RCS Information
# 
#       RCS Filename : $RCSfile:$
# 
#       Revision     : $Revision:$
# 
# -----------------------------------------------------------------------------

package VerilogCrf::Ctrm;
require 5.002;
require Exporter;
@ISA=qw(Exporter);
@EXPORT=qw(readctrmfile makectrmfile makecrfheader namerangeof namewidthof portnameof regnameof regnamerangeof regnamesliceof makeslice widthof);
use Carp;
use strict;

my($debug)=0;

################################################################
sub debugmsg {
  my($msg) = shift;
  print STDERR "$msg\n" if ($debug);
}

################################################################
sub readctrmfile {
  my($filename) = shift;
  my($self) = {};
  bless $self;
  croak "No filename given to ReadCtrm::ReadFile" unless $filename;
  open(CTRM, "<$filename") || croak "Unable to read $filename";
  my($state)='NONE';
  my($embeddedctrm)=0;

  CtrmLine: while (<CTRM>) {
    if (m@^[\#/!]+CTRM:\s*@) {
      $_=$';
      $embeddedctrm=1;
    }
    elsif ($embeddedctrm) {
      last CtrmLine;
    }
    # Remove comments
    s/[\#!].*//;
    # Split Ctrm (part of) line
    my(@words) = split;
    if (/^([A-Z]+):/) {
      $state=$1;
    }
    next CtrmLine unless $words[0] && $words[1];
    if ($words[0] eq 'CYCLE:') {
      $self->{CycleClk}=$words[1];
      if ($words[2] =~ m@/@) {
	$self->{CycleRising}=1;
      }
      if ($words[3] =~ /PRD\((\d+)\)/) {
	$self->{CyclePeriod}=$1;
      }
      else {
	die "Bad CYCLE: line";
      }
    }
    elsif ($state eq 'INPUTS') {
      my($name) = shift @words;
      debugmsg("Input signal $name");
      my($type) = shift @words;
      if ($type eq '<-') {
	my($tiedto) = shift @words;
	debugmsg(" tied to $tiedto");
	$type=shift @words;
      }
      unshift(@words, $type);
      readsigspecs($self->{Signals}->{$name} = {}, @words);
      push(@{$self->{Inputs}}, $name);
    }
    elsif ($state eq 'OUTPUTS') {
      my($name) = shift @words;
      debugmsg("Output signal $name");
      readsigspecs($self->{Signals}->{$name} = {}, @words);
      push(@{$self->{Outputs}}, $name);
    }
    elsif ($state eq 'BIDIRECTIONAL' || $state eq 'BIDIRECTIONALS') {
      my($name) = shift @words;
      debugmsg("Bidirectional signal $name");
      readsigspecs($self->{Signals}->{$name} = {}, @words);
      push(@{$self->{Bidirectionals}}, $name);
    }
    elsif ($state ne 'NONE') {
      die "Unknown keyword \"$state\" in $filename";
    }
  } # End CtrmLine

  close(CTRM);

  die "No CYCLE specification in $filename." unless $self->{CycleClk};

  my(%clockhash);
  my($sig);
  foreach $sig (@{$self->{Inputs}}, @{$self->{Outputs}}, @{$self->{Bidirectionals}}) {
    my($inputclock) = $self->{Signals}->{$sig}->{InputClock};
    $clockhash{$inputclock}++ if ($inputclock);
    my($outputclock) = $self->{Signals}->{$sig}->{OutputClock};
    $clockhash{$outputclock}++ if ($outputclock);
    my($directionclock) = $self->{Signals}->{$sig}->{DirectionClock};
    $clockhash{$directionclock}++ if ($directionclock);
  }
  $clockhash{$self->{CycleClk}}++;
  @{$self->{Clocks}} = sort keys %clockhash;

  #deletethisline die "No cycle specification in $filename" unless $self->{CycleClk};

  # Generate port list and information for formatting CRF files
  foreach (@{$self->{Inputs}}, @{$self->{Bidirectionals}}, '|', @{$self->{Outputs}}) {
    if ($_ eq '|') {
      push(@{$self->{Portlist}}, '|');
      next;
    }
    my($port, $upper, $lower) = &namerangeof($_);
    if (exists ${$self->{Portrange}}{$port}) {
      # Amalgamate bus range
      my($oldupper, $oldlower) = @{${$self->{Portrange}}{$port}};
      # Check for duplicate signal wire (urrrgh)
      die "$port: mixing bus slice and bare wire" if ($upper eq '' && $oldupper ne '' || $upper ne '' && $oldupper eq '');
      die "$port: mixing bus slice and bare wire" if ($lower eq '' && $oldlower ne '' || $lower ne '' && $oldlower eq '');
      if ($upper ne '' || $lower ne '') {
        $upper = $oldupper if ($oldupper > $upper);
        $lower = $oldlower if ($oldlower < $lower);
      }
    }
    else {
      push(@{$self->{Portlist}}, $port);
    }
    ${$self->{Portrange}}{$port} = [$upper, $lower];
    push(@{$self->{$port}->{BaseSignals}}, $_);
  }

  # Make CRF columns from this info
  @{$self->{CrfColumns}} = @{$self->{Portlist}};
  %{$self->{CrfColrange}} = %{$self->{Portrange}};

  foreach (@{$self->{Bidirectionals}}) {
    my($dirport) = 'dir'.&regnameof($_);
    push(@{$self->{Portlist}}, $dirport);
    ${$self->{Portrange}}{$dirport} = ['', ''];
  }

  foreach (@{$self->{Clocks}}) {
    if (!(exists ${$self->{Portrange}}{$_})) {
      push(@{$self->{Portlist}}, $_);
      ${$self->{Portrange}}{$_} = ['', ''];
    }
  }

  return $self;
}
################################################################

sub readsigspecs {
  my($sighashref) = shift;
  my($type);
  while ($type = shift) {
    if ($type eq '<I>') {
      my($clock) = shift;
      my($edge) = shift;
      debugmsg(" input clock=$clock edge=$edge");
      $sighashref->{InputClock} = $clock;
      $sighashref->{InputEdgeRising} = 1 if ($edge =~ m@/@);
    }
    elsif ($type eq '<O>') {
      my($clock) = shift;
      my($edge) = shift;
      debugmsg(" output clock=$clock edge=$edge");
      $sighashref->{OutputClock} = $clock;
      $sighashref->{OutputEdgeRising} = 1 if ($edge =~ m@/@);
    }
    elsif ($type eq '<D>') {
      my($clock) = shift;
      my($edge) = shift;
      debugmsg(" direction clock=$clock edge=$edge");
      $sighashref->{DirectionClock} = $clock;
      $sighashref->{DirectionEdgeRising} = 1 if ($edge =~ m@/@);
    }
    elsif ($type =~ /^(RT[Z01])/) {
      my($strobespec) = $1;
      my($timestring) = $' || shift;
      my($t1, $t2);
      if ($timestring =~ /\((\d+),(\d+)\)/) {
	($t1, $t2) = ($1, $2);
      }
      else {
	die "Unable to extract time value from $timestring";
      }
      debugmsg(" strobespec $strobespec $t1,$t2");
      $strobespec =~ s/RTZ/RT0/;
      $sighashref->{StrobeType} = $strobespec;
      $sighashref->{StrobeTime1} = $t1;
      $sighashref->{StrobeTime2} = $t2;
    }
    elsif ($type =~ /^NRZ/) {
      my($timestring) = $' || shift;
      my($time);
      if ($timestring =~ /\((\d+)\)/) {
	$time=$1;
      }
      else {
	die "Unable to extract time value from $timestring";
      }
      debugmsg(" strobespec NRZ at time $time");
      $sighashref->{StrobeType} = 'NRZ';
      $sighashref->{StrobeTime} = $time;
    }
    elsif ($type =~ /^CHK/) {
      my($timestring) = $' || shift;
      my($time);
      if ($timestring =~ /\((\d+)\)/) {
	$time=$1;
      }
      else {
	die "Unable to extract time value from $timestring";
      }
      debugmsg(" check at time $time");
      $sighashref->{CheckTime} = $time;
    }
    else {
      die "Unknown signal attribute \"$type\"";
    }
  }
}

sub edgechar {
  my($rising) = shift;
  $rising ? '/' : '\\';
}

sub makectrmfile {
  my($ctrm) = shift;
  my(@lines);
  push(@lines, "CYCLE: $ctrm->{CycleClk} (".&edgechar($ctrm->{CycleRising}).") PRD($ctrm->{CyclePeriod})");
  my($sig);

  push(@lines, 'INPUTS:');
  foreach $sig (@{$ctrm->{Inputs}}) {
    my($strobe) = $ctrm->{Signals}->{$sig}->{StrobeType};
    my($strobetimes);
    if ($ctrm->{Signals}->{$sig}->{StrobeType} =~ /NRZ/i) {
      $strobetimes = $ctrm->{Signals}->{$sig}->{StrobeTime};
    }
    else {
      $strobetimes = $ctrm->{Signals}->{$sig}->{StrobeTime1}.",".$ctrm->{Signals}->{$sig}->{StrobeTime2};
    }
    push(@lines, "$sig <I> ".$ctrm->{Signals}->{$sig}->{InputClock}." (".&edgechar($ctrm->{Signals}->{$sig}->{InputEdgeRising}).") $strobe(".$strobetimes.")");
  }

  push(@lines, 'BIDIRECTIONALS:');
  foreach $sig (@{$ctrm->{Bidirectionals}}) {
    my($strobe) = $ctrm->{Signals}->{$sig}->{StrobeType};
    my($strobetimes);
    if ($ctrm->{Signals}->{$sig}->{StrobeType} =~ /NRZ/i) {
      $strobetimes = $ctrm->{Signals}->{$sig}->{StrobeTime};
    }
    else {
      $strobetimes = $ctrm->{Signals}->{$sig}->{StrobeTime1}.",".$ctrm->{Signals}->{$sig}->{StrobeTime2};
    }
    push(@lines, "$sig <I> ".$ctrm->{Signals}->{$sig}->{InputClock}." (".&edgechar($ctrm->{Signals}->{$sig}->{InputEdgeRising}).") <O> ".$ctrm->{Signals}->{$sig}->{OutputClock}." (".&edgechar($ctrm->{Signals}->{$sig}->{OutputEdgeRising}).") <D> ".$ctrm->{Signals}->{$sig}->{DirectionClock}." (".&edgechar($ctrm->{Signals}->{$sig}->{DirectionEdgeRising}).") $strobe(".$strobetimes.")").") CHK(".$ctrm->{Signals}->{$sig}->{CheckTime};
  }

  push(@lines, 'OUTPUTS:');
  foreach $sig (@{$ctrm->{Outputs}}) {
    my($strobe) = $ctrm->{Signals}->{$sig}->{StrobeType};
    push(@lines, "$sig <O> ".$ctrm->{Signals}->{$sig}->{OutputClock}." (".&edgechar($ctrm->{Signals}->{$sig}->{OutputEdgeRising}).") CHK(".$ctrm->{Signals}->{$sig}->{CheckTime}.")");
  }

  return @lines;
}

sub makecrfheader {
  my($ctrm) = shift;
  my(@outlines);
  my($tabwidth) = 0;
  my(%width);
  my($hdrheight) = 0;
  my($i);
  my($divider) = '';
  
  foreach ($ctrm->makectrmfile) {
    push(@outlines, "#CTRM: $_");
  }

  foreach (@{$ctrm->{CrfColumns}}) {
    if ($_ eq '|') {
      $divider .= '|-';
      $tabwidth += 2;
      next;
    }
    my($portname) = $_;
    my($upper, $lower) = @{${$ctrm->{CrfColrange}}{$portname}};
    my($width) = $upper eq '' ? 1 : $upper-$lower+1;
    $tabwidth += $width+1;
    $width{$_} = $width;
    $divider .= '-' x ($width+1);
  }
  #$tabwidth += 4; # for dividers
  push(@outlines, $divider);

  foreach (@{$ctrm->{CrfColumns}}) {
    $hdrheight=length($_) if (length($_) > $hdrheight);
  }

  for ($i=$hdrheight-1; $i>=0; $i--) {
    my($line) = '';
    foreach (@{$ctrm->{CrfColumns}}) {
      if ($_ eq '|') {
	$line .= '| ';
      }
      else {
	$line .= (' ' x ($width{$_}-1)) . (length($_) > $i ? substr($_, length($_)-$i-1, 1) : ' ' ) . ' ';
      }
    }
    push(@outlines, $line);
  }
  push(@outlines, $divider);

  my($indexlines)=0;
  foreach (@{$ctrm->{CrfColumns}}) {
    next if $_ eq '|';
    my($lines) = int(log($width{$_})/log(10)) + 1; # This is excessive!
    $indexlines = ($lines > $indexlines) ? $lines : $indexlines;
  }
  if ($indexlines) {
    my(@indexlines);
    for ($i=0; $i<$indexlines; $i++) {
      $indexlines[$i] = '';
    }
    foreach (@{$ctrm->{CrfColumns}}) {
      #&addindex($_, \@indexlines, \%width);
      my($upper, $lower, $width) = $_ eq '|' ? (0, 0, 1) : (@{${$ctrm->{CrfColrange}}{$_}}, $width{$_});
      for ($i=$width-1; $i>=-1; $i--) {
        my($j);
        for ($j=0; $j<$indexlines; $j++) {
	  if ($_ eq '|') {
	    $indexlines[$j].= $i ? ' ' : '|';
	  }
          elsif ($i==-1) {
            $indexlines[$j].= ' ';
          }
          else {
	    my($digit); 
	    if ($width{$_} == 1){
	      $digit = ' ';
	    }
	    else {
	      my($index) = $lower+$i;
	      my($divisor) = (10**($indexlines-$j-1));
	      if (($index > 0 || $divisor > 1) && $index < $divisor) {
		$digit = ' ';
	      }
	      else {
		$digit = int($index/$divisor) % 10;
	      }
	    }
            $indexlines[$j].= $digit;
          }
        }
      }
    }
    @outlines = (@outlines, @indexlines);
  }
  push(@outlines, $divider);

  return @outlines;
}

# Useful functions

sub namerangeof {
  my($sig) = @_;
  if ($sig =~ /\[(\d+):(\d+)\]/) {
    ($`, $1, $2);
  }
  elsif ($sig =~ /\[(\d+)\]/) {
    ($`, $1, $1);
  }
  else {
    ($sig, '', '');
  }
}

sub namewidthof {
  my($name, $upper, $lower) = &namerangeof($_[0]);
  ($name, &widthof($_[0]));
}

sub widthof {
  my($name, $upper, $lower) = &namerangeof($_[0]);
  if ($upper ne '' || $lower ne '') {
    $upper-$lower+1;
  }
  else {
    1;
  }
}

sub portnameof {
  my($name) = &namerangeof($_[0]);
  $name;
}

sub regnameof {
  my($name, $upper, $lower) = &namerangeof($_[0]);
  if ($upper ne '' || $lower ne '') {
    &sanitisebus($name, $upper, $lower);
  }
  else {
    $name;
  }
}

sub sanitisebus {
  my($stem, $upper, $lower) = @_;
  if ($upper eq '' || $lower eq '') {
    "";
  }
  elsif ($upper == $lower) {
    "${stem}__$upper";
  }
  else {
    "${stem}__${upper}_$lower";
  }
}

sub regnamerangeof {
  my($name, $upper, $lower) = &namerangeof($_[0]);
  if ($upper ne '' || $lower ne '') {
    (&sanitisebus($name, $upper, $lower), $upper, $lower);
  }
  else {
    ($name, '', '');
  }
}

sub regnamesliceof {
  my($name, $upper, $lower) = &namerangeof($_[0]);
  if ($upper ne '' || $lower ne '') {
    (&sanitisebus($name, $upper, $lower), $upper == $lower ? "[$upper]" : "[$upper:$lower]");
  }
  else {
    ($name, '');
  }
}

sub makeslice {
  my($upper, $lower) = @_;
  if ($upper ne '' || $lower ne '') {
    if ($upper == $lower) {
      "[$upper]";
    }
    else {
      "[$upper:$lower]";
    }
  }
  else {
    '';
  }
}

1;
__END__

=head1 NAME

VerilogCrf::Ctrm - (perl package) use CTRM file data

readctrmfile - read a CTRM file to an object

makectrmfile - regenerate the CTRM file representation

makecrfheader - generate a CRF header from CTRM

namerangeof - extract signal name and bus indices from a CTRM entry

namewidthof - extract signal name and bus width from a CTRM entry

portnameof - extract port name from a CTRM entry

regnameof - extract a valid single-bit signal name from a CTRM entry

regnamerangeof - as regnameof, also bus indicies

regnamesliceof - as regnameof, also bus indices formatted as Verilog

makeslice - format upper and lower bus indices to verilog slice

=head1 SYNOPSIS

 use VerilogCrf::Ctrm;

 my($ctrm) = &readctrmfile('my.ctrm');
 @ctrmlines = $ctrm->makectrmfile;
 @crfheaderlines = $ctrm->makecrfheader;

 ($name, $upper, $lower) = &namerangeof("foo[3:1]"); # "foo", 3, 1
 ($name, $width) = &namewidthof("foo[3:1]"); # "foo", 3
 $name = &portnameof("foo[3:1]"); # "foo"
 $rname = &regnameof("foo[3:1]"); # "foo__3_1"
 ($rname, $upper, $lower) = &regnamerangeof("foo[3:1]"); # "foo__3_1", 3, 1
 ($rname, $slice) = &regnamesliceof("foo[3:1]"); # "foo__3_1", "[3:1]"
 $slice = &makeslice(3, 1); # "[3:1]"

=head1 DESCRIPTION

readctrmfile() returns a B<Ctrm> object containing the data in a ctrm
file (or embedded ctrm data in a crf/vrf file). This object has two
methods: makectrmfile() returns an array of lines which make up a
matching I<ctrm> file and makecrfheader() returns an array of lines
which make up a matching I<crf> header.

The remaining functions are utilities for parsing a signal name as
written in a I<ctrm> file to a Perl representation.

=head1 DATA OBJECT

The B<Ctrm> object is a hash, and contains the following entries:

I<Inputs>, I<Bidirectionals> and I<Outputs> are array references
pointing to a list of I<ctrm> signal names, directly from the I<ctrm>
file. They may be a single signal, a single bus element or a bus
slice. Each entry is raw from the I<ctrm> file, so looks like Verilog
syntax, e.g. C<"foo[3:1]">.

Each of the three arrays is in order from the I<ctrm> file, so:

    (@{$ctrm->{Inputs}}, @{$ctrm->{Bidirectionals}}, \
      @{$ctrm->{Outputs}})

will regenerate the original signal ordering from the I<ctrm> file.

I<Clocks> is an array reference pointing to a list of all clocks
referenced in the I<ctrm> file.

I<Signals> is a hash reference pointing to a hash of all the signals
listed in the I<ctrm> file: these point to fuirther hashes giving the
data for each signal. So, if "foo[3:1]" is declared in the B<INPUTS:>
section of the I<ctrm> file, then its information can be retrieved using:

 $siginfo = $ctrm->{Signals}->{"foo[3:1]"}; # $siginfo is a HASHREF

Each signal hash contains some of the following elements:

I<InputClock> - clock to sample input on

I<InputEdgeRising> - if non-null, sample input on rising edge of
I<InputClock>

I<OutputClock> - clock to sample output on

I<OutputEdgeRising> - if non-null, sample output on rising edge of
I<OutputClock> 

I<DirectionClock> - clock to sample direction of a bidirectional on

I<DirectionEdgeRising> - if non-null, sample direction on rising edge
of I<DirectionClock>

I<StrobeType> - one of "NRZ", "RT0", "RT1"

I<StrobeTime1> - time to reapply input

I<StrobeTime2> - for "RT0" and "RT1" modulations, time to return to
0 or 1 as applicable

I<CheckTime> - time to check output

The B<Ctrm> object also contains the necessary information to
reassemble the port list of the block.

The B<Ctrm> hash member I<CrfColumns> is an array reference pointing
to a list of I<crf> column names (i.e. block port names), and the
B<Ctrm> hash member I<CrfColrange> is a hash reference for finding the
bus ranges of each port. The keys of I<CrfColrange> are port names,
and the values are array references pointing to two-element arrays,
one containing the upper limit and one the lower limit.

This information can be seen as follows:

    foreach $port ($ctrm->{CrfColumns}) {
      ($upper, $lower) = @{$ctrm->{CrfColrange}->{$port}};
      print $port, &makeslice($upper, $lower), "\n";
    }

The B<Ctrm> hash members I<Portlist> and I<Portrange> are similar, but
include entries for bidirectional direction signals and clocks not
captured in the I<crf>.

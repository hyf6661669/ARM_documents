#!/usr/bin/perl -w
################################################################################
# Copyright Notice and Proprietary Information
# 
# Copyright (c)2007-2009 ARM Limited and Cadence Design Systems, Inc. All rights reserved.
# 
# The accompanying software and documentation contain confidential and 
# proprietary information that is the property of ARM Limited and its 
# licensors.  No part of the software or documentation may be reproduced, 
# transmitted, or translated in any form or by any means, electronic, 
# mechanical, optical or otherwise without the prior written permission 
# of ARM Limited.  Please refer to the license agreement under which you 
# received this software for details on your applicable license rights, 
# restrictions and conditions which shall control over the terms set 
# forth herein.
# 
# Right to Copy Documentation
# Except with the prior written permission of ARM Limited copies of the 
# documentation shall only be made for internal use.
# 
# Disclaimer
# THE ACCOMPANYING SOFTWARE AND DOCUMENTATION IS PROVIDED "AS IS" WITHOUT 
# WARRANTY OF ANY KIND.  ARM LIMITED AND ITS LICENSORS HEREBY DISCLAIM 
# ALL EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, 
# TITLE, AND NON INFRINGEMENT. 
# 
# IN NO EVENT SHALL ARM LIMITED OR ITS LICENSORS BE LIABLE TO YOU OR ANY 
# OTHER PARTY FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, 
# OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR 
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR 
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THE ACCOMPANYING 
# SOFTWARE OR DOCUMENTATION, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH 
# DAMAGE.
#  
################################################################################
# RM Version: CORTEXM0 Encounter7.1usr2 RTL_VERSION
################################################################################
# File Name      :cortexm0_gen_vsrc_from_encounter.pl
# RM Release     :RTL_VERSION
# Purpose        :perl script to convert voltage sources from encounter 
#                 to vstorm format
#
# RM version     :7.1.2
# 
################################################################################

# ------------------------------------------------------------
use diagnostics;
use strict;
use English;
use Getopt::Long;
# ------------------------------------------------------------

if ( ( $#ARGV < 3 ) || ( $ARGV[0] eq "-h" ) ) {

    warn "\nUsage:\n\n";
    warn " gen_vsrc_from_encounter.pl <qrc_cmd_file> <input pp file> <output vsrc file> <prefix>\n\n";
    warn " Example:\n";
    warn " gen_vsrc_from_encounter.pl ../scripts/cortexm0_qrc.tcl cortexm0_VDD.pp cortexm0_VDD.vsrc VDD\n\n";
    exit 0;
}

my $qrc_cmd    = $ARGV[0];
my $fe_padfile = $ARGV[1];
my $vsrc_file  = $ARGV[2];
my $prefix     = $ARGV[3];
my %layer_names;
my $line_num = 1;
my $x_loc;
my $y_loc;
my $layer;
my $line;
my $vs_poly_layer_name;
my $lef_layer_name;
my $lef_layer_number;
my $vs_metal_layer_name;
my $lef_metal_layer_name;

#print "Opening the QRC LayerMap file\n";

open QRC,"<$qrc_cmd" or die "Cannot open $qrc_cmd: $!";
LINE: while($line = <QRC>) {
     chomp $line;

    # looking for lines like this
    # extraction_setup \
    #         -technology_layer_map \
    #                "POLY1" "poly" \
    #                "M1" "metal1" \
    #                "VIA1" "VIA1" \
    #                "M2" "metal2" \
    #                "VIA2" "VIA2" \
    #                "M3" "metal3" \
    #                "VIA3" "VIA3" \
    #                "M4" "metal4" \
    #                "VIA4" "VIA4" \
    #                "M5" "metal5" \
    #                "VIA5" "VIA5" \
    #                "M6" "metal6" \
    #                "VIA6" "VIA6" \
    #                "M7" "metal7" \
    #                "VIA7" "VIA7" \
    #                "M8" "metal8" \
    #        -max_fracture_length 50

     if ($line =~ /\\$/) {   # deal with \ continuation lines
	 $line .= <QRC>;
	 redo LINE;
     }
    
     # remove the backslahes
     $line =~ s/\\//g;

    # ($line =~ /^extraction_setup\s+-technology_layer_map\s+\"(\S+)\"\s+\"(\S+)\"\s+\"(\S+)\d+\"\s+\"(\S+)\d+\"/)
    if ($line =~ /\s+\"(\S+)\"\s+\"(\S+)\"\s+\"(\S+)\d+\"\s+\"(\S+)\d+\"\s+-max_fracture_length\s+\d+$/) {
        #$lefdef_poly_layer_name  = $1;
        #$vs_poly_layer_name      = $2;
        #$lefdef_metal_layer_name = $3;
        $vs_metal_layer_name     = $4;
        #print "Found VS poly layer = $vs_poly_layer_name  Equivalent LEFDEF poly layer:  $lefdef_poly_layer_name\n";
        #print "Found VS metal layer= $vs_metal_layer_name Equivalent LEFDEF metal layer: $lefdef_metal_layer_name\n";
    }
}
close(QRC);
#print "Closed the QRC Layermap file\n";

open IN,"<$fe_padfile" or die "Cannot open $fe_padfile: $!";
open OUT,">$vsrc_file";

#print "Now Opening the Encounter Power pin location file\n";
while($line = <IN>) {
    chomp $line;
    # looking for lines like this
    #        2.050000          2.050000       M7
    if ($line =~ /^\s+(\d+\.\d+)\s+(\d+\.\d+)\s+(\S+)(\d+)/) {
        $x_loc = $1;
        $y_loc = $2;
        $lef_layer_name = $3;
        $lef_layer_number = $4;
        printf OUT "${prefix}_$line_num\t$x_loc\t$y_loc\t$vs_metal_layer_name$lef_layer_number\n";
        #print "Found LEFDEF metal layer= $lef_layer_name$lef_layer_number VS equivalent: $vs_metal_layer_name$lef_layer_number\n";
        $line_num++;
    } else {
        print OUT "$line\n";
    }
}
#print "Closed the Encounter Power Pin location file\n";
close(IN);
close(OUT);

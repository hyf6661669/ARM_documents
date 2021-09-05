; Define the wire tracks.
;

setCaseSensitive #t

geOpenLib
    setFormField "Open Library" "Library Name" "tsmc090adg"
    formOK "Open Library"

axgDefineWireTracks
    setFormField "Define Wire Track" "Poly Offset" 0.0
    setFormField "Define Wire Track" "M1 Offset" 0.140
    setFormField "Define Wire Track" "M2 Offset" 0.140
    setFormField "Define Wire Track" "M3 Offset" 0.140
    setFormField "Define Wire Track" "M4 Offset" 0.140
    setFormField "Define Wire Track" "M5 Offset" 0.140
    setFormField "Define Wire Track" "M6 Offset" 0.140
    setFormField "Define Wire Track" "M7 Offset" 0.140
    setFormField "Define Wire Track" "M8 Offset" 0.140
    setFormField "Define Wire Track" "M9 Offset" 0.140 
    setFormField "Define Wire Track" "m1Dir" "horizontal"
    setFormField "Define Wire Track" "m2Dir" "vertical"
    setFormField "Define Wire Track" "m3Dir" "horizontal"
    setFormField "Define Wire Track" "m4Dir" "vertical"
    setFormField "Define Wire Track" "m5Dir" "horizontal"
    setFormField "Define Wire Track" "m6Dir" "vertical"
    setFormField "Define Wire Track" "m7Dir" "horizontal"
    setFormField "Define Wire Track" "m8Dir" "vertical"
    setFormField "Define Wire Track" "m9Dir" "horizontal"
    formOK "Define Wire Track"

axgCheckWireTrack
    setFormField "Check Wire Track" "Library Name" "tsmc090adg"
    setFormField "Check Wire Track" "allOrN" "All Cells"
    formOK "Check Wire Track"

geCloseLib
exit

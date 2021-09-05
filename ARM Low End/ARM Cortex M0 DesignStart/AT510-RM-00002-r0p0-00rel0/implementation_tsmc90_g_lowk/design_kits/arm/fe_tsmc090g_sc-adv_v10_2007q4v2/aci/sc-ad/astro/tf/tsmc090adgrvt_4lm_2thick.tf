/*************************************************************************/
/*                                                                       */
/* Resistance and Capacitance Values                                     */
/* ---------------------------------                                     */
/* The Astro technology files included in this directory contain         */
/* resistance and capacitance (RC) values for the purpose of timing      */
/* driven place & route.  Please note that the RC values contained in    */
/* this tech file were created using the worst case interconnect models  */
/* from the foundry and assume a full metal route at every grid location */
/* on every metal layer, so the values are intentionally very            */
/* conservative. It is assumed that this technology file will be used    */
/* only as a starting point for creating initial timing driven place &   */
/* route runs during the development of your own more accurate RC        */
/* values, tailored to your specific place & route environment. AS A     */
/* RESULT, TIMING NUMBERS DERIVED FROM THESE RC VALUES MAY BE            */
/* SIGNIFICANTLY SLOWER THAN REALITY.                                    */
/*                                                                       */
/* The RC values used in the Astro technology file are to be used only   */
/* for timing driven place and route. Due to accuracy limitations,       */
/* please do not attempt to use this file for chip-level RC extraction   */
/* in conjunction with your sign-off timing simulations. For chip-level  */
/* extraction, please use a dedicated extraction tool such as starRC,    */
/* HyperExtract or Simplex, etc.                                         */
/*                                                                       */
/*************************************************************************/
/*
   $Id: tsmc090_4lm_2thick.tf,v 1.1 2006/05/11 06:32:53 Exp $
*/

Technology	{
		name				= "tsmc090"
		dielectric			= 2.652e-05
		unitTimeName			= "ns"
		timePrecision			= 1000
		unitLengthName			= "micron"
		lengthPrecision			= 1000
		gridResolution			= 5
		unitVoltageName			= "v"
		voltagePrecision		= 1000000
		unitCurrentName			= "ma"
		currentPrecision		= 1000
		unitPowerName			= "pw"
		powerPrecision			= 1000000
		unitResistanceName		= "kohm"
		resistancePrecision		= 10000000
		unitCapacitanceName		= "pf"
		capacitancePrecision		= 10000000
		unitInductanceName		= "nh"
		inductancePrecision		= 100
		minBaselineTemperature		= 25
		nomBaselineTemperature		= 25
		maxBaselineTemperature		= 25
}

Color		14 {
		name				= "14"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 255
		blueIntensity			= 190
}

Color		19 {
		name				= "19"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 0
		blueIntensity			= 255
}

Color		27 {
		name				= "27"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 175
		blueIntensity			= 255
}

Color		42 {
		name				= "42"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 175
		blueIntensity			= 190
}

Color		43 {
		name				= "43"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 175
		blueIntensity			= 255
}

Color		47 {
		name				= "47"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 255
		blueIntensity			= 255
}

Color		49 {
		name				= "49"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 0
		blueIntensity			= 100
}

Tile		"unit" {
		width				= 0.28
		height				= 2.52
}

Layer		"TAP" {
		layerNumber			= 83
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "dash"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"DNW" {
		layerNumber			= 1
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "dash"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"NWELL" {
		layerNumber			= 3
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "dash"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"DIFF" {
		layerNumber			= 6
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "19"
		lineStyle			= "solid"
		pattern				= "enter"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"POLY1" {
		layerNumber			= 17
		maskName			= "poly"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "49"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0
		defaultWidth			= 0.1
		minWidth			= 0.1
		minSpacing			= 0.14
}

LayerDataType   "DPO" {
		layerNumber			= 140
                dataTypeNumber                  = 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "solid"
}

Layer		"PIMP" {
		layerNumber			= 25
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "14"
		lineStyle			= "dash"
		pattern				= "slash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"NIMP" {
		layerNumber			= 26
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "42"
		lineStyle			= "dash"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"VTHP" {
		layerNumber			= 68
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "14"
		lineStyle			= "dash"
		pattern				= "slash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"VTHN" {
		layerNumber			= 67
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "42"
		lineStyle			= "dash"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"VTLP" {
		layerNumber			= 13
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "14"
		lineStyle			= "dash"
		pattern				= "slash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"VTLN" {
		layerNumber			= 12
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "42"
		lineStyle			= "dash"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"CONT" {
		layerNumber			= 30
		maskName			= "polyCont"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "27"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0
		defaultWidth			= 0.12
		minWidth			= 0.12
		minSpacing			= 0.14
}

Layer		"M1" {
		layerNumber			= 31
		maskName			= "metal1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.28
		defaultWidth			= 0.12
		minWidth			= 0.12
		minSpacing			= 0.12
		maxWidth			= 12
		maxCurrDensity			= 20
		unitMinResistance		= 0.00013
		unitNomResistance		= 0.00013
		unitMaxResistance		= 0.00013
		fatTblDimension			= 4
		fatTblThreshold			= (0,0.305,1.505,4.505)
		fatTblParallelLength		= (0,0.525,1.505,4.505)
		fatTblSpacing			= (0.12,0.17,0.5,1.5,
						   0.17,0.17,0.5,1.5,
						   0.5,0.5,0.5,1.5,
						   1.5,1.5,1.5,1.5)
		minArea				= 0.058
		minEnclosedArea			= 0.2
}

Layer		"M2" {
		layerNumber			= 32
		maskName			= "metal2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0.28
		defaultWidth			= 0.14
		minWidth			= 0.14
		minSpacing			= 0.14
		maxWidth			= 12
		maxCurrDensity			= 26
		unitMinResistance		= 8.06e-05
		unitNomResistance		= 8.06e-05
		unitMaxResistance		= 8.06e-05
		fatTblDimension			= 4
		fatTblThreshold			= (0,0.215,1.505,4.505)
		fatTblParallelLength		= (0,0.525,1.505,4.505)
		fatTblSpacing			= (0.14,0.19,0.5,1.5,
						   0.19,0.19,0.5,1.5,
						   0.5,0.5,0.5,1.5,
						   1.5,1.5,1.5,1.5)
		minArea				= 0.07
		minEnclosedArea			= 0.2
}

Layer		"M3" {
		layerNumber			= 33
		maskName			= "metal3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.84
		defaultWidth			= 0.42
		minWidth			= 0.42
		minSpacing			= 0.42
		maxWidth			= 12
		maxCurrDensity			= 72
		unitMinResistance		= 2.75e-05
		unitNomResistance		= 2.75e-05
		unitMaxResistance		= 2.75e-05
		fatTblDimension			= 3
		fatTblThreshold			= (0,1.505,4.505)
		fatTblParallelLength		= (0,1.505,4.505)
		fatTblSpacing			= (0.42,0.5,1.5,
						   0.5,0.5,1.5,
						   1.5,1.5,1.5)
		minArea				= 0.565
		minEnclosedArea			= 0.565
}

Layer		"M4" {
		layerNumber			= 34
		maskName			= "metal4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "orange"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.84
		defaultWidth			= 0.42
		minWidth			= 0.42
		minSpacing			= 0.42
		maxWidth			= 12
		maxCurrDensity			= 72
		unitMinResistance		= 2.75e-05
		unitNomResistance		= 2.75e-05
		unitMaxResistance		= 2.75e-05
		fatTblDimension			= 3
		fatTblThreshold			= (0,1.505,4.505)
		fatTblParallelLength		= (0,1.505,4.505)
		fatTblSpacing			= (0.42,0.5,1.5,
						   0.5,0.5,1.5,
						   1.5,1.5,1.5)
		minArea				= 0.565
		minEnclosedArea			= 0.565
}

Layer		"VIA1" {
		layerNumber			= 51
		maskName			= "via1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "43"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.13
		minWidth			= 0.13
		minSpacing			= 0.15
		maxStackLevel			= 4
		maxCurrDensity			= 1.11834e+06
		fatTblDimension			= 6
		fatTblThreshold			= (0,0.425,0.705,0.985,2.005,3.005)
		fatTblExtensionRange		= (0,0,1,1,2,5)
		fatTblFatContactNumber		= (2,2,2,22,22,22)
		fatTblFatContactMinCuts		= (1,2,2,4,4,4)
		fatTblExtensionContactNumber	= (0,0,2,2,2,2)
		fatTblExtensionMinCuts		= (1,1,2,2,2,2)
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.19
}

Layer		"VIA2" {
		layerNumber			= 52
		maskName			= "via2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.36
		minWidth			= 0.36
		minSpacing			= 0.34
		maxCurrDensity			= 1.12037e+06
		fatTblDimension			= 3
		fatTblThreshold			= (0,1.805,3.005)
		fatTblExtensionRange		= (0,0,5)
		fatTblFatContactNumber		= (3,3,33)
		fatTblFatContactMinCuts		= (1,2,2)
		fatTblExtensionContactNumber	= (0,0,3)
		fatTblExtensionMinCuts		= (1,1,2)
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.56
}

Layer		"VIA3" {
		layerNumber			= 53
		maskName			= "via3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.36
		minWidth			= 0.36
		minSpacing			= 0.34
		maxCurrDensity			= 1.12037e+06
		fatTblDimension			= 3
		fatTblThreshold			= (0,1.805,3.005)
		fatTblExtensionRange		= (0,0,5)
		fatTblFatContactNumber		= (4,4,44)
		fatTblFatContactMinCuts		= (1,2,2)
		fatTblExtensionContactNumber	= (0,0,4)
		fatTblExtensionMinCuts		= (1,1,2)
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.56
}

Layer		"PRBOUNDARY" {
		layerNumber			= 108
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"DIODE" {
		layerNumber			= 119
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

LayerDataType   "ARTISCANTEXT" {
		layerNumber			= 63
                dataTypeNumber                  = 63
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"TEXT1" {
		layerNumber			= 131
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT2" {
		layerNumber			= 132
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT3" {
		layerNumber			= 133
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT4" {
		layerNumber			= 134
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

ContactCode	"CONT1" {
		contactCodeNumber		= 1
		cutLayer			= "CONT"
		lowerLayer			= "POLY1"
		upperLayer			= "M1"
		isDefaultContact		= 1
		cutWidth			= 0.12
		cutHeight			= 0.12
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.14
}

ContactCode	"via1" {
		contactCodeNumber		= 2
		cutLayer			= "VIA1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		isDefaultContact		= 1
		cutWidth			= 0.13
		cutHeight			= 0.13
		upperLayerEncWidth		= 0.005
		upperLayerEncHeight		= 0.05
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.005
		minCutSpacing			= 0.15
		maxNumRowsNonTurning		= 3
		unitMinResistance		= 0.0024
		unitNomResistance		= 0.0024
		unitMaxResistance		= 0.0024
}

ContactCode	"via2" {
		contactCodeNumber		= 3
		cutLayer			= "VIA2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		isDefaultContact		= 1
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.08
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.08
		minCutSpacing			= 0.34
		maxNumRowsNonTurning		= 3
		unitMinResistance		= 0.00067
		unitNomResistance		= 0.00067
		unitMaxResistance		= 0.00067
}

ContactCode	"via3" {
		contactCodeNumber		= 4
		cutLayer			= "VIA3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		isDefaultContact		= 1
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.08
		lowerLayerEncWidth		= 0.08
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.34
		maxNumRowsNonTurning		= 3
		unitMinResistance		= 0.0006
		unitNomResistance		= 0.0006
		unitMaxResistance		= 0.0006
}

ContactCode	"via1v" {
		contactCodeNumber		= 11
		cutLayer			= "VIA1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		cutWidth			= 0.13
		cutHeight			= 0.13
		upperLayerEncWidth		= 0.005
		upperLayerEncHeight		= 0.05
		lowerLayerEncWidth		= 0.005
		lowerLayerEncHeight		= 0.05
		minCutSpacing			= 0.15
		maxNumRowsNonTurning		= 3
		unitMinResistance		= 0.0024
		unitNomResistance		= 0.0024
		unitMaxResistance		= 0.0024
}

ContactCode	"via1h" {
		contactCodeNumber		= 12
		cutLayer			= "VIA1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		cutWidth			= 0.13
		cutHeight			= 0.13
		upperLayerEncWidth		= 0.05
		upperLayerEncHeight		= 0.005
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.005
		minCutSpacing			= 0.15
		maxNumRowsNonTurning		= 3
		unitMinResistance		= 0.0024
		unitNomResistance		= 0.0024
		unitMaxResistance		= 0.0024
}

ContactCode	"via1_fat" {
		contactCodeNumber		= 22
		cutLayer			= "VIA1"
		lowerLayer			= "M1"
		upperLayer			= "M2"
		cutWidth			= 0.13
		cutHeight			= 0.13
		upperLayerEncWidth		= 0.005
		upperLayerEncHeight		= 0.05
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.005
		minCutSpacing			= 0.2
		maxNumRowsNonTurning		= 3
		unitMinResistance		= 0.0024
		unitNomResistance		= 0.0024
		unitMaxResistance		= 0.0024
}

ContactCode	"via2_fat" {
		contactCodeNumber		= 33
		cutLayer			= "VIA2"
		lowerLayer			= "M2"
		upperLayer			= "M3"
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.08
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.08
		minCutSpacing			= 0.57
		maxNumRowsNonTurning		= 3
		unitMinResistance		= 0.00067
		unitNomResistance		= 0.00067
		unitMaxResistance		= 0.00067
}

ContactCode	"via3_fat" {
		contactCodeNumber		= 44
		cutLayer			= "VIA3"
		lowerLayer			= "M3"
		upperLayer			= "M4"
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.03
		upperLayerEncHeight		= 0.08
		lowerLayerEncWidth		= 0.08
		lowerLayerEncHeight		= 0.03
		minCutSpacing			= 0.57
		maxNumRowsNonTurning		= 3
		unitMinResistance		= 0.0006
		unitNomResistance		= 0.0006
		unitMaxResistance		= 0.0006
}

DesignRule	{
		layer1				= "via1Blockage"
		layer2				= "VIA1"
		minSpacing			= 0.17
}

DesignRule	{
		layer1				= "via2Blockage"
		layer2				= "VIA2"
		minSpacing			= 0.54
}

DesignRule	{
		layer1				= "via3Blockage"
		layer2				= "VIA3"
		minSpacing			= 0.54
}

PRRule		{
		rowSpacingTopTop		= 0
		rowSpacingTopBot		= 0.59
		rowSpacingBotBot		= 0
		abuttableTopTop			= 1
		abuttableTopBot			= 0
		abuttableBotBot			= 1
}

CapTable	"metal4_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000232008, 0.000135348, 9.86596e-05, 7.81908e-05, 6.4649e-05, 5.47882e-05, 4.71608e-05, 4.10172e-05, 3.59276e-05, 3.16256e-05, 2.79368e-05, 2.47402e-05, 2.19492e-05, 1.94989e-05, 1.73388e-05, 1.54292e-05, 
			0.000248858, 0.000148149, 0.000108932, 8.67232e-05, 7.18706e-05, 6.09786e-05, 5.25124e-05, 4.56716e-05, 3.99934e-05, 3.51892e-05, 3.10684e-05, 2.74986e-05, 2.43832e-05, 2.165e-05, 1.92426e-05, 1.71165e-05, 
			0.000258766, 0.000156257, 0.000115656, 9.23874e-05, 7.67054e-05, 6.51354e-05, 5.61074e-05, 4.87944e-05, 4.27158e-05, 3.757e-05, 3.3156e-05, 2.93332e-05, 2.5999e-05, 2.30758e-05, 2.05034e-05, 1.82332e-05, 
			0.000264994, 0.000161769, 0.000120337, 9.63684e-05, 8.01104e-05, 6.80686e-05, 5.86388e-05, 5.09874e-05, 4.4622e-05, 3.9232e-05, 3.46094e-05, 3.06078e-05, 2.71196e-05, 2.40638e-05, 2.13766e-05, 1.90071e-05, 
			0.000269646, 0.000165845, 0.000123818, 9.93298e-05, 8.2639e-05, 7.02322e-05, 6.05012e-05, 5.25964e-05, 4.60174e-05, 4.04466e-05, 3.56704e-05, 3.15378e-05, 2.79376e-05, 2.47856e-05, 2.20158e-05, 1.95752e-05
		)
}

CapTable	"metal4_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			5.1546e-05, 6.8047e-05, 8.05368e-05, 8.99194e-05, 9.70592e-05, 0.000102605, 0.000107009, 0.00011058, 0.000113529, 0.000116004, 0.000118107, 0.000119911, 0.000121473, 0.000122831, 0.000124019, 0.000125059, 
			7.2688e-05, 8.88722e-05, 0.000101336, 0.000110895, 0.000118334, 0.00012424, 0.000129026, 0.000132975, 0.000136288, 0.000139101, 0.000141513, 0.000143599, 0.00014541, 0.000146993, 0.000148377, 0.000149589, 
			9.3652e-05, 0.000109541, 0.000121944, 0.000131618, 0.000139273, 0.000145449, 0.000150524, 0.000154764, 0.000158352, 0.000161423, 0.00016407, 0.000166366, 0.000168367, 0.000170115, 0.000171646, 0.000172986, 
			0.000114481, 0.000130157, 0.000142545, 0.000152334, 0.000160183, 0.000166582, 0.000171897, 0.000176371, 0.000180182, 0.000183456, 0.000186286, 0.000188747, 0.000190891, 0.000192765, 0.000194404, 0.000195839, 
			0.000135327, 0.000150929, 0.000163352, 0.000173262, 0.000181281, 0.000187876, 0.000193384, 0.000198046, 0.000202031, 0.000205465, 0.000208439, 0.000211025, 0.000213282, 0.000215252, 0.000216976, 0.000218484
		)
}

CapTable	"metal4_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000214486, 0.000114905, 7.73062e-05, 5.70866e-05, 4.44228e-05, 3.57544e-05, 2.9452e-05, 2.46624e-05, 2.0897e-05, 1.78584e-05, 1.53556e-05, 1.32615e-05, 1.14878e-05, 9.97164e-06, 8.6664e-06, 7.53686e-06, 
			0.000226422, 0.000124412, 8.52782e-05, 6.39322e-05, 5.03382e-05, 4.08782e-05, 3.38902e-05, 2.85026e-05, 2.42148e-05, 2.072e-05, 1.78196e-05, 1.53795e-05, 1.33055e-05, 1.15291e-05, 9.99902e-06, 8.67556e-06, 
			0.00023368, 0.000130897, 9.09792e-05, 6.89206e-05, 5.46988e-05, 4.46716e-05, 3.71786e-05, 3.1344e-05, 2.6663e-05, 2.28242e-05, 1.96241e-05, 1.69239e-05, 1.46251e-05, 1.26551e-05, 1.09585e-05, 9.4923e-06, 
			0.000238632, 0.000135735, 9.53192e-05, 7.27388e-05, 5.8026e-05, 4.75638e-05, 3.96702e-05, 3.3482e-05, 2.84914e-05, 2.43834e-05, 2.09508e-05, 1.80509e-05, 1.5581e-05, 1.34649e-05, 1.16441e-05, 1.00726e-05, 
			0.000242772, 0.000139624, 9.87902e-05, 7.57766e-05, 6.06634e-05, 4.98324e-05, 4.16206e-05, 3.51526e-05, 2.99186e-05, 2.56002e-05, 2.19866e-05, 1.89317e-05, 1.63294e-05, 1.41006e-05, 1.21841e-05, 1.05313e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.9833e-05, 2.46918e-05, 2.87096e-05, 3.22024e-05, 3.53472e-05, 3.82422e-05, 4.09442e-05, 4.3485e-05, 4.58814e-05, 4.81427e-05, 5.02738e-05, 5.2278e-05, 5.41578e-05, 5.59158e-05, 5.75552e-05, 5.90797e-05, 
			2.3722e-05, 2.82642e-05, 3.22752e-05, 3.5905e-05, 3.92564e-05, 4.23902e-05, 4.53426e-05, 4.81314e-05, 5.07683e-05, 5.32584e-05, 5.56051e-05, 5.78107e-05, 5.98777e-05, 6.18089e-05, 6.36084e-05, 6.52803e-05, 
			2.7569e-05, 3.2001e-05, 3.60562e-05, 3.9814e-05, 4.33326e-05, 4.6651e-05, 4.97896e-05, 5.27608e-05, 5.55716e-05, 5.82242e-05, 6.07215e-05, 6.3066e-05, 6.52607e-05, 6.7309e-05, 6.92155e-05, 7.09852e-05, 
			3.1519e-05, 3.59322e-05, 4.00622e-05, 4.39404e-05, 4.76014e-05, 5.1066e-05, 5.4351e-05, 5.74612e-05, 6.0401e-05, 6.31722e-05, 6.57782e-05, 6.82216e-05, 7.05066e-05, 7.26368e-05, 7.46172e-05, 7.64542e-05, 
			3.5614e-05, 4.00774e-05, 4.42932e-05, 4.8282e-05, 5.20618e-05, 5.56472e-05, 5.90456e-05, 6.22616e-05, 6.52986e-05, 6.81586e-05, 7.08438e-05, 7.33596e-05, 7.57096e-05, 7.78978e-05, 7.9932e-05, 8.1817e-05
		)
}

CapTable	"metal4_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000234954, 0.000139159, 0.000103122, 8.31086e-05, 6.98558e-05, 6.01508e-05, 5.25768e-05, 4.64092e-05, 4.12388e-05, 3.68154e-05, 3.29766e-05, 2.96108e-05, 2.6638e-05, 2.39982e-05, 2.1645e-05, 1.95412e-05, 
			0.000252922, 0.000152976, 0.000114298, 9.2434e-05, 7.77736e-05, 6.69568e-05, 5.84794e-05, 5.15642e-05, 4.57668e-05, 4.08122e-05, 3.65194e-05, 3.2763e-05, 2.94522e-05, 2.65184e-05, 2.3908e-05, 2.15784e-05, 
			0.000263812, 0.000161914, 0.000121714, 9.8675e-05, 8.30934e-05, 7.1529e-05, 6.24384e-05, 5.50142e-05, 4.87904e-05, 4.34758e-05, 3.8877e-05, 3.4859e-05, 3.13228e-05, 2.8194e-05, 2.5414e-05, 2.29362e-05, 
			0.000270832, 0.000168062, 0.000126901, 0.000103064, 8.68336e-05, 7.4746e-05, 6.5218e-05, 5.74318e-05, 5.0906e-05, 4.53378e-05, 4.05248e-05, 3.63244e-05, 3.26324e-05, 2.93692e-05, 2.64728e-05, 2.38938e-05, 
			0.000276086, 0.000172601, 0.00013074, 0.000106308, 8.95932e-05, 7.71058e-05, 6.72544e-05, 5.92014e-05, 5.24544e-05, 4.67014e-05, 4.17332e-05, 3.74014e-05, 3.35974e-05, 3.02382e-05, 2.7259e-05, 2.4608e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			2.3699e-05, 3.00814e-05, 3.54644e-05, 4.01402e-05, 4.4285e-05, 4.80078e-05, 5.13858e-05, 5.44681e-05, 5.7291e-05, 5.98812e-05, 6.22588e-05, 6.44404e-05, 6.64398e-05, 6.82694e-05, 6.99408e-05, 7.14645e-05, 
			2.9407e-05, 3.5576e-05, 4.10326e-05, 4.59058e-05, 5.03054e-05, 5.43094e-05, 5.79736e-05, 6.13394e-05, 6.44346e-05, 6.72848e-05, 6.99056e-05, 7.23137e-05, 7.45226e-05, 7.65448e-05, 7.83925e-05, 8.00768e-05, 
			3.5191e-05, 4.12943e-05, 4.68198e-05, 5.18386e-05, 5.64216e-05, 6.06256e-05, 6.44956e-05, 6.80636e-05, 7.13532e-05, 7.4385e-05, 7.7176e-05, 7.97408e-05, 8.2093e-05, 8.42472e-05, 8.62136e-05, 8.80058e-05, 
			4.1128e-05, 4.72188e-05, 5.28192e-05, 5.79606e-05, 6.26896e-05, 6.70504e-05, 7.10782e-05, 7.47986e-05, 7.8233e-05, 8.14e-05, 8.43146e-05, 8.69932e-05, 8.94484e-05, 9.16942e-05, 9.37444e-05, 9.56119e-05, 
			4.7222e-05, 5.33558e-05, 5.90364e-05, 6.42852e-05, 6.9137e-05, 7.36258e-05, 7.77778e-05, 8.16166e-05, 8.51616e-05, 8.84304e-05, 9.14376e-05, 9.42002e-05, 9.67304e-05, 9.90444e-05, 0.000101154, 0.000103075
		)
}

CapTable	"metal4_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000237146, 0.000141986, 0.000106464, 8.68582e-05, 7.39202e-05, 6.44488e-05, 5.70392e-05, 5.09788e-05, 4.5868e-05, 4.14654e-05, 3.76152e-05, 3.42118e-05, 3.11796e-05, 2.84628e-05, 2.60178e-05, 2.38102e-05, 
			0.000255874, 0.000156522, 0.000118317, 9.6818e-05, 8.24286e-05, 7.18048e-05, 6.3456e-05, 5.66172e-05, 5.08536e-05, 4.58978e-05, 4.15752e-05, 3.77654e-05, 3.43816e-05, 3.1358e-05, 2.86442e-05, 2.61998e-05, 
			0.000267476, 0.000166107, 0.000126316, 0.000103582, 8.82198e-05, 7.68044e-05, 6.78062e-05, 6.04292e-05, 5.42154e-05, 4.88806e-05, 4.42364e-05, 4.01518e-05, 3.65312e-05, 3.33026e-05, 3.041e-05, 2.78088e-05, 
			0.000275134, 0.000172812, 0.00013199, 0.000108398, 9.2337e-05, 8.03584e-05, 7.08916e-05, 6.31276e-05, 5.65922e-05, 5.0988e-05, 4.61168e-05, 4.18392e-05, 3.80534e-05, 3.46822e-05, 3.16658e-05, 2.8956e-05, 
			0.000280932, 0.000177818, 0.000136229, 0.000111989, 9.54008e-05, 8.29894e-05, 7.31734e-05, 6.51226e-05, 5.83504e-05, 5.2549e-05, 4.75122e-05, 4.30944e-05, 3.91888e-05, 3.57148e-05, 3.2609e-05, 2.98214e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.822e-05, 2.2472e-05, 2.5939e-05, 2.89374e-05, 3.16442e-05, 3.41565e-05, 3.65284e-05, 3.87876e-05, 4.09466e-05, 4.30106e-05, 4.498e-05, 4.68541e-05, 4.86314e-05, 5.03115e-05, 5.18938e-05, 5.33795e-05, 
			2.1436e-05, 2.5337e-05, 2.87604e-05, 3.1864e-05, 3.47494e-05, 3.74754e-05, 4.00738e-05, 4.25601e-05, 4.49399e-05, 4.72141e-05, 4.93818e-05, 5.14411e-05, 5.33912e-05, 5.52315e-05, 5.69625e-05, 5.85861e-05, 
			2.4565e-05, 2.8332e-05, 3.17816e-05, 3.49962e-05, 3.8035e-05, 4.0933e-05, 4.3706e-05, 4.63628e-05, 4.89032e-05, 5.13287e-05, 5.36361e-05, 5.58241e-05, 5.78925e-05, 5.98414e-05, 6.16725e-05, 6.33878e-05, 
			2.7765e-05, 3.15042e-05, 3.50198e-05, 3.83482e-05, 4.15214e-05, 4.45594e-05, 4.74708e-05, 5.02568e-05, 5.29186e-05, 5.54544e-05, 5.78624e-05, 6.01422e-05, 6.22939e-05, 6.43188e-05, 6.62192e-05, 6.79978e-05, 
			3.1094e-05, 3.48784e-05, 3.8477e-05, 4.19126e-05, 4.5202e-05, 4.83538e-05, 5.13726e-05, 5.4259e-05, 5.70118e-05, 5.96292e-05, 6.21118e-05, 6.44588e-05, 6.66708e-05, 6.87498e-05, 7.06998e-05, 7.25239e-05
		)
}

CapTable	"metal4_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000236206, 0.000140778, 0.000105032, 8.52416e-05, 7.21518e-05, 6.25576e-05, 5.50506e-05, 4.89146e-05, 4.37478e-05, 3.9306e-05, 3.54322e-05, 3.20188e-05, 2.8989e-05, 2.62852e-05, 2.38632e-05, 2.1687e-05, 
			0.000254616, 0.000155006, 0.000116588, 9.4914e-05, 8.03846e-05, 6.96496e-05, 6.12152e-05, 5.43122e-05, 4.85032e-05, 4.3519e-05, 3.91828e-05, 3.53728e-05, 3.20002e-05, 2.89986e-05, 2.63162e-05, 2.3911e-05, 
			0.00026591, 0.000164304, 0.000124318, 0.000101429, 8.5943e-05, 7.4432e-05, 6.5362e-05, 5.79332e-05, 5.16858e-05, 4.6333e-05, 4.16848e-05, 3.76088e-05, 3.40078e-05, 3.08088e-05, 2.79544e-05, 2.5399e-05, 
			0.000273284, 0.00017075, 0.000129756, 0.000106029, 8.98636e-05, 7.78056e-05, 6.82812e-05, 6.04782e-05, 5.39204e-05, 4.83086e-05, 4.34426e-05, 3.91818e-05, 3.54232e-05, 3.20884e-05, 2.91162e-05, 2.6458e-05, 
			0.000278828, 0.000175527, 0.00013379, 0.000109434, 9.2759e-05, 8.02832e-05, 7.04224e-05, 6.2344e-05, 5.55592e-05, 4.97588e-05, 4.47352e-05, 4.03412e-05, 3.64692e-05, 3.30372e-05, 2.99812e-05, 2.72498e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			5.1816e-05, 6.89916e-05, 8.21844e-05, 9.21598e-05, 9.97144e-05, 0.000105492, 0.000109969, 0.000113494, 0.00011631, 0.000118597, 0.000120477, 0.000122045, 0.000123366, 0.000124491, 0.000125456, 0.000126291, 
			7.3771e-05, 9.06758e-05, 0.000103833, 0.000113937, 0.000121721, 0.000127772, 0.00013254, 0.00013635, 0.000139439, 0.000141979, 0.000144095, 0.000145876, 0.000147391, 0.000148692, 0.000149817, 0.000150795, 
			9.559e-05, 0.00011219, 0.000125234, 0.000135378, 0.000143286, 0.000149513, 0.000154478, 0.000158493, 0.000161784, 0.000164514, 0.000166808, 0.000168756, 0.000170423, 0.000171864, 0.000173116, 0.000174211, 
			0.000117238, 0.000133565, 0.000146508, 0.000156666, 0.000164665, 0.000171018, 0.000176136, 0.000180311, 0.000183759, 0.000186644, 0.000189083, 0.000191166, 0.000192961, 0.000194518, 0.000195877, 0.000197071, 
			0.000138792, 0.000154958, 0.000167837, 0.000178015, 0.000186089, 0.000192555, 0.000197799, 0.000202105, 0.000205687, 0.000208701, 0.000211263, 0.000213462, 0.000215366, 0.000217024, 0.000218477, 0.000219757
		)
}

CapTable	"metal3_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000214734, 0.000112756, 7.43836e-05, 5.38232e-05, 4.10566e-05, 3.24492e-05, 2.6322e-05, 2.17824e-05, 1.83118e-05, 1.55894e-05, 1.34077e-05, 1.16274e-05, 1.01525e-05, 8.91472e-06, 7.86468e-06, 6.96578e-06, 
			0.000224904, 0.000120824, 8.11676e-05, 5.96976e-05, 4.61964e-05, 3.6976e-05, 3.03252e-05, 2.53338e-05, 2.14706e-05, 1.84057e-05, 1.59239e-05, 1.38801e-05, 1.2173e-05, 1.07301e-05, 9.49834e-06, 8.43814e-06, 
			0.000231004, 0.00012636, 8.61236e-05, 6.41322e-05, 5.01784e-05, 4.05478e-05, 3.35306e-05, 2.82122e-05, 2.40574e-05, 2.0733e-05, 1.80202e-05, 1.57705e-05, 1.38798e-05, 1.2273e-05, 1.08948e-05, 9.7034e-06, 
			0.000235172, 0.000130612, 9.00728e-05, 6.77406e-05, 5.34582e-05, 4.3533e-05, 3.62336e-05, 3.06584e-05, 2.62718e-05, 2.27384e-05, 1.98375e-05, 1.74188e-05, 1.53761e-05, 1.36325e-05, 1.2131e-05, 1.08284e-05, 
			0.000238908, 0.000134247, 9.34618e-05, 7.08528e-05, 5.63038e-05, 4.61206e-05, 3.85906e-05, 3.28036e-05, 2.82234e-05, 2.4514e-05, 2.14536e-05, 1.88905e-05, 1.6717e-05, 1.48549e-05, 1.3246e-05, 1.1846e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.7023e-05, 2.08512e-05, 2.39284e-05, 2.65708e-05, 2.89498e-05, 3.11635e-05, 3.32634e-05, 3.52765e-05, 3.7215e-05, 3.90828e-05, 4.08799e-05, 4.26044e-05, 4.42541e-05, 4.58267e-05, 4.73211e-05, 4.87367e-05, 
			1.9776e-05, 2.32274e-05, 2.62318e-05, 2.8947e-05, 3.14764e-05, 3.38762e-05, 3.61795e-05, 3.83989e-05, 4.05396e-05, 4.2602e-05, 4.4584e-05, 4.64826e-05, 4.82952e-05, 5.00204e-05, 5.16572e-05, 5.32055e-05, 
			2.2406e-05, 2.57022e-05, 2.8711e-05, 3.15188e-05, 3.41832e-05, 3.67386e-05, 3.92018e-05, 4.15788e-05, 4.38709e-05, 4.60752e-05, 4.81894e-05, 5.02104e-05, 5.21365e-05, 5.39664e-05, 5.56998e-05, 5.73374e-05, 
			2.5077e-05, 2.833e-05, 3.13904e-05, 3.42984e-05, 3.7086e-05, 3.97726e-05, 4.23654e-05, 4.48654e-05, 4.72718e-05, 4.9583e-05, 5.17939e-05, 5.39038e-05, 5.5911e-05, 5.78152e-05, 5.96166e-05, 6.13169e-05, 
			2.7857e-05, 3.1142e-05, 3.42758e-05, 3.72824e-05, 4.01782e-05, 4.29726e-05, 4.56686e-05, 4.82644e-05, 5.07586e-05, 5.3149e-05, 5.54318e-05, 5.76076e-05, 5.96738e-05, 6.16318e-05, 6.34826e-05, 6.52278e-05
		)
}

CapTable	"metal3_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.2037e-05, 5.75849e-05, 6.90459e-05, 7.67089e-05, 8.15084e-05, 8.4346e-05, 8.60201e-05, 8.69802e-05, 8.75266e-05, 8.78291e-05, 8.79989e-05, 8.81322e-05, 8.81777e-05, 8.8204e-05, 8.82155e-05, 8.82169e-05, 
			6.36081e-05, 7.93887e-05, 9.09692e-05, 9.86853e-05, 0.00010348, 0.000106366, 0.00010805, 0.000109016, 0.00010956, 0.000109865, 0.000110081, 0.000110168, 0.000110223, 0.000110247, 0.000110254, 0.000110247, 
			8.54053e-05, 0.000101192, 0.000112719, 0.000120411, 0.000125213, 0.000128089, 0.000129763, 0.000130723, 0.000131317, 0.000131617, 0.00013179, 0.000131885, 0.000131931, 0.000131951, 0.000131949, 0.000131943, 
			0.000107231, 0.000122919, 0.00013442, 0.000142082, 0.000146861, 0.000149712, 0.000151376, 0.000152387, 0.000152924, 0.000153237, 0.000153406, 0.000153494, 0.00015353, 0.000153552, 0.000153549, 0.000153522, 
			0.000129048, 0.000144719, 0.00015619, 0.000163828, 0.000168587, 0.000171491, 0.000173148, 0.000174102, 0.000174651, 0.00017495, 0.000175107, 0.00017519, 0.000175234, 0.000175237, 0.000175221, 0.000175181
		)
}

CapTable	"metal3_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.21408e-05, 5.77507e-05, 6.92495e-05, 7.69357e-05, 8.17376e-05, 8.466e-05, 8.63438e-05, 8.73215e-05, 8.7876e-05, 8.81976e-05, 8.83751e-05, 8.84375e-05, 8.8498e-05, 8.85273e-05, 8.85522e-05, 8.8568e-05, 
			6.37643e-05, 7.95997e-05, 9.12116e-05, 9.89635e-05, 0.000103834, 0.00010674, 0.000108441, 0.000109422, 0.000109983, 0.000110301, 0.000110436, 0.000110541, 0.000110599, 0.000110637, 0.000110662, 0.000110686, 
			8.56194e-05, 0.000101452, 0.000113084, 0.000120813, 0.000125644, 0.000128545, 0.000130247, 0.000131217, 0.000131727, 0.000132047, 0.000132217, 0.000132328, 0.000132391, 0.000132429, 0.000132466, 0.000132495, 
			0.000107503, 0.000123287, 0.000134849, 0.000142556, 0.000147368, 0.000150247, 0.000151934, 0.000152852, 0.000153412, 0.000153723, 0.000153909, 0.000154016, 0.000154087, 0.000154141, 0.000154184, 0.000154209, 
			0.000129417, 0.000145172, 0.000156706, 0.00016441, 0.00016919, 0.000172006, 0.00017369, 0.000174641, 0.000175204, 0.000175525, 0.00017572, 0.000175831, 0.000175918, 0.000175987, 0.000176011, 0.000176049
		)
}

CapTable	"metal3_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000194131, 8.69094e-05, 4.61526e-05, 2.55774e-05, 1.435e-05, 8.07296e-06, 4.54214e-06, 2.54928e-06, 1.42739e-06, 7.94246e-07, 4.40038e-07, 2.413e-07, 1.30271e-07, 6.97112e-08, 3.62812e-08, 1.81387e-08, 
			0.000195549, 8.75326e-05, 4.64462e-05, 2.57322e-05, 1.44226e-05, 8.10478e-06, 4.54986e-06, 2.5463e-06, 1.41779e-06, 7.8327e-07, 4.27278e-07, 2.27898e-07, 1.18821e-07, 5.82454e-08, 2.50906e-08, 6.5389e-09, 
			0.000194857, 8.72374e-05, 4.62746e-05, 2.5617e-05, 1.43516e-05, 8.05502e-06, 4.50996e-06, 2.5179e-06, 1.39427e-06, 7.61804e-07, 4.10846e-07, 2.1426e-07, 1.05349e-07, 4.5278e-08, 1.13638e-08, 0, 
			0.000193602, 8.6749e-05, 4.60088e-05, 2.54492e-05, 1.42401e-05, 7.99528e-06, 4.47078e-06, 2.48582e-06, 1.36627e-06, 7.43432e-07, 3.93174e-07, 1.98073e-07, 8.78574e-08, 2.96052e-08, 0, 0, 
			0.000192862, 8.6395e-05, 4.5814e-05, 2.53128e-05, 1.41576e-05, 7.92758e-06, 4.4192e-06, 2.4537e-06, 1.34515e-06, 7.23112e-07, 3.71112e-07, 1.77381e-07, 7.2448e-08, 9.60528e-09, 0, 0
		)
}

CapTable	"metal3_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000205826, 0.000100002, 5.87346e-05, 3.64648e-05, 2.30536e-05, 1.46381e-05, 9.20834e-06, 5.7011e-06, 3.42614e-06, 1.94852e-06, 9.97656e-07, 3.91094e-07, 8.40918e-09, 0, 0, 0, 
			0.000210268, 0.000102344, 6.00088e-05, 3.71398e-05, 2.33682e-05, 1.46702e-05, 9.09014e-06, 5.48342e-06, 3.1486e-06, 1.6435e-06, 6.82028e-07, 7.83542e-08, 0, 0, 0, 0, 
			0.00021071, 0.000102525, 5.99914e-05, 3.69434e-05, 2.30532e-05, 1.43005e-05, 8.68462e-06, 5.06874e-06, 2.7381e-06, 1.24034e-06, 3.11056e-07, 0, 0, 0, 0, 0, 
			0.000209634, 0.00010194, 5.94148e-05, 3.63808e-05, 2.24928e-05, 1.37644e-05, 8.16952e-06, 4.57228e-06, 2.26988e-06, 8.29012e-07, 0, 0, 0, 0, 0, 0, 
			0.000208624, 0.000101151, 5.87116e-05, 3.56992e-05, 2.18532e-05, 1.31541e-05, 7.5913e-06, 4.0578e-06, 1.81884e-06, 4.33076e-07, 0, 0, 0, 0, 0, 0
		)
}

CapTable	"metal3_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			2.9314e-05, 3.85186e-05, 4.63886e-05, 5.30694e-05, 5.87218e-05, 6.35042e-05, 6.75622e-05, 7.102e-05, 7.39828e-05, 7.65368e-05, 7.87494e-05, 8.06797e-05, 8.23715e-05, 8.38617e-05, 8.51803e-05, 8.63516e-05, 
			3.8683e-05, 4.7827e-05, 5.57774e-05, 6.25992e-05, 6.84296e-05, 7.3411e-05, 7.76788e-05, 8.13498e-05, 8.45228e-05, 8.7281e-05, 8.96896e-05, 9.1805e-05, 9.36698e-05, 9.53227e-05, 9.67912e-05, 9.81009e-05, 
			4.8252e-05, 5.72744e-05, 6.5183e-05, 7.20316e-05, 7.79342e-05, 8.30212e-05, 8.74154e-05, 9.12234e-05, 9.45386e-05, 9.7438e-05, 9.99852e-05, 0.000102234, 0.000104226, 0.000105998, 0.000107578, 0.000108993, 
			5.7855e-05, 6.67278e-05, 7.45698e-05, 8.14124e-05, 8.7354e-05, 9.25082e-05, 9.69906e-05, 0.0001009, 0.000104323, 0.000107331, 0.000109985, 0.000112337, 0.000114429, 0.000116295, 0.000117964, 0.00011946, 
			6.7417e-05, 7.61876e-05, 8.39746e-05, 9.08108e-05, 9.67832e-05, 0.000101996, 0.000106552, 0.000110544, 0.000114054, 0.000117152, 0.000119896, 0.000122335, 0.000124509, 0.000126453, 0.000128196, 0.000129762
		)
}

CapTable	"metal3_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000228002, 0.000127705, 8.95294e-05, 6.84176e-05, 5.47482e-05, 4.51018e-05, 3.79158e-05, 3.2358e-05, 2.79382e-05, 2.43462e-05, 2.13756e-05, 1.88831e-05, 1.67667e-05, 1.49515e-05, 1.33814e-05, 1.20135e-05, 
			0.000241212, 0.000137546, 9.74556e-05, 7.51188e-05, 6.05594e-05, 5.0223e-05, 4.24742e-05, 3.64422e-05, 3.16142e-05, 2.7666e-05, 2.43814e-05, 2.1611e-05, 1.92472e-05, 1.72113e-05, 1.54438e-05, 1.38991e-05, 
			0.000248576, 0.000143752, 0.000102813, 7.98404e-05, 6.47828e-05, 5.40258e-05, 4.59146e-05, 3.95646e-05, 3.44544e-05, 3.0254e-05, 2.67438e-05, 2.37704e-05, 2.12242e-05, 1.9024e-05, 1.71085e-05, 1.54304e-05, 
			0.00025319, 0.0001482, 0.000106857, 8.35116e-05, 6.8126e-05, 5.70848e-05, 4.87104e-05, 4.2123e-05, 3.67984e-05, 3.24044e-05, 2.87188e-05, 2.55868e-05, 2.28972e-05, 2.05672e-05, 1.85344e-05, 1.67502e-05, 
			0.000257054, 0.000151874, 0.000110251, 8.66232e-05, 7.09798e-05, 5.96992e-05, 5.1112e-05, 4.4331e-05, 3.883e-05, 3.42756e-05, 3.04442e-05, 2.71802e-05, 2.43708e-05, 2.1932e-05, 1.98005e-05, 1.79267e-05
		)
}

CapTable	"metal3_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000231534, 0.000132088, 9.43816e-05, 7.34672e-05, 5.98138e-05, 5.00664e-05, 4.27068e-05, 3.69326e-05, 3.22732e-05, 2.84318e-05, 2.52108e-05, 2.24722e-05, 2.01176e-05, 1.8074e-05, 1.62863e-05, 1.47122e-05, 
			0.000245908, 0.000142784, 0.000102938, 8.06474e-05, 6.6006e-05, 5.5505e-05, 4.75404e-05, 4.12628e-05, 3.61738e-05, 3.1959e-05, 2.84088e-05, 2.53778e-05, 2.27614e-05, 2.04826e-05, 1.84826e-05, 1.67165e-05, 
			0.000254016, 0.000149483, 0.000108629, 8.56054e-05, 7.04058e-05, 5.94476e-05, 5.10978e-05, 4.44868e-05, 3.91042e-05, 3.46278e-05, 3.0843e-05, 2.76004e-05, 2.47926e-05, 2.23398e-05, 2.0182e-05, 1.8272e-05, 
			0.000259048, 0.000154182, 0.000112827, 8.93724e-05, 7.38112e-05, 6.2548e-05, 5.39218e-05, 4.70644e-05, 4.14602e-05, 3.67834e-05, 3.28166e-05, 2.94084e-05, 2.64496e-05, 2.38592e-05, 2.15754e-05, 1.95508e-05, 
			0.000263112, 0.000157958, 0.000116267, 9.2498e-05, 7.66592e-05, 6.51446e-05, 5.62972e-05, 4.92394e-05, 4.3453e-05, 3.86104e-05, 3.44922e-05, 3.09458e-05, 2.78606e-05, 2.51548e-05, 2.27656e-05, 2.06446e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			2.01419e-05, 2.80069e-05, 3.46559e-05, 3.98238e-05, 4.359e-05, 4.6391e-05, 4.81004e-05, 4.92641e-05, 5.0147e-05, 5.07515e-05, 5.1172e-05, 5.14651e-05, 5.13122e-05, 5.121e-05, 5.1172e-05, 5.1187e-05, 
			2.92727e-05, 3.74801e-05, 4.43752e-05, 4.97212e-05, 5.37308e-05, 5.64058e-05, 5.82529e-05, 5.96056e-05, 6.05354e-05, 6.11735e-05, 6.1613e-05, 6.14547e-05, 6.1355e-05, 6.1288e-05, 6.1299e-05, 6.1356e-05, 
			3.88106e-05, 4.71224e-05, 5.42836e-05, 5.95476e-05, 6.34198e-05, 6.62925e-05, 6.82964e-05, 6.96803e-05, 7.06289e-05, 7.07597e-05, 7.11539e-05, 7.1172e-05, 7.1048e-05, 7.1037e-05, 7.1096e-05, 7.1219e-05, 
			4.8519e-05, 5.70154e-05, 6.39382e-05, 6.93082e-05, 7.33722e-05, 7.62676e-05, 7.82905e-05, 7.96807e-05, 8.00081e-05, 8.0606e-05, 8.0959e-05, 8.0733e-05, 8.0667e-05, 8.0724e-05, 8.085e-05, 8.1026e-05, 
			5.8323e-05, 6.66614e-05, 7.37884e-05, 7.93318e-05, 8.34198e-05, 8.63309e-05, 8.76967e-05, 8.90162e-05, 8.99112e-05, 9.05239e-05, 9.0546e-05, 9.0391e-05, 9.0409e-05, 9.0515e-05, 9.0717e-05, 9.0941e-05
		)
}

CapTable	"metal3_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.33411e-05, 5.90673e-05, 7.12985e-05, 8.03444e-05, 8.68184e-05, 9.11419e-05, 9.43223e-05, 9.64468e-05, 9.77469e-05, 9.8584e-05, 9.90973e-05, 9.94028e-05, 9.99364e-05, 0.000100041, 0.000100073, 0.000100053, 
			6.48003e-05, 8.09365e-05, 9.3488e-05, 0.000102773, 0.000109285, 0.000113982, 0.00011717, 0.0001192, 0.000120514, 0.000121342, 0.000121849, 0.000122604, 0.000122772, 0.000122832, 0.000122814, 0.00012275, 
			8.68264e-05, 0.000103144, 0.000115595, 0.000125113, 0.000131884, 0.000136446, 0.000139519, 0.000141526, 0.000142818, 0.000144151, 0.000144666, 0.000144946, 0.00014506, 0.000145062, 0.000144994, 0.000144855, 
			0.000109123, 0.000125297, 0.000138087, 0.000147539, 0.000154141, 0.000158672, 0.000161709, 0.000163701, 0.000165588, 0.000166388, 0.000166843, 0.000167055, 0.000167114, 0.000167039, 0.0001669, 0.000166721, 
			0.000131595, 0.000148047, 0.00016067, 0.000169983, 0.000176538, 0.000181036, 0.00018471, 0.000186704, 0.000187955, 0.00018869, 0.000189083, 0.000189223, 0.000189183, 0.000189064, 0.000188864, 0.000188639
		)
}

CapTable	"metal3_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.33709e-05, 5.88337e-05, 7.09269e-05, 8.00456e-05, 8.67457e-05, 9.15736e-05, 9.49761e-05, 9.74018e-05, 9.9057e-05, 0.000100219, 0.000101013, 0.00010156, 0.000101934, 0.000102226, 0.000102399, 0.000102514, 
			6.42643e-05, 8.00746e-05, 9.24674e-05, 0.000101836, 0.000108727, 0.000113698, 0.000117247, 0.000119697, 0.000121427, 0.000122624, 0.000123455, 0.000124021, 0.000124449, 0.000124711, 0.000124887, 0.000125012, 
			8.56796e-05, 0.000101584, 0.000114065, 0.000123497, 0.000130464, 0.000135448, 0.000139024, 0.000141524, 0.000143272, 0.000144482, 0.000145371, 0.000145942, 0.000146331, 0.000146594, 0.00014678, 0.000146886, 
			0.000107301, 0.000123177, 0.000135661, 0.000145126, 0.000152041, 0.000157063, 0.000160639, 0.000163163, 0.000164914, 0.000166181, 0.000167015, 0.000167585, 0.000167985, 0.000168237, 0.00016841, 0.000168524, 
			0.000129041, 0.000144931, 0.000157356, 0.000166819, 0.000173763, 0.000178787, 0.000182359, 0.00018494, 0.000186688, 0.000187901, 0.000188745, 0.000189317, 0.000189687, 0.000189958, 0.000190119, 0.00019024
		)
}

CapTable	"metal3_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000208812, 0.000103883, 6.305e-05, 4.08004e-05, 2.71344e-05, 1.82856e-05, 1.24147e-05, 8.45976e-06, 5.78334e-06, 3.95952e-06, 2.7178e-06, 1.86857e-06, 1.2878e-06, 8.89554e-07, 6.17522e-07, 4.31238e-07, 
			0.000214658, 0.000107396, 6.53136e-05, 4.23368e-05, 2.8193e-05, 1.90225e-05, 1.2923e-05, 8.82e-06, 6.0352e-06, 4.13912e-06, 2.84312e-06, 1.95888e-06, 1.35466e-06, 9.40736e-07, 6.57268e-07, 4.6207e-07, 
			0.000216182, 0.000108485, 6.60626e-05, 4.2859e-05, 2.85638e-05, 1.92901e-05, 1.31142e-05, 8.95886e-06, 6.1373e-06, 4.2154e-06, 2.9016e-06, 2.00492e-06, 1.39147e-06, 9.71488e-07, 6.82182e-07, 4.87006e-07, 
			0.000215962, 0.000108637, 6.62188e-05, 4.29782e-05, 2.86644e-05, 1.93782e-05, 1.31869e-05, 9.0092e-06, 6.1776e-06, 4.25134e-06, 2.93446e-06, 2.03428e-06, 1.41523e-06, 9.96406e-07, 7.0782e-07, 5.1016e-07, 
			0.000215696, 0.000108583, 6.62324e-05, 4.29972e-05, 2.86914e-05, 1.93993e-05, 1.32116e-05, 9.03748e-06, 6.20604e-06, 4.27704e-06, 2.95452e-06, 2.05434e-06, 1.44282e-06, 1.01724e-06, 7.32296e-07, 5.31886e-07
		)
}

CapTable	"metal3_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			2.4255e-05, 3.13864e-05, 3.75534e-05, 4.29218e-05, 4.76062e-05, 5.17006e-05, 5.5287e-05, 5.84391e-05, 6.12191e-05, 6.36802e-05, 6.58673e-05, 6.78185e-05, 6.9565e-05, 7.11336e-05, 7.25464e-05, 7.38222e-05, 
			3.0934e-05, 3.79612e-05, 4.4203e-05, 4.97096e-05, 5.4561e-05, 5.8837e-05, 6.26136e-05, 6.59572e-05, 6.89282e-05, 7.1576e-05, 7.39452e-05, 7.60712e-05, 7.79846e-05, 7.97124e-05, 8.12751e-05, 8.2692e-05, 
			3.7797e-05, 4.4733e-05, 5.09616e-05, 5.65076e-05, 6.14322e-05, 6.58044e-05, 6.96932e-05, 7.31602e-05, 7.62588e-05, 7.90362e-05, 8.1535e-05, 8.37866e-05, 8.58234e-05, 8.76672e-05, 8.9342e-05, 9.0864e-05, 
			4.4743e-05, 5.1573e-05, 5.77604e-05, 6.33116e-05, 6.82748e-05, 7.2709e-05, 7.66782e-05, 8.02356e-05, 8.34318e-05, 8.63096e-05, 8.89094e-05, 9.12606e-05, 9.33934e-05, 9.53318e-05, 9.70946e-05, 9.87022e-05, 
			5.1691e-05, 5.84488e-05, 6.45992e-05, 7.0151e-05, 7.51438e-05, 7.96314e-05, 8.36668e-05, 8.72996e-05, 9.0578e-05, 9.35406e-05, 9.62248e-05, 9.86602e-05, 0.000100875, 0.000102891, 0.00010473, 0.000106408
		)
}

CapTable	"metal3_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			2.1236e-05, 2.71134e-05, 3.21748e-05, 3.66168e-05, 4.0549e-05, 4.40497e-05, 4.7179e-05, 4.99861e-05, 5.25126e-05, 5.47937e-05, 5.6859e-05, 5.87341e-05, 6.04405e-05, 6.19968e-05, 6.34187e-05, 6.47202e-05, 
			2.6403e-05, 3.21094e-05, 3.72076e-05, 4.17626e-05, 4.58428e-05, 4.95062e-05, 5.28044e-05, 5.57838e-05, 5.84803e-05, 6.09293e-05, 6.31582e-05, 6.51912e-05, 6.705e-05, 6.87518e-05, 7.03127e-05, 7.17461e-05, 
			3.1683e-05, 3.72898e-05, 4.2376e-05, 4.697e-05, 5.11186e-05, 5.4871e-05, 5.82714e-05, 6.13596e-05, 6.41706e-05, 6.67338e-05, 6.90778e-05, 7.12232e-05, 7.31918e-05, 7.50002e-05, 7.66636e-05, 7.81947e-05, 
			3.7042e-05, 4.25566e-05, 4.76142e-05, 5.22188e-05, 5.64062e-05, 6.02154e-05, 6.36868e-05, 6.6854e-05, 6.97494e-05, 7.24014e-05, 7.4833e-05, 7.7067e-05, 7.91214e-05, 8.10134e-05, 8.27576e-05, 8.4367e-05, 
			4.2419e-05, 4.78754e-05, 5.29046e-05, 5.75132e-05, 6.17288e-05, 6.55842e-05, 6.9112e-05, 7.23444e-05, 7.53104e-05, 7.8035e-05, 8.05402e-05, 8.28484e-05, 8.4975e-05, 8.69386e-05, 8.87508e-05, 9.04246e-05
		)
}

CapTable	"metal3_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000233766, 0.000134954, 9.76902e-05, 7.70582e-05, 6.3562e-05, 5.3878e-05, 4.6513e-05, 4.06846e-05, 3.59374e-05, 3.19854e-05, 2.86394e-05, 2.57676e-05, 2.32756e-05, 2.10936e-05, 1.91687e-05, 1.74598e-05, 
			0.00024895, 0.000146336, 0.00010682, 8.47214e-05, 7.01682e-05, 5.96798e-05, 5.16736e-05, 4.53162e-05, 4.01212e-05, 3.57828e-05, 3.20984e-05, 2.89274e-05, 2.6168e-05, 2.3746e-05, 2.16042e-05, 1.96988e-05, 
			0.000257706, 0.000153542, 0.000112913, 9.0004e-05, 7.48384e-05, 6.3856e-05, 5.54396e-05, 4.87324e-05, 4.32334e-05, 3.86272e-05, 3.47042e-05, 3.13188e-05, 2.83662e-05, 2.57688e-05, 2.34674e-05, 2.14164e-05, 
			0.000263204, 0.000158593, 0.00011738, 9.39842e-05, 7.84198e-05, 6.71076e-05, 5.84002e-05, 5.1438e-05, 4.57126e-05, 4.09036e-05, 3.6798e-05, 3.3247e-05, 3.01436e-05, 2.74086e-05, 2.49814e-05, 2.2815e-05, 
			0.000267588, 0.000162606, 0.000120998, 9.72508e-05, 8.13852e-05, 6.98078e-05, 6.0871e-05, 5.37046e-05, 4.77956e-05, 4.2821e-05, 3.85648e-05, 3.48766e-05, 3.1648e-05, 2.87984e-05, 2.62662e-05, 2.40034e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.56871e-05, 2.16891e-05, 2.68801e-05, 3.1054e-05, 3.42319e-05, 3.65728e-05, 3.82722e-05, 3.94464e-05, 4.03027e-05, 4.08875e-05, 4.12952e-05, 4.15774e-05, 4.17732e-05, 4.18744e-05, 4.19665e-05, 4.20318e-05, 
			2.23757e-05, 2.86468e-05, 3.4065e-05, 3.84112e-05, 4.1726e-05, 4.41755e-05, 4.5929e-05, 4.7211e-05, 4.80928e-05, 4.87079e-05, 4.91339e-05, 4.94301e-05, 4.95933e-05, 4.97353e-05, 4.98337e-05, 4.98989e-05, 
			2.93894e-05, 3.57922e-05, 4.13034e-05, 4.5722e-05, 4.90782e-05, 5.15989e-05, 5.33938e-05, 5.46711e-05, 5.55687e-05, 5.61956e-05, 5.65804e-05, 5.68801e-05, 5.70885e-05, 5.72335e-05, 5.73298e-05, 5.7404e-05, 
			3.6569e-05, 4.30214e-05, 4.85662e-05, 5.30008e-05, 5.64276e-05, 5.89268e-05, 6.07321e-05, 6.20138e-05, 6.29164e-05, 6.34887e-05, 6.39245e-05, 6.42287e-05, 6.44358e-05, 6.45846e-05, 6.46862e-05, 6.47588e-05, 
			4.3827e-05, 5.03074e-05, 5.59126e-05, 6.03658e-05, 6.37606e-05, 6.62657e-05, 6.80724e-05, 6.92925e-05, 7.0194e-05, 7.0822e-05, 7.12575e-05, 7.15607e-05, 7.17752e-05, 7.19178e-05, 7.20257e-05, 7.20921e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.29016e-05, 1.77572e-05, 2.19892e-05, 2.54423e-05, 2.81381e-05, 3.01791e-05, 3.1693e-05, 3.28219e-05, 3.36135e-05, 3.41844e-05, 3.464e-05, 3.49451e-05, 3.51658e-05, 3.53243e-05, 3.53828e-05, 3.54643e-05, 
			1.81602e-05, 2.32146e-05, 2.76448e-05, 3.12658e-05, 3.40966e-05, 3.6244e-05, 3.78538e-05, 3.90155e-05, 3.99147e-05, 4.05396e-05, 4.09893e-05, 4.13148e-05, 4.14855e-05, 4.16525e-05, 4.17743e-05, 4.18594e-05, 
			2.36776e-05, 2.88468e-05, 3.33672e-05, 3.70616e-05, 3.99626e-05, 4.21526e-05, 4.37848e-05, 4.50457e-05, 4.59317e-05, 4.65732e-05, 4.70374e-05, 4.72958e-05, 4.75355e-05, 4.77091e-05, 4.78316e-05, 4.79255e-05, 
			2.9343e-05, 3.4565e-05, 3.91264e-05, 4.28584e-05, 4.57702e-05, 4.8049e-05, 4.97125e-05, 5.09371e-05, 5.18328e-05, 5.23981e-05, 5.28657e-05, 5.32034e-05, 5.34439e-05, 5.36245e-05, 5.37532e-05, 5.3847e-05, 
			3.5085e-05, 4.03466e-05, 4.49264e-05, 4.86728e-05, 5.16768e-05, 5.39156e-05, 5.55884e-05, 5.68209e-05, 5.76239e-05, 5.82745e-05, 5.87436e-05, 5.90832e-05, 5.93331e-05, 5.95085e-05, 5.96429e-05, 5.97339e-05
		)
}

CapTable	"metal3_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.38674e-05, 5.93084e-05, 7.14036e-05, 8.06211e-05, 8.75153e-05, 9.26025e-05, 9.6309e-05, 9.89795e-05, 0.000100931, 0.000102334, 0.000103293, 0.000104, 0.000104502, 0.000104858, 0.000105169, 0.000105347, 
			6.46038e-05, 8.0354e-05, 9.27586e-05, 0.000102258, 0.000109386, 0.000114666, 0.000118523, 0.000121342, 0.000123327, 0.000124778, 0.000125823, 0.000126563, 0.000127154, 0.000127529, 0.000127793, 0.000127985, 
			8.58454e-05, 0.00010169, 0.000114203, 0.000123802, 0.000131024, 0.000136389, 0.000140324, 0.000143124, 0.000145182, 0.000146661, 0.000147719, 0.000148556, 0.000149094, 0.000149474, 0.000149751, 0.000149928, 
			0.000107313, 0.000123139, 0.000135676, 0.000145314, 0.000152584, 0.000157909, 0.000161857, 0.000164738, 0.000166811, 0.000168383, 0.000169451, 0.000170212, 0.000170765, 0.000171135, 0.000171402, 0.000171588, 
			0.000128922, 0.000144774, 0.000157319, 0.000166978, 0.00017418, 0.000179572, 0.000183527, 0.0001864, 0.000188582, 0.00019008, 0.000191162, 0.000191928, 0.000192453, 0.000192844, 0.0001931, 0.000193292
		)
}

CapTable	"metal3_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000210436, 0.000106079, 6.55972e-05, 4.34556e-05, 2.96936e-05, 2.06214e-05, 1.4461e-05, 1.02046e-05, 7.23148e-06, 5.14164e-06, 3.66796e-06, 2.62388e-06, 1.88315e-06, 1.35674e-06, 9.81208e-07, 7.1466e-07, 
			0.000217142, 0.000110355, 6.84986e-05, 4.55112e-05, 3.11744e-05, 2.1699e-05, 1.52472e-05, 1.07785e-05, 7.65326e-06, 5.45336e-06, 3.89666e-06, 2.79516e-06, 2.01346e-06, 1.45746e-06, 1.06168e-06, 7.78552e-07, 
			0.000219368, 0.000112009, 6.96978e-05, 4.63884e-05, 3.18264e-05, 2.21864e-05, 1.56112e-05, 1.10533e-05, 7.86134e-06, 5.61282e-06, 4.02258e-06, 2.89322e-06, 2.09248e-06, 1.52287e-06, 1.1154e-06, 8.28526e-07, 
			0.000219666, 0.000112559, 7.01616e-05, 4.67526e-05, 3.21128e-05, 2.2421e-05, 1.57945e-05, 1.11919e-05, 7.97122e-06, 5.70388e-06, 4.09828e-06, 2.95958e-06, 2.14708e-06, 1.57453e-06, 1.16484e-06, 8.73038e-07, 
			0.00021976, 0.000112776, 7.03816e-05, 4.69342e-05, 3.22662e-05, 2.25414e-05, 1.58976e-05, 1.12861e-05, 8.05014e-06, 5.7715e-06, 4.15342e-06, 3.00982e-06, 2.20186e-06, 1.61951e-06, 1.21205e-06, 9.16082e-07
		)
}

CapTable	"metal2_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000169221, 9.10122e-05, 6.09402e-05, 4.44218e-05, 3.39042e-05, 2.66418e-05, 2.13628e-05, 1.73857e-05, 1.431e-05, 1.18836e-05, 9.93888e-06, 8.35952e-06, 7.06632e-06, 5.99656e-06, 5.10696e-06, 4.36234e-06, 
			0.000178472, 9.80182e-05, 6.65598e-05, 4.9089e-05, 3.7827e-05, 2.99668e-05, 2.41948e-05, 1.98062e-05, 1.63835e-05, 1.36638e-05, 1.14698e-05, 9.67776e-06, 8.20362e-06, 6.97864e-06, 5.95708e-06, 5.09812e-06, 
			0.000183465, 0.000102313, 7.02124e-05, 5.22012e-05, 4.05116e-05, 3.2279e-05, 2.619e-05, 2.15298e-05, 1.78722e-05, 1.4952e-05, 1.25846e-05, 1.06457e-05, 9.04322e-06, 7.70778e-06, 6.59214e-06, 5.65122e-06, 
			0.000186796, 0.000105334, 7.28604e-05, 5.45064e-05, 4.25088e-05, 3.40174e-05, 2.77026e-05, 2.28454e-05, 1.90165e-05, 1.5948e-05, 1.34509e-05, 1.14014e-05, 9.70106e-06, 8.28382e-06, 7.09482e-06, 6.0929e-06, 
			0.000188784, 0.000107479, 7.48142e-05, 5.62386e-05, 4.403e-05, 3.53544e-05, 2.88768e-05, 2.38712e-05, 1.99153e-05, 1.67335e-05, 1.41381e-05, 1.20039e-05, 1.02292e-05, 8.7474e-06, 7.50308e-06, 6.4528e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.17918e-05, 4.13856e-05, 4.87664e-05, 5.43832e-05, 5.8686e-05, 6.20328e-05, 6.46831e-05, 6.6821e-05, 6.85761e-05, 7.00412e-05, 7.12829e-05, 7.23506e-05, 7.32807e-05, 7.41008e-05, 7.4832e-05, 7.54906e-05, 
			4.28728e-05, 5.19256e-05, 5.89984e-05, 6.44654e-05, 6.8729e-05, 7.21004e-05, 7.48158e-05, 7.70406e-05, 7.88958e-05, 8.04664e-05, 8.18166e-05, 8.29942e-05, 8.40326e-05, 8.49588e-05, 8.57954e-05, 8.65566e-05, 
			5.33564e-05, 6.18802e-05, 6.86158e-05, 7.38942e-05, 7.80608e-05, 8.14028e-05, 8.41292e-05, 8.63932e-05, 8.83046e-05, 8.99442e-05, 9.13694e-05, 9.2627e-05, 9.3748e-05, 9.47584e-05, 9.568e-05, 9.65256e-05, 
			6.32374e-05, 7.13184e-05, 7.77514e-05, 8.28454e-05, 8.69114e-05, 9.02086e-05, 9.29288e-05, 9.52132e-05, 9.71638e-05, 9.88538e-05, 0.00010034, 0.000101663, 0.000102855, 0.000103939, 0.000104937, 0.000105861, 
			7.2594e-05, 8.0259e-05, 8.64204e-05, 9.13424e-05, 9.53128e-05, 9.85606e-05, 0.000101269, 0.000103566, 0.000105548, 0.000107281, 0.000108821, 0.000110202, 0.000111459, 0.000112611, 0.000113679, 0.000114675
		)
}

CapTable	"metal2_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000173147, 9.66074e-05, 6.80246e-05, 5.27708e-05, 4.3292e-05, 3.68648e-05, 3.22438e-05, 2.87742e-05, 2.60788e-05, 2.39252e-05, 2.21636e-05, 2.06928e-05, 1.94428e-05, 1.83637e-05, 1.7419e-05, 1.65815e-05, 
			0.000185014, 0.00010654, 7.68306e-05, 6.08366e-05, 5.0787e-05, 4.38996e-05, 3.88922e-05, 3.50894e-05, 3.21012e-05, 2.96866e-05, 2.76894e-05, 2.60038e-05, 2.45564e-05, 2.32942e-05, 2.21786e-05, 2.11804e-05, 
			0.000193089, 0.000114173, 8.40272e-05, 6.76568e-05, 5.73052e-05, 5.01402e-05, 4.48828e-05, 4.08518e-05, 3.76534e-05, 3.50438e-05, 3.28646e-05, 3.1008e-05, 2.9399e-05, 2.79836e-05, 2.6722e-05, 2.55844e-05, 
			0.000199912, 0.000120905, 9.05546e-05, 7.39686e-05, 6.34016e-05, 5.60404e-05, 5.05952e-05, 4.63848e-05, 4.30152e-05, 4.02422e-05, 3.79062e-05, 3.58996e-05, 3.41462e-05, 3.25916e-05, 3.11954e-05, 2.99274e-05, 
			0.000205742, 0.000127065, 9.66556e-05, 7.99396e-05, 6.92222e-05, 6.17124e-05, 5.61164e-05, 5.17538e-05, 4.82354e-05, 4.53168e-05, 4.28394e-05, 4.06948e-05, 3.88072e-05, 3.71218e-05, 3.55978e-05, 3.42052e-05
		)
}

CapTable	"metal2_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000164571, 8.45244e-05, 5.29824e-05, 3.54866e-05, 2.4487e-05, 1.71624e-05, 1.21351e-05, 8.6278e-06, 6.1542e-06, 4.39896e-06, 3.14758e-06, 2.25182e-06, 1.61126e-06, 1.15062e-06, 8.19674e-07, 5.81014e-07, 
			0.000171089, 8.87404e-05, 5.58644e-05, 3.75418e-05, 2.59656e-05, 1.82308e-05, 1.29085e-05, 9.18536e-06, 6.55568e-06, 4.68562e-06, 3.35012e-06, 2.39618e-06, 1.71101e-06, 1.21793e-06, 8.63322e-07, 6.07476e-07, 
			0.000173325, 9.04006e-05, 5.70564e-05, 3.83904e-05, 2.65918e-05, 1.8685e-05, 1.3237e-05, 9.42192e-06, 6.72314e-06, 4.80392e-06, 3.43288e-06, 2.44998e-06, 1.74384e-06, 1.2364e-06, 8.70478e-07, 6.07184e-07, 
			0.000174073, 9.10464e-05, 5.75458e-05, 3.87514e-05, 2.68468e-05, 1.88716e-05, 1.33702e-05, 9.51338e-06, 6.7872e-06, 4.84554e-06, 3.45608e-06, 2.46058e-06, 1.74549e-06, 1.23031e-06, 8.59824e-07, 5.92698e-07, 
			0.000173757, 9.1125e-05, 5.7655e-05, 3.88424e-05, 2.6912e-05, 1.89208e-05, 1.34074e-05, 9.53836e-06, 6.79818e-06, 4.84544e-06, 3.44966e-06, 2.44766e-06, 1.72854e-06, 1.21103e-06, 8.39192e-07, 5.70342e-07
		)
}

CapTable	"metal2_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.01117e-05, 4.00685e-05, 4.79197e-05, 5.40014e-05, 5.87201e-05, 6.24135e-05, 6.53409e-05, 6.76875e-05, 6.95887e-05, 7.11532e-05, 7.24507e-05, 7.34855e-05, 7.43906e-05, 7.51228e-05, 7.5757e-05, 7.62876e-05, 
			4.26074e-05, 5.2563e-05, 6.05082e-05, 6.67514e-05, 7.16694e-05, 7.55748e-05, 7.87105e-05, 8.12532e-05, 8.33338e-05, 8.50671e-05, 8.65061e-05, 8.76652e-05, 8.86811e-05, 8.95068e-05, 9.02274e-05, 9.08222e-05, 
			5.52348e-05, 6.51228e-05, 7.30841e-05, 7.94109e-05, 8.44412e-05, 8.84787e-05, 9.17613e-05, 9.44545e-05, 9.66223e-05, 9.84718e-05, 9.99842e-05, 0.000101272, 0.000102354, 0.000103244, 0.000104028, 0.000104673, 
			6.79102e-05, 7.77605e-05, 8.57349e-05, 9.21177e-05, 9.72331e-05, 0.000101363, 0.000104748, 0.000107532, 0.000109788, 0.000111718, 0.000113298, 0.000114655, 0.000115781, 0.000116745, 0.000117564, 0.000118262, 
			8.0625e-05, 9.04141e-05, 9.83906e-05, 0.000104823, 0.000110026, 0.000114186, 0.000117649, 0.000120473, 0.000122842, 0.000124818, 0.000126452, 0.000127863, 0.000129033, 0.000130035, 0.000130891, 0.000131615
		)
}

CapTable	"metal2_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.73626e-06, 8.86132e-06, 1.06981e-05, 1.22458e-05, 1.35247e-05, 1.45747e-05, 1.54353e-05, 1.61428e-05, 1.67263e-05, 1.71992e-05, 1.75853e-05, 1.79518e-05, 1.8216e-05, 1.84668e-05, 1.86606e-05, 1.88307e-05, 
			8.89462e-06, 1.10168e-05, 1.2903e-05, 1.45206e-05, 1.58826e-05, 1.70174e-05, 1.79607e-05, 1.87456e-05, 1.94007e-05, 1.99311e-05, 2.03771e-05, 2.0797e-05, 2.11063e-05, 2.14016e-05, 2.16275e-05, 2.18387e-05, 
			1.10538e-05, 1.31778e-05, 1.50945e-05, 1.67589e-05, 1.81732e-05, 1.93643e-05, 2.03507e-05, 2.11657e-05, 2.19055e-05, 2.24742e-05, 2.29882e-05, 2.34024e-05, 2.37582e-05, 2.40857e-05, 2.43328e-05, 2.45684e-05, 
			1.32206e-05, 1.53573e-05, 1.72977e-05, 1.89969e-05, 2.04521e-05, 2.16851e-05, 2.2706e-05, 2.35653e-05, 2.43432e-05, 2.49472e-05, 2.54996e-05, 2.5938e-05, 2.63337e-05, 2.66598e-05, 2.69395e-05, 2.71786e-05, 
			1.54108e-05, 1.75533e-05, 1.95152e-05, 2.12293e-05, 2.26893e-05, 2.39935e-05, 2.50387e-05, 2.59608e-05, 2.67196e-05, 2.7366e-05, 2.79456e-05, 2.8402e-05, 2.8819e-05, 2.91642e-05, 2.94573e-05, 2.97145e-05
		)
}

CapTable	"metal2_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180939, 0.000105534, 7.70946e-05, 6.14262e-05, 5.12596e-05, 4.40412e-05, 3.86198e-05, 3.43898e-05, 3.09956e-05, 2.82126e-05, 2.58908e-05, 2.3925e-05, 2.22396e-05, 2.07782e-05, 1.94988e-05, 1.83683e-05, 
			0.000194543, 0.000116185, 8.5943e-05, 6.90936e-05, 5.80714e-05, 5.02066e-05, 4.42766e-05, 3.96322e-05, 3.58916e-05, 3.2813e-05, 3.02338e-05, 2.80412e-05, 2.6153e-05, 2.4509e-05, 2.30634e-05, 2.17806e-05, 
			0.000202878, 0.000123358, 9.22348e-05, 7.4736e-05, 6.32404e-05, 5.49948e-05, 4.87534e-05, 4.38466e-05, 3.98798e-05, 3.66022e-05, 3.38454e-05, 3.14922e-05, 2.94578e-05, 2.7679e-05, 2.61086e-05, 2.47098e-05, 
			0.00020893, 0.000128861, 9.7255e-05, 7.9373e-05, 6.75658e-05, 5.90696e-05, 5.26144e-05, 4.75212e-05, 4.33886e-05, 3.99612e-05, 3.70676e-05, 3.45884e-05, 3.24366e-05, 3.05484e-05, 2.8875e-05, 2.73792e-05, 
			0.000213312, 0.000133283, 0.000101445, 8.33376e-05, 7.1331e-05, 6.26648e-05, 5.60574e-05, 5.0824e-05, 4.6563e-05, 4.30168e-05, 4.00126e-05, 3.74292e-05, 3.51792e-05, 3.3198e-05, 3.14364e-05, 2.98564e-05
		)
}

CapTable	"metal2_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.68588e-05, 3.63912e-05, 4.4002e-05, 4.98496e-05, 5.42375e-05, 5.74869e-05, 5.98727e-05, 6.16116e-05, 6.28748e-05, 6.3793e-05, 6.44585e-05, 6.49346e-05, 6.53685e-05, 6.56257e-05, 6.5813e-05, 6.59498e-05, 
			3.9296e-05, 4.90714e-05, 5.6905e-05, 6.2949e-05, 6.75113e-05, 7.09027e-05, 7.34015e-05, 7.52286e-05, 7.65611e-05, 7.75281e-05, 7.82286e-05, 7.88462e-05, 7.92213e-05, 7.94933e-05, 7.96935e-05, 7.98393e-05, 
			5.21082e-05, 6.19593e-05, 6.98713e-05, 7.59987e-05, 8.06257e-05, 8.40767e-05, 8.66244e-05, 8.84908e-05, 8.98512e-05, 9.09629e-05, 9.16899e-05, 9.22185e-05, 9.26031e-05, 9.28853e-05, 9.30908e-05, 9.32421e-05, 
			6.5091e-05, 7.49866e-05, 8.29314e-05, 8.90914e-05, 9.37537e-05, 9.72307e-05, 9.97986e-05, 0.00010168, 0.000103197, 0.000104207, 0.000104942, 0.000105478, 0.00010587, 0.000106155, 0.000106365, 0.000106519, 
			7.81626e-05, 8.80347e-05, 9.59824e-05, 0.00010215, 0.000106824, 0.000110307, 0.000113033, 0.000114932, 0.000116323, 0.000117338, 0.000118079, 0.000118619, 0.000119013, 0.000119302, 0.000119515, 0.000119673
		)
}

CapTable	"metal2_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.6223e-05, 2.18934e-05, 2.68246e-05, 3.08908e-05, 3.41055e-05, 3.65687e-05, 3.84222e-05, 3.97976e-05, 4.081e-05, 4.1545e-05, 4.20779e-05, 4.24706e-05, 4.26622e-05, 4.28567e-05, 4.29943e-05, 4.30942e-05, 
			2.26844e-05, 2.86402e-05, 3.38546e-05, 3.81662e-05, 4.15821e-05, 4.42125e-05, 4.6195e-05, 4.767e-05, 4.87532e-05, 4.95463e-05, 5.01263e-05, 5.04306e-05, 5.07227e-05, 5.09348e-05, 5.10842e-05, 5.11912e-05, 
			2.94698e-05, 3.55951e-05, 4.09533e-05, 4.53829e-05, 4.88925e-05, 5.15983e-05, 5.36356e-05, 5.51513e-05, 5.62707e-05, 5.69652e-05, 5.75472e-05, 5.79695e-05, 5.82751e-05, 5.84913e-05, 5.86467e-05, 5.87547e-05, 
			3.64652e-05, 4.2689e-05, 4.81248e-05, 5.26132e-05, 5.61665e-05, 5.89007e-05, 6.09662e-05, 6.25076e-05, 6.3491e-05, 6.43049e-05, 6.49009e-05, 6.53282e-05, 6.56346e-05, 6.58553e-05, 6.60102e-05, 6.61201e-05, 
			4.35892e-05, 4.98533e-05, 5.53236e-05, 5.98307e-05, 6.34002e-05, 6.61478e-05, 6.8069e-05, 6.95952e-05, 7.07199e-05, 7.15444e-05, 7.21393e-05, 7.25706e-05, 7.28775e-05, 7.3097e-05, 7.32495e-05, 7.33591e-05
		)
}

CapTable	"metal2_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.45816e-06, 9.54604e-06, 1.13704e-05, 1.2986e-05, 1.44204e-05, 1.56933e-05, 1.682e-05, 1.78156e-05, 1.86934e-05, 1.94663e-05, 2.01454e-05, 2.07432e-05, 2.12676e-05, 2.1729e-05, 2.21334e-05, 2.24885e-05, 
			9.41342e-06, 1.14786e-05, 1.33556e-05, 1.5054e-05, 1.65838e-05, 1.7955e-05, 1.91787e-05, 2.02666e-05, 2.12309e-05, 2.20839e-05, 2.28385e-05, 2.35047e-05, 2.40911e-05, 2.46086e-05, 2.50623e-05, 2.54644e-05, 
			1.13955e-05, 1.34629e-05, 1.53789e-05, 1.7133e-05, 1.87252e-05, 2.01608e-05, 2.14477e-05, 2.25964e-05, 2.36199e-05, 2.4528e-05, 2.53336e-05, 2.60455e-05, 2.66744e-05, 2.72296e-05, 2.77215e-05, 2.81535e-05, 
			1.34155e-05, 1.54987e-05, 1.74462e-05, 1.92419e-05, 2.08801e-05, 2.23617e-05, 2.36945e-05, 2.48894e-05, 2.59561e-05, 2.69047e-05, 2.77476e-05, 2.84931e-05, 2.91555e-05, 2.97395e-05, 3.02562e-05, 3.07137e-05, 
			1.54821e-05, 1.75762e-05, 1.95498e-05, 2.13762e-05, 2.30483e-05, 2.45661e-05, 2.59344e-05, 2.71637e-05, 2.82622e-05, 2.92408e-05, 3.0111e-05, 3.08858e-05, 3.15705e-05, 3.21786e-05, 3.27148e-05, 3.31896e-05
		)
}

CapTable	"metal2_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178138, 0.000101704, 7.22918e-05, 5.57168e-05, 4.47226e-05, 3.67626e-05, 3.06882e-05, 2.5893e-05, 2.20188e-05, 1.88361e-05, 1.61891e-05, 1.39664e-05, 1.20857e-05, 1.0485e-05, 9.1155e-06, 7.93942e-06, 
			0.000190398, 0.000110877, 7.95212e-05, 6.16328e-05, 4.96618e-05, 4.0948e-05, 3.42712e-05, 2.89828e-05, 2.4697e-05, 2.11662e-05, 1.82218e-05, 1.57434e-05, 1.36415e-05, 1.18488e-05, 1.03121e-05, 8.98978e-06, 
			0.00019722, 0.000116416, 8.40658e-05, 6.54256e-05, 5.2892e-05, 4.3721e-05, 3.66702e-05, 3.10688e-05, 2.65176e-05, 2.2759e-05, 1.96183e-05, 1.69689e-05, 1.47187e-05, 1.27955e-05, 1.11447e-05, 9.72188e-06, 
			0.000201596, 0.000120138, 8.72122e-05, 6.8108e-05, 5.51956e-05, 4.57198e-05, 3.84126e-05, 3.25932e-05, 2.78548e-05, 2.3934e-05, 2.06518e-05, 1.78788e-05, 1.55198e-05, 1.35012e-05, 1.17661e-05, 1.02693e-05, 
			0.00020416, 0.000122657, 8.94248e-05, 7.00342e-05, 5.6874e-05, 4.7192e-05, 3.97072e-05, 3.37316e-05, 2.88568e-05, 2.48176e-05, 2.14308e-05, 1.85661e-05, 1.61259e-05, 1.40359e-05, 1.22378e-05, 1.0685e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.9599e-05, 2.48504e-05, 2.92254e-05, 3.29248e-05, 3.60819e-05, 3.87938e-05, 4.11367e-05, 4.31709e-05, 4.49465e-05, 4.65046e-05, 4.78788e-05, 4.90978e-05, 5.01848e-05, 5.11598e-05, 5.20387e-05, 5.28354e-05, 
			2.4411e-05, 2.94078e-05, 3.3729e-05, 3.74554e-05, 4.06778e-05, 4.34721e-05, 4.59047e-05, 4.80321e-05, 4.99018e-05, 5.15531e-05, 5.30195e-05, 5.43285e-05, 5.55036e-05, 5.65639e-05, 5.75257e-05, 5.84027e-05, 
			2.912e-05, 3.39342e-05, 3.81662e-05, 4.1859e-05, 4.50756e-05, 4.78862e-05, 5.0349e-05, 5.25162e-05, 5.44322e-05, 5.61345e-05, 5.76552e-05, 5.90205e-05, 6.02528e-05, 6.13712e-05, 6.2391e-05, 6.33256e-05, 
			3.3736e-05, 3.84014e-05, 4.2532e-05, 4.6163e-05, 4.93482e-05, 5.21474e-05, 5.46146e-05, 5.67968e-05, 5.87374e-05, 6.04718e-05, 6.20283e-05, 6.34332e-05, 6.47082e-05, 6.58706e-05, 6.6936e-05, 6.79168e-05, 
			3.8264e-05, 4.27706e-05, 4.67946e-05, 5.03544e-05, 5.3495e-05, 5.62692e-05, 5.87266e-05, 6.0914e-05, 6.2867e-05, 6.46212e-05, 6.62034e-05, 6.76388e-05, 6.89478e-05, 7.0146e-05, 7.12486e-05, 7.22686e-05
		)
}

CapTable	"metal2_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.72178e-05, 2.28177e-05, 2.77927e-05, 3.2134e-05, 3.58357e-05, 3.8934e-05, 4.14819e-05, 4.35464e-05, 4.52051e-05, 4.65222e-05, 4.75628e-05, 4.83807e-05, 4.90211e-05, 4.95196e-05, 4.99067e-05, 5.02087e-05, 
			2.3363e-05, 2.92556e-05, 3.45677e-05, 3.92127e-05, 4.31826e-05, 4.65011e-05, 4.9231e-05, 5.14433e-05, 5.32193e-05, 5.46337e-05, 5.57526e-05, 5.66297e-05, 5.73152e-05, 5.78494e-05, 5.82677e-05, 5.85721e-05, 
			2.99284e-05, 3.60247e-05, 4.15244e-05, 4.63339e-05, 5.04307e-05, 5.38583e-05, 5.66719e-05, 5.89571e-05, 6.07907e-05, 6.225e-05, 6.3403e-05, 6.4309e-05, 6.5016e-05, 6.55457e-05, 6.59777e-05, 6.63116e-05, 
			3.67873e-05, 4.30187e-05, 4.86209e-05, 5.35151e-05, 5.76796e-05, 6.1157e-05, 6.40173e-05, 6.63392e-05, 6.81989e-05, 6.9681e-05, 7.08462e-05, 7.1768e-05, 7.24601e-05, 7.30235e-05, 7.34605e-05, 7.38012e-05, 
			4.38438e-05, 5.01286e-05, 5.57824e-05, 6.071e-05, 6.49101e-05, 6.8413e-05, 7.12919e-05, 7.36279e-05, 7.5501e-05, 7.69876e-05, 7.81361e-05, 7.90641e-05, 7.97881e-05, 8.03541e-05, 8.07918e-05, 8.11346e-05
		)
}

CapTable	"metal2_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000172853, 9.4512e-05, 6.35286e-05, 4.57888e-05, 3.40448e-05, 2.57126e-05, 1.95863e-05, 1.4992e-05, 1.15086e-05, 8.8496e-06, 6.81308e-06, 5.24854e-06, 4.04518e-06, 3.11872e-06, 2.40474e-06, 1.85439e-06, 
			0.000182377, 0.000100919, 6.80444e-05, 4.9099e-05, 3.65136e-05, 2.75804e-05, 2.10112e-05, 1.6084e-05, 1.2348e-05, 9.49662e-06, 7.31102e-06, 5.63274e-06, 4.34188e-06, 3.34788e-06, 2.581e-06, 1.98987e-06, 
			0.000186467, 0.000103858, 7.01586e-05, 5.06414e-05, 3.7677e-05, 2.84612e-05, 2.16838e-05, 1.66009e-05, 1.27462e-05, 9.80368e-06, 7.54856e-06, 5.8158e-06, 4.4831e-06, 3.45654e-06, 2.6642e-06, 2.05364e-06, 
			0.000188292, 0.000105238, 7.11748e-05, 5.13954e-05, 3.82374e-05, 2.88896e-05, 2.2012e-05, 1.68527e-05, 1.29405e-05, 9.95394e-06, 7.66546e-06, 5.9055e-06, 4.5524e-06, 3.50842e-06, 2.70426e-06, 2.08386e-06, 
			0.000188578, 0.000105721, 7.15676e-05, 5.16984e-05, 3.84676e-05, 2.90692e-05, 2.21538e-05, 1.6963e-05, 1.30254e-05, 1.002e-05, 7.7159e-06, 5.94362e-06, 4.58054e-06, 3.5302e-06, 2.72156e-06, 2.09676e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.56718e-05, 2.03266e-05, 2.43368e-05, 2.78193e-05, 3.0852e-05, 3.34956e-05, 3.58022e-05, 3.78143e-05, 3.95698e-05, 4.11016e-05, 4.24391e-05, 4.36059e-05, 4.46263e-05, 4.55171e-05, 4.62973e-05, 4.69797e-05, 
			2.03038e-05, 2.49538e-05, 2.90962e-05, 3.27562e-05, 3.59794e-05, 3.88115e-05, 4.12981e-05, 4.34787e-05, 4.53906e-05, 4.70665e-05, 4.85337e-05, 4.98189e-05, 5.09465e-05, 5.19339e-05, 5.28021e-05, 5.3561e-05, 
			2.50775e-05, 2.97593e-05, 3.39833e-05, 3.77504e-05, 4.10868e-05, 4.40352e-05, 4.66341e-05, 4.89228e-05, 5.09345e-05, 5.27039e-05, 5.4257e-05, 5.56226e-05, 5.68218e-05, 5.78761e-05, 5.88003e-05, 5.96146e-05, 
			2.99885e-05, 3.47083e-05, 3.89886e-05, 4.28251e-05, 4.62393e-05, 4.92665e-05, 5.19449e-05, 5.43074e-05, 5.63901e-05, 5.82263e-05, 5.98426e-05, 6.12661e-05, 6.25167e-05, 6.36183e-05, 6.45887e-05, 6.544e-05, 
			3.50159e-05, 3.97476e-05, 4.40634e-05, 4.79476e-05, 5.14157e-05, 5.44969e-05, 5.72304e-05, 5.96477e-05, 6.1784e-05, 6.36696e-05, 6.53332e-05, 6.67961e-05, 6.80886e-05, 6.92245e-05, 7.02274e-05, 7.11094e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.35448e-05, 1.65634e-05, 1.89374e-05, 2.08807e-05, 2.25166e-05, 2.39216e-05, 2.51473e-05, 2.62297e-05, 2.71955e-05, 2.80653e-05, 2.8855e-05, 2.95773e-05, 3.02427e-05, 3.08596e-05, 3.14349e-05, 3.19744e-05, 
			1.5814e-05, 1.84739e-05, 2.06888e-05, 2.25628e-05, 2.41746e-05, 2.55796e-05, 2.68189e-05, 2.79234e-05, 2.89167e-05, 2.98177e-05, 3.06411e-05, 3.13992e-05, 3.21017e-05, 3.27565e-05, 3.33705e-05, 3.3949e-05, 
			1.7861e-05, 2.02846e-05, 2.23644e-05, 2.41598e-05, 2.57268e-05, 2.71082e-05, 2.8338e-05, 2.9443e-05, 3.0444e-05, 3.1358e-05, 3.21986e-05, 3.29769e-05, 3.37021e-05, 3.43816e-05, 3.50215e-05, 3.56274e-05, 
			1.9753e-05, 2.20024e-05, 2.39652e-05, 2.56848e-05, 2.72014e-05, 2.8552e-05, 2.97635e-05, 3.08604e-05, 3.18608e-05, 3.278e-05, 3.36302e-05, 3.44218e-05, 3.51628e-05, 3.58605e-05, 3.65207e-05, 3.7148e-05, 
			2.1532e-05, 2.36298e-05, 2.549e-05, 2.71374e-05, 2.86058e-05, 2.9923e-05, 3.1114e-05, 3.21997e-05, 3.31959e-05, 3.41162e-05, 3.49725e-05, 3.57732e-05, 3.65268e-05, 3.72389e-05, 3.79155e-05, 3.85606e-05
		)
}

CapTable	"metal2_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00018566, 0.000111649, 8.43446e-05, 6.95812e-05, 6.0123e-05, 5.34496e-05, 4.84398e-05, 4.4513e-05, 4.13348e-05, 3.86976e-05, 3.64648e-05, 3.45426e-05, 3.2864e-05, 3.13802e-05, 3.00544e-05, 2.88586e-05, 
			0.000200994, 0.00012396, 9.47882e-05, 7.87832e-05, 6.84154e-05, 6.1049e-05, 5.54902e-05, 5.11146e-05, 4.75602e-05, 4.4601e-05, 4.20878e-05, 3.99176e-05, 3.80172e-05, 3.63328e-05, 3.4824e-05, 3.346e-05, 
			0.000210962, 0.000132649, 0.000102495, 8.57532e-05, 7.48382e-05, 6.70296e-05, 6.11084e-05, 5.64276e-05, 5.26106e-05, 4.94214e-05, 4.67036e-05, 4.43494e-05, 4.22816e-05, 4.04438e-05, 3.87934e-05, 3.72976e-05, 
			0.0002185, 0.000139511, 0.000108762, 9.15442e-05, 8.02416e-05, 7.2119e-05, 6.59316e-05, 6.10204e-05, 5.70006e-05, 5.363e-05, 5.07484e-05, 4.82444e-05, 4.6039e-05, 4.40734e-05, 4.23036e-05, 4.06962e-05, 
			0.00022421, 0.000145126, 0.000114036, 9.65036e-05, 8.49282e-05, 7.6575e-05, 7.0185e-05, 6.50916e-05, 6.0908e-05, 5.73888e-05, 5.43704e-05, 5.17404e-05, 4.94172e-05, 4.73418e-05, 4.54688e-05, 4.3764e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.29038e-05, 1.72543e-05, 2.11177e-05, 2.44792e-05, 2.73424e-05, 2.9732e-05, 3.16962e-05, 3.32929e-05, 3.45717e-05, 3.55915e-05, 3.63971e-05, 3.70309e-05, 3.75265e-05, 3.79139e-05, 3.82163e-05, 3.8449e-05, 
			1.75672e-05, 2.20956e-05, 2.61839e-05, 2.97633e-05, 3.28158e-05, 3.53685e-05, 3.74688e-05, 3.91747e-05, 4.05457e-05, 4.16357e-05, 4.24974e-05, 4.31766e-05, 4.37089e-05, 4.41217e-05, 4.44453e-05, 4.4716e-05, 
			2.25192e-05, 2.71809e-05, 3.1401e-05, 3.50947e-05, 3.82473e-05, 4.08815e-05, 4.30493e-05, 4.4809e-05, 4.62221e-05, 4.73463e-05, 4.82354e-05, 4.89362e-05, 4.94839e-05, 4.99358e-05, 5.02701e-05, 5.05298e-05, 
			2.76817e-05, 3.24355e-05, 3.67323e-05, 4.04895e-05, 4.3694e-05, 4.63714e-05, 4.85727e-05, 5.03581e-05, 5.17946e-05, 5.29361e-05, 5.38393e-05, 5.45505e-05, 5.51345e-05, 5.55691e-05, 5.59092e-05, 5.61729e-05, 
			3.2977e-05, 3.77748e-05, 4.2109e-05, 4.58996e-05, 4.91293e-05, 5.18248e-05, 5.40403e-05, 5.58381e-05, 5.72826e-05, 5.84334e-05, 5.9373e-05, 6.00893e-05, 6.06514e-05, 6.10897e-05, 6.14326e-05, 6.16996e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.1593e-05, 1.47509e-05, 1.74351e-05, 1.97791e-05, 2.18597e-05, 2.37266e-05, 2.54121e-05, 2.69381e-05, 2.8321e-05, 2.95749e-05, 3.0712e-05, 3.17409e-05, 3.26718e-05, 3.35138e-05, 3.42726e-05, 3.49586e-05, 
			1.44612e-05, 1.7511e-05, 2.02347e-05, 2.26822e-05, 2.48966e-05, 2.69079e-05, 2.8739e-05, 3.04065e-05, 3.19253e-05, 3.33069e-05, 3.45643e-05, 3.57041e-05, 3.67369e-05, 3.76739e-05, 3.85187e-05, 3.92835e-05, 
			1.73309e-05, 2.03514e-05, 2.31154e-05, 2.56407e-05, 2.79484e-05, 3.00599e-05, 3.19914e-05, 3.3758e-05, 3.53711e-05, 3.68422e-05, 3.81823e-05, 3.93994e-05, 4.05051e-05, 4.15055e-05, 4.24125e-05, 4.32306e-05, 
			2.02513e-05, 2.32817e-05, 2.60878e-05, 2.86752e-05, 3.1056e-05, 3.32433e-05, 3.52504e-05, 3.70916e-05, 3.87754e-05, 4.03122e-05, 4.17149e-05, 4.29885e-05, 4.4148e-05, 4.51994e-05, 4.61491e-05, 4.70096e-05, 
			2.3249e-05, 2.62901e-05, 2.91338e-05, 3.17714e-05, 3.42096e-05, 3.6456e-05, 3.85216e-05, 4.04194e-05, 4.21563e-05, 4.37452e-05, 4.51925e-05, 4.65116e-05, 4.77092e-05, 4.87971e-05, 4.97824e-05, 5.06719e-05
		)
}

CapTable	"metal2_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.22044e-06, 1.03661e-05, 1.22013e-05, 1.38191e-05, 1.52695e-05, 1.65809e-05, 1.77717e-05, 1.88556e-05, 1.98429e-05, 2.07417e-05, 2.15584e-05, 2.23004e-05, 2.2973e-05, 2.35819e-05, 2.41335e-05, 2.46304e-05, 
			1.0124e-05, 1.21938e-05, 1.40563e-05, 1.57476e-05, 1.7293e-05, 1.87078e-05, 2.00043e-05, 2.1193e-05, 2.22805e-05, 2.32746e-05, 2.41801e-05, 2.50058e-05, 2.57569e-05, 2.64369e-05, 2.70543e-05, 2.76117e-05, 
			1.20171e-05, 1.40638e-05, 1.59556e-05, 1.77017e-05, 1.93138e-05, 2.08019e-05, 2.21735e-05, 2.34349e-05, 2.45926e-05, 2.5653e-05, 2.66219e-05, 2.75062e-05, 2.83105e-05, 2.90418e-05, 2.9704e-05, 3.03041e-05, 
			1.39367e-05, 1.59891e-05, 1.79094e-05, 1.97012e-05, 2.13672e-05, 2.29121e-05, 2.43404e-05, 2.56562e-05, 2.68674e-05, 2.7979e-05, 2.89944e-05, 2.99238e-05, 3.0768e-05, 3.15353e-05, 3.22331e-05, 3.28643e-05, 
			1.5906e-05, 1.79643e-05, 1.99138e-05, 2.17446e-05, 2.34542e-05, 2.50426e-05, 2.65148e-05, 2.78744e-05, 2.91269e-05, 3.0276e-05, 3.13293e-05, 3.22902e-05, 3.31664e-05, 3.39635e-05, 3.46866e-05, 3.53425e-05
		)
}

CapTable	"metal2_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180662, 0.000105073, 7.63286e-05, 6.02376e-05, 4.95562e-05, 4.17604e-05, 3.57286e-05, 3.08796e-05, 2.68784e-05, 2.3515e-05, 2.06498e-05, 1.81854e-05, 1.60498e-05, 1.41882e-05, 1.2559e-05, 1.11279e-05, 
			0.000194083, 0.000115369, 8.462e-05, 6.71412e-05, 5.54058e-05, 4.6782e-05, 4.00788e-05, 3.46728e-05, 3.02018e-05, 2.64376e-05, 2.32268e-05, 2.04622e-05, 1.80643e-05, 1.59727e-05, 1.41415e-05, 1.25317e-05, 
			0.00020201, 0.000121917, 9.007e-05, 7.17416e-05, 5.93548e-05, 5.01962e-05, 4.30506e-05, 3.72728e-05, 3.24854e-05, 2.8449e-05, 2.50022e-05, 2.2032e-05, 1.94537e-05, 1.72045e-05, 1.52331e-05, 1.35009e-05, 
			0.00020737, 0.0001265, 9.39648e-05, 7.50736e-05, 6.22238e-05, 5.26886e-05, 4.52272e-05, 3.91812e-05, 3.41638e-05, 2.99286e-05, 2.63092e-05, 2.3188e-05, 2.04772e-05, 1.81109e-05, 1.60372e-05, 1.4213e-05, 
			0.000210762, 0.000129723, 9.67734e-05, 7.7506e-05, 6.43342e-05, 5.45324e-05, 4.68436e-05, 4.06002e-05, 3.54128e-05, 3.10298e-05, 2.72822e-05, 2.40482e-05, 2.12394e-05, 1.87854e-05, 1.6634e-05, 1.47426e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.1305e-06, 1.20384e-05, 1.46173e-05, 1.68883e-05, 1.88693e-05, 2.05759e-05, 2.20316e-05, 2.32618e-05, 2.43008e-05, 2.51637e-05, 2.58863e-05, 2.64849e-05, 2.69778e-05, 2.73857e-05, 2.77216e-05, 2.79981e-05, 
			1.20589e-05, 1.50168e-05, 1.77152e-05, 2.01274e-05, 2.22473e-05, 2.40893e-05, 2.56633e-05, 2.70036e-05, 2.81289e-05, 2.90757e-05, 2.98624e-05, 3.05176e-05, 3.106e-05, 3.15083e-05, 3.1878e-05, 3.21769e-05, 
			1.51089e-05, 1.81256e-05, 2.09074e-05, 2.3408e-05, 2.56124e-05, 2.75326e-05, 2.91776e-05, 3.05804e-05, 3.17648e-05, 3.27567e-05, 3.3585e-05, 3.42747e-05, 3.48458e-05, 3.53192e-05, 3.57007e-05, 3.6033e-05, 
			1.82636e-05, 2.13355e-05, 2.41794e-05, 2.67376e-05, 2.90039e-05, 3.09708e-05, 3.26655e-05, 3.41067e-05, 3.53265e-05, 3.63496e-05, 3.72048e-05, 3.79163e-05, 3.84962e-05, 3.89873e-05, 3.94026e-05, 3.97356e-05, 
			2.15109e-05, 2.46145e-05, 2.74979e-05, 3.00977e-05, 3.23996e-05, 3.44037e-05, 3.61265e-05, 3.7595e-05, 3.88364e-05, 3.98801e-05, 4.07527e-05, 4.14669e-05, 4.20847e-05, 4.25844e-05, 4.29974e-05, 4.34281e-05
		)
}

CapTable	"metal2_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.81947e-05, 2.38719e-05, 2.88669e-05, 3.32369e-05, 3.70132e-05, 4.02407e-05, 4.2972e-05, 4.5264e-05, 4.71701e-05, 4.87547e-05, 5.00602e-05, 5.11363e-05, 5.20226e-05, 5.27489e-05, 5.3344e-05, 5.38324e-05, 
			2.42765e-05, 3.01718e-05, 3.5469e-05, 4.01382e-05, 4.41919e-05, 4.76631e-05, 5.06071e-05, 5.3079e-05, 5.5146e-05, 5.68613e-05, 5.82841e-05, 5.94556e-05, 6.04174e-05, 6.12098e-05, 6.18611e-05, 6.24026e-05, 
			3.07175e-05, 3.67792e-05, 4.22532e-05, 4.70924e-05, 5.1296e-05, 5.49e-05, 5.79596e-05, 6.05344e-05, 6.26888e-05, 6.44797e-05, 6.59631e-05, 6.71876e-05, 6.81976e-05, 6.90288e-05, 6.97239e-05, 7.02713e-05, 
			3.74346e-05, 4.36159e-05, 4.91946e-05, 5.41298e-05, 5.84181e-05, 6.21036e-05, 6.52339e-05, 6.78719e-05, 7.00779e-05, 7.19116e-05, 7.34341e-05, 7.46935e-05, 7.5747e-05, 7.66002e-05, 7.72893e-05, 7.78688e-05, 
			4.43477e-05, 5.05833e-05, 5.62217e-05, 6.12097e-05, 6.5553e-05, 6.92835e-05, 7.24533e-05, 7.5126e-05, 7.73631e-05, 7.92278e-05, 8.07752e-05, 8.2072e-05, 8.3109e-05, 8.39812e-05, 8.46989e-05, 8.51973e-05
		)
}

CapTable	"metal2_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000174956, 9.74086e-05, 6.70598e-05, 4.97574e-05, 3.82516e-05, 2.99836e-05, 2.37804e-05, 1.90061e-05, 1.52683e-05, 1.23141e-05, 9.95786e-06, 8.06982e-06, 6.55116e-06, 5.3246e-06, 4.33178e-06, 3.52634e-06, 
			0.000185621, 0.00010495, 7.26648e-05, 5.40844e-05, 4.16568e-05, 3.26996e-05, 2.59686e-05, 2.07764e-05, 1.671e-05, 1.34871e-05, 1.09154e-05, 8.85182e-06, 7.18992e-06, 5.84622e-06, 4.7573e-06, 3.8722e-06, 
			0.000190836, 0.000108935, 7.57274e-05, 5.64766e-05, 4.35736e-05, 3.42444e-05, 2.72238e-05, 2.18002e-05, 1.75444e-05, 1.41716e-05, 1.14759e-05, 9.31072e-06, 7.56462e-06, 6.15198e-06, 5.00438e-06, 4.07566e-06, 
			0.000193682, 0.000111226, 7.7542e-05, 5.79276e-05, 4.4737e-05, 3.51946e-05, 2.79976e-05, 2.24354e-05, 1.80666e-05, 1.45998e-05, 1.18271e-05, 9.59816e-06, 7.79678e-06, 6.34048e-06, 5.16114e-06, 4.1996e-06, 
			0.000194844, 0.000112463, 7.85814e-05, 5.87826e-05, 4.54364e-05, 3.57708e-05, 2.84772e-05, 2.283e-05, 1.83915e-05, 1.48661e-05, 1.20451e-05, 9.7731e-06, 7.94428e-06, 6.45936e-06, 5.25374e-06, 4.2756e-06
		)
}

CapTable	"metal1_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000171501, 9.01574e-05, 5.84434e-05, 4.11012e-05, 3.02366e-05, 2.29242e-05, 1.77788e-05, 1.40437e-05, 1.1267e-05, 9.1619e-06, 7.53892e-06, 6.26882e-06, 5.26138e-06, 4.45232e-06, 3.79518e-06, 3.2558e-06, 
			0.000178929, 9.55324e-05, 6.26618e-05, 4.45602e-05, 3.313e-05, 2.53742e-05, 1.98699e-05, 1.58389e-05, 1.28155e-05, 1.05033e-05, 8.70524e-06, 7.28652e-06, 6.15224e-06, 5.2344e-06, 4.48362e-06, 3.86316e-06, 
			0.000182317, 9.857e-05, 6.53e-05, 4.68574e-05, 3.51396e-05, 2.71338e-05, 2.14124e-05, 1.7193e-05, 1.40057e-05, 1.1551e-05, 9.629e-06, 8.10232e-06, 6.87388e-06, 5.8737e-06, 5.05084e-06, 4.36724e-06, 
			0.000184069, 0.000100604, 6.7206e-05, 4.85812e-05, 3.66918e-05, 2.8528e-05, 2.2655e-05, 1.82985e-05, 1.49889e-05, 1.24253e-05, 1.04067e-05, 8.7945e-06, 7.4902e-06, 6.42316e-06, 5.54092e-06, 4.8046e-06, 
			0.000185492, 0.000102224, 6.87586e-05, 5.0013e-05, 3.79918e-05, 2.96952e-05, 2.3706e-05, 1.92423e-05, 1.58347e-05, 1.31824e-05, 1.10841e-05, 9.40042e-06, 8.03238e-06, 6.90816e-06, 5.97484e-06, 5.1928e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.66716e-05, 6.47768e-05, 8.00426e-05, 9.25142e-05, 0.000102467, 0.00011026, 0.000116266, 0.000119333, 0.000119405, 0.000119496, 0.000119568, 0.000119606, 0.000119608, 0.000119578, 0.000119522, 0.000119446, 
			6.56756e-05, 8.41092e-05, 9.98222e-05, 0.000112794, 0.000123256, 0.000131516, 0.000137922, 0.000142117, 0.000142181, 0.000142265, 0.000142328, 0.000142353, 0.00014234, 0.000142293, 0.000142218, 0.000142121, 
			8.4901e-05, 0.000103402, 0.00011926, 0.00013243, 0.0001431, 0.000151569, 0.000158165, 0.000163219, 0.000163552, 0.000163624, 0.000163677, 0.000163694, 0.000163674, 0.00016362, 0.000163538, 0.000163435, 
			0.000103851, 0.000122165, 0.000137917, 0.000151046, 0.000161712, 0.000170193, 0.000176839, 0.000181959, 0.000183931, 0.000183986, 0.000184028, 0.00018404, 0.000184019, 0.000183966, 0.000183887, 0.000183789, 
			0.000123343, 0.000141983, 0.000158068, 0.000171522, 0.000182481, 0.000191202, 0.000198036, 0.000203299, 0.000205066, 0.000205119, 0.000205154, 0.000205154, 0.000205117, 0.000205048, 0.000204952, 0.000204835
		)
}

CapTable	"metal1_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000168928, 8.51282e-05, 5.09124e-05, 3.12478e-05, 1.83881e-05, 9.46966e-06, 3.10724e-06, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0.000176219, 9.02338e-05, 5.46918e-05, 3.41026e-05, 2.053e-05, 1.10526e-05, 4.25034e-06, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0.000179542, 9.31116e-05, 5.70912e-05, 3.61016e-05, 2.22026e-05, 1.24496e-05, 5.41802e-06, 2.84518e-07, 0, 0, 0, 0, 0, 0, 0, 0, 
			0.000181482, 9.53844e-05, 5.92996e-05, 3.81934e-05, 2.41848e-05, 1.43346e-05, 7.19284e-06, 1.95176e-06, 0, 0, 0, 0, 0, 0, 0, 0, 
			0.000182673, 9.65138e-05, 6.01498e-05, 3.87508e-05, 2.44832e-05, 1.44182e-05, 7.11076e-06, 1.74137e-06, 0, 0, 0, 0, 0, 0, 0, 0
		)
}

CapTable	"metal1_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000170728, 8.90114e-05, 5.69258e-05, 3.92518e-05, 2.8118e-05, 2.0606e-05, 1.53282e-05, 1.15203e-05, 8.7212e-06, 6.63454e-06, 5.06244e-06, 3.86774e-06, 2.95388e-06, 2.25098e-06, 1.70851e-06, 1.28841e-06, 
			0.000177551, 9.3682e-05, 6.03642e-05, 4.18836e-05, 3.01626e-05, 2.2207e-05, 1.65863e-05, 1.25103e-05, 9.50078e-06, 7.24846e-06, 5.5454e-06, 4.24774e-06, 3.2527e-06, 2.48596e-06, 1.89312e-06, 1.43346e-06, 
			0.000180219, 9.59302e-05, 6.21688e-05, 4.33286e-05, 3.13224e-05, 2.3135e-05, 1.73273e-05, 1.31006e-05, 9.96942e-06, 7.61974e-06, 5.839e-06, 4.47914e-06, 3.43482e-06, 2.62898e-06, 2.00526e-06, 1.52111e-06, 
			0.000181168, 9.71184e-05, 6.32116e-05, 4.4192e-05, 3.2034e-05, 2.3721e-05, 1.78014e-05, 1.34824e-05, 1.02759e-05, 7.86504e-06, 6.03502e-06, 4.63546e-06, 3.55966e-06, 2.7285e-06, 2.08456e-06, 1.58251e-06, 
			0.000181743, 9.78728e-05, 6.38984e-05, 4.47752e-05, 3.2515e-05, 2.41068e-05, 1.81144e-05, 1.37342e-05, 1.04767e-05, 8.02436e-06, 6.16038e-06, 4.73384e-06, 3.63598e-06, 2.78546e-06, 2.12768e-06, 1.6162e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.97304e-05, 5.30298e-05, 6.34117e-05, 7.13573e-05, 7.73978e-05, 8.19885e-05, 8.54933e-05, 8.81834e-05, 9.02661e-05, 9.18922e-05, 9.31749e-05, 9.41953e-05, 9.50145e-05, 9.56795e-05, 9.6224e-05, 9.66745e-05, 
			5.72493e-05, 7.07109e-05, 8.12805e-05, 8.94329e-05, 9.569e-05, 0.000100496, 0.000104201, 0.000107075, 0.000109322, 0.000111093, 0.000112501, 0.000113633, 0.000114549, 0.000115298, 0.000115917, 0.00011643, 
			7.506e-05, 8.8465e-05, 9.90449e-05, 0.000107266, 0.000113623, 0.000118542, 0.000122366, 0.000125355, 0.000127709, 0.000129579, 0.000131076, 0.000132287, 0.000133275, 0.000134088, 0.000134763, 0.000135328, 
			9.29126e-05, 0.000106204, 0.000116753, 0.000125001, 0.000131414, 0.000136405, 0.000140311, 0.000143382, 0.000145816, 0.000147762, 0.000149329, 0.000150604, 0.000151647, 0.000152514, 0.000153235, 0.000153842, 
			0.000110789, 0.000124019, 0.000134548, 0.000142812, 0.000149269, 0.000154322, 0.000158291, 0.000161427, 0.000163925, 0.000165932, 0.000167556, 0.000168883, 0.000169978, 0.000170887, 0.000171648, 0.00017229
		)
}

CapTable	"metal1_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.83858e-06, 5.20985e-06, 6.40091e-06, 7.37846e-06, 8.15965e-06, 8.77432e-06, 9.25491e-06, 9.63089e-06, 9.92594e-06, 1.01589e-05, 1.03442e-05, 1.04929e-05, 1.06131e-05, 1.07122e-05, 1.07928e-05, 1.08597e-05, 
			5.2021e-06, 6.58771e-06, 7.80174e-06, 8.81388e-06, 9.63302e-06, 1.0285e-05, 1.08008e-05, 1.12088e-05, 1.15324e-05, 1.17906e-05, 1.19993e-05, 1.21676e-05, 1.2305e-05, 1.24189e-05, 1.25126e-05, 1.25925e-05, 
			6.59225e-06, 7.97603e-06, 9.20008e-06, 1.02288e-05, 1.10678e-05, 1.17418e-05, 1.22796e-05, 1.27088e-05, 1.30524e-05, 1.33289e-05, 1.3554e-05, 1.37367e-05, 1.38869e-05, 1.40124e-05, 1.41166e-05, 1.42035e-05, 
			7.98336e-06, 9.36433e-06, 1.05938e-05, 1.16329e-05, 1.24851e-05, 1.31738e-05, 1.37274e-05, 1.41732e-05, 1.45318e-05, 1.48221e-05, 1.50597e-05, 1.52539e-05, 1.54164e-05, 1.55492e-05, 1.56618e-05, 1.57567e-05, 
			9.37815e-06, 1.07581e-05, 1.19915e-05, 1.3039e-05, 1.39021e-05, 1.46034e-05, 1.517e-05, 1.56284e-05, 1.5999e-05, 1.63009e-05, 1.65493e-05, 1.67536e-05, 1.69228e-05, 1.70647e-05, 1.71851e-05, 1.7288e-05
		)
}

CapTable	"metal1_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000161794, 7.74364e-05, 4.40514e-05, 2.62984e-05, 1.59615e-05, 9.74656e-06, 5.96632e-06, 3.65658e-06, 2.2468e-06, 1.38598e-06, 8.60978e-07, 5.41332e-07, 3.48478e-07, 2.31832e-07, 1.61749e-07, 1.19453e-07, 
			0.000164669, 7.88592e-05, 4.48338e-05, 2.67622e-05, 1.62422e-05, 9.9196e-06, 6.07608e-06, 3.73054e-06, 2.29714e-06, 1.42281e-06, 8.91162e-07, 5.67612e-07, 3.71676e-07, 2.5277e-07, 1.82082e-07, 1.39173e-07, 
			0.000164392, 7.8795e-05, 4.48026e-05, 2.67446e-05, 1.62352e-05, 9.92238e-06, 6.0855e-06, 3.74368e-06, 2.3138e-06, 1.44022e-06, 9.09268e-07, 5.87906e-07, 3.91274e-07, 2.73996e-07, 2.02194e-07, 1.58149e-07, 
			0.000163254, 7.8368e-05, 4.45768e-05, 2.66086e-05, 1.6164e-05, 9.89156e-06, 6.07366e-06, 3.74688e-06, 2.32504e-06, 1.45774e-06, 9.29584e-07, 6.06788e-07, 4.13368e-07, 2.9447e-07, 2.2149e-07, 1.78093e-07, 
			0.000162368, 7.7988e-05, 4.43834e-05, 2.65056e-05, 1.61092e-05, 9.86154e-06, 6.0635e-06, 3.74882e-06, 2.33864e-06, 1.47643e-06, 9.51214e-07, 6.30766e-07, 4.36166e-07, 3.17598e-07, 2.44832e-07, 1.99376e-07
		)
}

CapTable	"metal1_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.782e-05, 5.05778e-05, 6.05731e-05, 6.82447e-05, 7.40878e-05, 7.85263e-05, 8.18996e-05, 8.44673e-05, 8.64273e-05, 8.79291e-05, 8.90848e-05, 8.99757e-05, 9.06641e-05, 9.11985e-05, 9.16139e-05, 9.19354e-05, 
			5.49747e-05, 6.80267e-05, 7.83002e-05, 8.62391e-05, 9.23326e-05, 9.69938e-05, 0.000100558, 0.000103286, 0.000105381, 0.000106992, 0.000108235, 0.000109197, 0.000109942, 0.000110521, 0.000110972, 0.000111323, 
			7.25608e-05, 8.56647e-05, 9.60251e-05, 0.000104081, 0.000110293, 0.00011507, 0.000118738, 0.000121559, 0.000123729, 0.000125404, 0.000126699, 0.000127703, 0.000128482, 0.000129086, 0.000129558, 0.000129928, 
			9.03063e-05, 0.000103388, 0.000113781, 0.000121897, 0.000128176, 0.000133017, 0.000136749, 0.000139624, 0.000141843, 0.000143558, 0.000144887, 0.000145915, 0.000146718, 0.000147339, 0.000147827, 0.00014808, 
			0.000108165, 0.000121249, 0.000131669, 0.000139823, 0.00014615, 0.000151042, 0.000154816, 0.000157729, 0.000159979, 0.000161722, 0.00016307, 0.000164119, 0.000164936, 0.000165444, 0.000165936, 0.000166321
		)
}

CapTable	"metal1_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			6.73541e-06, 9.18084e-06, 1.13111e-05, 1.30765e-05, 1.44932e-05, 1.56077e-05, 1.64762e-05, 1.71504e-05, 1.76725e-05, 1.80774e-05, 1.83898e-05, 1.86336e-05, 1.8823e-05, 1.89715e-05, 1.90866e-05, 1.91772e-05, 
			9.27948e-06, 1.17773e-05, 1.39856e-05, 1.58363e-05, 1.73348e-05, 1.85252e-05, 1.94606e-05, 2.01916e-05, 2.07599e-05, 2.12031e-05, 2.15486e-05, 2.18175e-05, 2.20275e-05, 2.21919e-05, 2.23211e-05, 2.24215e-05, 
			1.19032e-05, 1.44341e-05, 1.66871e-05, 1.85853e-05, 2.01321e-05, 2.13671e-05, 2.23417e-05, 2.31052e-05, 2.37036e-05, 2.41704e-05, 2.45353e-05, 2.48208e-05, 2.5044e-05, 2.5222e-05, 2.53587e-05, 2.54651e-05, 
			1.45805e-05, 1.7133e-05, 1.94164e-05, 2.13473e-05, 2.29253e-05, 2.41867e-05, 2.51864e-05, 2.59725e-05, 2.6589e-05, 2.70713e-05, 2.74484e-05, 2.77463e-05, 2.79763e-05, 2.81611e-05, 2.83024e-05, 2.85424e-05, 
			1.72907e-05, 1.98669e-05, 2.2173e-05, 2.41274e-05, 2.57256e-05, 2.70088e-05, 2.80259e-05, 2.88273e-05, 2.94569e-05, 2.99496e-05, 3.03393e-05, 3.06435e-05, 3.08801e-05, 3.11979e-05, 3.13475e-05, 3.1465e-05
		)
}

CapTable	"metal1_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000186459, 0.000108317, 7.80422e-05, 6.09784e-05, 4.96718e-05, 4.14966e-05, 3.5267e-05, 3.03556e-05, 2.63918e-05, 2.31386e-05, 2.0434e-05, 1.8163e-05, 1.62403e-05, 1.4601e-05, 1.31949e-05, 1.19822e-05, 
			0.000199306, 0.00011789, 8.56222e-05, 6.72358e-05, 5.4981e-05, 4.60948e-05, 3.9312e-05, 3.39574e-05, 2.96306e-05, 2.60742e-05, 2.31132e-05, 2.0622e-05, 1.85087e-05, 1.6703e-05, 1.51503e-05, 1.38078e-05, 
			0.00020635, 0.000123679, 9.0445e-05, 7.13596e-05, 5.85844e-05, 4.92944e-05, 4.2189e-05, 3.65704e-05, 3.20224e-05, 2.82778e-05, 2.5154e-05, 2.2521e-05, 2.02824e-05, 1.83655e-05, 1.67134e-05, 1.52815e-05, 
			0.000210532, 0.000127557, 9.38438e-05, 7.43642e-05, 6.12844e-05, 5.17516e-05, 4.4442e-05, 3.86516e-05, 3.39566e-05, 3.0084e-05, 2.68474e-05, 2.4114e-05, 2.17856e-05, 1.97873e-05, 1.80614e-05, 1.65621e-05, 
			0.000213594, 0.00013048, 9.64988e-05, 7.67776e-05, 6.34956e-05, 5.3792e-05, 4.6342e-05, 4.04304e-05, 3.5629e-05, 3.1662e-05, 2.83408e-05, 2.55306e-05, 2.31324e-05, 2.10702e-05, 1.92854e-05, 1.77317e-05
		)
}

CapTable	"metal1_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.53641e-05, 4.81039e-05, 5.78839e-05, 6.48765e-05, 6.96236e-05, 7.27319e-05, 7.47182e-05, 7.59594e-05, 7.67427e-05, 7.72431e-05, 7.75364e-05, 7.77132e-05, 7.78217e-05, 7.78861e-05, 7.79234e-05, 7.79415e-05, 
			5.29498e-05, 6.60807e-05, 7.60857e-05, 8.32136e-05, 8.80475e-05, 9.12088e-05, 9.32226e-05, 9.44973e-05, 9.53021e-05, 9.57873e-05, 9.60844e-05, 9.62647e-05, 9.63723e-05, 9.64337e-05, 9.64736e-05, 9.64964e-05, 
			7.09564e-05, 8.41423e-05, 9.41652e-05, 0.000101299, 0.000106122, 0.000109286, 0.00011132, 0.000112586, 0.000113371, 0.000113853, 0.000114148, 0.000114328, 0.000114432, 0.000114501, 0.000114565, 0.000114584, 
			8.90423e-05, 0.000102181, 0.00011217, 0.000119272, 0.000124084, 0.000127234, 0.000129239, 0.000130499, 0.000131279, 0.000131759, 0.000132051, 0.000132228, 0.00013234, 0.000132437, 0.000132477, 0.000132498, 
			0.00010717, 0.000120274, 0.000130235, 0.000137328, 0.000142115, 0.000145244, 0.000147236, 0.000148487, 0.000149263, 0.000149738, 0.000150037, 0.000150251, 0.000150361, 0.000150427, 0.000150464, 0.000150483
		)
}

CapTable	"metal1_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.25565e-05, 3.13827e-05, 3.84797e-05, 4.36841e-05, 4.72639e-05, 4.96265e-05, 5.11405e-05, 5.2103e-05, 5.26845e-05, 5.30279e-05, 5.32526e-05, 5.33925e-05, 5.34738e-05, 5.35241e-05, 5.35548e-05, 5.3576e-05, 
			3.34354e-05, 4.25391e-05, 4.97965e-05, 5.51022e-05, 5.87483e-05, 6.11516e-05, 6.26923e-05, 6.36532e-05, 6.42398e-05, 6.46119e-05, 6.48374e-05, 6.49767e-05, 6.5061e-05, 6.51155e-05, 6.51463e-05, 6.51704e-05, 
			4.46398e-05, 5.37917e-05, 6.10682e-05, 6.6376e-05, 7.00306e-05, 7.24143e-05, 7.39314e-05, 7.48993e-05, 7.55013e-05, 7.58769e-05, 7.6104e-05, 7.62381e-05, 7.63272e-05, 7.63819e-05, 7.6391e-05, 7.64168e-05, 
			5.59217e-05, 6.5057e-05, 7.23137e-05, 7.76025e-05, 8.12161e-05, 8.35906e-05, 8.51206e-05, 8.60793e-05, 8.66772e-05, 8.70456e-05, 8.7271e-05, 8.74184e-05, 8.75039e-05, 8.75278e-05, 8.75748e-05, 8.75876e-05, 
			6.72215e-05, 7.63523e-05, 8.35661e-05, 8.88181e-05, 9.24264e-05, 9.48026e-05, 9.63294e-05, 9.72857e-05, 9.78734e-05, 9.82404e-05, 9.84752e-05, 9.85807e-05, 9.86683e-05, 9.87263e-05, 9.87644e-05, 9.88016e-05
		)
}

CapTable	"metal1_C_TOP_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.67453e-06, 6.04702e-06, 7.24955e-06, 8.32376e-06, 9.28378e-06, 1.01409e-05, 1.09047e-05, 1.15834e-05, 1.21844e-05, 1.27151e-05, 1.31836e-05, 1.35953e-05, 1.39577e-05, 1.42759e-05, 1.45564e-05, 1.48029e-05, 
			5.88872e-06, 7.24401e-06, 8.48128e-06, 9.60528e-06, 1.06217e-05, 1.15364e-05, 1.23554e-05, 1.30858e-05, 1.37352e-05, 1.43111e-05, 1.48204e-05, 1.52707e-05, 1.56674e-05, 1.60179e-05, 1.63274e-05, 1.66002e-05, 
			7.14598e-06, 8.50202e-06, 9.75895e-06, 1.09121e-05, 1.19613e-05, 1.29097e-05, 1.37623e-05, 1.45261e-05, 1.52063e-05, 1.58112e-05, 1.63473e-05, 1.68229e-05, 1.72436e-05, 1.76162e-05, 1.79452e-05, 1.82368e-05, 
			8.44213e-06, 9.79716e-06, 1.10674e-05, 1.22396e-05, 1.33102e-05, 1.42808e-05, 1.51561e-05, 1.59412e-05, 1.66434e-05, 1.72685e-05, 1.78248e-05, 1.83191e-05, 1.87572e-05, 1.91457e-05, 1.94897e-05, 1.97949e-05, 
			9.75981e-06, 1.11185e-05, 1.23976e-05, 1.35826e-05, 1.46696e-05, 1.56564e-05, 1.65481e-05, 1.73497e-05, 1.80682e-05, 1.87097e-05, 1.92817e-05, 1.979e-05, 2.02422e-05, 2.06434e-05, 2.09995e-05, 2.13146e-05
		)
}

CapTable	"metal1_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000185769, 0.000107364, 7.68294e-05, 5.95172e-05, 4.79792e-05, 3.95936e-05, 3.3176e-05, 2.80996e-05, 2.3993e-05, 2.06178e-05, 1.78103e-05, 1.54539e-05, 1.34614e-05, 1.17664e-05, 1.03168e-05, 9.07154e-06, 
			0.000198272, 0.000116549, 8.39788e-05, 6.53038e-05, 5.2781e-05, 4.36512e-05, 3.66506e-05, 3.11044e-05, 2.66114e-05, 2.29128e-05, 1.98316e-05, 1.72407e-05, 1.50462e-05, 1.31758e-05, 1.15732e-05, 1.01942e-05, 
			0.000204926, 0.000121909, 8.83378e-05, 6.89322e-05, 5.5861e-05, 4.63026e-05, 3.89576e-05, 3.3128e-05, 2.83972e-05, 2.44962e-05, 2.12408e-05, 1.84988e-05, 1.61721e-05, 1.41855e-05, 1.24806e-05, 1.10108e-05, 
			0.000208674, 0.00012532, 9.12398e-05, 7.14142e-05, 5.8016e-05, 4.81948e-05, 4.06282e-05, 3.4612e-05, 2.97212e-05, 2.5682e-05, 2.23058e-05, 1.94573e-05, 1.70365e-05, 1.49663e-05, 1.31871e-05, 1.16508e-05, 
			0.00021126, 0.00012774, 9.33678e-05, 7.32798e-05, 5.96604e-05, 4.9652e-05, 4.1931e-05, 3.57816e-05, 3.07746e-05, 2.66332e-05, 2.3166e-05, 2.0237e-05, 1.77439e-05, 1.56091e-05, 1.37717e-05, 1.21834e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.09338e-05, 2.68136e-05, 3.18928e-05, 3.63667e-05, 4.03318e-05, 4.38482e-05, 4.69618e-05, 4.97129e-05, 5.2139e-05, 5.42751e-05, 5.61544e-05, 5.78069e-05, 5.92602e-05, 6.05392e-05, 6.16659e-05, 6.26596e-05, 
			2.63834e-05, 3.2202e-05, 3.74168e-05, 4.20902e-05, 4.6271e-05, 4.99986e-05, 5.33117e-05, 5.62487e-05, 5.88462e-05, 6.11401e-05, 6.31638e-05, 6.49489e-05, 6.65235e-05, 6.79136e-05, 6.9142e-05, 7.02292e-05, 
			3.2022e-05, 3.78294e-05, 4.3111e-05, 4.78824e-05, 5.21706e-05, 5.60076e-05, 5.9428e-05, 6.24671e-05, 6.51623e-05, 6.75484e-05, 6.96591e-05, 7.15256e-05, 7.31767e-05, 7.46382e-05, 7.59334e-05, 7.70828e-05, 
			3.782e-05, 4.36034e-05, 4.89092e-05, 5.37248e-05, 5.80656e-05, 6.19594e-05, 6.5439e-05, 6.85384e-05, 7.12934e-05, 7.3737e-05, 7.59046e-05, 7.7826e-05, 7.95294e-05, 8.10407e-05, 8.23836e-05, 8.35789e-05, 
			4.37e-05, 4.94702e-05, 5.47772e-05, 5.96074e-05, 6.39724e-05, 6.7897e-05, 7.1411e-05, 7.45476e-05, 7.7341e-05, 7.9824e-05, 8.20312e-05, 8.39914e-05, 8.57336e-05, 8.72828e-05, 8.86626e-05, 8.98933e-05
		)
}

CapTable	"metal1_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			7.87574e-06, 1.02747e-05, 1.24157e-05, 1.43411e-05, 1.60688e-05, 1.76098e-05, 1.89763e-05, 2.01775e-05, 2.12265e-05, 2.21377e-05, 2.29245e-05, 2.36009e-05, 2.418e-05, 2.46752e-05, 2.50962e-05, 2.54548e-05, 
			1.0112e-05, 1.25413e-05, 1.47842e-05, 1.68317e-05, 1.86849e-05, 2.03463e-05, 2.18213e-05, 2.31203e-05, 2.42577e-05, 2.52454e-05, 2.60997e-05, 2.68344e-05, 2.74645e-05, 2.80037e-05, 2.84626e-05, 2.88534e-05, 
			1.24818e-05, 1.4957e-05, 1.72696e-05, 1.93972e-05, 2.1328e-05, 2.30605e-05, 2.46014e-05, 2.59594e-05, 2.71489e-05, 2.81818e-05, 2.90764e-05, 2.98465e-05, 3.05077e-05, 3.10723e-05, 3.15542e-05, 3.19638e-05, 
			1.49665e-05, 1.748e-05, 1.98458e-05, 2.20256e-05, 2.40059e-05, 2.57858e-05, 2.73682e-05, 2.87645e-05, 2.99851e-05, 3.1048e-05, 3.19684e-05, 3.27606e-05, 3.34415e-05, 3.40221e-05, 3.45184e-05, 3.49419e-05, 
			1.75335e-05, 2.00849e-05, 2.2486e-05, 2.47031e-05, 2.67182e-05, 2.85297e-05, 3.0139e-05, 3.15599e-05, 3.28038e-05, 3.38861e-05, 3.48232e-05, 3.56306e-05, 3.6323e-05, 3.69159e-05, 3.74244e-05, 3.785e-05
		)
}

CapTable	"metal1_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.00018456, 0.000105675, 7.46864e-05, 5.6962e-05, 4.50664e-05, 3.6386e-05, 2.97392e-05, 2.44984e-05, 2.02884e-05, 1.68644e-05, 1.40561e-05, 1.17399e-05, 9.82156e-06, 8.22696e-06, 6.8994e-06, 5.79202e-06, 
			0.00019646, 0.000114198, 8.11222e-05, 6.19954e-05, 4.9088e-05, 3.96486e-05, 3.24146e-05, 2.67092e-05, 2.2125e-05, 1.83967e-05, 1.53382e-05, 1.28154e-05, 1.07248e-05, 8.98776e-06, 7.5408e-06, 6.33372e-06, 
			0.000202434, 0.000118839, 8.47342e-05, 6.48612e-05, 5.14012e-05, 4.15382e-05, 3.39728e-05, 2.80024e-05, 2.32042e-05, 1.9301e-05, 1.60979e-05, 1.34547e-05, 1.12645e-05, 9.4442e-06, 7.9278e-06, 6.66264e-06, 
			0.00020545, 0.000121498, 8.68758e-05, 6.65848e-05, 5.28088e-05, 4.27008e-05, 3.4937e-05, 2.8807e-05, 2.38792e-05, 1.98684e-05, 1.65773e-05, 1.38606e-05, 1.16089e-05, 9.73752e-06, 8.17828e-06, 6.877e-06, 
			0.000207272, 0.000123151, 8.82434e-05, 6.77046e-05, 5.37286e-05, 4.34596e-05, 3.55714e-05, 2.934e-05, 2.43284e-05, 2.02492e-05, 1.69008e-05, 1.41367e-05, 1.18456e-05, 9.94078e-06, 8.35358e-06, 7.02964e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.71047e-05, 2.19762e-05, 2.6226e-05, 2.99967e-05, 3.33591e-05, 3.63543e-05, 3.90136e-05, 4.13665e-05, 4.34421e-05, 4.52685e-05, 4.68724e-05, 4.828e-05, 4.95137e-05, 5.05955e-05, 5.15433e-05, 5.23749e-05, 
			2.17785e-05, 2.66776e-05, 3.11019e-05, 3.50939e-05, 3.86813e-05, 4.18931e-05, 4.47546e-05, 4.72941e-05, 4.95401e-05, 5.15213e-05, 5.32662e-05, 5.48005e-05, 5.61494e-05, 5.7334e-05, 5.83748e-05, 5.92897e-05, 
			2.6674e-05, 3.16276e-05, 3.61632e-05, 4.02837e-05, 4.40027e-05, 4.73407e-05, 5.03211e-05, 5.29719e-05, 5.53217e-05, 5.73991e-05, 5.92328e-05, 6.0848e-05, 6.22706e-05, 6.35225e-05, 6.46251e-05, 6.55957e-05, 
			3.17609e-05, 3.67552e-05, 4.13598e-05, 4.55592e-05, 4.93588e-05, 5.27754e-05, 5.58327e-05, 5.85568e-05, 6.09754e-05, 6.31185e-05, 6.50124e-05, 6.66836e-05, 6.81583e-05, 6.9458e-05, 7.06052e-05, 7.16163e-05, 
			3.69802e-05, 4.20139e-05, 4.66626e-05, 5.09116e-05, 5.4762e-05, 5.82336e-05, 6.13429e-05, 6.41187e-05, 6.65872e-05, 6.87761e-05, 7.07153e-05, 7.2429e-05, 7.39429e-05, 7.52795e-05, 7.64608e-05, 7.7504e-05
		)
}

CapTable	"metal1_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.49741e-05, 3.40636e-05, 4.16653e-05, 4.78012e-05, 5.26496e-05, 5.64296e-05, 5.93383e-05, 6.15583e-05, 6.32437e-05, 6.45127e-05, 6.5494e-05, 6.62035e-05, 6.67163e-05, 6.70651e-05, 6.6829e-05, 6.69914e-05, 
			3.56615e-05, 4.50756e-05, 5.29818e-05, 5.93912e-05, 6.4476e-05, 6.84499e-05, 7.15091e-05, 7.38524e-05, 7.56316e-05, 7.70078e-05, 7.80011e-05, 7.86958e-05, 7.92387e-05, 7.90377e-05, 7.92727e-05, 7.94254e-05, 
			4.68882e-05, 5.64547e-05, 6.45025e-05, 7.10374e-05, 7.6228e-05, 8.02801e-05, 8.34085e-05, 8.58483e-05, 8.76608e-05, 8.9006e-05, 8.99692e-05, 9.00683e-05, 9.05681e-05, 9.09032e-05, 9.1131e-05, 9.12618e-05, 
			5.84063e-05, 6.80418e-05, 7.61601e-05, 8.2749e-05, 8.79842e-05, 9.20737e-05, 9.52766e-05, 9.76705e-05, 9.94274e-05, 0.000100785, 0.000101054, 0.000101741, 0.000102209, 0.000102529, 0.000102729, 0.000102849, 
			7.01188e-05, 7.98172e-05, 8.79682e-05, 9.45898e-05, 9.99109e-05, 0.000104003, 0.000107137, 0.000109475, 0.000110504, 0.000111787, 0.000112712, 0.000113374, 0.000113814, 0.000114105, 0.000115018, 0.000115092
		)
}

CapTable	"metal1_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.00017439, 9.26678e-05, 5.99862e-05, 4.1512e-05, 2.9589e-05, 2.13736e-05, 1.5543e-05, 1.13176e-05, 8.22816e-06, 5.95722e-06, 4.28158e-06, 3.05024e-06, 2.14804e-06, 1.49223e-06, 1.0237e-06, 6.86546e-07, 
			0.000182261, 9.7828e-05, 6.35626e-05, 4.40672e-05, 3.14116e-05, 2.26884e-05, 1.64757e-05, 1.19734e-05, 8.67896e-06, 6.25686e-06, 4.47812e-06, 3.17594e-06, 2.2224e-06, 1.53977e-06, 1.04983e-06, 7.06322e-07, 
			0.000185137, 9.9946e-05, 6.50398e-05, 4.5089e-05, 3.21128e-05, 2.31564e-05, 1.67759e-05, 1.21491e-05, 8.77016e-06, 6.29504e-06, 4.48424e-06, 3.16682e-06, 2.20514e-06, 1.51966e-06, 1.03431e-06, 7.0402e-07, 
			0.000185801, 0.000100658, 6.55382e-05, 4.53914e-05, 3.2286e-05, 2.3236e-05, 1.6786e-05, 1.21217e-05, 8.7232e-06, 6.23442e-06, 4.42886e-06, 3.10916e-06, 2.16494e-06, 1.49414e-06, 1.02945e-06, 7.15846e-07, 
			0.000185797, 0.000100768, 6.55808e-05, 4.53594e-05, 3.2191e-05, 2.3106e-05, 1.66462e-05, 1.19851e-05, 8.60042e-06, 6.12888e-06, 4.33468e-06, 3.03788e-06, 2.1203e-06, 1.47656e-06, 1.03901e-06, 7.54936e-07
		)
}

CapTable	"metal1_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.54305e-05, 1.99903e-05, 2.40199e-05, 2.76292e-05, 3.08632e-05, 3.3744e-05, 3.62899e-05, 3.85245e-05, 4.04722e-05, 4.21594e-05, 4.36142e-05, 4.48623e-05, 4.59296e-05, 4.68398e-05, 4.7614e-05, 4.82701e-05, 
			1.99054e-05, 2.45705e-05, 2.88276e-05, 3.26959e-05, 3.61811e-05, 3.92925e-05, 4.20482e-05, 4.44689e-05, 4.65795e-05, 4.84097e-05, 4.99886e-05, 5.13442e-05, 5.25044e-05, 5.34927e-05, 5.43345e-05, 5.50482e-05, 
			2.46622e-05, 2.94468e-05, 3.38632e-05, 3.78916e-05, 4.15268e-05, 4.47773e-05, 4.76558e-05, 5.01852e-05, 5.23919e-05, 5.43052e-05, 5.59567e-05, 5.73748e-05, 5.85878e-05, 5.96225e-05, 6.0503e-05, 6.12503e-05, 
			2.96675e-05, 3.45442e-05, 3.90654e-05, 4.31996e-05, 4.69313e-05, 5.02664e-05, 5.32218e-05, 5.58175e-05, 5.80837e-05, 6.00486e-05, 6.17433e-05, 6.31998e-05, 6.44456e-05, 6.55094e-05, 6.64133e-05, 6.71801e-05, 
			3.48535e-05, 3.98085e-05, 4.44066e-05, 4.86093e-05, 5.24052e-05, 5.57967e-05, 5.88016e-05, 6.14411e-05, 6.37448e-05, 6.57427e-05, 6.7466e-05, 6.89467e-05, 7.02144e-05, 7.12953e-05, 7.2212e-05, 7.29964e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.659e-05, 3.38878e-05, 4.0246e-05, 4.58162e-05, 5.07016e-05, 5.49826e-05, 5.87304e-05, 6.20084e-05, 6.4874e-05, 6.73791e-05, 6.95702e-05, 7.14879e-05, 7.31686e-05, 7.46438e-05, 7.59406e-05, 7.70827e-05, 
			3.551e-05, 4.2776e-05, 4.9288e-05, 5.50744e-05, 6.01952e-05, 6.47146e-05, 6.86936e-05, 7.2192e-05, 7.52658e-05, 7.79658e-05, 8.03394e-05, 8.24264e-05, 8.42638e-05, 8.58834e-05, 8.73135e-05, 8.85781e-05, 
			4.4751e-05, 5.19914e-05, 5.85494e-05, 6.442e-05, 6.96446e-05, 7.42776e-05, 7.83748e-05, 8.19932e-05, 8.51854e-05, 8.80006e-05, 9.04848e-05, 9.26778e-05, 9.4615e-05, 9.6328e-05, 9.78471e-05, 9.91948e-05, 
			5.4173e-05, 6.13792e-05, 6.7936e-05, 7.3836e-05, 7.91084e-05, 8.38038e-05, 8.79706e-05, 9.1663e-05, 9.49312e-05, 9.78242e-05, 0.000100383, 0.000102649, 0.000104658, 0.00010644, 0.000108025, 0.000109434, 
			6.367e-05, 7.08156e-05, 7.7349e-05, 8.325e-05, 8.85432e-05, 9.3271e-05, 9.74776e-05, 0.000101216, 0.000104535, 0.000107482, 0.000110096, 0.000112416, 0.000114477, 0.000116312, 0.000117946, 0.000119403
		)
}

CapTable	"poly_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217384, 0.000124786, 8.9172e-05, 6.91728e-05, 5.59824e-05, 4.64964e-05, 3.9308e-05, 3.36704e-05, 2.91416e-05, 2.54388e-05, 2.23698e-05, 1.97988e-05, 1.76256e-05, 1.57747e-05, 1.41882e-05, 1.28205e-05, 
			0.00023103, 0.000135245, 9.7562e-05, 7.61766e-05, 6.19708e-05, 5.17114e-05, 4.39104e-05, 3.7773e-05, 3.28272e-05, 2.87702e-05, 2.53966e-05, 2.25606e-05, 2.01552e-05, 1.80996e-05, 1.63315e-05, 1.48019e-05, 
			0.000238042, 0.000141289, 0.000102724, 8.0658e-05, 6.59444e-05, 5.52704e-05, 4.71262e-05, 4.06988e-05, 3.55036e-05, 3.12294e-05, 2.76642e-05, 2.46582e-05, 2.2101e-05, 1.9909e-05, 1.80179e-05, 1.63772e-05, 
			0.000242624, 0.000145457, 0.00010644, 8.3994e-05, 6.89646e-05, 5.80272e-05, 4.96614e-05, 4.3041e-05, 3.76758e-05, 3.32498e-05, 2.95486e-05, 2.64198e-05, 2.3751e-05, 2.14576e-05, 1.9474e-05, 1.77489e-05, 
			0.000244592, 0.000148038, 0.000108982, 8.6401e-05, 7.12168e-05, 6.0136e-05, 5.16414e-05, 4.49024e-05, 3.94226e-05, 3.48914e-05, 3.10934e-05, 2.78752e-05, 2.51238e-05, 2.27542e-05, 2.07e-05, 1.89095e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.31601e-05, 1.76546e-05, 2.16205e-05, 2.49978e-05, 2.77774e-05, 3.00308e-05, 3.18037e-05, 3.31921e-05, 3.42631e-05, 3.50851e-05, 3.56814e-05, 3.61503e-05, 3.65107e-05, 3.68017e-05, 3.74983e-05, 3.76691e-05, 
			1.80253e-05, 2.27224e-05, 2.69256e-05, 3.05236e-05, 3.35174e-05, 3.59277e-05, 3.78422e-05, 3.93392e-05, 4.04974e-05, 4.13473e-05, 4.20268e-05, 4.25763e-05, 4.29559e-05, 4.38235e-05, 4.40675e-05, 4.42513e-05, 
			2.31346e-05, 2.79693e-05, 3.23277e-05, 3.60586e-05, 3.91542e-05, 4.16555e-05, 4.36406e-05, 4.51476e-05, 4.6347e-05, 4.7278e-05, 4.80146e-05, 4.91739e-05, 4.96048e-05, 4.99351e-05, 5.01827e-05, 5.03732e-05, 
			2.84313e-05, 3.33752e-05, 3.78127e-05, 4.16196e-05, 4.47718e-05, 4.73173e-05, 4.92844e-05, 5.08698e-05, 5.21404e-05, 5.30716e-05, 5.44971e-05, 5.50708e-05, 5.55111e-05, 5.58429e-05, 5.60955e-05, 5.62831e-05, 
			3.3862e-05, 3.8877e-05, 4.3375e-05, 4.72268e-05, 5.03541e-05, 5.2927e-05, 5.49768e-05, 5.66139e-05, 5.85996e-05, 5.95871e-05, 6.03463e-05, 6.09221e-05, 6.13627e-05, 6.16954e-05, 6.1206e-05, 6.14081e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.4016e-05, 3.07206e-05, 3.65585e-05, 4.16942e-05, 4.62051e-05, 5.01739e-05, 5.36541e-05, 5.67048e-05, 5.93778e-05, 6.17202e-05, 6.37717e-05, 6.5571e-05, 6.71507e-05, 6.8538e-05, 6.97591e-05, 7.08361e-05, 
			3.21663e-05, 3.88352e-05, 4.4823e-05, 5.01547e-05, 5.48931e-05, 5.90811e-05, 6.27791e-05, 6.60415e-05, 6.89146e-05, 7.14462e-05, 7.36763e-05, 7.56414e-05, 7.73755e-05, 7.89068e-05, 8.02614e-05, 8.14612e-05, 
			4.06558e-05, 4.73059e-05, 5.33446e-05, 5.87625e-05, 6.35984e-05, 6.79019e-05, 7.17192e-05, 7.51016e-05, 7.80965e-05, 8.07434e-05, 8.30871e-05, 8.51602e-05, 8.69963e-05, 8.86259e-05, 9.00708e-05, 9.13556e-05, 
			4.93488e-05, 5.59829e-05, 6.20328e-05, 6.7491e-05, 7.23855e-05, 7.67608e-05, 8.06561e-05, 8.41204e-05, 8.71979e-05, 8.99296e-05, 9.23556e-05, 9.45077e-05, 9.64206e-05, 9.81223e-05, 9.96366e-05, 0.000100987, 
			5.81532e-05, 6.47378e-05, 7.07724e-05, 7.62416e-05, 8.11636e-05, 8.55763e-05, 8.95187e-05, 9.30349e-05, 9.61686e-05, 9.89574e-05, 0.000101442, 0.000103652, 0.000105622, 0.000107377, 0.000108944, 0.000110344
		)
}

CapTable	"poly_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.90496e-06, 3.69283e-06, 4.40869e-06, 5.03723e-06, 5.60209e-06, 6.09808e-06, 6.53985e-06, 6.93043e-06, 7.2746e-06, 7.57662e-06, 7.84327e-06, 8.07745e-06, 8.28273e-06, 8.46461e-06, 8.62458e-06, 8.76497e-06, 
			3.79371e-06, 4.57842e-06, 5.30035e-06, 5.95914e-06, 6.5459e-06, 7.07651e-06, 7.54987e-06, 7.96875e-06, 8.34185e-06, 8.67178e-06, 8.96286e-06, 9.22145e-06, 9.44882e-06, 9.65088e-06, 9.83012e-06, 9.98781e-06, 
			4.69918e-06, 5.48487e-06, 6.21222e-06, 6.88267e-06, 7.49042e-06, 8.03712e-06, 8.52942e-06, 8.96742e-06, 9.35747e-06, 9.70535e-06, 1.00131e-05, 1.02876e-05, 1.05311e-05, 1.07466e-05, 1.09389e-05, 1.11094e-05, 
			5.62418e-06, 6.40727e-06, 7.14103e-06, 7.819e-06, 8.43834e-06, 8.99743e-06, 9.50167e-06, 9.95396e-06, 1.03571e-05, 1.07178e-05, 1.10382e-05, 1.13247e-05, 1.15798e-05, 1.18066e-05, 1.2009e-05, 1.21895e-05, 
			6.55483e-06, 7.33478e-06, 8.07365e-06, 8.75578e-06, 9.38201e-06, 9.95066e-06, 1.04625e-05, 1.09235e-05, 1.13364e-05, 1.1707e-05, 1.2037e-05, 1.23324e-05, 1.25961e-05, 1.28318e-05, 1.30422e-05, 1.32306e-05
		)
}

CapTable	"poly_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.00021711, 0.000124368, 8.86158e-05, 6.84836e-05, 5.51658e-05, 4.5559e-05, 3.82572e-05, 3.25142e-05, 2.7888e-05, 2.4096e-05, 2.09458e-05, 1.83009e-05, 1.6061e-05, 1.41503e-05, 1.25102e-05, 1.10946e-05, 
			0.000230662, 0.000134737, 9.69136e-05, 7.53882e-05, 6.1045e-05, 5.06524e-05, 4.2724e-05, 3.64658e-05, 3.14066e-05, 2.7244e-05, 2.37728e-05, 2.08472e-05, 1.83597e-05, 1.62293e-05, 1.43935e-05, 1.2803e-05, 
			0.000237556, 0.000140658, 0.000101944, 7.97278e-05, 6.48642e-05, 5.4043e-05, 4.57564e-05, 3.9193e-05, 3.3869e-05, 2.94742e-05, 2.57968e-05, 2.26872e-05, 2.00346e-05, 1.77555e-05, 1.57853e-05, 1.4073e-05, 
			0.00024199, 0.000144666, 0.000105486, 8.2874e-05, 6.76782e-05, 5.65768e-05, 4.80522e-05, 4.12796e-05, 3.577e-05, 3.12086e-05, 2.73812e-05, 2.41356e-05, 2.13596e-05, 1.89681e-05, 1.68954e-05, 1.50896e-05, 
			0.000243782, 0.000147063, 0.000107833, 8.50736e-05, 6.97104e-05, 5.8453e-05, 4.97868e-05, 4.28836e-05, 3.7248e-05, 3.25706e-05, 2.8636e-05, 2.52914e-05, 2.24242e-05, 1.99483e-05, 1.77976e-05, 1.59198e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.27776e-05, 2.92005e-05, 3.48311e-05, 3.9789e-05, 4.41557e-05, 4.79996e-05, 5.13756e-05, 5.43353e-05, 5.69272e-05, 5.91942e-05, 6.11767e-05, 6.29098e-05, 6.44254e-05, 6.5751e-05, 6.69108e-05, 6.79262e-05, 
			3.06763e-05, 3.71149e-05, 4.29144e-05, 4.80915e-05, 5.26952e-05, 5.67744e-05, 6.03775e-05, 6.35541e-05, 6.63507e-05, 6.88088e-05, 7.0969e-05, 7.28661e-05, 7.4531e-05, 7.59937e-05, 7.72799e-05, 7.84104e-05, 
			3.89545e-05, 4.5414e-05, 5.12884e-05, 5.65728e-05, 6.12974e-05, 6.55044e-05, 6.92374e-05, 7.25426e-05, 7.54623e-05, 7.80402e-05, 8.0312e-05, 8.23138e-05, 8.40773e-05, 8.56317e-05, 8.70019e-05, 8.82101e-05, 
			4.74852e-05, 5.39561e-05, 5.98687e-05, 6.52148e-05, 7.00147e-05, 7.43064e-05, 7.81273e-05, 8.15219e-05, 8.45289e-05, 8.71908e-05, 8.95428e-05, 9.16226e-05, 9.34569e-05, 9.50786e-05, 9.65116e-05, 9.77777e-05, 
			5.61621e-05, 6.26122e-05, 6.85357e-05, 7.39115e-05, 7.87547e-05, 8.3096e-05, 8.69711e-05, 9.04202e-05, 9.34855e-05, 9.62054e-05, 9.8613e-05, 0.000100746, 0.000102633, 0.000104303, 0.00010578, 0.000107087
		)
}

CapTable	"poly_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			4.66344e-06, 5.95653e-06, 7.10746e-06, 8.13877e-06, 9.06094e-06, 9.88178e-06, 1.06095e-05, 1.12527e-05, 1.1819e-05, 1.23168e-05, 1.27536e-05, 1.31364e-05, 1.34716e-05, 1.37654e-05, 1.40235e-05, 1.425e-05, 
			6.12166e-06, 7.40554e-06, 8.59102e-06, 9.67207e-06, 1.06496e-05, 1.15264e-05, 1.23095e-05, 1.30055e-05, 1.36211e-05, 1.41662e-05, 1.46462e-05, 1.50688e-05, 1.54414e-05, 1.57698e-05, 1.60583e-05, 1.63124e-05, 
			7.62549e-06, 8.91395e-06, 1.01216e-05, 1.12322e-05, 1.22412e-05, 1.31524e-05, 1.39704e-05, 1.46996e-05, 1.53479e-05, 1.59224e-05, 1.64316e-05, 1.6882e-05, 1.72794e-05, 1.76304e-05, 1.79397e-05, 1.82123e-05, 
			9.16581e-06, 1.04641e-05, 1.16881e-05, 1.28198e-05, 1.38529e-05, 1.47886e-05, 1.56299e-05, 1.63827e-05, 1.70551e-05, 1.76524e-05, 1.81832e-05, 1.86528e-05, 1.90693e-05, 1.94372e-05, 1.97614e-05, 2.00486e-05, 
			1.07319e-05, 1.20344e-05, 1.32697e-05, 1.44149e-05, 1.54635e-05, 1.64162e-05, 1.72751e-05, 1.8045e-05, 1.87343e-05, 1.93484e-05, 1.98944e-05, 2.0379e-05, 2.08078e-05, 2.11881e-05, 2.15248e-05, 2.18238e-05
		)
}

CapTable	"poly_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000216696, 0.000123799, 8.78954e-05, 6.76182e-05, 5.41664e-05, 4.44386e-05, 3.70304e-05, 3.11962e-05, 2.64942e-05, 2.26412e-05, 1.94437e-05, 1.67645e-05, 1.4502e-05, 1.2579e-05, 1.09358e-05, 9.52538e-06, 
			0.00023001, 0.000133904, 9.59016e-05, 7.42074e-05, 5.97082e-05, 4.91762e-05, 4.1126e-05, 3.47644e-05, 2.96202e-05, 2.539e-05, 2.18678e-05, 1.89061e-05, 1.63966e-05, 1.42565e-05, 1.24218e-05, 1.08422e-05, 
			0.000236622, 0.00013952, 0.000100607, 7.8203e-05, 6.31684e-05, 5.21952e-05, 4.37772e-05, 3.71038e-05, 3.16908e-05, 2.72264e-05, 2.34984e-05, 2.03552e-05, 1.76843e-05, 1.54009e-05, 1.34384e-05, 1.17446e-05, 
			0.000240736, 0.000143189, 0.000103793, 8.09794e-05, 6.56014e-05, 5.434e-05, 4.56788e-05, 3.87934e-05, 3.3194e-05, 2.85648e-05, 2.469e-05, 2.14156e-05, 1.86278e-05, 1.62392e-05, 1.4183e-05, 1.24047e-05, 
			0.00024218, 0.000145223, 0.000105765, 8.27946e-05, 6.72428e-05, 5.58218e-05, 4.70178e-05, 4.00028e-05, 3.42802e-05, 2.95392e-05, 2.55636e-05, 2.21974e-05, 1.93266e-05, 1.68627e-05, 1.47378e-05, 1.28979e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.07146e-05, 2.68137e-05, 3.22348e-05, 3.70426e-05, 4.12821e-05, 4.49932e-05, 4.82155e-05, 5.09957e-05, 5.33784e-05, 5.54097e-05, 5.71363e-05, 5.85954e-05, 5.98272e-05, 6.0861e-05, 6.17306e-05, 6.24586e-05, 
			2.85396e-05, 3.48176e-05, 4.05236e-05, 4.5634e-05, 5.01586e-05, 5.41321e-05, 5.75884e-05, 6.05746e-05, 6.31406e-05, 6.53294e-05, 6.71924e-05, 6.87674e-05, 7.00987e-05, 7.12198e-05, 7.21601e-05, 7.29485e-05, 
			3.68957e-05, 4.33167e-05, 4.91785e-05, 5.4448e-05, 5.91229e-05, 6.32308e-05, 6.6813e-05, 6.99082e-05, 7.25698e-05, 7.48412e-05, 7.67753e-05, 7.84149e-05, 7.97983e-05, 8.0964e-05, 8.19434e-05, 8.27667e-05, 
			4.56133e-05, 5.21259e-05, 5.80847e-05, 6.34446e-05, 6.82088e-05, 7.23984e-05, 7.60501e-05, 7.92073e-05, 8.19241e-05, 8.42464e-05, 8.62208e-05, 8.78959e-05, 8.93105e-05, 9.05052e-05, 9.15035e-05, 9.23439e-05, 
			5.45356e-05, 6.10862e-05, 6.70898e-05, 7.24988e-05, 7.7307e-05, 8.15347e-05, 8.52221e-05, 8.84113e-05, 9.11542e-05, 9.35007e-05, 9.5497e-05, 9.71908e-05, 9.8621e-05, 9.98255e-05, 0.000100929, 0.000101782
		)
}

CapTable	"poly_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			9.26336e-06, 1.19519e-05, 1.43822e-05, 1.65754e-05, 1.85349e-05, 2.02684e-05, 2.17883e-05, 2.31071e-05, 2.42443e-05, 2.52183e-05, 2.60466e-05, 2.67492e-05, 2.73426e-05, 2.78436e-05, 2.82631e-05, 2.8615e-05, 
			1.25004e-05, 1.52588e-05, 1.78202e-05, 2.01568e-05, 2.22628e-05, 2.41299e-05, 2.57714e-05, 2.71988e-05, 2.84298e-05, 2.94855e-05, 3.0386e-05, 3.11517e-05, 3.17978e-05, 3.23427e-05, 3.28012e-05, 3.31851e-05, 
			1.59453e-05, 1.87679e-05, 2.14221e-05, 2.38484e-05, 2.60353e-05, 2.7979e-05, 2.96858e-05, 3.11714e-05, 3.24558e-05, 3.35576e-05, 3.44972e-05, 3.52953e-05, 3.59712e-05, 3.65407e-05, 3.70193e-05, 3.7417e-05, 
			1.95537e-05, 2.24363e-05, 2.51441e-05, 2.76284e-05, 2.98652e-05, 3.1853e-05, 3.36007e-05, 3.51237e-05, 3.64391e-05, 3.75674e-05, 3.85299e-05, 3.93495e-05, 4.00404e-05, 4.06198e-05, 4.11136e-05, 4.15261e-05, 
			2.32694e-05, 2.61854e-05, 2.89322e-05, 3.14456e-05, 3.37126e-05, 3.57277e-05, 3.74951e-05, 3.90347e-05, 4.03672e-05, 4.15087e-05, 4.24848e-05, 4.33097e-05, 4.40105e-05, 4.46023e-05, 4.50009e-05, 4.54144e-05
		)
}

CapTable	"poly_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000214726, 0.000121137, 8.4588e-05, 6.3744e-05, 4.9825e-05, 3.97394e-05, 3.20832e-05, 2.61042e-05, 2.13498e-05, 1.75241e-05, 1.44195e-05, 1.1887e-05, 9.81092e-06, 8.10538e-06, 6.70018e-06, 5.54106e-06, 
			0.00022684, 0.000129947, 9.12312e-05, 6.89312e-05, 5.39516e-05, 4.3071e-05, 3.47992e-05, 2.83336e-05, 2.31876e-05, 1.90441e-05, 1.56786e-05, 1.29309e-05, 1.06775e-05, 8.82454e-06, 7.2977e-06, 6.0374e-06, 
			0.000232134, 0.000134209, 9.45714e-05, 7.15746e-05, 5.60908e-05, 4.48142e-05, 3.62292e-05, 2.95134e-05, 2.41634e-05, 1.98532e-05, 1.63505e-05, 1.34888e-05, 1.11415e-05, 9.2103e-06, 7.6183e-06, 6.30428e-06, 
			0.00023489, 0.000136532, 9.64432e-05, 7.3082e-05, 5.7312e-05, 4.58116e-05, 3.70512e-05, 3.0193e-05, 2.47268e-05, 2.03202e-05, 1.67393e-05, 1.38116e-05, 1.14101e-05, 9.43402e-06, 7.8039e-06, 6.45802e-06, 
			0.000235018, 0.000137293, 9.7196e-05, 7.37436e-05, 5.78674e-05, 4.62776e-05, 3.74468e-05, 3.0529e-05, 2.50086e-05, 2.05566e-05, 1.69362e-05, 1.39775e-05, 1.15485e-05, 9.54924e-06, 7.90312e-06, 6.54128e-06
		)
}

CapTable	"poly_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			1.80166e-05, 2.41208e-05, 2.95025e-05, 3.40243e-05, 3.76772e-05, 4.05463e-05, 4.27502e-05, 4.44149e-05, 4.56565e-05, 4.65762e-05, 4.72502e-05, 4.77395e-05, 4.80988e-05, 4.83625e-05, 4.85922e-05, 4.8731e-05, 
			2.65033e-05, 3.28995e-05, 3.85399e-05, 4.32681e-05, 4.70888e-05, 5.00868e-05, 5.23888e-05, 5.41283e-05, 5.54266e-05, 5.63806e-05, 5.70867e-05, 5.76057e-05, 5.80268e-05, 5.8303e-05, 5.8503e-05, 5.86494e-05, 
			3.54658e-05, 4.19864e-05, 4.77256e-05, 5.25282e-05, 5.63985e-05, 5.94352e-05, 6.17687e-05, 6.35235e-05, 6.48416e-05, 6.58188e-05, 6.65844e-05, 6.71084e-05, 6.74932e-05, 6.77718e-05, 6.7975e-05, 6.81236e-05, 
			4.46452e-05, 5.12219e-05, 5.69946e-05, 6.18195e-05, 6.57082e-05, 6.87506e-05, 7.10946e-05, 7.28684e-05, 7.4189e-05, 7.52236e-05, 7.59441e-05, 7.64694e-05, 7.6857e-05, 7.71375e-05, 7.73401e-05, 7.74888e-05, 
			5.3894e-05, 6.04691e-05, 6.62416e-05, 7.10534e-05, 7.49386e-05, 7.7988e-05, 8.03209e-05, 8.21422e-05, 8.3462e-05, 8.44404e-05, 8.51566e-05, 8.56851e-05, 8.60682e-05, 8.63475e-05, 8.65507e-05, 8.66981e-05
		)
}

CapTable	"poly_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.84434e-05, 3.79378e-05, 4.60975e-05, 5.28195e-05, 5.81836e-05, 6.23557e-05, 6.55381e-05, 6.79305e-05, 6.9709e-05, 7.10171e-05, 7.19777e-05, 7.26857e-05, 7.31947e-05, 7.35605e-05, 7.37861e-05, 7.39772e-05, 
			4.24547e-05, 5.23555e-05, 6.08453e-05, 6.78323e-05, 7.34062e-05, 7.77402e-05, 8.10405e-05, 8.35244e-05, 8.53719e-05, 8.67413e-05, 8.77419e-05, 8.84648e-05, 8.89499e-05, 8.9328e-05, 8.96033e-05, 8.98012e-05, 
			5.71432e-05, 6.7178e-05, 7.57692e-05, 8.28394e-05, 8.84611e-05, 9.28398e-05, 9.61746e-05, 9.86983e-05, 0.000100559, 0.000101932, 0.000102887, 0.000103625, 0.000104153, 0.000104538, 0.000104816, 0.000105016, 
			7.21078e-05, 8.21877e-05, 9.08058e-05, 9.78935e-05, 0.00010353, 0.000107928, 0.000111271, 0.000113782, 0.000115655, 0.000116968, 0.000117975, 0.000118716, 0.000119242, 0.000119628, 0.000119907, 0.000120106, 
			8.7132e-05, 9.71749e-05, 0.00010578, 0.000112859, 0.000118478, 0.000122847, 0.000126181, 0.000128621, 0.00013048, 0.000131843, 0.000132855, 0.000133579, 0.00013411, 0.000134493, 0.00013477, 0.000134968
		)
}

CapTable	"poly_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000203326, 0.000106695, 6.8256e-05, 4.65732e-05, 3.26632e-05, 2.3213e-05, 1.66087e-05, 1.19286e-05, 8.58548e-06, 6.18974e-06, 4.46708e-06, 3.22578e-06, 2.33252e-06, 1.68904e-06, 1.22572e-06, 8.90846e-07, 
			0.00021004, 0.000110934, 7.10558e-05, 4.85166e-05, 3.4035e-05, 2.4195e-05, 1.73197e-05, 1.24453e-05, 8.96352e-06, 6.46512e-06, 4.6684e-06, 3.37652e-06, 2.44526e-06, 1.77498e-06, 1.29071e-06, 9.41444e-07, 
			0.00021137, 0.000112021, 7.18232e-05, 4.90484e-05, 3.44324e-05, 2.4486e-05, 1.75357e-05, 1.26032e-05, 9.08338e-06, 6.55624e-06, 4.7416e-06, 3.43158e-06, 2.4908e-06, 1.81122e-06, 1.32105e-06, 9.67438e-07, 
			0.000211424, 0.00011222, 7.19996e-05, 4.9185e-05, 3.45348e-05, 2.45624e-05, 1.75954e-05, 1.26536e-05, 9.12202e-06, 6.5934e-06, 4.77186e-06, 3.45758e-06, 2.51496e-06, 1.83346e-06, 1.34193e-06, 9.87208e-07, 
			0.000209778, 0.000111613, 7.16754e-05, 4.89906e-05, 3.44034e-05, 2.4474e-05, 1.75421e-05, 1.26298e-05, 9.11204e-06, 6.5916e-06, 4.77244e-06, 3.4689e-06, 2.52678e-06, 1.84754e-06, 1.35734e-06, 1.00388e-06
		)
}

CapModel	"polyConfig1" {
		refLayer				= "POLY1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M1"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GPMAX"
		topCapDataNom			= "poly_C_TOP_GPMAX"
		topCapDataMax			= "poly_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERALMAX"
		lateralCapDataNom		= "poly_C_LATERALMAX"
		lateralCapDataMax		= "poly_C_LATERALMAX"
}

CapModel	"polyConfig2" {
		refLayer				= "POLY1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M2"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_12MAX"
		topCapDataNom			= "poly_C_TOP_GP_12MAX"
		topCapDataMax			= "poly_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_12MAX"
		lateralCapDataNom		= "poly_C_LATERAL_12MAX"
		lateralCapDataMax		= "poly_C_LATERAL_12MAX"
}

CapModel	"polyConfig3" {
		refLayer				= "POLY1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_13MAX"
		topCapDataNom			= "poly_C_TOP_GP_13MAX"
		topCapDataMax			= "poly_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_13MAX"
		lateralCapDataNom		= "poly_C_LATERAL_13MAX"
		lateralCapDataMax		= "poly_C_LATERAL_13MAX"
}

CapModel	"polyConfig4" {
		refLayer				= "POLY1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_14MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_14MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_14MAX"
		topCapDataNom			= "poly_C_TOP_GP_14MAX"
		topCapDataMax			= "poly_C_TOP_GP_14MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_14MAX"
		lateralCapDataNom		= "poly_C_LATERAL_14MAX"
		lateralCapDataMax		= "poly_C_LATERAL_14MAX"
}

CapModel	"polyConfig5" {
		refLayer				= "POLY1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_15MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_15MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_15MAX"
		lateralCapDataNom		= "poly_C_LATERAL_15MAX"
		lateralCapDataMax		= "poly_C_LATERAL_15MAX"
}

CapModel	"metal1Config1" {
		refLayer				= "M1"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M2"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GPMAX"
		topCapDataNom			= "metal1_C_TOP_GPMAX"
		topCapDataMax			= "metal1_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERALMAX"
		lateralCapDataNom		= "metal1_C_LATERALMAX"
		lateralCapDataMax		= "metal1_C_LATERALMAX"
}

CapModel	"metal1Config2" {
		refLayer				= "M1"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_12MAX"
		topCapDataNom			= "metal1_C_TOP_GP_12MAX"
		topCapDataMax			= "metal1_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_12MAX"
}

CapModel	"metal1Config3" {
		refLayer				= "M1"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_13MAX"
		topCapDataNom			= "metal1_C_TOP_GP_13MAX"
		topCapDataMax			= "metal1_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_13MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_13MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_13MAX"
}

CapModel	"metal1Config4" {
		refLayer				= "M1"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_14MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_14MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_14MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_14MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_14MAX"
}

CapModel	"metal1Config6" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M2"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_21MAX"
		topCapDataNom			= "metal1_C_TOP_GP_21MAX"
		topCapDataMax			= "metal1_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_21MAX"
}

CapModel	"metal1Config7" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_22MAX"
		topCapDataNom			= "metal1_C_TOP_GP_22MAX"
		topCapDataMax			= "metal1_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_22MAX"
}

CapModel	"metal1Config8" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_23MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_23MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_23MAX"
		topCapDataNom			= "metal1_C_TOP_GP_23MAX"
		topCapDataMax			= "metal1_C_TOP_GP_23MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_23MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_23MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_23MAX"
}

CapModel	"metal1Config9" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_24MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_24MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_24MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_24MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_24MAX"
}

CapModel	"metal2Config1" {
		refLayer				= "M2"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GPMAX"
		topCapDataNom			= "metal2_C_TOP_GPMAX"
		topCapDataMax			= "metal2_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERALMAX"
		lateralCapDataNom		= "metal2_C_LATERALMAX"
		lateralCapDataMax		= "metal2_C_LATERALMAX"
}

CapModel	"metal2Config2" {
		refLayer				= "M2"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_12MAX"
		topCapDataNom			= "metal2_C_TOP_GP_12MAX"
		topCapDataMax			= "metal2_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_12MAX"
}

CapModel	"metal2Config3" {
		refLayer				= "M2"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_13MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_13MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_13MAX"
}

CapModel	"metal2Config6" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_21MAX"
		topCapDataNom			= "metal2_C_TOP_GP_21MAX"
		topCapDataMax			= "metal2_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_21MAX"
}

CapModel	"metal2Config7" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_22MAX"
		topCapDataNom			= "metal2_C_TOP_GP_22MAX"
		topCapDataMax			= "metal2_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_22MAX"
}

CapModel	"metal2Config8" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_23MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_23MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_23MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_23MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_23MAX"
}

CapModel	"metal2Config11" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_31MAX"
		topCapDataNom			= "metal2_C_TOP_GP_31MAX"
		topCapDataMax			= "metal2_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_31MAX"
}

CapModel	"metal2Config12" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_32MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_32MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_32MAX"
		topCapDataNom			= "metal2_C_TOP_GP_32MAX"
		topCapDataMax			= "metal2_C_TOP_GP_32MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_32MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_32MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_32MAX"
}

CapModel	"metal2Config13" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_33MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_33MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_33MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_33MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_33MAX"
}

CapModel	"metal3Config1" {
		refLayer				= "M3"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GPMAX"
		topCapDataNom			= "metal3_C_TOP_GPMAX"
		topCapDataMax			= "metal3_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERALMAX"
		lateralCapDataNom		= "metal3_C_LATERALMAX"
		lateralCapDataMax		= "metal3_C_LATERALMAX"
}

CapModel	"metal3Config2" {
		refLayer				= "M3"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_12MAX"
}

CapModel	"metal3Config6" {
		refLayer				= "M3"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_21MAX"
		topCapDataNom			= "metal3_C_TOP_GP_21MAX"
		topCapDataMax			= "metal3_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_21MAX"
}

CapModel	"metal3Config7" {
		refLayer				= "M3"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_22MAX"
}

CapModel	"metal3Config11" {
		refLayer				= "M3"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_31MAX"
		topCapDataNom			= "metal3_C_TOP_GP_31MAX"
		topCapDataMax			= "metal3_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_31MAX"
}

CapModel	"metal3Config12" {
		refLayer				= "M3"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_32MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_32MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_32MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_32MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_32MAX"
}

CapModel	"metal3Config16" {
		refLayer				= "M3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_41MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_41MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_41MAX"
		topCapDataNom			= "metal3_C_TOP_GP_41MAX"
		topCapDataMax			= "metal3_C_TOP_GP_41MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_41MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_41MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_41MAX"
}

CapModel	"metal3Config17" {
		refLayer				= "M3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_42MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_42MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_42MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_42MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_42MAX"
}

CapModel	"metal4Config1" {
		refLayer				= "M4"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERALMAX"
		lateralCapDataNom		= "metal4_C_LATERALMAX"
		lateralCapDataMax		= "metal4_C_LATERALMAX"
}

CapModel	"metal4Config6" {
		refLayer				= "M4"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_21MAX"
}

CapModel	"metal4Config11" {
		refLayer				= "M4"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_31MAX"
}

CapModel	"metal4Config16" {
		refLayer				= "M4"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_41MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_41MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_41MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_41MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_41MAX"
}

CapModel	"metal4Config21" {
		refLayer				= "M4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_51MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_51MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_51MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_51MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_51MAX"
}

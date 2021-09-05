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
   $Id: tsmc090_4lm_1thick.tf,v 1.1 2006/05/11 06:32:09 Exp $
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
		color				= "red"
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

Layer		"M4" {
		layerNumber			= 34
		maskName			= "metal4"
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
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.13
		minWidth			= 0.13
		minSpacing			= 0.15
		maxStackLevel			= 4
		maxCurrDensity			= 1.11834e+06
		fatTblDimension			= 6
		fatTblThreshold			= (0,0.425,0.705,0.985,2.005,3.005)
		fatTblExtensionRange		= (0,0,1,1,2,5)
		fatTblFatContactNumber		= (3,3,3,33,33,33)
		fatTblFatContactMinCuts		= (1,2,2,4,4,4)
		fatTblExtensionContactNumber	= (0,0,3,3,3,3)
		fatTblExtensionMinCuts		= (1,1,2,2,2,2)
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.19
}

Layer		"VIA3" {
		layerNumber			= 53
		maskName			= "via3"
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
		cutWidth			= 0.13
		cutHeight			= 0.13
		upperLayerEncWidth		= 0.05
		upperLayerEncHeight		= 0.005
		lowerLayerEncWidth		= 0.005
		lowerLayerEncHeight		= 0.05
		minCutSpacing			= 0.15
		maxNumRowsNonTurning		= 3
		unitMinResistance		= 0.0024
		unitNomResistance		= 0.0024
		unitMaxResistance		= 0.0024
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
		unitMinResistance		= 0.00067
		unitNomResistance		= 0.00067
		unitMaxResistance		= 0.00067
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
		cutWidth			= 0.13
		cutHeight			= 0.13
		upperLayerEncWidth		= 0.05
		upperLayerEncHeight		= 0.005
		lowerLayerEncWidth		= 0.005
		lowerLayerEncHeight		= 0.05
		minCutSpacing			= 0.2
		maxNumRowsNonTurning		= 3
		unitMinResistance		= 0.0024
		unitNomResistance		= 0.0024
		unitMaxResistance		= 0.0024
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
		unitMinResistance		= 0.00067
		unitNomResistance		= 0.00067
		unitMaxResistance		= 0.00067
}

DesignRule	{
		layer1				= "via1Blockage"
		layer2				= "VIA1"
		minSpacing			= 0.17
}

DesignRule	{
		layer1				= "via2Blockage"
		layer2				= "VIA2"
		minSpacing			= 0.17
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
			0.000234456, 0.000133173, 9.45292e-05, 7.30728e-05, 5.90634e-05, 4.9043e-05, 4.14438e-05, 3.5443e-05, 3.05646e-05, 2.65134e-05, 2.3096e-05, 2.01796e-05, 1.76695e-05, 1.54957e-05, 1.36045e-05, 1.1954e-05, 
			0.000249276, 0.000144272, 0.000103443, 8.0528e-05, 6.542e-05, 5.45244e-05, 4.62018e-05, 3.95898e-05, 3.41888e-05, 2.96878e-05, 2.58816e-05, 2.2628e-05, 1.98252e-05, 1.73966e-05, 1.52835e-05, 1.34395e-05, 
			0.000257618, 0.000151218, 0.000109316, 8.55604e-05, 6.97748e-05, 5.83068e-05, 4.94962e-05, 4.24658e-05, 3.67044e-05, 3.18922e-05, 2.78168e-05, 2.43304e-05, 2.13258e-05, 1.87221e-05, 1.64569e-05, 1.44805e-05, 
			0.00026279, 0.00015602, 0.00011351, 8.92034e-05, 7.29404e-05, 6.1068e-05, 5.19014e-05, 4.45648e-05, 3.854e-05, 3.35016e-05, 2.92314e-05, 2.55774e-05, 2.2428e-05, 1.96993e-05, 1.73258e-05, 1.52555e-05, 
			0.00026685, 0.000159716, 0.000116754, 9.20192e-05, 7.53834e-05, 6.31852e-05, 5.37442e-05, 4.61726e-05, 3.9947e-05, 3.47366e-05, 3.03192e-05, 2.65388e-05, 2.32804e-05, 2.04578e-05, 1.80031e-05, 1.58622e-05
		)
}

CapTable	"metal4_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			5.1514e-05, 6.8139e-05, 8.08022e-05, 9.03756e-05, 9.76998e-05, 0.000103412, 0.000107961, 0.000111658, 0.000114715, 0.00011728, 0.000119458, 0.000121326, 0.000122939, 0.000124338, 0.000125558, 0.000126621, 
			7.2581e-05, 8.88698e-05, 0.000101501, 0.000111252, 0.000118887, 0.000124975, 0.000129923, 0.000134017, 0.000137453, 0.000140371, 0.000142872, 0.000145029, 0.0001469, 0.000148526, 0.000149944, 0.000151181, 
			9.3457e-05, 0.000109451, 0.000122029, 0.000131912, 0.00013978, 0.000146158, 0.000151415, 0.000155816, 0.000159542, 0.000162729, 0.000165473, 0.000167848, 0.000169909, 0.000171703, 0.000173264, 0.000174624, 
			0.000114199, 0.000129992, 0.000142575, 0.000152595, 0.000160679, 0.0001673, 0.000172815, 0.000177465, 0.000181425, 0.000184823, 0.000187756, 0.000190295, 0.000192499, 0.000194415, 0.00019608, 0.000197529, 
			0.000134979, 0.000150723, 0.000163364, 0.000173531, 0.000181805, 0.00018864, 0.000194362, 0.00019921, 0.000203351, 0.000206911, 0.000209987, 0.000212649, 0.00021496, 0.000216966, 0.000218707, 0.000220219
		)
}

CapTable	"metal4_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000221126, 0.000118252, 7.94988e-05, 5.86584e-05, 4.55932e-05, 3.66396e-05, 3.01236e-05, 2.5168e-05, 2.12712e-05, 1.81271e-05, 1.55397e-05, 1.33776e-05, 1.15499e-05, 9.99132e-06, 8.65352e-06, 7.49972e-06, 
			0.000233094, 0.000127794, 8.75022e-05, 6.55248e-05, 5.15136e-05, 4.17498e-05, 3.45286e-05, 2.89564e-05, 2.45204e-05, 2.09058e-05, 1.7909e-05, 1.53922e-05, 1.32582e-05, 1.14362e-05, 9.87278e-06, 8.52636e-06, 
			0.000240404, 0.000134318, 9.32244e-05, 7.05128e-05, 5.58514e-05, 4.5498e-05, 3.77512e-05, 3.17144e-05, 2.68706e-05, 2.29008e-05, 1.95966e-05, 1.68151e-05, 1.44546e-05, 1.24395e-05, 1.07124e-05, 9.22772e-06, 
			0.000245386, 0.000139171, 9.75524e-05, 7.42924e-05, 5.91152e-05, 4.83052e-05, 4.01396e-05, 3.37344e-05, 2.85706e-05, 2.4325e-05, 2.07848e-05, 1.78031e-05, 1.52736e-05, 1.31169e-05, 1.12716e-05, 9.68898e-06, 
			0.000249552, 0.000143041, 0.000100974, 7.72524e-05, 6.16514e-05, 5.04542e-05, 4.19566e-05, 3.52628e-05, 2.98504e-05, 2.53928e-05, 2.16734e-05, 1.85407e-05, 1.5885e-05, 1.36233e-05, 1.16911e-05, 1.00369e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			2.1887e-05, 2.78134e-05, 3.29024e-05, 3.73796e-05, 4.13778e-05, 4.49866e-05, 4.8267e-05, 5.1266e-05, 5.40171e-05, 5.65451e-05, 5.88702e-05, 6.10081e-05, 6.29722e-05, 6.47745e-05, 6.64259e-05, 6.79365e-05, 
			2.7025e-05, 3.27995e-05, 3.79662e-05, 4.26138e-05, 4.68272e-05, 5.0671e-05, 5.41958e-05, 5.7436e-05, 6.04218e-05, 6.31743e-05, 6.57107e-05, 6.80463e-05, 7.01938e-05, 7.21655e-05, 7.39725e-05, 7.56257e-05, 
			3.2335e-05, 3.8053e-05, 4.32668e-05, 4.80256e-05, 5.2383e-05, 5.639e-05, 6.00836e-05, 6.3493e-05, 6.66416e-05, 6.95498e-05, 7.22316e-05, 7.47018e-05, 7.69746e-05, 7.90608e-05, 8.09728e-05, 8.27221e-05, 
			3.7807e-05, 4.3496e-05, 4.87558e-05, 5.3603e-05, 5.80732e-05, 6.22038e-05, 6.60258e-05, 6.95612e-05, 7.2831e-05, 7.58512e-05, 7.86384e-05, 8.12066e-05, 8.35674e-05, 8.57354e-05, 8.77212e-05, 8.95373e-05, 
			4.3406e-05, 4.91168e-05, 5.4428e-05, 5.93526e-05, 6.39172e-05, 6.8149e-05, 7.20712e-05, 7.57036e-05, 7.90662e-05, 8.21722e-05, 8.50386e-05, 8.76792e-05, 9.01068e-05, 9.23346e-05, 9.43758e-05, 9.62414e-05
		)
}

CapTable	"metal4_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000239432, 0.000139336, 0.000101358, 8.01954e-05, 6.62372e-05, 5.61154e-05, 4.83208e-05, 4.20684e-05, 3.6906e-05, 3.25542e-05, 2.8829e-05, 2.56042e-05, 2.27894e-05, 2.03172e-05, 1.81358e-05, 1.62047e-05, 
			0.000255828, 0.000151581, 0.000111099, 8.82622e-05, 7.30678e-05, 6.1985e-05, 5.34142e-05, 4.6519e-05, 4.08152e-05, 3.6002e-05, 3.18806e-05, 2.83132e-05, 2.5201e-05, 2.24692e-05, 2.00608e-05, 1.79302e-05, 
			0.000265176, 0.000159175, 0.00011739, 9.35764e-05, 7.7625e-05, 6.5926e-05, 5.68454e-05, 4.9522e-05, 4.34554e-05, 3.83322e-05, 3.39444e-05, 3.01472e-05, 2.68354e-05, 2.39302e-05, 2.13702e-05, 1.91069e-05, 
			0.0002709, 0.000164291, 0.000121763, 9.7324e-05, 8.08578e-05, 6.87372e-05, 5.92962e-05, 5.16688e-05, 4.5344e-05, 4.00008e-05, 3.54246e-05, 3.14654e-05, 2.80136e-05, 2.49866e-05, 2.23208e-05, 1.99647e-05, 
			0.000275212, 0.000168105, 0.000125054, 0.000100153, 8.33008e-05, 7.0853e-05, 6.11418e-05, 5.32864e-05, 4.67688e-05, 4.12618e-05, 3.65454e-05, 3.24658e-05, 2.89102e-05, 2.57934e-05, 2.30492e-05, 2.06246e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			2.8921e-05, 3.76644e-05, 4.50888e-05, 5.14022e-05, 5.68016e-05, 6.146e-05, 6.55122e-05, 6.9067e-05, 7.22064e-05, 7.49916e-05, 7.7473e-05, 7.96876e-05, 8.16669e-05, 8.34366e-05, 8.50185e-05, 8.64316e-05, 
			3.7633e-05, 4.62794e-05, 5.37938e-05, 6.0291e-05, 6.5934e-05, 7.08656e-05, 7.52052e-05, 7.90482e-05, 8.24662e-05, 8.55172e-05, 8.82464e-05, 9.069e-05, 9.28788e-05, 9.48394e-05, 9.65935e-05, 9.81625e-05, 
			4.655e-05, 5.50985e-05, 6.26288e-05, 6.92296e-05, 7.50272e-05, 8.01462e-05, 8.46878e-05, 8.87332e-05, 9.23486e-05, 9.55858e-05, 9.84882e-05, 0.000101092, 0.000103426, 0.000105519, 0.000107391, 0.000109067, 
			5.5576e-05, 6.40442e-05, 7.15926e-05, 7.82766e-05, 8.41996e-05, 8.9464e-05, 9.41596e-05, 9.83592e-05, 0.000102121, 0.000105496, 0.000108527, 0.000111246, 0.000113685, 0.000115871, 0.000117828, 0.000119579, 
			6.4687e-05, 7.3145e-05, 8.07298e-05, 8.74958e-05, 9.35276e-05, 9.89138e-05, 0.000103733, 0.000108052, 0.000111929, 0.000115409, 0.000118536, 0.000121343, 0.000123861, 0.000126118, 0.000128139, 0.000129946
		)
}

CapTable	"metal4_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000242608, 0.000143394, 0.000106057, 8.5328e-05, 7.16392e-05, 6.16616e-05, 5.3919e-05, 4.76522e-05, 4.24284e-05, 3.79816e-05, 3.41382e-05, 3.07792e-05, 2.78188e-05, 2.51932e-05, 2.28532e-05, 2.07596e-05, 
			0.000260074, 0.000156553, 0.000116562, 9.4031e-05, 7.9004e-05, 6.79888e-05, 5.94148e-05, 5.24664e-05, 4.66752e-05, 4.175e-05, 3.74992e-05, 3.37902e-05, 3.0527e-05, 2.76374e-05, 2.5066e-05, 2.27686e-05, 
			0.00027029, 0.000164829, 0.000123383, 9.97602e-05, 8.3893e-05, 7.22044e-05, 6.30832e-05, 5.56836e-05, 4.95156e-05, 4.42732e-05, 3.9753e-05, 3.5813e-05, 3.23502e-05, 2.9287e-05, 2.65638e-05, 2.41326e-05, 
			0.000276658, 0.000170415, 0.000128101, 0.000103765, 8.73252e-05, 7.51784e-05, 6.56754e-05, 5.79602e-05, 5.15296e-05, 4.60662e-05, 4.13584e-05, 3.72582e-05, 3.36572e-05, 3.0474e-05, 2.76456e-05, 2.51216e-05, 
			0.0002814, 0.00017453, 0.000131603, 0.000106747, 8.98854e-05, 7.73922e-05, 6.76096e-05, 5.96638e-05, 5.30414e-05, 4.7417e-05, 4.25732e-05, 3.83564e-05, 3.46548e-05, 3.13842e-05, 2.84788e-05, 2.5887e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.9404e-05, 2.43324e-05, 2.8537e-05, 3.22604e-05, 3.56306e-05, 3.87262e-05, 4.15971e-05, 4.42746e-05, 4.67801e-05, 4.9128e-05, 5.13288e-05, 5.33904e-05, 5.53187e-05, 5.71197e-05, 5.87987e-05, 6.03602e-05, 
			2.3418e-05, 2.81538e-05, 3.24122e-05, 3.62892e-05, 3.98614e-05, 4.31796e-05, 4.62788e-05, 4.91829e-05, 5.19082e-05, 5.44662e-05, 5.68649e-05, 5.91122e-05, 6.12134e-05, 6.31743e-05, 6.50008e-05, 6.66981e-05, 
			2.7556e-05, 3.22347e-05, 3.6545e-05, 4.05362e-05, 4.42534e-05, 4.773e-05, 5.09932e-05, 5.40576e-05, 5.69384e-05, 5.96432e-05, 6.21796e-05, 6.45547e-05, 6.67739e-05, 6.88436e-05, 7.07696e-05, 7.25578e-05, 
			3.186e-05, 3.65268e-05, 4.0897e-05, 4.4984e-05, 4.88166e-05, 5.24164e-05, 5.58038e-05, 5.89888e-05, 6.19838e-05, 6.47952e-05, 6.7431e-05, 6.98972e-05, 7.2199e-05, 7.43444e-05, 7.63386e-05, 7.81892e-05, 
			3.6305e-05, 4.10082e-05, 4.5441e-05, 4.9613e-05, 5.35406e-05, 5.724e-05, 6.07238e-05, 6.4003e-05, 6.70858e-05, 6.99794e-05, 7.26902e-05, 7.52254e-05, 7.7591e-05, 7.97928e-05, 8.18394e-05, 8.3736e-05
		)
}

CapTable	"metal4_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000241288, 0.000141703, 0.000104079, 8.31396e-05, 6.93014e-05, 5.92218e-05, 5.14116e-05, 4.5101e-05, 3.98488e-05, 3.53834e-05, 3.15268e-05, 2.81572e-05, 2.5188e-05, 2.25544e-05, 2.02072e-05, 1.81082e-05, 
			0.00025829, 0.000154443, 0.000114212, 9.15118e-05, 7.63696e-05, 6.52784e-05, 5.66552e-05, 4.96748e-05, 4.38616e-05, 3.89204e-05, 3.46572e-05, 3.09372e-05, 2.76644e-05, 2.4767e-05, 2.21894e-05, 1.98884e-05, 
			0.000268104, 0.000162378, 0.000120745, 9.69938e-05, 8.10416e-05, 6.9297e-05, 6.01378e-05, 5.27114e-05, 4.65226e-05, 4.12628e-05, 3.67272e-05, 3.27732e-05, 2.92986e-05, 2.6226e-05, 2.34962e-05, 2.10624e-05, 
			0.000274144, 0.000167697, 0.000125242, 0.000100811, 8.43074e-05, 7.21166e-05, 6.25812e-05, 5.48402e-05, 4.83872e-05, 4.29038e-05, 3.8178e-05, 3.40618e-05, 3.0448e-05, 2.72556e-05, 2.44224e-05, 2.18988e-05, 
			0.000278636, 0.000171611, 0.000128577, 0.000103648, 8.67344e-05, 7.4201e-05, 6.43852e-05, 5.641e-05, 4.97602e-05, 4.41106e-05, 3.92438e-05, 3.50076e-05, 3.1291e-05, 2.80102e-05, 2.51006e-05, 2.2511e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.58912e-05, 4.75134e-05, 5.67182e-05, 6.38828e-05, 6.94634e-05, 7.38544e-05, 7.73576e-05, 8.01926e-05, 8.25193e-05, 8.44535e-05, 8.60806e-05, 8.74641e-05, 8.86517e-05, 8.96799e-05, 9.05771e-05, 9.13651e-05, 
			5.00518e-05, 6.15932e-05, 7.08598e-05, 7.8175e-05, 8.39674e-05, 8.85984e-05, 9.23488e-05, 9.54292e-05, 9.799e-05, 0.000100147, 0.000101982, 0.000103559, 0.000104925, 0.000106119, 0.000107168, 0.000108097, 
			6.4293e-05, 7.5702e-05, 8.49474e-05, 9.23352e-05, 9.82466e-05, 0.000103032, 0.000106954, 0.000110209, 0.000112944, 0.000115269, 0.000117265, 0.000118995, 0.000120504, 0.000121832, 0.000123006, 0.000124051, 
			7.85432e-05, 8.98734e-05, 9.9107e-05, 0.000106546, 0.000112558, 0.000117466, 0.000121524, 0.000124924, 0.000127804, 0.000130272, 0.000132405, 0.000134266, 0.000135899, 0.000137344, 0.000138627, 0.000139774, 
			9.28269e-05, 0.000104066, 0.000113292, 0.000120778, 0.000126875, 0.000131888, 0.000136065, 0.00013959, 0.000142599, 0.000145191, 0.000147447, 0.000149423, 0.000151168, 0.000152717, 0.000154098, 0.000155337
		)
}

CapTable	"metal3_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000169969, 9.20716e-05, 6.23128e-05, 4.60842e-05, 3.58146e-05, 2.87506e-05, 2.36184e-05, 1.97391e-05, 1.67163e-05, 1.43029e-05, 1.23371e-05, 1.07089e-05, 9.34104e-06, 8.17786e-06, 7.17834e-06, 6.31166e-06, 
			0.000179586, 9.94868e-05, 6.83862e-05, 5.1244e-05, 4.02596e-05, 3.26156e-05, 2.69972e-05, 2.27018e-05, 1.9318e-05, 1.65883e-05, 1.43433e-05, 1.24671e-05, 1.0878e-05, 9.51648e-06, 8.33858e-06, 7.31096e-06, 
			0.000184974, 0.000104208, 7.24926e-05, 5.48288e-05, 4.34244e-05, 3.5405e-05, 2.94554e-05, 2.48654e-05, 2.12178e-05, 1.82509e-05, 1.57919e-05, 1.37222e-05, 1.19575e-05, 1.04366e-05, 9.11368e-06, 7.95396e-06, 
			0.000188717, 0.000107658, 7.5579e-05, 5.75718e-05, 4.5848e-05, 3.75484e-05, 3.13426e-05, 2.65184e-05, 2.26568e-05, 1.94941e-05, 1.6856e-05, 1.46223e-05, 1.27076e-05, 1.10493e-05, 9.6006e-06, 8.32572e-06, 
			0.000191116, 0.000110211, 7.7933e-05, 5.9684e-05, 4.77196e-05, 3.91998e-05, 3.27868e-05, 2.7766e-05, 2.37224e-05, 2.03916e-05, 1.75984e-05, 1.52218e-05, 1.31756e-05, 1.13964e-05, 9.83658e-06, 8.45972e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.7692e-05, 2.19777e-05, 2.55944e-05, 2.8792e-05, 3.17018e-05, 3.43994e-05, 3.69258e-05, 3.93055e-05, 4.15525e-05, 4.3675e-05, 4.56778e-05, 4.7564e-05, 4.93367e-05, 5.09988e-05, 5.25536e-05, 5.40049e-05, 
			2.0953e-05, 2.50032e-05, 2.86352e-05, 3.1957e-05, 3.5043e-05, 3.79372e-05, 4.06682e-05, 4.32518e-05, 4.56956e-05, 4.80057e-05, 5.01855e-05, 5.22378e-05, 5.41655e-05, 5.59722e-05, 5.76615e-05, 5.92376e-05, 
			2.4289e-05, 2.82592e-05, 3.19296e-05, 3.53518e-05, 3.8569e-05, 4.16086e-05, 4.44868e-05, 4.72144e-05, 4.97956e-05, 5.2235e-05, 5.45354e-05, 5.66999e-05, 5.87318e-05, 6.06351e-05, 6.24136e-05, 6.40724e-05, 
			2.7763e-05, 3.17142e-05, 3.54368e-05, 3.89488e-05, 4.22728e-05, 4.54236e-05, 4.84136e-05, 5.12468e-05, 5.39284e-05, 5.64608e-05, 5.88476e-05, 6.10917e-05, 6.31969e-05, 6.51677e-05, 6.70087e-05, 6.87254e-05, 
			3.1372e-05, 3.5356e-05, 3.91382e-05, 4.2729e-05, 4.61396e-05, 4.93788e-05, 5.24524e-05, 5.53662e-05, 5.81216e-05, 6.0723e-05, 6.31718e-05, 6.54746e-05, 6.76332e-05, 6.96528e-05, 7.15392e-05, 7.32987e-05
		)
}

CapTable	"metal3_C_BOTTOM_GPMAX" {
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

CapTable	"metal3_C_TOP_GPMAX" {
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

CapTable	"metal3_C_LATERALMAX" {
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

CapTable	"metal3_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000174428, 9.65664e-05, 6.59042e-05, 4.83306e-05, 3.662e-05, 2.82184e-05, 2.19486e-05, 1.71677e-05, 1.34739e-05, 1.05956e-05, 8.34404e-06, 6.57676e-06, 5.18678e-06, 4.09246e-06, 3.2303e-06, 2.5498e-06, 
			0.000184631, 0.000103566, 7.09302e-05, 5.2078e-05, 3.9464e-05, 3.0409e-05, 2.3652e-05, 1.84994e-05, 1.45178e-05, 1.14177e-05, 8.99124e-06, 7.08712e-06, 5.59038e-06, 4.41116e-06, 3.48122e-06, 2.74776e-06, 
			0.000189274, 0.000106957, 7.34128e-05, 5.39222e-05, 4.08774e-05, 3.14984e-05, 2.45002e-05, 1.91631e-05, 1.50397e-05, 1.18288e-05, 9.3164e-06, 7.3441e-06, 5.79266e-06, 4.57038e-06, 3.60752e-06, 2.84772e-06, 
			0.000191515, 0.000108664, 7.4688e-05, 5.48844e-05, 4.16058e-05, 3.20634e-05, 2.49412e-05, 1.95084e-05, 1.53114e-05, 1.20443e-05, 9.48626e-06, 7.47804e-06, 5.89802e-06, 4.65452e-06, 3.67362e-06, 2.89964e-06, 
			0.0001921, 0.000109374, 7.52558e-05, 5.53236e-05, 4.19446e-05, 3.23302e-05, 2.51534e-05, 1.96765e-05, 1.54442e-05, 1.21484e-05, 9.56816e-06, 7.54332e-06, 5.95012e-06, 4.69494e-06, 3.70658e-06, 2.92568e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.73224e-05, 2.17112e-05, 2.53662e-05, 2.84968e-05, 3.12218e-05, 3.36173e-05, 3.57365e-05, 3.76202e-05, 3.93015e-05, 4.08072e-05, 4.21609e-05, 4.33825e-05, 4.44891e-05, 4.54954e-05, 4.6414e-05, 4.72559e-05, 
			2.10788e-05, 2.52102e-05, 2.88192e-05, 3.19902e-05, 3.47925e-05, 3.72803e-05, 3.94969e-05, 4.14789e-05, 4.32571e-05, 4.4858e-05, 4.63047e-05, 4.76166e-05, 4.88113e-05, 4.99028e-05, 5.09045e-05, 5.18269e-05, 
			2.4748e-05, 2.87272e-05, 3.22814e-05, 3.54466e-05, 3.82672e-05, 4.0789e-05, 4.30482e-05, 4.50781e-05, 4.69082e-05, 4.85635e-05, 5.00663e-05, 5.14354e-05, 5.26876e-05, 5.38373e-05, 5.48966e-05, 5.58768e-05, 
			2.8373e-05, 3.22469e-05, 3.57392e-05, 3.88758e-05, 4.169e-05, 4.42166e-05, 4.64922e-05, 4.85467e-05, 5.04068e-05, 5.20969e-05, 5.36376e-05, 5.50475e-05, 5.63424e-05, 5.75361e-05, 5.86408e-05, 5.96668e-05, 
			3.1975e-05, 3.57376e-05, 3.91632e-05, 4.22584e-05, 4.50502e-05, 4.75688e-05, 4.98464e-05, 5.19126e-05, 5.37908e-05, 5.55039e-05, 5.70723e-05, 5.85133e-05, 5.98418e-05, 6.10715e-05, 6.22138e-05, 6.32783e-05
		)
}

CapTable	"metal3_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182566, 0.000107538, 7.93178e-05, 6.37436e-05, 5.35792e-05, 4.62986e-05, 4.07732e-05, 3.6413e-05, 3.28742e-05, 2.99408e-05, 2.74676e-05, 2.53534e-05, 2.35246e-05, 2.19264e-05, 2.05172e-05, 1.92644e-05, 
			0.000196643, 0.000118525, 8.83828e-05, 7.15298e-05, 6.0432e-05, 5.24444e-05, 4.63626e-05, 4.1551e-05, 3.76368e-05, 3.43842e-05, 3.16348e-05, 2.92782e-05, 2.72336e-05, 2.54418e-05, 2.38566e-05, 2.2443e-05, 
			0.00020526, 0.000125841, 9.47086e-05, 7.71224e-05, 6.54878e-05, 5.7072e-05, 5.06434e-05, 4.5543e-05, 4.13824e-05, 3.79154e-05, 3.49764e-05, 3.24498e-05, 3.02514e-05, 2.83184e-05, 2.66034e-05, 2.5069e-05, 
			0.00021141, 0.000131323, 9.96188e-05, 8.15832e-05, 6.9589e-05, 6.08874e-05, 5.42198e-05, 4.89142e-05, 4.45742e-05, 4.09472e-05, 3.7864e-05, 3.52056e-05, 3.28856e-05, 3.08398e-05, 2.9019e-05, 2.73854e-05, 
			0.000215734, 0.000135593, 0.000103588, 8.52776e-05, 7.30488e-05, 6.41522e-05, 5.73146e-05, 5.18564e-05, 4.73792e-05, 4.36272e-05, 4.04288e-05, 3.76632e-05, 3.5243e-05, 3.31026e-05, 3.11922e-05, 2.94736e-05
		)
}

CapTable	"metal3_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000185302, 0.000111077, 8.35214e-05, 6.84844e-05, 5.87446e-05, 5.17908e-05, 4.65092e-05, 4.23238e-05, 3.89032e-05, 3.60414e-05, 3.36024e-05, 3.1492e-05, 2.96424e-05, 2.8004e-05, 2.65388e-05, 2.52174e-05, 
			0.000200356, 0.000123004, 9.34922e-05, 7.71398e-05, 6.643e-05, 5.87346e-05, 5.28654e-05, 4.82006e-05, 4.43796e-05, 4.11768e-05, 3.84422e-05, 3.60718e-05, 3.3991e-05, 3.21442e-05, 3.04898e-05, 2.89952e-05, 
			0.0002099, 0.000131185, 0.000100621, 8.34788e-05, 7.21808e-05, 6.40128e-05, 5.77586e-05, 5.27726e-05, 4.86776e-05, 4.52368e-05, 4.22924e-05, 3.97346e-05, 3.74842e-05, 3.5483e-05, 3.36862e-05, 3.20598e-05, 
			0.0002169, 0.000137441, 0.000106232, 8.85776e-05, 7.68666e-05, 6.83674e-05, 6.1836e-05, 5.66132e-05, 5.2312e-05, 4.8689e-05, 4.55812e-05, 4.28752e-05, 4.04892e-05, 3.83626e-05, 3.64492e-05, 3.47138e-05, 
			0.000221982, 0.000142382, 0.0001108, 9.28086e-05, 8.0812e-05, 7.20752e-05, 6.53388e-05, 5.9934e-05, 5.54716e-05, 5.17032e-05, 4.8463e-05, 4.56352e-05, 4.31364e-05, 4.09044e-05, 3.88924e-05, 3.70636e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.02294e-05, 1.35667e-05, 1.65594e-05, 1.92131e-05, 2.15236e-05, 2.35038e-05, 2.5179e-05, 2.65737e-05, 2.77248e-05, 2.8669e-05, 2.94363e-05, 3.0055e-05, 3.05526e-05, 3.09522e-05, 3.12758e-05, 3.15263e-05, 
			1.36432e-05, 1.70956e-05, 2.02654e-05, 2.3101e-05, 2.55801e-05, 2.77083e-05, 2.95098e-05, 3.10108e-05, 3.22514e-05, 3.32672e-05, 3.40918e-05, 3.47582e-05, 3.52956e-05, 3.57279e-05, 3.60678e-05, 3.63417e-05, 
			1.72703e-05, 2.08272e-05, 2.41112e-05, 2.7055e-05, 2.96275e-05, 3.18354e-05, 3.37034e-05, 3.52615e-05, 3.65471e-05, 3.75995e-05, 3.84563e-05, 3.91497e-05, 3.9704e-05, 4.01471e-05, 4.05217e-05, 4.08069e-05, 
			2.10684e-05, 2.471e-05, 2.80675e-05, 3.10756e-05, 3.37019e-05, 3.59565e-05, 3.78588e-05, 3.94463e-05, 4.07568e-05, 4.18303e-05, 4.27031e-05, 4.3406e-05, 4.39724e-05, 4.44488e-05, 4.48126e-05, 4.51024e-05, 
			2.49933e-05, 2.868e-05, 3.20808e-05, 3.51242e-05, 3.77807e-05, 4.00568e-05, 4.1978e-05, 4.3582e-05, 4.4905e-05, 4.59863e-05, 4.68656e-05, 4.76007e-05, 4.81743e-05, 4.86339e-05, 4.90014e-05, 4.92956e-05
		)
}

CapTable	"metal3_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.76594e-05, 2.32559e-05, 2.82234e-05, 3.25913e-05, 3.63738e-05, 3.95975e-05, 4.23054e-05, 4.45545e-05, 4.64029e-05, 4.79093e-05, 4.91291e-05, 5.0114e-05, 5.09043e-05, 5.1535e-05, 5.20335e-05, 5.2438e-05, 
			2.37104e-05, 2.95782e-05, 3.48834e-05, 3.9569e-05, 4.36349e-05, 4.70987e-05, 5.00072e-05, 5.24238e-05, 5.44098e-05, 5.60311e-05, 5.7346e-05, 5.84057e-05, 5.9252e-05, 5.99299e-05, 6.0476e-05, 6.0909e-05, 
			3.01817e-05, 3.62546e-05, 4.1757e-05, 4.66198e-05, 5.08291e-05, 5.44162e-05, 5.74254e-05, 5.99254e-05, 6.19822e-05, 6.36597e-05, 6.50173e-05, 6.61112e-05, 6.69923e-05, 6.76985e-05, 6.82418e-05, 6.86884e-05, 
			3.69674e-05, 4.31806e-05, 4.87965e-05, 5.3752e-05, 5.80433e-05, 6.16921e-05, 6.4758e-05, 6.73043e-05, 6.93968e-05, 7.10984e-05, 7.24816e-05, 7.3598e-05, 7.44946e-05, 7.51887e-05, 7.57598e-05, 7.6216e-05, 
			4.39689e-05, 5.02438e-05, 5.59194e-05, 6.09222e-05, 6.52527e-05, 6.8936e-05, 7.20276e-05, 7.45915e-05, 7.67008e-05, 7.84213e-05, 7.98172e-05, 8.0918e-05, 8.18196e-05, 8.25422e-05, 8.3116e-05, 8.35757e-05
		)
}

CapTable	"metal3_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.84219e-05, 2.40891e-05, 2.90804e-05, 3.34691e-05, 3.72958e-05, 4.06001e-05, 4.34269e-05, 4.58261e-05, 4.78441e-05, 4.9539e-05, 5.09506e-05, 5.21251e-05, 5.31008e-05, 5.39073e-05, 5.45734e-05, 5.51244e-05, 
			2.44369e-05, 3.03172e-05, 3.56152e-05, 4.03142e-05, 4.44268e-05, 4.79865e-05, 5.10343e-05, 5.36218e-05, 5.58077e-05, 5.76409e-05, 5.91741e-05, 6.0451e-05, 6.15075e-05, 6.23849e-05, 6.31118e-05, 6.37132e-05, 
			3.0824e-05, 3.68771e-05, 4.23615e-05, 4.72387e-05, 5.151e-05, 5.5207e-05, 5.83762e-05, 6.10709e-05, 6.33482e-05, 6.52596e-05, 6.68578e-05, 6.8189e-05, 6.92967e-05, 7.02146e-05, 7.09804e-05, 7.16073e-05, 
			3.75082e-05, 4.36865e-05, 4.92855e-05, 5.42643e-05, 5.86261e-05, 6.24067e-05, 6.56498e-05, 6.84074e-05, 7.07393e-05, 7.26948e-05, 7.43334e-05, 7.57009e-05, 7.68364e-05, 7.7788e-05, 7.85682e-05, 7.92067e-05, 
			4.44049e-05, 5.06458e-05, 5.63068e-05, 6.13429e-05, 6.57617e-05, 6.95899e-05, 7.28729e-05, 7.56676e-05, 7.80294e-05, 8.0017e-05, 8.16802e-05, 8.30781e-05, 8.4229e-05, 8.51795e-05, 8.59748e-05, 8.65817e-05
		)
}

CapTable	"metal3_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000175784, 9.844e-05, 6.8211e-05, 5.09602e-05, 3.94518e-05, 3.11414e-05, 2.48696e-05, 2.0011e-05, 1.61806e-05, 1.31326e-05, 1.06845e-05, 8.70982e-06, 7.11158e-06, 5.81284e-06, 4.75562e-06, 3.89328e-06, 
			0.000186704, 0.000106166, 7.3949e-05, 5.5384e-05, 4.29304e-05, 3.39148e-05, 2.71054e-05, 2.18218e-05, 1.76586e-05, 1.43379e-05, 1.16712e-05, 9.51942e-06, 7.77576e-06, 6.35808e-06, 5.203e-06, 4.25954e-06, 
			0.00019207, 0.000110244, 7.70662e-05, 5.78078e-05, 4.48644e-05, 3.547e-05, 2.83674e-05, 2.28512e-05, 1.84983e-05, 1.50285e-05, 1.22391e-05, 9.98588e-06, 8.15864e-06, 6.6725e-06, 5.4595e-06, 4.47064e-06, 
			0.000194986, 0.000112566, 7.8888e-05, 5.92534e-05, 4.60166e-05, 3.6408e-05, 2.91294e-05, 2.34764e-05, 1.90134e-05, 1.5452e-05, 1.25879e-05, 1.02729e-05, 8.39462e-06, 6.864e-06, 5.61724e-06, 4.60044e-06, 
			0.000196166, 0.000113796, 7.99088e-05, 6.00852e-05, 4.66928e-05, 3.69624e-05, 2.95904e-05, 2.38564e-05, 1.93267e-05, 1.57098e-05, 1.28004e-05, 1.04452e-05, 8.53656e-06, 6.98314e-06, 5.71376e-06, 4.67756e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.38268e-05, 1.69396e-05, 1.94356e-05, 2.15281e-05, 2.33358e-05, 2.49294e-05, 2.63537e-05, 2.76394e-05, 2.88087e-05, 2.98786e-05, 3.08626e-05, 3.17721e-05, 3.26165e-05, 3.34035e-05, 3.41399e-05, 3.48317e-05, 
			1.6164e-05, 1.89535e-05, 2.13318e-05, 2.33982e-05, 2.52238e-05, 2.68564e-05, 2.83298e-05, 2.96699e-05, 3.08962e-05, 3.20241e-05, 3.30668e-05, 3.4035e-05, 3.49378e-05, 3.57832e-05, 3.65775e-05, 3.73267e-05, 
			1.8335e-05, 2.09298e-05, 2.3215e-05, 2.52432e-05, 2.70594e-05, 2.86999e-05, 3.01918e-05, 3.15568e-05, 3.28127e-05, 3.39736e-05, 3.50515e-05, 3.60568e-05, 3.69984e-05, 3.78832e-05, 3.87182e-05, 3.95086e-05, 
			2.0409e-05, 2.28744e-05, 2.50816e-05, 2.70674e-05, 2.88634e-05, 3.04982e-05, 3.19942e-05, 3.33703e-05, 3.46427e-05, 3.58241e-05, 3.6926e-05, 3.79578e-05, 3.89279e-05, 3.98433e-05, 4.07101e-05, 4.15334e-05, 
			2.2431e-05, 2.47822e-05, 2.69214e-05, 2.88644e-05, 3.0635e-05, 3.22568e-05, 3.3749e-05, 3.5129e-05, 3.64105e-05, 3.76058e-05, 3.87251e-05, 3.97774e-05, 4.07703e-05, 4.17105e-05, 4.26035e-05, 4.34547e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.3976e-05, 1.71292e-05, 1.96662e-05, 2.18069e-05, 2.36724e-05, 2.53349e-05, 2.6839e-05, 2.82134e-05, 2.94784e-05, 3.06485e-05, 3.17346e-05, 3.27457e-05, 3.36889e-05, 3.45704e-05, 3.53953e-05, 3.61685e-05, 
			1.6342e-05, 1.91769e-05, 2.16074e-05, 2.3738e-05, 2.56429e-05, 2.73679e-05, 2.89452e-05, 3.03982e-05, 3.1743e-05, 3.29925e-05, 3.41565e-05, 3.52432e-05, 3.62597e-05, 3.72116e-05, 3.81046e-05, 3.89434e-05, 
			1.855e-05, 2.1202e-05, 2.35584e-05, 2.56728e-05, 2.75919e-05, 2.93489e-05, 3.09681e-05, 3.24675e-05, 3.38612e-05, 3.51605e-05, 3.63741e-05, 3.75099e-05, 3.85744e-05, 3.95735e-05, 4.05124e-05, 4.13954e-05, 
			2.0681e-05, 2.32216e-05, 2.55234e-05, 2.76204e-05, 2.9544e-05, 3.1318e-05, 3.29619e-05, 3.44909e-05, 3.59166e-05, 3.72492e-05, 3.8497e-05, 3.96669e-05, 4.07655e-05, 4.17982e-05, 4.27703e-05, 4.36863e-05, 
			2.2787e-05, 2.52374e-05, 2.74952e-05, 2.95748e-05, 3.1496e-05, 3.32774e-05, 3.49353e-05, 3.64825e-05, 3.79291e-05, 3.92841e-05, 4.05554e-05, 4.17497e-05, 4.28728e-05, 4.39303e-05, 4.49272e-05, 4.58681e-05
		)
}

CapTable	"metal3_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000185168, 0.000110898, 8.32858e-05, 6.81794e-05, 5.83556e-05, 5.13048e-05, 4.59156e-05, 4.16158e-05, 3.80774e-05, 3.5098e-05, 3.25446e-05, 3.03256e-05, 2.83756e-05, 2.66462e-05, 2.51006e-05, 2.37102e-05, 
			0.000200174, 0.000122756, 9.31596e-05, 7.6705e-05, 6.58762e-05, 5.80488e-05, 5.20392e-05, 4.723e-05, 4.32652e-05, 3.99226e-05, 3.70558e-05, 3.45632e-05, 3.23718e-05, 3.04278e-05, 2.86898e-05, 2.71256e-05, 
			0.000209642, 0.00013083, 0.000100147, 8.28652e-05, 7.14132e-05, 6.3081e-05, 5.6658e-05, 5.1504e-05, 4.72464e-05, 4.36516e-05, 4.0565e-05, 3.78788e-05, 3.55154e-05, 3.34172e-05, 3.154e-05, 2.98498e-05, 
			0.000216524, 0.00013693, 0.000105565, 8.77346e-05, 7.5837e-05, 6.7146e-05, 6.04238e-05, 5.5016e-05, 5.05404e-05, 4.6756e-05, 4.35026e-05, 4.06686e-05, 3.81728e-05, 3.59552e-05, 3.39696e-05, 3.218e-05, 
			0.000221438, 0.000141665, 0.000109888, 9.16892e-05, 7.9479e-05, 7.05296e-05, 6.35872e-05, 5.79878e-05, 5.33456e-05, 4.94152e-05, 4.60322e-05, 4.3082e-05, 4.04816e-05, 3.8169e-05, 3.60964e-05, 3.42268e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.6837e-06, 1.00879e-05, 1.22356e-05, 1.41505e-05, 1.5841e-05, 1.73168e-05, 1.85918e-05, 1.96817e-05, 2.06136e-05, 2.13953e-05, 2.20567e-05, 2.26096e-05, 2.30684e-05, 2.34512e-05, 2.37683e-05, 2.40305e-05, 
			1.00359e-05, 1.248e-05, 1.47338e-05, 1.67718e-05, 1.85868e-05, 2.01817e-05, 2.15608e-05, 2.27492e-05, 2.37572e-05, 2.46137e-05, 2.53336e-05, 2.59354e-05, 2.64387e-05, 2.68573e-05, 2.72044e-05, 2.74928e-05, 
			1.24986e-05, 1.49973e-05, 1.73273e-05, 1.94465e-05, 2.13346e-05, 2.3e-05, 2.44424e-05, 2.56849e-05, 2.67445e-05, 2.76409e-05, 2.83961e-05, 2.90281e-05, 2.95567e-05, 2.99969e-05, 3.03601e-05, 3.06641e-05, 
			1.50616e-05, 1.76129e-05, 1.99995e-05, 2.21713e-05, 2.41143e-05, 2.58203e-05, 2.73058e-05, 2.85832e-05, 2.96713e-05, 3.05942e-05, 3.13717e-05, 3.20222e-05, 3.2568e-05, 3.3018e-05, 3.33956e-05, 3.37149e-05, 
			1.77143e-05, 2.02966e-05, 2.27214e-05, 2.49289e-05, 2.69045e-05, 2.86417e-05, 3.01507e-05, 3.1449e-05, 3.25569e-05, 3.34952e-05, 3.42874e-05, 3.49457e-05, 3.55024e-05, 3.59714e-05, 3.63564e-05, 3.67267e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.2723e-06, 8.1923e-06, 9.8989e-06, 1.14157e-05, 1.27581e-05, 1.39348e-05, 1.49581e-05, 1.58486e-05, 1.66077e-05, 1.72641e-05, 1.78172e-05, 1.82948e-05, 1.86999e-05, 1.90433e-05, 1.93325e-05, 1.95793e-05, 
			8.1108e-06, 1.00407e-05, 1.18154e-05, 1.34221e-05, 1.48577e-05, 1.61237e-05, 1.72296e-05, 1.81975e-05, 1.90324e-05, 1.97437e-05, 2.03584e-05, 2.08825e-05, 2.13266e-05, 2.17062e-05, 2.20291e-05, 2.2302e-05, 
			1.00111e-05, 1.19681e-05, 1.37912e-05, 1.5454e-05, 1.69504e-05, 1.82718e-05, 1.94374e-05, 2.04452e-05, 2.13246e-05, 2.2081e-05, 2.2729e-05, 2.32812e-05, 2.37537e-05, 2.41569e-05, 2.44994e-05, 2.47894e-05, 
			1.1977e-05, 1.39627e-05, 1.5823e-05, 1.75241e-05, 1.90612e-05, 2.04262e-05, 2.16205e-05, 2.26679e-05, 2.35759e-05, 2.4356e-05, 2.50277e-05, 2.56033e-05, 2.60941e-05, 2.65129e-05, 2.68689e-05, 2.71709e-05, 
			1.39957e-05, 1.60037e-05, 1.78889e-05, 1.9625e-05, 2.11824e-05, 2.25736e-05, 2.37987e-05, 2.4868e-05, 2.57935e-05, 2.65942e-05, 2.7283e-05, 2.78721e-05, 2.83755e-05, 2.88052e-05, 2.91603e-05, 2.94737e-05
		)
}

CapTable	"metal3_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.90119e-05, 2.47675e-05, 2.98067e-05, 3.42275e-05, 3.80811e-05, 4.14197e-05, 4.42924e-05, 4.67461e-05, 4.88376e-05, 5.06105e-05, 5.21129e-05, 5.3381e-05, 5.4452e-05, 5.53533e-05, 5.61139e-05, 5.6755e-05, 
			2.50506e-05, 3.09767e-05, 3.62968e-05, 4.10077e-05, 4.51409e-05, 4.87329e-05, 5.18286e-05, 5.44814e-05, 5.67479e-05, 5.8675e-05, 6.03107e-05, 6.16937e-05, 6.28631e-05, 6.38512e-05, 6.46856e-05, 6.53928e-05, 
			3.14261e-05, 3.74943e-05, 4.29814e-05, 4.78608e-05, 5.21434e-05, 5.58754e-05, 5.9097e-05, 6.18676e-05, 6.42368e-05, 6.62538e-05, 6.79645e-05, 6.94196e-05, 7.06504e-05, 7.16915e-05, 7.2575e-05, 7.33205e-05, 
			3.80648e-05, 4.42416e-05, 4.98288e-05, 5.48033e-05, 5.91792e-05, 6.29972e-05, 6.63019e-05, 6.91431e-05, 7.15753e-05, 7.36499e-05, 7.54154e-05, 7.69142e-05, 7.81859e-05, 7.92659e-05, 8.01788e-05, 8.0954e-05, 
			4.49051e-05, 5.11239e-05, 5.67675e-05, 6.17976e-05, 6.62344e-05, 7.0106e-05, 7.34587e-05, 7.6343e-05, 7.88203e-05, 8.09344e-05, 8.27347e-05, 8.42687e-05, 8.55682e-05, 8.66723e-05, 8.76173e-05, 8.84091e-05
		)
}

CapTable	"metal3_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176423, 9.93362e-05, 6.93434e-05, 5.2294e-05, 4.09444e-05, 3.27464e-05, 2.65426e-05, 2.1708e-05, 1.78744e-05, 1.47873e-05, 1.22867e-05, 1.02368e-05, 8.55156e-06, 7.16052e-06, 6.00906e-06, 5.05002e-06, 
			0.000187691, 0.000107437, 7.54728e-05, 5.71182e-05, 4.48214e-05, 3.59134e-05, 2.9161e-05, 2.38868e-05, 1.96928e-05, 1.63203e-05, 1.35724e-05, 1.13231e-05, 9.473e-06, 7.94096e-06, 6.66922e-06, 5.60934e-06, 
			0.000193436, 0.000111905, 7.89824e-05, 5.99282e-05, 4.71272e-05, 3.78248e-05, 3.07536e-05, 2.52312e-05, 2.08276e-05, 1.72762e-05, 1.43855e-05, 1.20152e-05, 1.00599e-05, 8.44062e-06, 7.09358e-06, 5.97112e-06, 
			0.000196746, 0.000114615, 8.11842e-05, 6.17386e-05, 4.86256e-05, 3.90786e-05, 3.18166e-05, 2.6128e-05, 2.15918e-05, 1.79301e-05, 1.49429e-05, 1.24905e-05, 1.0466e-05, 8.78616e-06, 7.38928e-06, 6.22314e-06, 
			0.000198316, 0.000116219, 8.25616e-05, 6.28984e-05, 4.96112e-05, 3.99204e-05, 3.25336e-05, 2.6743e-05, 2.21202e-05, 1.83814e-05, 1.53303e-05, 1.28212e-05, 1.07493e-05, 9.02952e-06, 7.59744e-06, 6.40122e-06
		)
}

CapTable	"metal2_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000165761, 8.63046e-05, 5.56198e-05, 3.87438e-05, 2.8053e-05, 2.07762e-05, 1.56143e-05, 1.18561e-05, 9.07094e-06, 6.98072e-06, 5.39602e-06, 4.18624e-06, 3.25646e-06, 2.53884e-06, 1.98225e-06, 1.54927e-06, 
			0.000171548, 9.03586e-05, 5.86358e-05, 4.10858e-05, 2.98918e-05, 2.22306e-05, 1.67681e-05, 1.27723e-05, 9.79798e-06, 7.55688e-06, 5.85192e-06, 4.54616e-06, 3.54028e-06, 2.76176e-06, 2.1564e-06, 1.68462e-06, 
			0.000173862, 9.23448e-05, 6.02388e-05, 4.23648e-05, 3.0932e-05, 2.30686e-05, 1.74422e-05, 1.33124e-05, 1.02295e-05, 7.90012e-06, 6.1246e-06, 4.76128e-06, 3.70914e-06, 2.893e-06, 2.25782e-06, 1.76214e-06, 
			0.000174997, 9.34614e-05, 6.11942e-05, 4.31552e-05, 3.15724e-05, 2.35916e-05, 1.78663e-05, 1.36543e-05, 1.05036e-05, 8.1186e-06, 6.29714e-06, 4.89632e-06, 3.81362e-06, 2.97322e-06, 2.31804e-06, 1.80551e-06, 
			0.00017518, 9.40312e-05, 6.17444e-05, 4.36304e-05, 3.19666e-05, 2.39206e-05, 1.81377e-05, 1.38737e-05, 1.06786e-05, 8.257e-06, 6.40478e-06, 4.97928e-06, 3.8763e-06, 3.01842e-06, 2.34966e-06, 1.82602e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.97562e-05, 3.92666e-05, 4.67128e-05, 5.24632e-05, 5.69008e-05, 6.03456e-05, 6.30458e-05, 6.51878e-05, 6.69108e-05, 6.83178e-05, 6.94852e-05, 7.04699e-05, 7.13147e-05, 7.20511e-05, 7.27031e-05, 7.3289e-05, 
			4.09098e-05, 4.99459e-05, 5.70852e-05, 6.26556e-05, 6.70096e-05, 7.04328e-05, 7.3154e-05, 7.53444e-05, 7.71336e-05, 7.86178e-05, 7.98706e-05, 8.09452e-05, 8.18822e-05, 8.27138e-05, 8.34606e-05, 8.41426e-05, 
			5.15224e-05, 6.00492e-05, 6.6841e-05, 7.21972e-05, 7.6422e-05, 7.97854e-05, 8.24922e-05, 8.46998e-05, 8.65284e-05, 8.80678e-05, 8.93868e-05, 9.05344e-05, 9.15518e-05, 9.24658e-05, 9.33002e-05, 9.4069e-05, 
			6.15248e-05, 6.96114e-05, 7.609e-05, 8.12406e-05, 8.53448e-05, 8.86446e-05, 9.13304e-05, 9.3547e-05, 9.54088e-05, 9.69964e-05, 9.8376e-05, 9.95942e-05, 0.000100687, 0.000101682, 0.000102599, 0.000103455, 
			7.09772e-05, 7.86486e-05, 8.48452e-05, 8.98122e-05, 9.38078e-05, 9.70492e-05, 9.97158e-05, 0.000101945, 0.000103838, 0.000105476, 0.000106915, 0.000108202, 0.00010937, 0.000110445, 0.000111447, 0.000112389
		)
}

CapTable	"metal2_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000170192, 9.27424e-05, 6.38782e-05, 4.85428e-05, 3.90828e-05, 3.27396e-05, 2.82478e-05, 2.4937e-05, 2.24162e-05, 2.0443e-05, 1.88596e-05, 1.75594e-05, 1.64687e-05, 1.55355e-05, 1.47224e-05, 1.4002e-05, 
			0.000179048, 0.000100234, 7.06168e-05, 5.48174e-05, 4.50014e-05, 3.83692e-05, 3.3629e-05, 3.00966e-05, 2.73744e-05, 2.52152e-05, 2.34574e-05, 2.19928e-05, 2.07458e-05, 1.96632e-05, 1.87064e-05, 1.78474e-05, 
			0.000184987, 0.000106123, 7.6325e-05, 6.03398e-05, 5.0369e-05, 4.35756e-05, 3.86778e-05, 3.49912e-05, 3.21176e-05, 2.98102e-05, 2.79072e-05, 2.63006e-05, 2.49142e-05, 2.36952e-05, 2.26048e-05, 2.1615e-05, 
			0.000190196, 0.000111527, 8.1711e-05, 6.56474e-05, 5.55672e-05, 4.86594e-05, 4.36376e-05, 3.9821e-05, 3.68142e-05, 3.43716e-05, 3.2333e-05, 3.05908e-05, 2.907e-05, 2.77174e-05, 2.6495e-05, 2.53748e-05, 
			0.000194804, 0.000116667, 8.69228e-05, 7.08258e-05, 6.06682e-05, 5.36678e-05, 4.85372e-05, 4.4599e-05, 4.1465e-05, 3.88914e-05, 3.672e-05, 3.4844e-05, 3.31892e-05, 3.17032e-05, 3.03482e-05, 2.90966e-05
		)
}

CapTable	"metal2_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000155446, 7.33972e-05, 4.15672e-05, 2.47662e-05, 1.50059e-05, 9.13908e-06, 5.56744e-06, 3.38152e-06, 2.04264e-06, 1.22045e-06, 7.1549e-07, 4.05068e-07, 2.13992e-07, 9.61432e-08, 2.33408e-08, 0, 
			0.000157107, 7.41974e-05, 4.19796e-05, 2.50028e-05, 1.51348e-05, 9.2013e-06, 5.59084e-06, 3.37882e-06, 2.0248e-06, 1.19257e-06, 6.80092e-07, 3.65376e-07, 1.72302e-07, 5.24726e-08, 0, 0, 
			0.000156556, 7.39884e-05, 4.18538e-05, 2.48992e-05, 1.50602e-05, 9.13966e-06, 5.5311e-06, 3.32562e-06, 1.97155e-06, 1.13964e-06, 6.2784e-07, 3.12638e-07, 1.17753e-07, 0, 0, 0, 
			0.000155748, 7.36078e-05, 4.16238e-05, 2.4742e-05, 1.49317e-05, 9.04002e-06, 5.44928e-06, 3.2482e-06, 1.89926e-06, 1.0729e-06, 5.62516e-07, 2.45616e-07, 5.1384e-08, 0, 0, 0, 
			0.000154592, 7.31386e-05, 4.13534e-05, 2.45494e-05, 1.47893e-05, 8.92928e-06, 5.35922e-06, 3.16898e-06, 1.82399e-06, 9.9649e-07, 4.8725e-07, 1.7056e-07, 0, 0, 0, 0
		)
}

CapTable	"metal2_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.75758e-05, 3.725e-05, 4.50395e-05, 5.11759e-05, 5.5961e-05, 5.9675e-05, 6.25497e-05, 6.47728e-05, 6.64925e-05, 6.78246e-05, 6.88585e-05, 6.9661e-05, 7.0286e-05, 7.07741e-05, 7.11539e-05, 7.14526e-05, 
			4.00132e-05, 4.98366e-05, 5.77867e-05, 6.40902e-05, 6.9045e-05, 7.2916e-05, 7.59321e-05, 7.82777e-05, 8.01006e-05, 8.15188e-05, 8.26235e-05, 8.34841e-05, 8.41573e-05, 8.46839e-05, 8.50929e-05, 8.54155e-05, 
			5.27399e-05, 6.25834e-05, 7.05872e-05, 7.69714e-05, 8.20073e-05, 8.59616e-05, 8.90545e-05, 9.14708e-05, 9.33532e-05, 9.48226e-05, 9.59694e-05, 9.68645e-05, 9.75664e-05, 9.81132e-05, 9.85444e-05, 9.8884e-05, 
			6.55858e-05, 7.54496e-05, 8.34832e-05, 8.99126e-05, 9.50038e-05, 9.90094e-05, 0.00010215, 0.000104609, 0.00010653, 0.000108031, 0.000109207, 0.000110123, 0.000110842, 0.00011141, 0.000111854, 0.000112202, 
			7.85097e-05, 8.83444e-05, 9.63866e-05, 0.000102839, 0.000107963, 0.000111999, 0.00011517, 0.000117657, 0.0001196, 0.000121126, 0.000122317, 0.000123254, 0.000123988, 0.000124563, 0.000125016, 0.000125373
		)
}

CapTable	"metal2_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.85937e-06, 1.07004e-05, 1.32277e-05, 1.53783e-05, 1.7148e-05, 1.85718e-05, 1.97031e-05, 2.05944e-05, 2.12934e-05, 2.18393e-05, 2.22658e-05, 2.25992e-05, 2.286e-05, 2.3063e-05, 2.32237e-05, 2.33483e-05, 
			1.08078e-05, 1.37098e-05, 1.63265e-05, 1.8572e-05, 2.04342e-05, 2.19444e-05, 2.31508e-05, 2.4106e-05, 2.48604e-05, 2.54523e-05, 2.59166e-05, 2.62807e-05, 2.65654e-05, 2.67873e-05, 2.69667e-05, 2.71049e-05, 
			1.38519e-05, 1.67958e-05, 1.9464e-05, 2.17648e-05, 2.36797e-05, 2.52388e-05, 2.64893e-05, 2.74828e-05, 2.82693e-05, 2.88883e-05, 2.9374e-05, 2.97582e-05, 3.00575e-05, 3.02958e-05, 3.04808e-05, 3.06249e-05, 
			1.69598e-05, 1.9938e-05, 2.26426e-05, 2.49792e-05, 2.69278e-05, 2.8518e-05, 2.97967e-05, 3.08148e-05, 3.16214e-05, 3.22573e-05, 3.27579e-05, 3.31554e-05, 3.3466e-05, 3.37065e-05, 3.38983e-05, 3.40502e-05, 
			2.01189e-05, 2.31164e-05, 2.5845e-05, 2.82053e-05, 3.01759e-05, 3.17859e-05, 3.30815e-05, 3.41141e-05, 3.49373e-05, 3.55827e-05, 3.60963e-05, 3.64948e-05, 3.68105e-05, 3.70608e-05, 3.72562e-05, 3.74103e-05
		)
}

CapTable	"metal2_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177502, 0.000101077, 7.22732e-05, 5.64532e-05, 4.6236e-05, 3.90272e-05, 3.3657e-05, 2.95078e-05, 2.6217e-05, 2.3554e-05, 2.13636e-05, 1.95374e-05, 1.79963e-05, 1.66819e-05, 1.55496e-05, 1.45653e-05, 
			0.000187956, 0.000109143, 7.88972e-05, 6.21576e-05, 5.12858e-05, 4.35914e-05, 3.78436e-05, 3.33904e-05, 2.9847e-05, 2.69696e-05, 2.45936e-05, 2.2604e-05, 2.09174e-05, 1.94719e-05, 1.82205e-05, 1.7127e-05, 
			0.000194011, 0.000114419, 8.35388e-05, 6.63318e-05, 5.51278e-05, 4.71668e-05, 4.12024e-05, 3.6567e-05, 3.28666e-05, 2.98502e-05, 2.73498e-05, 2.52474e-05, 2.34572e-05, 2.19158e-05, 2.0575e-05, 1.93978e-05, 
			0.000198289, 0.000118428, 8.72462e-05, 6.97908e-05, 5.83824e-05, 5.02578e-05, 4.41532e-05, 3.9394e-05, 3.5582e-05, 3.24638e-05, 2.9869e-05, 2.76784e-05, 2.58052e-05, 2.41854e-05, 2.27704e-05, 2.15222e-05, 
			0.000201274, 0.000121654, 9.03716e-05, 7.27914e-05, 6.12652e-05, 5.30388e-05, 4.68396e-05, 4.19904e-05, 3.80938e-05, 3.48954e-05, 3.22244e-05, 2.99608e-05, 2.80176e-05, 2.63304e-05, 2.48502e-05, 2.35394e-05
		)
}

CapTable	"metal2_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.55976e-05, 3.52511e-05, 4.28433e-05, 4.8365e-05, 5.21539e-05, 5.46502e-05, 5.62527e-05, 5.72662e-05, 5.78935e-05, 5.82579e-05, 5.84962e-05, 5.86428e-05, 5.87318e-05, 5.87848e-05, 5.88161e-05, 5.88401e-05, 
			3.84542e-05, 4.832e-05, 5.60307e-05, 6.1618e-05, 6.54501e-05, 6.79793e-05, 6.95918e-05, 7.05823e-05, 7.12181e-05, 7.16105e-05, 7.185e-05, 7.19971e-05, 7.20872e-05, 7.21408e-05, 7.21837e-05, 7.21581e-05, 
			5.15541e-05, 6.14414e-05, 6.91556e-05, 7.47454e-05, 7.85716e-05, 8.10869e-05, 8.26653e-05, 8.36831e-05, 8.43173e-05, 8.47085e-05, 8.49491e-05, 8.50952e-05, 8.52236e-05, 8.52738e-05, 8.52315e-05, 8.52062e-05, 
			6.47013e-05, 7.45879e-05, 8.22945e-05, 8.78599e-05, 9.16359e-05, 9.41432e-05, 9.57498e-05, 9.67611e-05, 9.73901e-05, 9.77821e-05, 9.8022e-05, 9.82104e-05, 9.83026e-05, 9.8289e-05, 9.8244e-05, 9.8213e-05, 
			7.7858e-05, 8.77023e-05, 9.53681e-05, 0.000100878, 0.000104675, 0.00010717, 0.000108767, 0.000109775, 0.000110403, 0.000110842, 0.000111081, 0.000111231, 0.000111302, 0.000111233, 0.000111188, 0.000111155
		)
}

CapTable	"metal2_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.5844e-05, 3.58007e-05, 4.37165e-05, 4.95118e-05, 5.35042e-05, 5.61407e-05, 5.78349e-05, 5.89053e-05, 5.95729e-05, 6.00137e-05, 6.02723e-05, 6.04321e-05, 6.05312e-05, 6.05931e-05, 6.06316e-05, 6.06309e-05, 
			3.86876e-05, 4.88766e-05, 5.69187e-05, 6.27892e-05, 6.68251e-05, 6.94914e-05, 7.12044e-05, 7.23209e-05, 7.29971e-05, 7.34199e-05, 7.36849e-05, 7.38475e-05, 7.39445e-05, 7.40077e-05, 7.40163e-05, 7.40439e-05, 
			5.17979e-05, 6.20072e-05, 7.00506e-05, 7.59164e-05, 7.99492e-05, 8.26084e-05, 8.43606e-05, 8.54413e-05, 8.61201e-05, 8.65419e-05, 8.68041e-05, 8.69672e-05, 8.70327e-05, 8.70962e-05, 8.71475e-05, 8.71718e-05, 
			6.49705e-05, 7.51653e-05, 8.31877e-05, 8.90331e-05, 9.30964e-05, 9.57468e-05, 9.74549e-05, 9.85417e-05, 9.92186e-05, 9.9633e-05, 9.98955e-05, 0.000100022, 0.000100129, 0.000100199, 0.000100242, 0.000100272, 
			7.81538e-05, 8.83081e-05, 9.62965e-05, 0.000102173, 0.000106176, 0.000108817, 0.000110517, 0.000111593, 0.000112269, 0.000112643, 0.000112906, 0.000113085, 0.000113184, 0.000113251, 0.000113297, 0.000113331
		)
}

CapTable	"metal2_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.56782e-06, 1.13601e-05, 1.38865e-05, 1.61584e-05, 1.81761e-05, 1.99477e-05, 2.1485e-05, 2.28048e-05, 2.39301e-05, 2.48822e-05, 2.5683e-05, 2.6353e-05, 2.69124e-05, 2.73787e-05, 2.77646e-05, 2.80849e-05, 
			1.1295e-05, 1.41432e-05, 1.67817e-05, 1.91783e-05, 2.13218e-05, 2.32078e-05, 2.48486e-05, 2.626e-05, 2.74651e-05, 2.84861e-05, 2.93455e-05, 3.00677e-05, 3.06694e-05, 3.11714e-05, 3.15883e-05, 3.19337e-05, 
			1.41716e-05, 1.70741e-05, 1.97867e-05, 2.22624e-05, 2.44765e-05, 2.64299e-05, 2.81303e-05, 2.95947e-05, 3.08445e-05, 3.1905e-05, 3.27997e-05, 3.35502e-05, 3.41776e-05, 3.46998e-05, 3.51358e-05, 3.54951e-05, 
			1.71576e-05, 2.01128e-05, 2.28755e-05, 2.54005e-05, 2.76615e-05, 2.96563e-05, 3.1393e-05, 3.28891e-05, 3.41692e-05, 3.52536e-05, 3.61694e-05, 3.6938e-05, 3.75798e-05, 3.81193e-05, 3.85583e-05, 3.89304e-05, 
			2.02366e-05, 2.32179e-05, 2.60153e-05, 2.85721e-05, 3.08629e-05, 3.28818e-05, 3.46411e-05, 3.61584e-05, 3.7455e-05, 3.85555e-05, 3.94834e-05, 4.0265e-05, 4.0916e-05, 4.14586e-05, 4.19113e-05, 4.22859e-05
		)
}

CapTable	"metal2_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000174291, 9.65702e-05, 6.65274e-05, 4.95682e-05, 3.83456e-05, 3.02822e-05, 2.42128e-05, 1.95151e-05, 1.58144e-05, 1.28658e-05, 1.04975e-05, 8.58624e-06, 7.03652e-06, 5.77698e-06, 4.75092e-06, 3.91364e-06, 
			0.000183061, 0.00010278, 7.11422e-05, 5.3138e-05, 4.11616e-05, 3.2539e-05, 2.60408e-05, 2.10066e-05, 1.70383e-05, 1.38742e-05, 1.13312e-05, 9.2767e-06, 7.61038e-06, 6.25496e-06, 5.15022e-06, 4.24806e-06, 
			0.000187204, 0.000106017, 7.36434e-05, 5.50956e-05, 4.27356e-05, 3.38136e-05, 2.7083e-05, 2.18644e-05, 1.77485e-05, 1.44638e-05, 1.1823e-05, 9.68802e-06, 7.95562e-06, 6.54582e-06, 5.39582e-06, 4.45672e-06, 
			0.000189393, 0.000107848, 7.51102e-05, 5.6273e-05, 4.36854e-05, 3.45932e-05, 2.77278e-05, 2.24012e-05, 1.81967e-05, 1.48404e-05, 1.21404e-05, 9.9568e-06, 8.18414e-06, 6.74048e-06, 5.56356e-06, 4.60156e-06, 
			0.000190163, 0.000108809, 7.59374e-05, 5.69604e-05, 4.42536e-05, 3.50712e-05, 2.8131e-05, 2.27414e-05, 1.84853e-05, 1.50863e-05, 1.2351e-05, 1.01377e-05, 8.3406e-06, 6.8775e-06, 5.683e-06, 4.70688e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.81682e-05, 2.3484e-05, 2.80288e-05, 3.19427e-05, 3.53177e-05, 3.82275e-05, 4.07358e-05, 4.28993e-05, 4.47677e-05, 4.6385e-05, 4.77895e-05, 4.90134e-05, 5.0085e-05, 5.10275e-05, 5.18609e-05, 5.26019e-05, 
			2.32208e-05, 2.8368e-05, 3.28938e-05, 3.68434e-05, 4.02794e-05, 4.32604e-05, 4.58446e-05, 4.80851e-05, 5.00309e-05, 5.17243e-05, 5.32032e-05, 5.44999e-05, 5.56419e-05, 5.66526e-05, 5.7552e-05, 5.83566e-05, 
			2.82582e-05, 3.3267e-05, 3.77202e-05, 4.16382e-05, 4.50632e-05, 4.80513e-05, 5.0654e-05, 5.29217e-05, 5.49007e-05, 5.66324e-05, 5.81527e-05, 5.94927e-05, 6.06795e-05, 6.1736e-05, 6.26814e-05, 6.35321e-05, 
			3.32342e-05, 3.81194e-05, 4.24808e-05, 4.63372e-05, 4.97256e-05, 5.26922e-05, 5.52893e-05, 5.75624e-05, 5.95557e-05, 6.13082e-05, 6.28545e-05, 6.42244e-05, 6.54442e-05, 6.65356e-05, 6.75172e-05, 6.84053e-05, 
			3.8131e-05, 4.28728e-05, 4.71334e-05, 5.09166e-05, 5.42538e-05, 5.71892e-05, 5.97684e-05, 6.20356e-05, 6.40332e-05, 6.57976e-05, 6.7362e-05, 6.87544e-05, 7e-05, 7.112e-05, 7.21325e-05, 7.30527e-05
		)
}

CapTable	"metal2_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.68445e-05, 3.67252e-05, 4.47655e-05, 5.10482e-05, 5.58201e-05, 5.93757e-05, 6.19912e-05, 6.38999e-05, 6.52874e-05, 6.62782e-05, 6.70058e-05, 6.75347e-05, 6.79123e-05, 6.81663e-05, 6.83609e-05, 6.85013e-05, 
			3.93339e-05, 4.94558e-05, 5.76992e-05, 6.41536e-05, 6.907e-05, 7.27493e-05, 7.54659e-05, 7.74521e-05, 7.8887e-05, 7.99392e-05, 8.07024e-05, 8.12326e-05, 8.16224e-05, 8.19065e-05, 8.21106e-05, 8.22606e-05, 
			5.21844e-05, 6.23666e-05, 7.06683e-05, 7.71825e-05, 8.2155e-05, 8.58863e-05, 8.86294e-05, 9.06549e-05, 9.21334e-05, 9.32034e-05, 9.39488e-05, 9.45066e-05, 9.49099e-05, 9.51989e-05, 9.54124e-05, 9.55795e-05, 
			6.51874e-05, 7.53917e-05, 8.37124e-05, 9.025e-05, 9.52526e-05, 9.89895e-05, 0.000101766, 0.000103808, 0.000105268, 0.000106337, 0.000107116, 0.000107679, 0.000108085, 0.000108409, 0.000108618, 0.000108771, 
			7.82692e-05, 8.84488e-05, 9.67714e-05, 0.000103299, 0.000108307, 0.000112067, 0.000114848, 0.000116853, 0.000118341, 0.000119421, 0.000120202, 0.000120775, 0.000121203, 0.000121496, 0.000121711, 0.000121863
		)
}

CapTable	"metal2_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000163381, 8.30536e-05, 5.17204e-05, 3.44698e-05, 2.36834e-05, 1.65266e-05, 1.16324e-05, 8.22838e-06, 5.83518e-06, 4.14262e-06, 2.93828e-06, 2.07718e-06, 1.46056e-06, 1.01899e-06, 7.00452e-07, 4.70724e-07, 
			0.000168146, 8.61428e-05, 5.38304e-05, 3.59782e-05, 2.4767e-05, 1.73064e-05, 1.21901e-05, 8.62452e-06, 6.11434e-06, 4.33236e-06, 3.06156e-06, 2.1534e-06, 1.50314e-06, 1.03463e-06, 6.97092e-07, 4.52394e-07, 
			0.000169532, 8.72816e-05, 5.46686e-05, 3.6581e-05, 2.52108e-05, 1.76222e-05, 1.24153e-05, 8.77718e-06, 6.2097e-06, 4.38646e-06, 3.08878e-06, 2.15766e-06, 1.48904e-06, 1.00793e-06, 6.5941e-07, 4.09354e-07, 
			0.000169853, 8.76732e-05, 5.49874e-05, 3.68158e-05, 2.5368e-05, 1.77334e-05, 1.24826e-05, 8.80986e-06, 6.2184e-06, 4.3796e-06, 3.0642e-06, 2.12186e-06, 1.44453e-06, 9.53714e-07, 6.01722e-07, 3.47242e-07, 
			0.000169328, 8.763e-05, 5.5003e-05, 3.68368e-05, 2.53758e-05, 1.77266e-05, 1.24638e-05, 8.78526e-06, 6.18228e-06, 4.33144e-06, 3.00932e-06, 2.05768e-06, 1.37815e-06, 8.86828e-07, 5.32064e-07, 2.7528e-07
		)
}

CapTable	"metal2_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.3631e-05, 1.80547e-05, 2.19871e-05, 2.54749e-05, 2.85418e-05, 3.12101e-05, 3.35095e-05, 3.54747e-05, 3.71406e-05, 3.85445e-05, 3.97228e-05, 4.07064e-05, 4.15256e-05, 4.22046e-05, 4.27683e-05, 4.32339e-05, 
			1.82286e-05, 2.27636e-05, 2.68841e-05, 3.05707e-05, 3.38234e-05, 3.66615e-05, 3.91106e-05, 4.12067e-05, 4.29852e-05, 4.44858e-05, 4.57465e-05, 4.67989e-05, 4.76771e-05, 4.84061e-05, 4.90105e-05, 4.95113e-05, 
			2.30756e-05, 2.77115e-05, 3.19489e-05, 3.575e-05, 3.91089e-05, 4.20415e-05, 4.45736e-05, 4.67422e-05, 4.85841e-05, 5.01394e-05, 5.14448e-05, 5.25373e-05, 5.34477e-05, 5.42053e-05, 5.48323e-05, 5.53525e-05, 
			2.81134e-05, 3.283e-05, 3.71423e-05, 4.10135e-05, 4.44381e-05, 4.74255e-05, 5.00082e-05, 5.22197e-05, 5.40981e-05, 5.5686e-05, 5.70202e-05, 5.81352e-05, 5.90671e-05, 5.98372e-05, 6.04861e-05, 6.1014e-05, 
			3.32918e-05, 3.80467e-05, 4.24023e-05, 4.63145e-05, 4.97745e-05, 5.2796e-05, 5.54069e-05, 5.76432e-05, 5.95437e-05, 6.11502e-05, 6.25006e-05, 6.36303e-05, 6.45724e-05, 6.53569e-05, 6.60067e-05, 6.65462e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.25772e-05, 1.56776e-05, 1.81903e-05, 2.02899e-05, 2.20777e-05, 2.36203e-05, 2.49648e-05, 2.61466e-05, 2.7193e-05, 2.81262e-05, 2.89643e-05, 2.97216e-05, 3.04109e-05, 3.10417e-05, 3.16226e-05, 3.21607e-05, 
			1.50538e-05, 1.78384e-05, 2.0202e-05, 2.22285e-05, 2.3984e-05, 2.55165e-05, 2.68647e-05, 2.8059e-05, 2.91244e-05, 3.00812e-05, 3.09457e-05, 3.17323e-05, 3.24524e-05, 3.31153e-05, 3.37297e-05, 3.43018e-05, 
			1.7341e-05, 1.99042e-05, 2.21322e-05, 2.4074e-05, 2.5775e-05, 2.72745e-05, 2.86045e-05, 2.97913e-05, 3.08571e-05, 3.18202e-05, 3.26964e-05, 3.34981e-05, 3.42362e-05, 3.49197e-05, 3.55562e-05, 3.61521e-05, 
			1.9472e-05, 2.18653e-05, 2.39728e-05, 2.5831e-05, 2.74738e-05, 2.89335e-05, 3.02375e-05, 3.14094e-05, 3.24684e-05, 3.34313e-05, 3.43123e-05, 3.51229e-05, 3.58734e-05, 3.65717e-05, 3.72254e-05, 3.78399e-05, 
			2.1479e-05, 2.37196e-05, 2.5719e-05, 2.74988e-05, 2.90854e-05, 3.05045e-05, 3.17811e-05, 3.29352e-05, 3.39846e-05, 3.49444e-05, 3.58273e-05, 3.66438e-05, 3.74035e-05, 3.81138e-05, 3.87814e-05, 3.94118e-05
		)
}

CapTable	"metal2_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181882, 0.000106848, 7.92024e-05, 6.43226e-05, 5.4851e-05, 4.82198e-05, 4.32852e-05, 3.94536e-05, 3.63834e-05, 3.38618e-05, 3.17488e-05, 2.99486e-05, 2.83922e-05, 2.703e-05, 2.58244e-05, 2.47466e-05, 
			0.000194086, 0.000116618, 8.7479e-05, 7.1627e-05, 6.1451e-05, 5.4289e-05, 4.89368e-05, 4.47656e-05, 4.1411e-05, 3.86458e-05, 3.63208e-05, 3.43324e-05, 3.26074e-05, 3.10922e-05, 2.97462e-05, 2.8539e-05, 
			0.00020183, 0.000123485, 9.36208e-05, 7.7221e-05, 6.66432e-05, 5.91554e-05, 5.3536e-05, 4.91392e-05, 4.55898e-05, 4.26532e-05, 4.01744e-05, 3.80468e-05, 3.61944e-05, 3.45614e-05, 3.3106e-05, 3.17962e-05, 
			0.000207676, 0.000128947, 9.86792e-05, 8.1944e-05, 7.10888e-05, 6.33758e-05, 5.75642e-05, 5.29992e-05, 4.93002e-05, 4.62286e-05, 4.36264e-05, 4.13852e-05, 3.94268e-05, 3.76948e-05, 3.6146e-05, 3.47482e-05, 
			0.000212086, 0.000133475, 0.000103005, 8.60602e-05, 7.50166e-05, 6.71424e-05, 6.1186e-05, 5.64886e-05, 5.26686e-05, 4.94854e-05, 4.67794e-05, 4.4441e-05, 4.23912e-05, 4.05726e-05, 3.89418e-05, 3.74658e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.20489e-05, 1.65082e-05, 2.04111e-05, 2.3653e-05, 2.62185e-05, 2.81917e-05, 2.96784e-05, 3.07797e-05, 3.15884e-05, 3.21912e-05, 3.26149e-05, 3.29191e-05, 3.31451e-05, 3.33237e-05, 3.34417e-05, 3.3528e-05, 
			1.70393e-05, 2.16584e-05, 2.57314e-05, 2.91202e-05, 3.1815e-05, 3.38923e-05, 3.5459e-05, 3.66244e-05, 3.74907e-05, 3.81144e-05, 3.8567e-05, 3.8916e-05, 3.91595e-05, 3.93349e-05, 3.94623e-05, 3.9552e-05, 
			2.22244e-05, 2.69418e-05, 3.11061e-05, 3.45695e-05, 3.73222e-05, 3.94475e-05, 4.10633e-05, 4.22549e-05, 4.31299e-05, 4.37771e-05, 4.42704e-05, 4.46137e-05, 4.48631e-05, 4.50442e-05, 4.51732e-05, 4.52521e-05, 
			2.7533e-05, 3.23181e-05, 3.65322e-05, 4.00312e-05, 4.28164e-05, 4.49731e-05, 4.65954e-05, 4.78031e-05, 4.87206e-05, 4.93784e-05, 4.98588e-05, 5.02071e-05, 5.04605e-05, 5.06213e-05, 5.07563e-05, 5.08528e-05, 
			3.29238e-05, 3.77332e-05, 4.19686e-05, 4.54962e-05, 4.82922e-05, 5.04464e-05, 5.20812e-05, 5.33267e-05, 5.42277e-05, 5.48906e-05, 5.53727e-05, 5.57223e-05, 5.59569e-05, 5.61432e-05, 5.62789e-05, 5.63777e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.90768e-06, 1.2892e-05, 1.55244e-05, 1.7881e-05, 1.9998e-05, 2.18966e-05, 2.35933e-05, 2.51019e-05, 2.64394e-05, 2.7616e-05, 2.86483e-05, 2.95536e-05, 3.03404e-05, 3.1027e-05, 3.16195e-05, 3.21355e-05, 
			1.27798e-05, 1.57514e-05, 1.84721e-05, 2.0952e-05, 2.32057e-05, 2.52401e-05, 2.70655e-05, 2.86939e-05, 3.01414e-05, 3.14166e-05, 3.25376e-05, 3.35226e-05, 3.43821e-05, 3.51276e-05, 3.57775e-05, 3.63405e-05, 
			1.57363e-05, 1.87381e-05, 2.15275e-05, 2.40952e-05, 2.64383e-05, 2.85636e-05, 3.0473e-05, 3.21791e-05, 3.36973e-05, 3.50374e-05, 3.6219e-05, 3.72515e-05, 3.81567e-05, 3.89449e-05, 3.96295e-05, 4.02211e-05, 
			1.87862e-05, 2.18331e-05, 2.46815e-05, 2.7314e-05, 2.97241e-05, 3.19127e-05, 3.38809e-05, 3.56412e-05, 3.72097e-05, 3.85968e-05, 3.98152e-05, 4.08866e-05, 4.18227e-05, 4.26366e-05, 4.33452e-05, 4.39589e-05, 
			2.19329e-05, 2.50087e-05, 2.79047e-05, 3.05855e-05, 3.30435e-05, 3.52774e-05, 3.72878e-05, 3.90892e-05, 4.069e-05, 4.21078e-05, 4.33575e-05, 4.44531e-05, 4.54094e-05, 4.62427e-05, 4.69691e-05, 4.7596e-05
		)
}

CapTable	"metal2_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.29812e-06, 1.2142e-05, 1.46738e-05, 1.69486e-05, 1.89942e-05, 2.08282e-05, 2.24656e-05, 2.39209e-05, 2.5206e-05, 2.63386e-05, 2.73322e-05, 2.81981e-05, 2.89537e-05, 2.96087e-05, 3.01785e-05, 3.06689e-05, 
			1.19672e-05, 1.4811e-05, 1.74287e-05, 1.98229e-05, 2.19968e-05, 2.39586e-05, 2.57177e-05, 2.72851e-05, 2.86723e-05, 2.98987e-05, 3.09745e-05, 3.19139e-05, 3.27337e-05, 3.34476e-05, 3.4065e-05, 3.45992e-05, 
			1.47447e-05, 1.76171e-05, 2.03011e-05, 2.27756e-05, 2.50347e-05, 2.70773e-05, 2.89145e-05, 3.05545e-05, 3.20079e-05, 3.32911e-05, 3.44183e-05, 3.54073e-05, 3.62677e-05, 3.70161e-05, 3.76646e-05, 3.82281e-05, 
			1.76206e-05, 2.05341e-05, 2.32703e-05, 2.58044e-05, 2.81233e-05, 3.02231e-05, 3.21145e-05, 3.38034e-05, 3.53009e-05, 3.66238e-05, 3.77892e-05, 3.88075e-05, 3.96961e-05, 4.04705e-05, 4.11403e-05, 4.17207e-05, 
			2.05915e-05, 2.35351e-05, 2.63103e-05, 2.88881e-05, 3.12501e-05, 3.33916e-05, 3.5319e-05, 3.70404e-05, 3.85718e-05, 3.99224e-05, 4.11101e-05, 4.21492e-05, 4.30589e-05, 4.38484e-05, 4.45318e-05, 4.5125e-05
		)
}

CapTable	"metal2_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176564, 9.9655e-05, 7.02648e-05, 5.37806e-05, 4.2857e-05, 3.49352e-05, 2.88738e-05, 2.40772e-05, 2.01968e-05, 1.70112e-05, 1.43686e-05, 1.21599e-05, 1.03054e-05, 8.74042e-06, 7.41758e-06, 6.29576e-06, 
			0.000186467, 0.000106974, 7.59322e-05, 5.83282e-05, 4.65702e-05, 3.8007e-05, 3.14378e-05, 2.62306e-05, 2.20124e-05, 1.85455e-05, 1.5668e-05, 1.32606e-05, 1.12367e-05, 9.52994e-06, 8.08512e-06, 6.86022e-06, 
			0.000191706, 0.000111219, 7.93424e-05, 6.10962e-05, 4.886e-05, 3.99124e-05, 3.30336e-05, 2.75728e-05, 2.31444e-05, 1.95031e-05, 1.64765e-05, 1.39448e-05, 1.1815e-05, 1.00174e-05, 8.49604e-06, 7.2057e-06, 
			0.00019488, 0.000113919, 8.15662e-05, 6.29286e-05, 5.03756e-05, 4.11782e-05, 3.40956e-05, 2.8467e-05, 2.38982e-05, 2.01376e-05, 1.7012e-05, 1.43953e-05, 1.21941e-05, 1.03354e-05, 8.76222e-06, 7.42784e-06, 
			0.000196488, 0.000115593, 8.2998e-05, 6.41264e-05, 5.13744e-05, 4.2017e-05, 3.48022e-05, 2.90594e-05, 2.43962e-05, 2.05558e-05, 1.73624e-05, 1.46887e-05, 1.24387e-05, 1.05389e-05, 8.93108e-06, 7.56698e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.4061e-06, 1.13871e-05, 1.40008e-05, 1.61973e-05, 1.79812e-05, 1.94151e-05, 2.05405e-05, 2.14245e-05, 2.21135e-05, 2.26508e-05, 2.3069e-05, 2.34915e-05, 2.37199e-05, 2.38957e-05, 2.40342e-05, 2.41197e-05, 
			1.15814e-05, 1.46069e-05, 1.73121e-05, 1.96064e-05, 2.15034e-05, 2.30263e-05, 2.42381e-05, 2.51931e-05, 2.5943e-05, 2.65306e-05, 2.70812e-05, 2.74161e-05, 2.76763e-05, 2.78788e-05, 2.80218e-05, 2.80586e-05, 
			1.48157e-05, 1.7878e-05, 2.06436e-05, 2.30076e-05, 2.49628e-05, 2.65447e-05, 2.78072e-05, 2.88072e-05, 2.97081e-05, 3.02977e-05, 3.07579e-05, 3.11182e-05, 3.13737e-05, 3.16116e-05, 3.16836e-05, 3.1828e-05, 
			1.80992e-05, 2.12108e-05, 2.40154e-05, 2.64233e-05, 2.84201e-05, 3.00394e-05, 3.13351e-05, 3.24671e-05, 3.32523e-05, 3.38676e-05, 3.4351e-05, 3.47101e-05, 3.49e-05, 3.51429e-05, 3.53345e-05, 3.5581e-05, 
			2.14404e-05, 2.45746e-05, 2.74085e-05, 2.98454e-05, 3.18694e-05, 3.3636e-05, 3.49227e-05, 3.59439e-05, 3.67496e-05, 3.73536e-05, 3.78705e-05, 3.81395e-05, 3.84592e-05, 3.88202e-05, 3.90093e-05, 3.9158e-05
		)
}

CapTable	"metal2_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.79521e-05, 3.79605e-05, 4.60644e-05, 5.24237e-05, 5.73372e-05, 6.11135e-05, 6.39996e-05, 6.62096e-05, 6.79055e-05, 6.92053e-05, 7.02099e-05, 7.08855e-05, 7.15163e-05, 7.20142e-05, 7.23992e-05, 7.2726e-05, 
			4.04266e-05, 5.05725e-05, 5.88401e-05, 6.5372e-05, 7.04668e-05, 7.44087e-05, 7.74487e-05, 7.97887e-05, 8.15903e-05, 8.29864e-05, 8.39701e-05, 8.48399e-05, 8.55201e-05, 8.60529e-05, 8.64892e-05, 8.69063e-05, 
			5.31615e-05, 6.33202e-05, 7.16354e-05, 7.82526e-05, 8.34384e-05, 8.74747e-05, 9.05987e-05, 9.30112e-05, 9.47605e-05, 9.62461e-05, 9.7404e-05, 9.83085e-05, 9.9046e-05, 9.95874e-05, 0.000100126, 0.000100462, 
			6.6016e-05, 7.61866e-05, 8.45266e-05, 9.11917e-05, 9.64393e-05, 0.000100522, 0.000103699, 0.000106054, 0.000108001, 0.000109519, 0.000110704, 0.000111655, 0.000112487, 0.000113054, 0.000113497, 0.000113755, 
			7.89536e-05, 8.91e-05, 9.74553e-05, 0.000104147, 0.000109418, 0.000113408, 0.000116652, 0.000119183, 0.000121154, 0.000122729, 0.000123916, 0.000124982, 0.000125712, 0.000126174, 0.000126641, 0.000127009
		)
}

CapTable	"metal2_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00016528, 8.57434e-05, 5.50198e-05, 3.8156e-05, 2.75196e-05, 2.02994e-05, 1.5213e-05, 1.15238e-05, 8.80246e-06, 6.76938e-06, 5.23178e-06, 4.06612e-06, 3.16432e-06, 2.46588e-06, 1.92499e-06, 1.50051e-06, 
			0.000171216, 9.00076e-05, 5.82428e-05, 4.06876e-05, 2.95048e-05, 2.1883e-05, 1.64662e-05, 1.25222e-05, 9.5987e-06, 7.4e-06, 5.73772e-06, 4.45702e-06, 3.46964e-06, 2.70426e-06, 2.10604e-06, 1.63909e-06, 
			0.000173764, 9.22228e-05, 6.0048e-05, 4.21308e-05, 3.06798e-05, 2.28256e-05, 1.72271e-05, 1.31346e-05, 1.00954e-05, 7.7932e-06, 6.03914e-06, 4.69226e-06, 3.64834e-06, 2.84002e-06, 2.20736e-06, 1.71201e-06, 
			0.000175128, 9.35216e-05, 6.116e-05, 4.3043e-05, 3.14186e-05, 2.34336e-05, 1.77199e-05, 1.35369e-05, 1.04047e-05, 8.03644e-06, 6.228e-06, 4.83288e-06, 3.75702e-06, 2.91514e-06, 2.25846e-06, 1.74304e-06, 
			0.000175477, 9.42244e-05, 6.18072e-05, 4.35976e-05, 3.18836e-05, 2.3827e-05, 1.80403e-05, 1.37821e-05, 1.05974e-05, 8.17942e-06, 6.33448e-06, 4.9105e-06, 3.80684e-06, 2.9498e-06, 2.2747e-06, 1.74302e-06
		)
}

CapTable	"metal1_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000171513, 9.01422e-05, 5.83708e-05, 4.09448e-05, 2.99808e-05, 2.25628e-05, 1.73143e-05, 1.34847e-05, 1.06258e-05, 8.45282e-06, 6.77688e-06, 5.46846e-06, 4.4365e-06, 3.61562e-06, 2.9575e-06, 2.42674e-06, 
			0.000178919, 9.54546e-05, 6.24794e-05, 4.42482e-05, 3.26772e-05, 2.47816e-05, 1.9147e-05, 1.50012e-05, 1.18814e-05, 9.49272e-06, 7.63798e-06, 6.18116e-06, 5.02618e-06, 4.10282e-06, 3.35988e-06, 2.75848e-06, 
			0.000182225, 9.83584e-05, 6.49336e-05, 4.6318e-05, 3.44246e-05, 2.62524e-05, 2.03822e-05, 1.60358e-05, 1.27461e-05, 1.02136e-05, 8.23806e-06, 6.67944e-06, 5.439e-06, 4.44416e-06, 3.64142e-06, 2.99016e-06, 
			0.000183822, 0.000100183, 6.65852e-05, 4.77508e-05, 3.56588e-05, 2.73104e-05, 2.12778e-05, 1.67904e-05, 1.33791e-05, 1.07428e-05, 8.67848e-06, 7.04516e-06, 5.74144e-06, 4.69368e-06, 3.84646e-06, 3.15802e-06, 
			0.000185015, 0.000101525, 6.78204e-05, 4.8837e-05, 3.65946e-05, 2.81036e-05, 2.19516e-05, 1.73593e-05, 1.38566e-05, 1.11417e-05, 9.01022e-06, 7.31992e-06, 5.96806e-06, 4.87978e-06, 3.99866e-06, 3.28174e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.25652e-05, 5.66202e-05, 6.76168e-05, 7.60746e-05, 8.2561e-05, 8.75552e-05, 9.14293e-05, 9.4461e-05, 9.68558e-05, 9.87651e-05, 0.000100302, 0.000101549, 0.00010257, 0.00010341, 0.000104108, 0.000104689, 
			6.09218e-05, 7.5113e-05, 8.62922e-05, 9.49686e-05, 0.000101693, 0.000106923, 0.000111018, 0.000114252, 0.000116827, 0.000118897, 0.000120574, 0.000121945, 0.000123075, 0.000124011, 0.000124792, 0.000125449, 
			7.95234e-05, 9.36264e-05, 0.000104807, 0.000113553, 0.000120383, 0.000125738, 0.000129963, 0.000133322, 0.000136015, 0.000138193, 0.00013997, 0.000141429, 0.000142638, 0.000143647, 0.000144493, 0.000145207, 
			9.81224e-05, 0.000112092, 0.000123232, 0.000132003, 0.000138892, 0.000144322, 0.000148634, 0.000152081, 0.00015486, 0.000157118, 0.00015897, 0.0001605, 0.000161772, 0.000162838, 0.000163738, 0.000164501, 
			0.000116691, 0.000130574, 0.00014168, 0.000150463, 0.000157395, 0.000162889, 0.000167268, 0.000170785, 0.000173635, 0.00017596, 0.000177876, 0.000179464, 0.000180791, 0.000181909, 0.000182854, 0.000183661
		)
}

CapTable	"metal1_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000172277, 9.13118e-05, 5.99032e-05, 4.27664e-05, 3.2009e-05, 2.47218e-05, 1.95407e-05, 1.5729e-05, 1.28512e-05, 1.06329e-05, 8.8938e-06, 7.5107e-06, 6.3973e-06, 5.49164e-06, 4.74834e-06, 4.13358e-06, 
			0.000180048, 9.7011e-05, 6.44228e-05, 4.65074e-05, 3.5171e-05, 2.74326e-05, 2.18888e-05, 1.778e-05, 1.46558e-05, 1.22314e-05, 1.03185e-05, 8.78782e-06, 7.54824e-06, 6.53398e-06, 5.69662e-06, 4.99988e-06, 
			0.000183784, 0.000100369, 6.73574e-05, 4.90838e-05, 3.7449e-05, 2.94546e-05, 2.36914e-05, 1.93935e-05, 1.6106e-05, 1.35403e-05, 1.15045e-05, 9.86676e-06, 8.53346e-06, 7.43686e-06, 6.52684e-06, 5.76572e-06, 
			0.000185872, 0.00010271, 6.95528e-05, 5.1086e-05, 3.92742e-05, 3.11202e-05, 2.52062e-05, 2.07742e-05, 1.73673e-05, 1.46956e-05, 1.25658e-05, 1.08443e-05, 9.43642e-06, 8.27312e-06, 7.30326e-06, 6.48828e-06, 
			0.000187625, 0.000104643, 7.1406e-05, 5.28112e-05, 4.08632e-05, 3.25748e-05, 2.65442e-05, 2.20048e-05, 1.85005e-05, 1.57406e-05, 1.35312e-05, 1.17381e-05, 1.02656e-05, 9.0441e-06, 8.02168e-06, 7.1591e-06
		)
}

CapTable	"metal1_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.00017004, 8.80026e-05, 5.56574e-05, 3.78136e-05, 2.66034e-05, 1.90957e-05, 1.38831e-05, 1.01819e-05, 7.51516e-06, 5.57296e-06, 4.1476e-06, 3.0959e-06, 2.31696e-06, 1.73809e-06, 1.30705e-06, 9.86172e-07, 
			0.000176497, 9.22976e-05, 5.87256e-05, 4.00928e-05, 2.83202e-05, 2.03978e-05, 1.48735e-05, 1.09352e-05, 8.08794e-06, 6.0081e-06, 4.4786e-06, 3.34776e-06, 2.5087e-06, 1.88444e-06, 1.42011e-06, 1.07311e-06, 
			0.000178775, 9.41684e-05, 6.01774e-05, 4.12158e-05, 2.9192e-05, 2.10726e-05, 1.53941e-05, 1.1336e-05, 8.39578e-06, 6.24416e-06, 4.65948e-06, 3.48682e-06, 2.61644e-06, 1.96844e-06, 1.48516e-06, 1.12441e-06, 
			0.000179344, 9.50052e-05, 6.09022e-05, 4.17982e-05, 2.96586e-05, 2.1447e-05, 1.56866e-05, 1.15643e-05, 8.57272e-06, 6.3815e-06, 4.76598e-06, 3.57074e-06, 2.68154e-06, 2.0201e-06, 1.52634e-06, 1.15763e-06, 
			0.000179561, 9.54378e-05, 6.1308e-05, 4.2139e-05, 2.99338e-05, 2.16598e-05, 1.5856e-05, 1.16978e-05, 8.67796e-06, 6.46562e-06, 4.833e-06, 3.62358e-06, 2.72412e-06, 2.05482e-06, 1.55511e-06, 1.18152e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.89227e-05, 5.19518e-05, 6.21332e-05, 6.9943e-05, 7.59077e-05, 8.04658e-05, 8.39658e-05, 8.66688e-05, 8.87709e-05, 9.04168e-05, 9.17154e-05, 9.27459e-05, 9.35698e-05, 9.42333e-05, 9.47691e-05, 9.52031e-05, 
			5.61187e-05, 6.93364e-05, 7.97291e-05, 8.77751e-05, 9.39847e-05, 9.87827e-05, 0.000102503, 0.000105404, 0.00010768, 0.000109477, 0.000110906, 0.000112046, 0.000112965, 0.000113707, 0.000114309, 0.000114799, 
			7.36473e-05, 8.68437e-05, 9.72835e-05, 0.000105432, 0.00011177, 0.000116704, 0.000120559, 0.000123587, 0.000125977, 0.000127874, 0.000129391, 0.000130609, 0.000131592, 0.000132389, 0.000133036, 0.000133566, 
			9.12684e-05, 0.000104392, 0.000114842, 0.00012305, 0.000129469, 0.000134494, 0.000138444, 0.000141561, 0.000144034, 0.000146006, 0.000147588, 0.00014886, 0.000149891, 0.000150728, 0.000151412, 0.00015197, 
			0.00010897, 0.000122074, 0.000132541, 0.000140797, 0.000147282, 0.000152383, 0.000156404, 0.000159591, 0.000162125, 0.000164153, 0.000165783, 0.000167098, 0.000168166, 0.000169034, 0.000169744, 0.000170319
		)
}

CapTable	"metal1_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.60895e-06, 6.25598e-06, 7.68297e-06, 8.86419e-06, 9.81253e-06, 1.05644e-05, 1.11569e-05, 1.16225e-05, 1.19893e-05, 1.22804e-05, 1.25117e-05, 1.26966e-05, 1.28457e-05, 1.29651e-05, 1.30624e-05, 1.31422e-05, 
			6.27966e-06, 7.941e-06, 9.40754e-06, 1.06367e-05, 1.16381e-05, 1.24407e-05, 1.30801e-05, 1.35887e-05, 1.39937e-05, 1.43171e-05, 1.45764e-05, 1.47854e-05, 1.49535e-05, 1.50906e-05, 1.52025e-05, 1.52933e-05, 
			7.98013e-06, 9.64786e-06, 1.11349e-05, 1.23933e-05, 1.34256e-05, 1.42603e-05, 1.49305e-05, 1.54673e-05, 1.5897e-05, 1.62433e-05, 1.65205e-05, 1.67458e-05, 1.69292e-05, 1.70782e-05, 1.72004e-05, 1.72998e-05, 
			9.69521e-06, 1.137e-05, 1.28708e-05, 1.41489e-05, 1.52039e-05, 1.60612e-05, 1.67531e-05, 1.73102e-05, 1.77582e-05, 1.81192e-05, 1.84119e-05, 1.865e-05, 1.88433e-05, 1.90019e-05, 1.91307e-05, 1.92377e-05, 
			1.14237e-05, 1.31064e-05, 1.46207e-05, 1.59148e-05, 1.69872e-05, 1.78619e-05, 1.85711e-05, 1.91419e-05, 1.9604e-05, 1.99787e-05, 2.02823e-05, 2.05297e-05, 2.07312e-05, 2.08967e-05, 2.10327e-05, 2.11491e-05
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
			3.73149e-05, 5.005e-05, 6.00507e-05, 6.77159e-05, 7.35182e-05, 7.78777e-05, 8.11404e-05, 8.35788e-05, 8.53994e-05, 8.67578e-05, 8.77745e-05, 8.85333e-05, 8.91012e-05, 8.95263e-05, 8.98447e-05, 9.01242e-05, 
			5.44096e-05, 6.74775e-05, 7.77746e-05, 8.57121e-05, 9.17574e-05, 9.63249e-05, 9.97628e-05, 0.000102342, 0.000104275, 0.000105722, 0.000106808, 0.000107621, 0.00010823, 0.000108685, 0.000109073, 0.000109331, 
			7.19848e-05, 8.51304e-05, 9.55252e-05, 0.000103574, 0.000109729, 0.000114397, 0.00011792, 0.00012057, 0.000122562, 0.000124056, 0.000125177, 0.000126017, 0.000126693, 0.000127169, 0.000127526, 0.000127793, 
			8.97481e-05, 0.000102883, 0.00011331, 0.000121413, 0.00012762, 0.000132336, 0.000135905, 0.000138595, 0.000140618, 0.000142138, 0.00014328, 0.000144185, 0.00014483, 0.000145314, 0.000145678, 0.000145952, 
			0.000107642, 0.000120789, 0.00013124, 0.000139369, 0.000145609, 0.000150359, 0.000153953, 0.000156664, 0.000158706, 0.00016029, 0.000161446, 0.000162313, 0.000162965, 0.000163455, 0.000163823, 0.0001641
		)
}

CapTable	"metal1_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			8.15093e-06, 1.11604e-05, 1.37849e-05, 1.59525e-05, 1.76764e-05, 1.90166e-05, 2.00435e-05, 2.08223e-05, 2.14104e-05, 2.18542e-05, 2.21869e-05, 2.24378e-05, 2.26248e-05, 2.27656e-05, 2.28713e-05, 2.29076e-05, 
			1.13206e-05, 1.44179e-05, 1.71528e-05, 1.94271e-05, 2.12504e-05, 2.26773e-05, 2.37747e-05, 2.46125e-05, 2.52478e-05, 2.57285e-05, 2.60894e-05, 2.63627e-05, 2.65662e-05, 2.67202e-05, 2.67879e-05, 2.6871e-05, 
			1.46138e-05, 1.77672e-05, 2.05614e-05, 2.28956e-05, 2.47698e-05, 2.62406e-05, 2.73774e-05, 2.82466e-05, 2.89066e-05, 2.94072e-05, 2.97849e-05, 3.00679e-05, 3.02341e-05, 3.03906e-05, 3.0506e-05, 3.05921e-05, 
			1.79877e-05, 2.11754e-05, 2.40076e-05, 2.63737e-05, 2.82782e-05, 2.97737e-05, 3.09321e-05, 3.18176e-05, 3.24936e-05, 3.3003e-05, 3.33894e-05, 3.3628e-05, 3.38442e-05, 3.40014e-05, 3.41207e-05, 3.42094e-05, 
			2.14146e-05, 2.46306e-05, 2.74843e-05, 2.98728e-05, 3.17947e-05, 3.33062e-05, 3.44769e-05, 3.53744e-05, 3.60553e-05, 3.65199e-05, 3.69068e-05, 3.71952e-05, 3.74131e-05, 3.75738e-05, 3.7695e-05, 3.77869e-05
		)
}

CapTable	"metal1_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.00018629, 0.000108028, 7.7615e-05, 6.03938e-05, 4.89148e-05, 4.05576e-05, 3.41414e-05, 2.90434e-05, 2.48968e-05, 2.14666e-05, 1.85929e-05, 1.61617e-05, 1.40885e-05, 1.23087e-05, 1.07721e-05, 9.43888e-06, 
			0.00019911, 0.000117526, 8.50694e-05, 6.64762e-05, 5.40024e-05, 4.48916e-05, 3.78832e-05, 3.23066e-05, 2.77644e-05, 2.40016e-05, 2.08446e-05, 1.81691e-05, 1.58836e-05, 1.39179e-05, 1.22176e-05, 1.07394e-05, 
			0.000206092, 0.0001232, 8.97274e-05, 7.03902e-05, 5.73556e-05, 4.78044e-05, 4.0441e-05, 3.45708e-05, 2.9781e-05, 2.58062e-05, 2.2465e-05, 1.96284e-05, 1.72005e-05, 1.51084e-05, 1.32952e-05, 1.17159e-05, 
			0.000210184, 0.00012694, 9.29448e-05, 7.3175e-05, 5.9802e-05, 4.99786e-05, 4.23842e-05, 3.63184e-05, 3.13602e-05, 2.72382e-05, 2.37674e-05, 2.08152e-05, 1.8284e-05, 1.60989e-05, 1.42018e-05, 1.25464e-05, 
			0.00021309, 0.000129657, 9.53512e-05, 7.53018e-05, 6.1693e-05, 5.16688e-05, 4.39068e-05, 3.76956e-05, 3.2609e-05, 2.8373e-05, 2.47998e-05, 2.17556e-05, 1.91407e-05, 1.68795e-05, 1.49131e-05, 1.31943e-05
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
			5.56507e-06, 7.20415e-06, 8.65156e-06, 9.94981e-06, 1.11195e-05, 1.21719e-05, 1.3115e-05, 1.39575e-05, 1.47068e-05, 1.53697e-05, 1.59541e-05, 1.64686e-05, 1.69193e-05, 1.73147e-05, 1.76593e-05, 1.79607e-05, 
			7.03192e-06, 8.66091e-06, 1.01598e-05, 1.15315e-05, 1.2781e-05, 1.39133e-05, 1.49334e-05, 1.58471e-05, 1.66611e-05, 1.73831e-05, 1.80221e-05, 1.85844e-05, 1.90795e-05, 1.95133e-05, 1.98914e-05, 2.02219e-05, 
			8.56154e-06, 1.02041e-05, 1.17407e-05, 1.31605e-05, 1.44614e-05, 1.56454e-05, 1.67137e-05, 1.76721e-05, 1.85283e-05, 1.92887e-05, 1.99625e-05, 2.05566e-05, 2.10793e-05, 2.15364e-05, 2.19385e-05, 2.2289e-05, 
			1.01546e-05, 1.18115e-05, 1.33773e-05, 1.48326e-05, 1.61702e-05, 1.73879e-05, 1.84894e-05, 1.94797e-05, 2.03644e-05, 2.11522e-05, 2.185e-05, 2.24647e-05, 2.30063e-05, 2.34826e-05, 2.38992e-05, 2.4264e-05, 
			1.17923e-05, 1.34686e-05, 1.50586e-05, 1.65402e-05, 1.79035e-05, 1.91476e-05, 2.02737e-05, 2.12872e-05, 2.21937e-05, 2.29999e-05, 2.37142e-05, 2.43463e-05, 2.49025e-05, 2.53907e-05, 2.58188e-05, 2.61923e-05
		)
}

CapTable	"metal1_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000185628, 0.000107147, 7.65154e-05, 5.90886e-05, 4.74238e-05, 3.89062e-05, 3.23576e-05, 2.71568e-05, 2.29362e-05, 1.94603e-05, 1.65673e-05, 1.41407e-05, 1.20935e-05, 1.03588e-05, 8.88352e-06, 7.62558e-06, 
			0.000198036, 0.000116194, 8.34816e-05, 6.46482e-05, 5.19592e-05, 4.2664e-05, 3.55052e-05, 2.98134e-05, 2.51906e-05, 2.13808e-05, 1.82077e-05, 1.55444e-05, 1.32962e-05, 1.13901e-05, 9.76834e-06, 8.38468e-06, 
			0.000204542, 0.000121359, 8.76006e-05, 6.79986e-05, 5.473e-05, 4.49816e-05, 3.74604e-05, 3.1473e-05, 2.66054e-05, 2.25902e-05, 1.92438e-05, 1.64329e-05, 1.40589e-05, 1.2045e-05, 1.03306e-05, 8.86722e-06, 
			0.00020808, 0.000124515, 9.02112e-05, 7.01586e-05, 5.65398e-05, 4.65126e-05, 3.87596e-05, 3.25804e-05, 2.75524e-05, 2.34018e-05, 1.99402e-05, 1.70311e-05, 1.45724e-05, 1.2486e-05, 1.0709e-05, 9.19212e-06, 
			0.0002104, 0.00012663, 9.20034e-05, 7.16656e-05, 5.78104e-05, 4.7587e-05, 3.96758e-05, 3.3364e-05, 2.82238e-05, 2.39784e-05, 2.04352e-05, 1.74564e-05, 1.49376e-05, 1.27991e-05, 1.0978e-05, 9.42266e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.10992e-05, 2.71126e-05, 3.2332e-05, 3.69627e-05, 4.11024e-05, 4.48086e-05, 4.81228e-05, 5.10804e-05, 5.3714e-05, 5.60554e-05, 5.81344e-05, 5.99791e-05, 6.16155e-05, 6.30673e-05, 6.4356e-05, 6.55008e-05, 
			2.65224e-05, 3.25076e-05, 3.79026e-05, 4.27758e-05, 4.71756e-05, 5.11373e-05, 5.46945e-05, 5.78796e-05, 6.07248e-05, 6.32617e-05, 6.55208e-05, 6.75313e-05, 6.93196e-05, 7.09108e-05, 7.23271e-05, 7.35888e-05, 
			3.214e-05, 3.8154e-05, 4.36576e-05, 4.86728e-05, 5.32224e-05, 5.73346e-05, 6.1038e-05, 6.43633e-05, 6.73411e-05, 7.0003e-05, 7.23797e-05, 7.44999e-05, 7.63907e-05, 7.80772e-05, 7.95821e-05, 8.09258e-05, 
			3.7911e-05, 4.39392e-05, 4.95082e-05, 5.4606e-05, 5.9248e-05, 6.34534e-05, 6.72508e-05, 7.06686e-05, 7.37358e-05, 7.64838e-05, 7.89436e-05, 8.11428e-05, 8.3108e-05, 8.48641e-05, 8.64352e-05, 8.78416e-05, 
			4.3814e-05, 4.98788e-05, 5.54958e-05, 6.06552e-05, 6.5363e-05, 6.96402e-05, 7.35112e-05, 7.70004e-05, 8.014e-05, 8.2959e-05, 8.54862e-05, 8.77504e-05, 8.97783e-05, 9.15945e-05, 9.32219e-05, 9.46807e-05
		)
}

CapTable	"metal1_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			9.38576e-06, 1.233e-05, 1.49732e-05, 1.73534e-05, 1.94818e-05, 2.13715e-05, 2.30285e-05, 2.44684e-05, 2.57095e-05, 2.67694e-05, 2.76693e-05, 2.84302e-05, 2.90677e-05, 2.96019e-05, 3.00467e-05, 3.04171e-05, 
			1.21834e-05, 1.52008e-05, 1.79905e-05, 2.05353e-05, 2.28251e-05, 2.48586e-05, 2.66453e-05, 2.81974e-05, 2.95352e-05, 3.06785e-05, 3.16495e-05, 3.24698e-05, 3.31574e-05, 3.37333e-05, 3.42125e-05, 3.46137e-05, 
			1.51847e-05, 1.828e-05, 2.11737e-05, 2.38197e-05, 2.62029e-05, 2.83214e-05, 3.01799e-05, 3.17957e-05, 3.31873e-05, 3.4377e-05, 3.53847e-05, 3.62367e-05, 3.6953e-05, 3.75506e-05, 3.80496e-05, 3.84628e-05, 
			1.83511e-05, 2.15103e-05, 2.44709e-05, 2.71833e-05, 2.96239e-05, 3.17914e-05, 3.36936e-05, 3.53458e-05, 3.6769e-05, 3.79827e-05, 3.90128e-05, 3.98841e-05, 4.06159e-05, 4.12276e-05, 4.17333e-05, 4.21577e-05, 
			2.16349e-05, 2.48465e-05, 2.78548e-05, 3.06085e-05, 3.30846e-05, 3.52843e-05, 3.72132e-05, 3.8885e-05, 4.03256e-05, 4.15553e-05, 4.25991e-05, 4.348e-05, 4.42175e-05, 4.48372e-05, 4.52982e-05, 4.57249e-05
		)
}

CapTable	"metal1_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000183813, 0.000104627, 7.3362e-05, 5.54036e-05, 4.33268e-05, 3.45212e-05, 2.78038e-05, 2.25402e-05, 1.83488e-05, 1.49772e-05, 1.22452e-05, 1.00238e-05, 8.21144e-06, 6.7302e-06, 5.5189e-06, 4.52658e-06, 
			0.00019532, 0.000112728, 7.93594e-05, 5.99958e-05, 4.69156e-05, 3.73676e-05, 3.00846e-05, 2.43812e-05, 1.98425e-05, 1.6192e-05, 1.32375e-05, 1.08344e-05, 8.8756e-06, 7.27476e-06, 5.96584e-06, 4.89398e-06, 
			0.000200862, 0.00011693, 8.25398e-05, 6.24482e-05, 4.88392e-05, 3.8895e-05, 3.131e-05, 2.53704e-05, 2.06454e-05, 1.68457e-05, 1.37713e-05, 1.12718e-05, 9.23366e-06, 7.56954e-06, 6.20796e-06, 5.09396e-06, 
			0.000203436, 0.00011916, 8.42772e-05, 6.37966e-05, 4.99034e-05, 3.9747e-05, 3.19928e-05, 2.59232e-05, 2.10936e-05, 1.72123e-05, 1.40711e-05, 1.15174e-05, 9.4363e-06, 7.73622e-06, 6.3462e-06, 5.20816e-06, 
			0.000204832, 0.000120415, 8.5279e-05, 6.45854e-05, 5.05266e-05, 4.02402e-05, 3.239e-05, 2.62452e-05, 2.13566e-05, 1.74272e-05, 1.42476e-05, 1.1663e-05, 9.55692e-06, 7.83632e-06, 6.43142e-06, 5.28024e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.63615e-05, 2.10418e-05, 2.514e-05, 2.87983e-05, 3.20802e-05, 3.50209e-05, 3.76475e-05, 3.99821e-05, 4.20489e-05, 4.38723e-05, 4.54756e-05, 4.68808e-05, 4.81105e-05, 4.9183e-05, 5.01188e-05, 5.09324e-05, 
			2.08599e-05, 2.55957e-05, 2.98926e-05, 3.37933e-05, 3.73218e-05, 4.04977e-05, 4.33418e-05, 4.58759e-05, 4.81243e-05, 5.01106e-05, 5.18586e-05, 5.33939e-05, 5.47372e-05, 5.59111e-05, 5.69366e-05, 5.78297e-05, 
			2.56015e-05, 3.04223e-05, 3.48577e-05, 3.89119e-05, 4.25936e-05, 4.5914e-05, 4.88929e-05, 5.15509e-05, 5.39108e-05, 5.59984e-05, 5.7837e-05, 5.9453e-05, 6.08687e-05, 6.21081e-05, 6.31882e-05, 6.41307e-05, 
			3.05634e-05, 3.54555e-05, 3.99885e-05, 4.41458e-05, 4.7927e-05, 5.13435e-05, 5.4413e-05, 5.71529e-05, 5.95882e-05, 6.1742e-05, 6.36418e-05, 6.53132e-05, 6.67783e-05, 6.80584e-05, 6.91778e-05, 7.01529e-05, 
			3.56917e-05, 4.06532e-05, 4.5257e-05, 4.94872e-05, 5.33401e-05, 5.68254e-05, 5.99565e-05, 6.27538e-05, 6.52415e-05, 6.74447e-05, 6.93886e-05, 7.10973e-05, 7.25959e-05, 7.39092e-05, 7.50542e-05, 7.6055e-05
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
			1.48896e-05, 1.93704e-05, 2.33608e-05, 2.69475e-05, 3.01603e-05, 3.30068e-05, 3.55062e-05, 3.76787e-05, 3.95481e-05, 4.11454e-05, 4.25027e-05, 4.3646e-05, 4.46086e-05, 4.54132e-05, 4.60837e-05, 4.66411e-05, 
			1.93634e-05, 2.39896e-05, 2.82351e-05, 3.20939e-05, 3.55613e-05, 3.86408e-05, 4.13428e-05, 4.36914e-05, 4.57121e-05, 4.74395e-05, 4.89041e-05, 5.01411e-05, 5.11799e-05, 5.20489e-05, 5.27736e-05, 5.33735e-05, 
			2.41503e-05, 2.89278e-05, 3.33445e-05, 3.73721e-05, 4.09919e-05, 4.42036e-05, 4.70191e-05, 4.94659e-05, 5.15693e-05, 5.33673e-05, 5.4893e-05, 5.61785e-05, 5.72593e-05, 5.81629e-05, 5.89164e-05, 5.95412e-05, 
			2.92109e-05, 3.40955e-05, 3.86299e-05, 4.27621e-05, 4.64737e-05, 4.97626e-05, 5.26466e-05, 5.5147e-05, 5.72994e-05, 5.9137e-05, 6.06951e-05, 6.20095e-05, 6.31108e-05, 6.40342e-05, 6.48045e-05, 6.54431e-05, 
			3.44661e-05, 3.94393e-05, 4.40492e-05, 4.82481e-05, 5.20168e-05, 5.53535e-05, 5.82768e-05, 6.08128e-05, 6.29918e-05, 6.48525e-05, 6.64303e-05, 6.7762e-05, 6.88776e-05, 6.98115e-05, 7.06404e-05, 7.12889e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.649e-05, 3.37412e-05, 4.00566e-05, 4.55854e-05, 5.04342e-05, 5.46838e-05, 5.84072e-05, 6.16662e-05, 6.45183e-05, 6.7015e-05, 6.92014e-05, 7.1118e-05, 7.28004e-05, 7.42791e-05, 7.55812e-05, 7.67297e-05, 
			3.5359e-05, 4.25736e-05, 4.90368e-05, 5.4778e-05, 5.98604e-05, 6.43472e-05, 6.82996e-05, 7.17792e-05, 7.4839e-05, 7.7531e-05, 7.99e-05, 8.1986e-05, 8.38258e-05, 8.54504e-05, 8.6887e-05, 8.81589e-05, 
			4.4548e-05, 5.17358e-05, 5.8242e-05, 6.40668e-05, 6.92518e-05, 7.38518e-05, 7.79242e-05, 8.1524e-05, 8.47032e-05, 8.75114e-05, 8.99914e-05, 9.21848e-05, 9.41256e-05, 9.58444e-05, 9.73705e-05, 9.8726e-05, 
			5.3922e-05, 6.10744e-05, 6.7579e-05, 7.34326e-05, 7.86658e-05, 8.33292e-05, 8.74718e-05, 9.11466e-05, 9.44028e-05, 9.72892e-05, 9.98464e-05, 0.000102113, 0.000104126, 0.000105915, 0.000107507, 0.000108925, 
			6.3383e-05, 7.04748e-05, 7.69572e-05, 8.28138e-05, 8.8069e-05, 9.27656e-05, 9.69502e-05, 0.000100672, 0.000103981, 0.00010692, 0.000109532, 0.000111854, 0.000113921, 0.000115762, 0.000117404, 0.00011887
		)
}

CapTable	"poly_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217464, 0.000124897, 8.93094e-05, 6.93326e-05, 5.61598e-05, 4.66862e-05, 3.9505e-05, 3.38702e-05, 2.93404e-05, 2.56332e-05, 2.25576e-05, 1.99781e-05, 1.77949e-05, 1.59334e-05, 1.43357e-05, 1.29566e-05, 
			0.000231148, 0.000135393, 9.77372e-05, 7.6373e-05, 6.21826e-05, 5.19328e-05, 4.41364e-05, 3.79988e-05, 3.3049e-05, 2.8985e-05, 2.5602e-05, 2.2755e-05, 2.03372e-05, 1.82686e-05, 1.6487e-05, 1.49441e-05, 
			0.000238194, 0.000141468, 0.000102927, 8.08792e-05, 6.61772e-05, 5.55092e-05, 4.73658e-05, 4.0935e-05, 3.57328e-05, 3.14486e-05, 2.78716e-05, 2.48522e-05, 2.22804e-05, 2.00736e-05, 1.81675e-05, 1.6512e-05, 
			0.000242802, 0.000145659, 0.000106661, 8.42284e-05, 6.92062e-05, 5.82708e-05, 4.99022e-05, 4.32754e-05, 3.79002e-05, 3.34618e-05, 2.97466e-05, 2.66026e-05, 2.39178e-05, 2.16082e-05, 1.96085e-05, 1.78673e-05, 
			0.000244782, 0.000148246, 0.000109204, 8.66312e-05, 7.145e-05, 6.03674e-05, 5.18668e-05, 4.51184e-05, 3.96264e-05, 3.50812e-05, 3.12676e-05, 2.80326e-05, 2.52644e-05, 2.28774e-05, 2.08064e-05, 1.89991e-05
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
			2.36842e-05, 3.03372e-05, 3.61856e-05, 4.13266e-05, 4.5861e-05, 4.98557e-05, 5.33615e-05, 5.64378e-05, 5.91335e-05, 6.14932e-05, 6.35595e-05, 6.53679e-05, 6.6952e-05, 6.83398e-05, 6.95569e-05, 7.06261e-05, 
			3.16672e-05, 3.8307e-05, 4.4294e-05, 4.96343e-05, 5.43835e-05, 5.8593e-05, 6.23165e-05, 6.56018e-05, 6.84979e-05, 7.10472e-05, 7.32921e-05, 7.52686e-05, 7.70086e-05, 7.85405e-05, 7.98922e-05, 8.10843e-05, 
			4.00204e-05, 4.66459e-05, 5.26731e-05, 5.80959e-05, 6.2946e-05, 6.72717e-05, 7.1113e-05, 7.45207e-05, 7.75369e-05, 8.02053e-05, 8.2564e-05, 8.46485e-05, 8.64917e-05, 8.81215e-05, 8.95642e-05, 9.08426e-05, 
			4.85947e-05, 5.52056e-05, 6.12475e-05, 6.67139e-05, 7.16274e-05, 7.60272e-05, 7.99503e-05, 8.34431e-05, 8.65446e-05, 8.92998e-05, 9.17425e-05, 9.3909e-05, 9.58299e-05, 9.75339e-05, 9.90459e-05, 0.00010039, 
			5.72714e-05, 6.38274e-05, 6.98537e-05, 7.5326e-05, 8.0264e-05, 8.46993e-05, 8.86684e-05, 9.22103e-05, 9.53687e-05, 9.81795e-05, 0.000100679, 0.000102903, 0.00010488, 0.000106638, 0.000108203, 0.000109596
		)
}

CapTable	"poly_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			3.4718e-06, 4.47099e-06, 5.33503e-06, 6.11404e-06, 6.804e-06, 7.41353e-06, 7.95899e-06, 8.44018e-06, 8.8636e-06, 9.23668e-06, 9.5636e-06, 9.85069e-06, 1.01022e-05, 1.03233e-05, 1.05174e-05, 1.06872e-05, 
			4.5748e-06, 5.54178e-06, 6.42344e-06, 7.22994e-06, 7.95991e-06, 8.61418e-06, 9.19845e-06, 9.71779e-06, 1.01775e-05, 1.05844e-05, 1.09435e-05, 1.12598e-05, 1.15388e-05, 1.17853e-05, 1.20027e-05, 1.21943e-05, 
			5.6766e-06, 6.63848e-06, 7.53775e-06, 8.36485e-06, 9.11662e-06, 9.79368e-06, 1.0403e-05, 1.09461e-05, 1.14297e-05, 1.18583e-05, 1.22388e-05, 1.25759e-05, 1.28745e-05, 1.31382e-05, 1.33719e-05, 1.35786e-05, 
			6.79932e-06, 7.76436e-06, 8.67447e-06, 9.51567e-06, 1.02838e-05, 1.09794e-05, 1.16057e-05, 1.21669e-05, 1.26688e-05, 1.31142e-05, 1.35107e-05, 1.3863e-05, 1.41761e-05, 1.44534e-05, 1.47003e-05, 1.49181e-05, 
			7.9266e-06, 8.8934e-06, 9.80965e-06, 1.06602e-05, 1.14388e-05, 1.21463e-05, 1.2784e-05, 1.33573e-05, 1.38705e-05, 1.43295e-05, 1.47388e-05, 1.51024e-05, 1.54262e-05, 1.57143e-05, 1.59706e-05, 1.61993e-05
		)
}

CapTable	"poly_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000216914, 0.000124057, 8.81964e-05, 6.79614e-05, 5.4548e-05, 4.48538e-05, 3.7474e-05, 3.16626e-05, 2.69786e-05, 2.31384e-05, 1.99494e-05, 1.72746e-05, 1.50127e-05, 1.30872e-05, 1.14387e-05, 1.00206e-05, 
			0.00023043, 0.000134395, 9.64636e-05, 7.48348e-05, 6.03936e-05, 4.99108e-05, 4.1901e-05, 3.55714e-05, 3.04506e-05, 2.62364e-05, 2.27234e-05, 1.97646e-05, 1.72526e-05, 1.51052e-05, 1.32591e-05, 1.16644e-05, 
			0.00023728, 0.000140274, 0.000101451, 7.91292e-05, 6.41654e-05, 5.32516e-05, 4.4881e-05, 3.82432e-05, 3.28554e-05, 2.84064e-05, 2.46852e-05, 2.15406e-05, 1.88618e-05, 1.65643e-05, 1.45829e-05, 1.28658e-05, 
			0.000241656, 0.00014422, 0.000104927, 8.22044e-05, 6.69038e-05, 5.57054e-05, 4.7093e-05, 4.0243e-05, 3.46666e-05, 3.0049e-05, 2.61758e-05, 2.2894e-05, 2.0091e-05, 1.76807e-05, 1.55968e-05, 1.37864e-05, 
			0.0002434, 0.000146571, 0.000107229, 8.43598e-05, 6.88922e-05, 5.75384e-05, 4.87846e-05, 4.18044e-05, 3.61018e-05, 3.1368e-05, 2.73874e-05, 2.40066e-05, 2.1112e-05, 1.86173e-05, 1.64553e-05, 1.4573e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.24409e-05, 2.87968e-05, 3.43786e-05, 3.92975e-05, 4.36381e-05, 4.74531e-05, 5.08033e-05, 5.37368e-05, 5.6301e-05, 5.85366e-05, 6.04854e-05, 6.21821e-05, 6.36577e-05, 6.49416e-05, 6.60582e-05, 6.70295e-05, 
			3.0356e-05, 3.67803e-05, 4.25647e-05, 4.77306e-05, 5.23314e-05, 5.64075e-05, 5.9995e-05, 6.31535e-05, 6.59255e-05, 6.8353e-05, 7.04748e-05, 7.23298e-05, 7.39467e-05, 7.53581e-05, 7.65916e-05, 7.76661e-05, 
			3.86784e-05, 4.5157e-05, 5.10462e-05, 5.63505e-05, 6.10881e-05, 6.53004e-05, 6.90303e-05, 7.23219e-05, 7.52169e-05, 7.77626e-05, 7.99903e-05, 8.19429e-05, 8.36521e-05, 8.5146e-05, 8.64503e-05, 8.75914e-05, 
			4.72739e-05, 5.37965e-05, 5.97487e-05, 6.51307e-05, 6.9958e-05, 7.42634e-05, 7.80842e-05, 8.14656e-05, 8.44454e-05, 8.70678e-05, 8.93721e-05, 9.13942e-05, 9.31634e-05, 9.47146e-05, 9.60724e-05, 9.72588e-05, 
			5.60294e-05, 6.25517e-05, 6.85416e-05, 7.39712e-05, 7.88518e-05, 8.32152e-05, 8.70931e-05, 9.05287e-05, 9.35667e-05, 9.62438e-05, 9.85962e-05, 0.000100664, 0.000102479, 0.000104068, 0.000105461, 0.000106681
		)
}

CapTable	"poly_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			5.37309e-06, 6.86298e-06, 8.19319e-06, 9.38914e-06, 1.04559e-05, 1.14101e-05, 1.2254e-05, 1.29993e-05, 1.36537e-05, 1.42291e-05, 1.47315e-05, 1.51706e-05, 1.55545e-05, 1.5889e-05, 1.61813e-05, 1.64359e-05, 
			7.09004e-06, 8.57272e-06, 9.9537e-06, 1.12168e-05, 1.2352e-05, 1.33681e-05, 1.42834e-05, 1.50911e-05, 1.58043e-05, 1.64324e-05, 1.69854e-05, 1.7469e-05, 1.7894e-05, 1.82659e-05, 1.85888e-05, 1.88717e-05, 
			8.87464e-06, 1.03714e-05, 1.17854e-05, 1.30799e-05, 1.42593e-05, 1.5322e-05, 1.62721e-05, 1.71181e-05, 1.78697e-05, 1.85308e-05, 1.91159e-05, 1.96287e-05, 2.00784e-05, 2.04727e-05, 2.08195e-05, 2.11219e-05, 
			1.07161e-05, 1.22269e-05, 1.36627e-05, 1.49863e-05, 1.61922e-05, 1.72828e-05, 1.82614e-05, 1.9134e-05, 1.99106e-05, 2.05972e-05, 2.12021e-05, 2.17348e-05, 2.22051e-05, 2.26161e-05, 2.2977e-05, 2.32938e-05, 
			1.25996e-05, 1.41273e-05, 1.55726e-05, 1.69128e-05, 1.81388e-05, 1.9248e-05, 2.02457e-05, 2.11379e-05, 2.19293e-05, 2.26312e-05, 2.32534e-05, 2.37999e-05, 2.42814e-05, 2.47052e-05, 2.50766e-05, 2.54034e-05
		)
}

CapTable	"poly_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000216408, 0.000123429, 8.74442e-05, 6.70904e-05, 5.357e-05, 4.37838e-05, 3.63284e-05, 3.04586e-05, 2.57328e-05, 2.18666e-05, 1.86666e-05, 1.59935e-05, 1.37451e-05, 1.1843e-05, 1.02259e-05, 8.84634e-06, 
			0.00022952, 0.0001333, 9.51886e-05, 7.33946e-05, 5.88096e-05, 4.82074e-05, 4.01026e-05, 3.37034e-05, 2.85372e-05, 2.42996e-05, 2.07828e-05, 1.78382e-05, 1.53553e-05, 1.325e-05, 1.14566e-05, 9.92318e-06, 
			0.000235902, 0.000138664, 9.96224e-05, 7.71056e-05, 6.19766e-05, 5.09296e-05, 4.24586e-05, 3.5752e-05, 3.03244e-05, 2.58626e-05, 2.21518e-05, 1.90384e-05, 1.64085e-05, 1.41743e-05, 1.22682e-05, 1.06357e-05, 
			0.000239766, 0.000142068, 0.000102534, 7.9602e-05, 6.41298e-05, 5.27988e-05, 4.40914e-05, 3.71824e-05, 3.158e-05, 2.6966e-05, 2.31228e-05, 1.9893e-05, 1.71605e-05, 1.48363e-05, 1.28506e-05, 1.11484e-05, 
			0.00024095, 0.000143832, 0.000104231, 8.1143e-05, 6.55004e-05, 5.40158e-05, 4.51752e-05, 3.81474e-05, 3.2435e-05, 2.7723e-05, 2.37924e-05, 2.04852e-05, 1.76839e-05, 1.52988e-05, 1.32589e-05, 1.15083e-05
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

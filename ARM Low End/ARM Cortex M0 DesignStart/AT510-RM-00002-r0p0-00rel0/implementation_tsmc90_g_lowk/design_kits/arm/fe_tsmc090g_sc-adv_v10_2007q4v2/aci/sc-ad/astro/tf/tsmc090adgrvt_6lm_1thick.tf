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
   $Id: tsmc090_6lm_1thick.tf,v 1.1 2006/05/11 06:33:33 Exp $
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
		color				= "green"
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

Layer		"M5" {
		layerNumber			= 35
		maskName			= "metal5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
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

Layer		"M6" {
		layerNumber			= 36
		maskName			= "metal6"
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
		color				= "yellow"
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
		fatTblFatContactNumber		= (4,4,4,44,44,44)
		fatTblFatContactMinCuts		= (1,2,2,4,4,4)
		fatTblExtensionContactNumber	= (0,0,4,4,4,4)
		fatTblExtensionMinCuts		= (1,1,2,2,2,2)
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.19
}

Layer		"VIA4" {
		layerNumber			= 54
		maskName			= "via4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
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
		fatTblFatContactNumber		= (5,5,5,55,55,55)
		fatTblFatContactMinCuts		= (1,2,2,4,4,4)
		fatTblExtensionContactNumber	= (0,0,5,5,5,5)
		fatTblExtensionMinCuts		= (1,1,2,2,2,2)
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.19
}

Layer		"VIA5" {
		layerNumber			= 55
		maskName			= "via5"
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
		fatTblFatContactNumber		= (6,6,66)
		fatTblFatContactMinCuts		= (1,2,2)
		fatTblExtensionContactNumber	= (0,0,6)
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

Layer		"TEXT5" {
		layerNumber			= 135
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "47"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT6" {
		layerNumber			= 136
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
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

ContactCode	"via4" {
		contactCodeNumber		= 5
		cutLayer			= "VIA4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
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

ContactCode	"via5" {
		contactCodeNumber		= 6
		cutLayer			= "VIA5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
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

ContactCode	"via4_fat" {
		contactCodeNumber		= 55
		cutLayer			= "VIA4"
		lowerLayer			= "M4"
		upperLayer			= "M5"
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

ContactCode	"via5_fat" {
		contactCodeNumber		= 66
		cutLayer			= "VIA5"
		lowerLayer			= "M5"
		upperLayer			= "M6"
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
		minSpacing			= 0.17
}

DesignRule	{
		layer1				= "via4Blockage"
		layer2				= "VIA4"
		minSpacing			= 0.17
}

DesignRule	{
		layer1				= "via5Blockage"
		layer2				= "VIA5"
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

CapTable	"metal6_C_BOTTOM_GPMAX" {
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

CapTable	"metal6_C_LATERALMAX" {
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

CapTable	"metal6_C_LATERAL_31MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal6_C_LATERAL_21MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.8382e-05, 2.29244e-05, 2.67798e-05, 3.01952e-05, 3.32998e-05, 3.61668e-05, 3.88394e-05, 4.13438e-05, 4.36954e-05, 4.59042e-05, 4.79768e-05, 4.99186e-05, 5.17346e-05, 5.34288e-05, 5.50063e-05, 5.64719e-05, 
			2.1945e-05, 2.6274e-05, 3.01648e-05, 3.37204e-05, 3.70142e-05, 4.00912e-05, 4.29788e-05, 4.56947e-05, 4.8251e-05, 5.06543e-05, 5.29106e-05, 5.50244e-05, 5.70005e-05, 5.88438e-05, 6.05596e-05, 6.21532e-05, 
			2.5609e-05, 2.9871e-05, 3.381e-05, 3.74756e-05, 4.09058e-05, 4.41328e-05, 4.71718e-05, 5.00366e-05, 5.27346e-05, 5.5272e-05, 5.76529e-05, 5.98826e-05, 6.19659e-05, 6.39083e-05, 6.57155e-05, 6.73937e-05, 
			2.9426e-05, 3.3677e-05, 3.76752e-05, 4.14318e-05, 4.49728e-05, 4.83138e-05, 5.14668e-05, 5.4441e-05, 5.72426e-05, 5.98758e-05, 6.23454e-05, 6.46568e-05, 6.68154e-05, 6.88272e-05, 7.06982e-05, 7.24352e-05, 
			3.3387e-05, 3.76748e-05, 4.17326e-05, 4.55698e-05, 4.91982e-05, 5.26286e-05, 5.5869e-05, 5.89254e-05, 6.18024e-05, 6.4506e-05, 6.70402e-05, 6.94116e-05, 7.16246e-05, 7.36864e-05, 7.56036e-05, 7.73836e-05
		)
}

CapTable	"metal6_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000242072, 0.000142704, 0.000105241, 8.44158e-05, 7.06552e-05, 6.06282e-05, 5.2855e-05, 4.65726e-05, 4.13456e-05, 3.69056e-05, 3.3077e-05, 2.97386e-05, 2.68032e-05, 2.42062e-05, 2.18972e-05, 1.98367e-05, 
			0.00025934, 0.000155675, 0.000115571, 9.29566e-05, 7.78708e-05, 6.68178e-05, 5.82232e-05, 5.12682e-05, 4.54808e-05, 4.05682e-05, 3.63366e-05, 3.26518e-05, 2.94166e-05, 2.65582e-05, 2.40202e-05, 2.1758e-05, 
			0.000269372, 0.000163786, 0.000122246, 9.85554e-05, 8.26442e-05, 7.09302e-05, 6.17982e-05, 5.43994e-05, 4.82414e-05, 4.3016e-05, 3.85182e-05, 3.4605e-05, 3.11726e-05, 2.81426e-05, 2.54546e-05, 2.30602e-05, 
			0.00027558, 0.000169232, 0.000126843, 0.000102456, 8.59852e-05, 7.38232e-05, 6.43172e-05, 5.6609e-05, 5.01924e-05, 4.47492e-05, 4.00666e-05, 3.59952e-05, 3.2426e-05, 2.92774e-05, 2.64856e-05, 2.4e-05, 
			0.000280186, 0.000173233, 0.000130248, 0.000105356, 8.84748e-05, 7.59744e-05, 6.6195e-05, 5.82606e-05, 5.16556e-05, 4.6054e-05, 4.12368e-05, 3.70504e-05, 3.33824e-05, 3.01476e-05, 2.72804e-05, 2.47284e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal6_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000244552, 0.000145874, 0.000108964, 8.85656e-05, 7.51216e-05, 6.53156e-05, 5.76834e-05, 5.14768e-05, 4.62726e-05, 4.18136e-05, 3.7933e-05, 3.45174e-05, 3.14854e-05, 2.8777e-05, 2.63458e-05, 2.41552e-05, 
			0.000262638, 0.000159599, 0.00011998, 9.7723e-05, 8.2887e-05, 7.19952e-05, 6.34904e-05, 5.65682e-05, 5.07692e-05, 4.58104e-05, 4.15062e-05, 3.77282e-05, 3.43844e-05, 3.14056e-05, 2.8738e-05, 2.63398e-05, 
			0.00027341, 0.000168354, 0.000127207, 0.000103791, 8.8059e-05, 7.64474e-05, 6.73582e-05, 5.99558e-05, 5.37588e-05, 4.8467e-05, 4.3882e-05, 3.98654e-05, 3.6317e-05, 3.31616e-05, 3.03404e-05, 2.78072e-05, 
			0.000280244, 0.000174319, 0.000132228, 0.000108038, 9.16828e-05, 7.95742e-05, 7.00738e-05, 6.23346e-05, 5.58596e-05, 5.03366e-05, 4.55576e-05, 4.13768e-05, 3.76884e-05, 3.44122e-05, 3.14862e-05, 2.88612e-05, 
			0.00028535, 0.000178717, 0.000135946, 0.000111183, 9.43656e-05, 8.18806e-05, 7.2079e-05, 6.40944e-05, 5.74178e-05, 5.1728e-05, 4.68098e-05, 4.25114e-05, 3.87228e-05, 3.536e-05, 3.2359e-05, 2.9668e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.6165e-05, 1.98818e-05, 2.29774e-05, 2.57034e-05, 2.81934e-05, 3.05177e-05, 3.27171e-05, 3.48132e-05, 3.68167e-05, 3.87326e-05, 4.05629e-05, 4.23077e-05, 4.39668e-05, 4.55406e-05, 4.70296e-05, 4.84348e-05, 
			1.8824e-05, 2.22794e-05, 2.53638e-05, 2.81906e-05, 3.0835e-05, 3.33388e-05, 3.57275e-05, 3.80126e-05, 4.02003e-05, 4.22928e-05, 4.42901e-05, 4.61923e-05, 4.7999e-05, 4.97108e-05, 5.13286e-05, 5.28539e-05, 
			2.1515e-05, 2.48756e-05, 2.79864e-05, 3.09056e-05, 3.36726e-05, 3.6314e-05, 3.8843e-05, 4.12659e-05, 4.35858e-05, 4.58027e-05, 4.79167e-05, 4.99273e-05, 5.18349e-05, 5.36404e-05, 5.53452e-05, 5.69514e-05, 
			2.4317e-05, 2.76558e-05, 3.08178e-05, 3.38242e-05, 3.66954e-05, 3.94464e-05, 4.20848e-05, 4.46126e-05, 4.70314e-05, 4.93402e-05, 5.15391e-05, 5.36282e-05, 5.56082e-05, 5.74807e-05, 5.92475e-05, 6.0911e-05, 
			2.7244e-05, 3.06166e-05, 3.38394e-05, 3.69246e-05, 3.98844e-05, 4.2724e-05, 4.54476e-05, 4.80564e-05, 5.05492e-05, 5.29264e-05, 5.51892e-05, 5.73361e-05, 5.93697e-05, 6.12914e-05, 6.3104e-05, 6.48099e-05
		)
}

CapTable	"metal6_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000243792, 0.000144911, 0.000107834, 8.73026e-05, 7.37586e-05, 6.38826e-05, 5.6206e-05, 4.99754e-05, 4.47636e-05, 4.03088e-05, 3.64408e-05, 3.30434e-05, 3.00336e-05, 2.73494e-05, 2.49434e-05, 2.27782e-05, 
			0.00026163, 0.000158401, 0.00011863, 9.62604e-05, 8.1346e-05, 7.04042e-05, 6.18722e-05, 5.49402e-05, 4.9144e-05, 4.41964e-05, 3.9909e-05, 3.61514e-05, 3.28298e-05, 2.9874e-05, 2.723e-05, 2.4855e-05, 
			0.000272174, 0.000166953, 0.000125683, 0.000102181, 8.63944e-05, 7.4753e-05, 6.5652e-05, 5.82508e-05, 5.20632e-05, 4.67864e-05, 4.22192e-05, 3.82222e-05, 3.4694e-05, 3.15586e-05, 2.87574e-05, 2.6244e-05, 
			0.000278814, 0.000172757, 0.000130574, 0.000106325, 8.99366e-05, 7.78136e-05, 6.83122e-05, 6.05804e-05, 5.41176e-05, 4.86096e-05, 4.38468e-05, 3.96826e-05, 3.60104e-05, 3.275e-05, 2.98394e-05, 2.72298e-05, 
			0.000283768, 0.000177036, 0.000134202, 0.000109402, 9.25686e-05, 8.008e-05, 7.02834e-05, 6.23086e-05, 5.56438e-05, 4.99666e-05, 4.50608e-05, 4.07744e-05, 3.6997e-05, 3.36454e-05, 3.06548e-05, 2.79746e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.4396e-05, 1.75076e-05, 2.0039e-05, 2.22436e-05, 2.42536e-05, 2.61435e-05, 2.79522e-05, 2.97001e-05, 3.13959e-05, 3.30419e-05, 3.46365e-05, 3.61773e-05, 3.76609e-05, 3.9085e-05, 4.0447e-05, 4.1746e-05, 
			1.6405e-05, 1.92152e-05, 2.1693e-05, 2.39598e-05, 2.60916e-05, 2.81312e-05, 3.01033e-05, 3.20164e-05, 3.38741e-05, 3.56752e-05, 3.74166e-05, 3.9095e-05, 4.07077e-05, 4.2252e-05, 4.37262e-05, 4.51299e-05, 
			1.8396e-05, 2.10852e-05, 2.35678e-05, 2.59062e-05, 2.81452e-05, 3.03082e-05, 3.24064e-05, 3.44446e-05, 3.64209e-05, 3.83329e-05, 4.01774e-05, 4.1951e-05, 4.36511e-05, 4.52763e-05, 4.68254e-05, 4.82984e-05, 
			2.0466e-05, 2.31194e-05, 2.56416e-05, 2.80592e-05, 3.03942e-05, 3.26584e-05, 3.4858e-05, 3.69914e-05, 3.90567e-05, 4.10499e-05, 4.29683e-05, 4.48092e-05, 4.65709e-05, 4.82524e-05, 4.98531e-05, 5.13738e-05, 
			2.2644e-05, 2.53242e-05, 2.79032e-05, 3.03976e-05, 3.28158e-05, 3.51642e-05, 3.74426e-05, 3.96488e-05, 4.17798e-05, 4.38327e-05, 4.58048e-05, 4.76944e-05, 4.95e-05, 5.12217e-05, 5.28593e-05, 5.4414e-05
		)
}

CapTable	"metal6_C_LATERAL_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000245188, 0.000146684, 0.00010992, 8.96424e-05, 7.62964e-05, 6.65678e-05, 5.89954e-05, 5.28328e-05, 4.76592e-05, 4.3219e-05, 3.93474e-05, 3.59322e-05, 3.28938e-05, 3.01728e-05, 2.77242e-05, 2.55118e-05, 
			0.000263468, 0.000160595, 0.000121112, 9.89652e-05, 8.42164e-05, 7.33918e-05, 6.49366e-05, 5.80496e-05, 5.22734e-05, 4.73266e-05, 4.30256e-05, 3.92436e-05, 3.58892e-05, 3.28944e-05, 3.02068e-05, 2.77844e-05, 
			0.000274426, 0.00016952, 0.000128493, 0.000105173, 8.95138e-05, 7.79568e-05, 6.89066e-05, 6.15302e-05, 5.53482e-05, 5.00622e-05, 4.54752e-05, 4.14502e-05, 3.7888e-05, 3.47138e-05, 3.18702e-05, 2.93112e-05, 
			0.00028143, 0.000175635, 0.000133646, 0.000109535, 9.32388e-05, 8.11726e-05, 7.1701e-05, 6.39796e-05, 5.75126e-05, 5.199e-05, 4.72048e-05, 4.30124e-05, 3.93074e-05, 3.60104e-05, 3.30604e-05, 3.04082e-05, 
			0.000286684, 0.00018016, 0.000137473, 0.000112773, 9.60022e-05, 8.35488e-05, 7.37674e-05, 6.57932e-05, 5.91192e-05, 5.34252e-05, 4.84972e-05, 4.41844e-05, 4.03772e-05, 3.69924e-05, 3.3966e-05, 3.12472e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.5198e-05, 1.85842e-05, 2.13702e-05, 2.38124e-05, 2.60424e-05, 2.81347e-05, 3.01293e-05, 3.2046e-05, 3.38939e-05, 3.56755e-05, 3.73903e-05, 3.90361e-05, 4.06111e-05, 4.21133e-05, 4.35415e-05, 4.48954e-05, 
			1.7488e-05, 2.05866e-05, 2.3337e-05, 2.5859e-05, 2.8227e-05, 3.04848e-05, 3.26558e-05, 3.47498e-05, 3.67705e-05, 3.87172e-05, 4.05875e-05, 4.23796e-05, 4.40908e-05, 4.572e-05, 4.72668e-05, 4.87309e-05, 
			1.9782e-05, 2.27716e-05, 2.5538e-05, 2.81426e-05, 3.0627e-05, 3.30166e-05, 3.53218e-05, 3.75473e-05, 3.96925e-05, 4.17556e-05, 4.3734e-05, 4.56257e-05, 4.7429e-05, 4.9143e-05, 5.07681e-05, 5.23052e-05, 
			2.2174e-05, 2.51348e-05, 2.79486e-05, 3.0638e-05, 3.32242e-05, 3.57198e-05, 3.81302e-05, 4.04544e-05, 4.26917e-05, 4.48392e-05, 4.68947e-05, 4.88568e-05, 5.07242e-05, 5.24971e-05, 5.41763e-05, 5.57632e-05, 
			2.4686e-05, 2.76792e-05, 3.05534e-05, 3.33222e-05, 3.59954e-05, 3.85764e-05, 4.1068e-05, 4.34676e-05, 4.57722e-05, 4.79815e-05, 5.00926e-05, 5.21051e-05, 5.40184e-05, 5.58335e-05, 5.75512e-05, 5.9174e-05
		)
}

CapTable	"metal5_C_LATERALMAX" {
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

CapTable	"metal5_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal5_C_LATERAL_12MAX" {
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

CapTable	"metal5_C_LATERAL_22MAX" {
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

CapTable	"metal5_C_BOTTOM_GPMAX" {
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

CapTable	"metal5_C_TOP_GPMAX" {
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

CapTable	"metal5_C_TOP_GP_21MAX" {
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

CapTable	"metal5_C_LATERAL_21MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_22MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.26156e-05, 1.53252e-05, 1.74586e-05, 1.92247e-05, 2.07394e-05, 2.20704e-05, 2.32604e-05, 2.43382e-05, 2.53234e-05, 2.62309e-05, 2.70729e-05, 2.78582e-05, 2.85946e-05, 2.92884e-05, 2.99448e-05, 3.05687e-05, 
			1.4533e-05, 1.69119e-05, 1.89118e-05, 2.06336e-05, 2.21482e-05, 2.35015e-05, 2.47256e-05, 2.58436e-05, 2.68728e-05, 2.7827e-05, 2.87165e-05, 2.95506e-05, 3.03362e-05, 3.10801e-05, 3.17868e-05, 3.24613e-05, 
			1.6272e-05, 1.84486e-05, 2.03464e-05, 2.20212e-05, 2.35175e-05, 2.48707e-05, 2.61057e-05, 2.7242e-05, 2.82943e-05, 2.92752e-05, 3.01945e-05, 3.10606e-05, 3.18799e-05, 3.26589e-05, 3.3402e-05, 3.41139e-05, 
			1.7902e-05, 1.99447e-05, 2.17604e-05, 2.339e-05, 2.48632e-05, 2.62068e-05, 2.74427e-05, 2.85871e-05, 2.96529e-05, 3.06516e-05, 3.15918e-05, 3.24815e-05, 3.33269e-05, 3.41338e-05, 3.49066e-05, 3.56493e-05, 
			1.9474e-05, 2.14032e-05, 2.31508e-05, 2.47364e-05, 2.6184e-05, 2.75152e-05, 2.87474e-05, 2.98948e-05, 3.0969e-05, 3.19804e-05, 3.29371e-05, 3.3846e-05, 3.47131e-05, 3.55436e-05, 3.6342e-05, 3.71118e-05
		)
}

CapTable	"metal5_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000186258, 0.000112294, 8.49534e-05, 7.00948e-05, 6.05006e-05, 5.36636e-05, 4.84734e-05, 4.4357e-05, 4.09864e-05, 3.81582e-05, 3.57382e-05, 3.36348e-05, 3.17818e-05, 3.0131e-05, 2.86458e-05, 2.72976e-05, 
			0.00020161, 0.000124504, 9.51972e-05, 7.9013e-05, 6.8438e-05, 6.0848e-05, 5.50584e-05, 5.04514e-05, 4.66694e-05, 4.34892e-05, 4.07636e-05, 3.83904e-05, 3.62968e-05, 3.44284e-05, 3.2745e-05, 3.12148e-05, 
			0.000211434, 0.000132946, 0.00010257, 8.55778e-05, 7.43974e-05, 6.63186e-05, 6.0129e-05, 5.51864e-05, 5.11174e-05, 4.76872e-05, 4.47404e-05, 4.2169e-05, 3.9896e-05, 3.78636e-05, 3.6029e-05, 3.43584e-05, 
			0.000218694, 0.000139437, 0.000108394, 9.0868e-05, 7.92548e-05, 7.08266e-05, 6.43432e-05, 5.91488e-05, 5.486e-05, 5.1235e-05, 4.81134e-05, 4.53834e-05, 4.29648e-05, 4.07978e-05, 3.88378e-05, 3.705e-05, 
			0.000224006, 0.000144583, 0.00011314, 9.52556e-05, 8.3336e-05, 7.46518e-05, 6.79468e-05, 6.25558e-05, 5.80922e-05, 5.43098e-05, 5.10446e-05, 4.81826e-05, 4.56416e-05, 4.33606e-05, 4.12932e-05, 3.9404e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.7774e-06, 8.8672e-06, 1.07287e-05, 1.23871e-05, 1.38555e-05, 1.5143e-05, 1.62621e-05, 1.72249e-05, 1.80575e-05, 1.8767e-05, 1.93647e-05, 1.98747e-05, 2.03047e-05, 2.06652e-05, 2.09692e-05, 2.12243e-05, 
			8.7917e-06, 1.09003e-05, 1.28426e-05, 1.46035e-05, 1.61772e-05, 1.75701e-05, 1.87804e-05, 1.98346e-05, 2.07357e-05, 2.15112e-05, 2.21708e-05, 2.27276e-05, 2.32e-05, 2.3598e-05, 2.39324e-05, 2.42136e-05, 
			1.08848e-05, 1.30307e-05, 1.50344e-05, 1.68637e-05, 1.85008e-05, 1.99555e-05, 2.12295e-05, 2.23302e-05, 2.32824e-05, 2.40973e-05, 2.47903e-05, 2.53784e-05, 2.5877e-05, 2.62971e-05, 2.66513e-05, 2.6947e-05, 
			1.30533e-05, 1.52401e-05, 1.72918e-05, 1.91655e-05, 2.08536e-05, 2.23453e-05, 2.36573e-05, 2.47972e-05, 2.57764e-05, 2.66179e-05, 2.73345e-05, 2.79433e-05, 2.84594e-05, 2.88953e-05, 2.92575e-05, 2.95674e-05, 
			1.52965e-05, 1.75054e-05, 1.95904e-05, 2.15012e-05, 2.32169e-05, 2.47404e-05, 2.60764e-05, 2.72361e-05, 2.82377e-05, 2.90956e-05, 2.98281e-05, 3.04509e-05, 3.09721e-05, 3.1419e-05, 3.1802e-05, 3.21191e-05
		)
}

CapTable	"metal5_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.87612e-05, 2.44712e-05, 2.94835e-05, 3.38858e-05, 3.77276e-05, 4.10552e-05, 4.3915e-05, 4.63586e-05, 4.84292e-05, 5.01805e-05, 5.16585e-05, 5.28991e-05, 5.39406e-05, 5.48122e-05, 5.5541e-05, 5.61512e-05, 
			2.47779e-05, 3.06757e-05, 3.598e-05, 4.06841e-05, 4.48094e-05, 4.83931e-05, 5.14796e-05, 5.41174e-05, 5.63643e-05, 5.8266e-05, 5.98723e-05, 6.12252e-05, 6.23578e-05, 6.33099e-05, 6.41086e-05, 6.47788e-05, 
			3.11454e-05, 3.72001e-05, 4.26812e-05, 4.75585e-05, 5.18438e-05, 5.55691e-05, 5.87801e-05, 6.15342e-05, 6.38804e-05, 6.58683e-05, 6.75482e-05, 6.89635e-05, 7.01547e-05, 7.11559e-05, 7.19967e-05, 7.27016e-05, 
			3.77967e-05, 4.39659e-05, 4.95564e-05, 5.45359e-05, 5.89138e-05, 6.27275e-05, 6.60205e-05, 6.8842e-05, 7.125e-05, 7.32897e-05, 7.50174e-05, 7.64758e-05, 7.77027e-05, 7.87358e-05, 7.96081e-05, 8.03336e-05, 
			4.46523e-05, 5.08802e-05, 5.65308e-05, 6.15692e-05, 6.60081e-05, 6.98748e-05, 7.32136e-05, 7.60785e-05, 7.85229e-05, 8.06002e-05, 8.23598e-05, 8.38467e-05, 8.51022e-05, 8.6153e-05, 8.70321e-05, 8.77742e-05
		)
}

CapTable	"metal5_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176221, 9.90486e-05, 6.89718e-05, 5.18454e-05, 4.04288e-05, 3.21768e-05, 2.5933e-05, 2.10756e-05, 1.72236e-05, 1.41348e-05, 1.16396e-05, 9.606e-06, 7.94296e-06, 6.57964e-06, 5.45626e-06, 4.52924e-06, 
			0.000187373, 0.000107018, 7.49584e-05, 5.65164e-05, 4.41484e-05, 3.51808e-05, 2.83868e-05, 2.30896e-05, 1.88913e-05, 1.55171e-05, 1.27847e-05, 1.056e-05, 8.73856e-06, 7.24164e-06, 6.00806e-06, 4.98834e-06, 
			0.000192984, 0.000111339, 7.83124e-05, 5.91668e-05, 4.62954e-05, 3.69334e-05, 2.98274e-05, 2.42856e-05, 1.98812e-05, 1.63424e-05, 1.34755e-05, 1.11361e-05, 9.21932e-06, 7.64298e-06, 6.342e-06, 5.26738e-06, 
			0.000196143, 0.000113895, 8.03538e-05, 6.08156e-05, 4.76326e-05, 3.80412e-05, 3.07452e-05, 2.50478e-05, 2.05196e-05, 1.68774e-05, 1.39221e-05, 1.15099e-05, 9.5319e-06, 7.90292e-06, 6.55844e-06, 5.447e-06, 
			0.000197553, 0.000115338, 8.15698e-05, 6.18206e-05, 4.8468e-05, 3.87368e-05, 3.1331e-05, 2.55404e-05, 2.09324e-05, 1.72232e-05, 1.42121e-05, 1.17514e-05, 9.73368e-06, 8.07202e-06, 6.69986e-06, 5.56372e-06
		)
}

CapTable	"metal5_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176901, 0.0001, 7.01774e-05, 5.32734e-05, 4.2039e-05, 3.39244e-05, 2.77738e-05, 2.29636e-05, 1.91333e-05, 1.60272e-05, 1.34869e-05, 1.1399e-05, 9.659e-06, 8.2078e-06, 6.994e-06, 5.97022e-06, 
			0.000188415, 0.000108364, 7.65804e-05, 5.83764e-05, 4.6195e-05, 3.73668e-05, 3.06546e-05, 2.54026e-05, 2.11982e-05, 1.77975e-05, 1.50016e-05, 1.26925e-05, 1.07732e-05, 9.16966e-06, 7.82142e-06, 6.6842e-06, 
			0.000194426, 0.000113102, 8.03612e-05, 6.1453e-05, 4.87586e-05, 3.95276e-05, 3.24896e-05, 2.69648e-05, 2.2545e-05, 1.89488e-05, 1.59973e-05, 1.35556e-05, 1.15197e-05, 9.81492e-06, 8.37998e-06, 7.16946e-06, 
			0.000198008, 0.000116081, 8.28236e-05, 6.35078e-05, 5.04964e-05, 4.10048e-05, 3.37652e-05, 2.80648e-05, 2.34914e-05, 1.97712e-05, 1.67126e-05, 1.41758e-05, 1.20596e-05, 1.02835e-05, 8.78892e-06, 7.52544e-06, 
			0.000199846, 0.000117941, 8.44456e-05, 6.49034e-05, 5.1692e-05, 4.20486e-05, 3.46672e-05, 2.88514e-05, 2.41796e-05, 2.0371e-05, 1.72352e-05, 1.46309e-05, 1.24571e-05, 1.0632e-05, 9.09484e-06, 7.79142e-06
		)
}

CapTable	"metal5_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.27314e-05, 1.54714e-05, 1.76346e-05, 1.94349e-05, 2.09905e-05, 2.23707e-05, 2.36184e-05, 2.47612e-05, 2.5818e-05, 2.68015e-05, 2.77215e-05, 2.85856e-05, 2.93992e-05, 3.0167e-05, 3.08931e-05, 3.15807e-05, 
			1.4672e-05, 1.70822e-05, 1.91194e-05, 2.08879e-05, 2.24592e-05, 2.38795e-05, 2.51803e-05, 2.63826e-05, 2.75017e-05, 2.8549e-05, 2.95327e-05, 3.04593e-05, 3.13343e-05, 3.2162e-05, 3.29464e-05, 3.36907e-05, 
			1.6437e-05, 1.86546e-05, 2.06036e-05, 2.23408e-05, 2.39127e-05, 2.53524e-05, 2.66827e-05, 2.79209e-05, 2.90794e-05, 3.01675e-05, 3.11927e-05, 3.21611e-05, 3.30777e-05, 3.39463e-05, 3.47706e-05, 3.55538e-05, 
			1.8109e-05, 2.0206e-05, 2.20912e-05, 2.38024e-05, 2.53704e-05, 2.68192e-05, 2.81678e-05, 2.94293e-05, 3.06144e-05, 3.17311e-05, 3.27859e-05, 3.37845e-05, 3.4731e-05, 3.56295e-05, 3.64836e-05, 3.72961e-05, 
			1.9741e-05, 2.17456e-05, 2.35816e-05, 2.52692e-05, 2.68306e-05, 2.82842e-05, 2.96435e-05, 3.09205e-05, 3.21239e-05, 3.32607e-05, 3.43368e-05, 3.53572e-05, 3.63261e-05, 3.72472e-05, 3.81238e-05, 3.8959e-05
		)
}

CapTable	"metal5_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000186155, 0.000112156, 8.47734e-05, 6.9863e-05, 6.02056e-05, 5.32946e-05, 4.80214e-05, 4.38158e-05, 4.0352e-05, 3.743e-05, 3.49186e-05, 3.2728e-05, 3.07946e-05, 2.90716e-05, 2.75234e-05, 2.6123e-05, 
			0.000201468, 0.000124314, 9.49436e-05, 7.86816e-05, 6.80152e-05, 6.03228e-05, 5.44228e-05, 4.97014e-05, 4.58044e-05, 4.2512e-05, 3.96798e-05, 3.72084e-05, 3.50266e-05, 3.3082e-05, 3.13348e-05, 2.97542e-05, 
			0.000211236, 0.000132674, 0.000102206, 8.51072e-05, 7.38064e-05, 6.55978e-05, 5.9274e-05, 5.41968e-05, 4.99964e-05, 4.6442e-05, 4.33808e-05, 4.0707e-05, 3.83448e-05, 3.62384e-05, 3.43452e-05, 3.2632e-05, 
			0.000218404, 0.000139045, 0.000107879, 9.02156e-05, 7.84546e-05, 6.98732e-05, 6.32364e-05, 5.7893e-05, 5.34628e-05, 4.97078e-05, 4.64698e-05, 4.36388e-05, 4.1136e-05, 3.89026e-05, 3.6894e-05, 3.50756e-05, 
			0.000223588, 0.000144027, 0.000112431, 9.43818e-05, 8.22914e-05, 7.34358e-05, 6.65642e-05, 6.10158e-05, 5.6407e-05, 5.24948e-05, 4.91172e-05, 4.61614e-05, 4.3546e-05, 4.12104e-05, 3.91086e-05, 3.72044e-05
		)
}

CapTable	"metal5_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000186793, 0.000112963, 8.57258e-05, 7.09428e-05, 6.13984e-05, 5.45882e-05, 4.94046e-05, 4.52786e-05, 4.18852e-05, 3.9025e-05, 3.65674e-05, 3.44234e-05, 3.25298e-05, 3.08406e-05, 2.93208e-05, 2.79436e-05, 
			0.000202292, 0.000125302, 9.6078e-05, 7.99464e-05, 6.93964e-05, 6.18078e-05, 5.60002e-05, 5.13604e-05, 4.75352e-05, 4.43058e-05, 4.15282e-05, 3.91036e-05, 3.69618e-05, 3.50508e-05, 3.33318e-05, 3.17746e-05, 
			0.00021224, 0.000133841, 0.000103518, 8.65488e-05, 7.53642e-05, 6.72592e-05, 6.1027e-05, 5.60304e-05, 5.19008e-05, 4.84078e-05, 4.53994e-05, 4.2771e-05, 4.04474e-05, 3.83734e-05, 3.6507e-05, 3.4816e-05, 
			0.000219588, 0.000140387, 0.000109363, 9.1828e-05, 8.01806e-05, 7.17e-05, 6.51522e-05, 5.98864e-05, 5.55242e-05, 5.18278e-05, 4.86402e-05, 4.58524e-05, 4.33858e-05, 4.11828e-05, 3.91994e-05, 3.74016e-05, 
			0.000224948, 0.000145541, 0.000114083, 9.61572e-05, 8.41762e-05, 7.54174e-05, 6.86306e-05, 6.31562e-05, 5.86114e-05, 5.47546e-05, 5.14242e-05, 4.85084e-05, 4.59268e-05, 4.36196e-05, 4.1541e-05, 3.9656e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.1819e-06, 6.7424e-06, 8.124e-06, 9.3486e-06, 1.04337e-05, 1.13874e-05, 1.22202e-05, 1.29519e-05, 1.3578e-05, 1.41277e-05, 1.46011e-05, 1.50012e-05, 1.53526e-05, 1.56542e-05, 1.59103e-05, 1.61336e-05, 
			6.6512e-06, 8.2062e-06, 9.6326e-06, 1.09248e-05, 1.20804e-05, 1.31042e-05, 1.40119e-05, 1.47992e-05, 1.54924e-05, 1.60851e-05, 1.66069e-05, 1.70572e-05, 1.74456e-05, 1.7777e-05, 1.80658e-05, 1.83136e-05, 
			8.1569e-06, 9.722e-06, 1.11813e-05, 1.25127e-05, 1.37188e-05, 1.47853e-05, 1.57375e-05, 1.65739e-05, 1.72954e-05, 1.79319e-05, 1.84835e-05, 1.89579e-05, 1.93718e-05, 1.97285e-05, 2.00344e-05, 2.02993e-05, 
			9.7037e-06, 1.12868e-05, 1.277e-05, 1.41382e-05, 1.53678e-05, 1.64752e-05, 1.74486e-05, 1.83133e-05, 1.90704e-05, 1.97296e-05, 2.03002e-05, 2.07993e-05, 2.12296e-05, 2.15998e-05, 2.19218e-05, 2.21989e-05, 
			1.12844e-05, 1.28822e-05, 1.43827e-05, 1.57743e-05, 1.70349e-05, 1.81566e-05, 1.91601e-05, 2.00444e-05, 2.08164e-05, 2.14949e-05, 2.20839e-05, 2.2594e-05, 2.30377e-05, 2.34219e-05, 2.3754e-05, 2.40275e-05
		)
}

CapTable	"metal5_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.94861e-05, 2.53134e-05, 3.03926e-05, 3.48385e-05, 3.8715e-05, 4.20808e-05, 4.49885e-05, 4.74863e-05, 4.96294e-05, 5.14619e-05, 5.30288e-05, 5.43665e-05, 5.55088e-05, 5.64819e-05, 5.73136e-05, 5.80235e-05, 
			2.55436e-05, 3.15072e-05, 3.6846e-05, 4.15698e-05, 4.57186e-05, 4.93352e-05, 5.24642e-05, 5.51667e-05, 5.74917e-05, 5.94862e-05, 6.11968e-05, 6.26591e-05, 6.39085e-05, 6.4981e-05, 6.58971e-05, 6.66836e-05, 
			3.19069e-05, 3.79908e-05, 4.34815e-05, 4.83653e-05, 5.26596e-05, 5.64151e-05, 5.96749e-05, 6.24963e-05, 6.49326e-05, 6.70253e-05, 6.88192e-05, 7.03625e-05, 7.16835e-05, 7.28166e-05, 7.37916e-05, 7.46252e-05, 
			3.85143e-05, 4.46893e-05, 5.02714e-05, 5.5242e-05, 5.96298e-05, 6.3473e-05, 6.68202e-05, 6.97199e-05, 7.22242e-05, 7.43792e-05, 7.62382e-05, 7.78329e-05, 7.92028e-05, 8.03837e-05, 8.13943e-05, 8.22637e-05, 
			4.531e-05, 5.15164e-05, 5.71467e-05, 6.21723e-05, 6.66171e-05, 7.05198e-05, 7.39197e-05, 7.68682e-05, 7.9424e-05, 8.16271e-05, 8.35259e-05, 8.51641e-05, 8.65692e-05, 8.77781e-05, 8.88142e-05, 8.97231e-05
		)
}

CapTable	"metal5_C_TOP_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.00075e-05, 2.59613e-05, 3.11433e-05, 3.5668e-05, 3.96148e-05, 4.30424e-05, 4.60042e-05, 4.85584e-05, 5.07518e-05, 5.26364e-05, 5.42535e-05, 5.56376e-05, 5.68291e-05, 5.78498e-05, 5.87259e-05, 5.94807e-05, 
			2.61705e-05, 3.22477e-05, 3.76801e-05, 4.24834e-05, 4.67018e-05, 5.03819e-05, 5.35706e-05, 5.6331e-05, 5.87138e-05, 6.07651e-05, 6.25307e-05, 6.40501e-05, 6.53557e-05, 6.64812e-05, 6.74524e-05, 6.82913e-05, 
			3.26298e-05, 3.88186e-05, 4.43978e-05, 4.93558e-05, 5.37222e-05, 5.75401e-05, 6.08659e-05, 6.375e-05, 6.62463e-05, 6.84028e-05, 7.02603e-05, 7.18649e-05, 7.32489e-05, 7.44447e-05, 7.54787e-05, 7.63711e-05, 
			3.93287e-05, 4.56015e-05, 5.12681e-05, 5.63138e-05, 6.0772e-05, 6.46832e-05, 6.80951e-05, 7.10617e-05, 7.36347e-05, 7.58588e-05, 7.77847e-05, 7.94507e-05, 8.08896e-05, 8.21363e-05, 8.3214e-05, 8.41474e-05, 
			4.62094e-05, 5.25104e-05, 5.82195e-05, 6.3325e-05, 6.78418e-05, 7.18122e-05, 7.5284e-05, 7.83049e-05, 8.09316e-05, 8.32099e-05, 8.5185e-05, 8.6897e-05, 8.83769e-05, 8.96594e-05, 9.07656e-05, 9.17289e-05
		)
}

CapTable	"metal5_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177089, 0.000100263, 7.05106e-05, 5.36702e-05, 4.24912e-05, 3.44198e-05, 2.8297e-05, 2.35106e-05, 1.96831e-05, 1.65855e-05, 1.40369e-05, 1.19393e-05, 1.01781e-05, 8.7019e-06, 7.45856e-06, 6.40552e-06, 
			0.000188698, 0.00010873, 7.7025e-05, 5.88896e-05, 4.67654e-05, 3.79814e-05, 3.12992e-05, 2.60666e-05, 2.1867e-05, 1.84532e-05, 1.56554e-05, 1.33238e-05, 1.13767e-05, 9.7397e-06, 8.35936e-06, 7.1845e-06, 
			0.000194814, 0.000113578, 8.09186e-05, 6.2077e-05, 4.94418e-05, 4.02454e-05, 3.32412e-05, 2.77278e-05, 2.33124e-05, 1.97029e-05, 1.67293e-05, 1.42567e-05, 1.21865e-05, 1.04452e-05, 8.96776e-06, 7.7128e-06, 
			0.000198507, 0.000116669, 8.34926e-05, 6.42442e-05, 5.12862e-05, 4.18296e-05, 3.46028e-05, 2.89188e-05, 2.4336e-05, 2.05956e-05, 1.75066e-05, 1.49364e-05, 1.27777e-05, 1.09553e-05, 9.4113e-06, 8.09688e-06, 
			0.000200454, 0.00011864, 8.52154e-05, 6.57422e-05, 5.2576e-05, 4.29666e-05, 3.55958e-05, 2.97762e-05, 2.50862e-05, 2.12506e-05, 1.80808e-05, 1.54325e-05, 1.32092e-05, 1.13309e-05, 9.73822e-06, 8.37944e-06
		)
}

CapTable	"metal5_C_BOTTOM_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.19328e-05, 1.44238e-05, 1.63652e-05, 1.79631e-05, 1.93327e-05, 2.05405e-05, 2.16281e-05, 2.26217e-05, 2.35396e-05, 2.43941e-05, 2.51946e-05, 2.59478e-05, 2.66593e-05, 2.73328e-05, 2.79721e-05, 2.858e-05, 
			1.3629e-05, 1.5791e-05, 1.7597e-05, 1.91514e-05, 2.05226e-05, 2.1756e-05, 2.2882e-05, 2.39211e-05, 2.48881e-05, 2.57935e-05, 2.66455e-05, 2.74501e-05, 2.82121e-05, 2.89356e-05, 2.96235e-05, 3.02787e-05, 
			1.5148e-05, 1.71114e-05, 1.88222e-05, 2.03362e-05, 2.1698e-05, 2.29403e-05, 2.40858e-05, 2.51513e-05, 2.61484e-05, 2.70862e-05, 2.79719e-05, 2.88105e-05, 2.96067e-05, 3.03639e-05, 3.10852e-05, 3.17731e-05, 
			1.6564e-05, 1.8403e-05, 2.00436e-05, 2.1523e-05, 2.28734e-05, 2.41177e-05, 2.52743e-05, 2.63564e-05, 2.73735e-05, 2.83339e-05, 2.92431e-05, 3.0106e-05, 3.09269e-05, 3.17089e-05, 3.24549e-05, 3.31673e-05, 
			1.7933e-05, 1.96736e-05, 2.12596e-05, 2.27108e-05, 2.40498e-05, 2.52926e-05, 2.64549e-05, 2.75472e-05, 2.85783e-05, 2.9554e-05, 3.04802e-05, 3.13611e-05, 3.22002e-05, 3.30006e-05, 3.37653e-05, 3.44963e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.12872e-05, 1.3585e-05, 1.53554e-05, 1.68004e-05, 1.80289e-05, 1.91058e-05, 2.00708e-05, 2.09493e-05, 2.17593e-05, 2.25125e-05, 2.32182e-05, 2.38824e-05, 2.45107e-05, 2.51071e-05, 2.56747e-05, 2.62161e-05, 
			1.28e-05, 1.47716e-05, 1.6404e-05, 1.77966e-05, 1.90167e-05, 2.01083e-05, 2.1101e-05, 2.20142e-05, 2.28629e-05, 2.3657e-05, 2.44044e-05, 2.51112e-05, 2.57817e-05, 2.64198e-05, 2.70286e-05, 2.76105e-05, 
			1.4135e-05, 1.59094e-05, 1.74408e-05, 1.87872e-05, 1.99904e-05, 2.10833e-05, 2.20877e-05, 2.30198e-05, 2.38913e-05, 2.47108e-05, 2.54854e-05, 2.622e-05, 2.6919e-05, 2.75859e-05, 2.82231e-05, 2.88332e-05, 
			1.5363e-05, 1.70114e-05, 1.84688e-05, 1.97752e-05, 2.09608e-05, 2.20503e-05, 2.30599e-05, 2.40028e-05, 2.48891e-05, 2.57262e-05, 2.65198e-05, 2.72746e-05, 2.79943e-05, 2.86822e-05, 2.93408e-05, 2.99723e-05, 
			1.6542e-05, 1.8088e-05, 1.94868e-05, 2.07608e-05, 2.193e-05, 2.30134e-05, 2.40243e-05, 2.49737e-05, 2.58698e-05, 2.67191e-05, 2.75264e-05, 2.82959e-05, 2.90313e-05, 2.97353e-05, 3.04103e-05, 3.10583e-05
		)
}

CapTable	"metal5_C_LATERAL_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000187311, 0.000113612, 8.64866e-05, 7.1802e-05, 6.23456e-05, 5.56146e-05, 5.05028e-05, 4.64418e-05, 4.3107e-05, 4.02992e-05, 3.78882e-05, 3.57856e-05, 3.39282e-05, 3.227e-05, 3.07766e-05, 2.94216e-05, 
			0.00020295, 0.000126086, 9.6975e-05, 8.09444e-05, 7.04858e-05, 6.298e-05, 5.72472e-05, 5.26752e-05, 4.89106e-05, 4.57354e-05, 4.30058e-05, 4.06232e-05, 3.85178e-05, 3.6638e-05, 3.4945e-05, 3.3409e-05, 
			0.000213034, 0.000134759, 0.000104548, 8.76808e-05, 7.65886e-05, 6.85672e-05, 6.24104e-05, 5.74818e-05, 5.34128e-05, 4.99736e-05, 4.70124e-05, 4.4425e-05, 4.21364e-05, 4.00916e-05, 3.82494e-05, 3.65776e-05, 
			0.000220518, 0.000141438, 0.000110525, 9.30908e-05, 8.15352e-05, 7.31374e-05, 6.6664e-05, 6.1465e-05, 5.71618e-05, 5.35172e-05, 5.03746e-05, 4.76252e-05, 4.51912e-05, 4.3015e-05, 4.1053e-05, 3.92716e-05, 
			0.00022601, 0.000146723, 0.000115374, 9.75472e-05, 8.5656e-05, 7.69778e-05, 7.02632e-05, 6.48528e-05, 6.03644e-05, 5.65562e-05, 5.32678e-05, 5.03876e-05, 4.78352e-05, 4.55514e-05, 4.3491e-05, 4.16194e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.4213e-06, 5.7436e-06, 6.9101e-06, 7.9479e-06, 8.8625e-06, 9.6681e-06, 1.03792e-05, 1.09937e-05, 1.15341e-05, 1.19945e-05, 1.24016e-05, 1.27437e-05, 1.30496e-05, 1.3314e-05, 1.35427e-05, 1.37404e-05, 
			5.6541e-06, 6.9645e-06, 8.1669e-06, 9.255e-06, 1.02288e-05, 1.10917e-05, 1.18604e-05, 1.25253e-05, 1.31163e-05, 1.36312e-05, 1.40694e-05, 1.44599e-05, 1.47986e-05, 1.50923e-05, 1.53435e-05, 1.55645e-05, 
			6.9124e-06, 8.226e-06, 9.4516e-06, 1.05762e-05, 1.1585e-05, 1.24925e-05, 1.32889e-05, 1.39992e-05, 1.46103e-05, 1.51573e-05, 1.56334e-05, 1.60484e-05, 1.64086e-05, 1.67191e-05, 1.69925e-05, 1.72291e-05, 
			8.1983e-06, 9.5245e-06, 1.07663e-05, 1.1916e-05, 1.29488e-05, 1.38832e-05, 1.47141e-05, 1.54385e-05, 1.60853e-05, 1.66526e-05, 1.71487e-05, 1.75779e-05, 1.79557e-05, 1.82844e-05, 1.85697e-05, 1.88187e-05, 
			9.5136e-06, 1.08458e-05, 1.21091e-05, 1.32678e-05, 1.43292e-05, 1.52712e-05, 1.61222e-05, 1.68759e-05, 1.75392e-05, 1.81225e-05, 1.86302e-05, 1.90765e-05, 1.94659e-05, 1.98057e-05, 2.01042e-05, 2.03627e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.7748e-06, 4.9004e-06, 5.8914e-06, 6.7749e-06, 7.5553e-06, 8.2432e-06, 8.8445e-06, 9.3681e-06, 9.8313e-06, 1.02236e-05, 1.05743e-05, 1.08791e-05, 1.11315e-05, 1.13623e-05, 1.15632e-05, 1.17375e-05, 
			4.8145e-06, 5.9255e-06, 6.9455e-06, 7.869e-06, 8.6962e-06, 9.4371e-06, 1.00852e-05, 1.06621e-05, 1.11571e-05, 1.16003e-05, 1.19735e-05, 1.23122e-05, 1.26075e-05, 1.28645e-05, 1.30886e-05, 1.32792e-05, 
			5.8723e-06, 6.9866e-06, 8.0254e-06, 8.9756e-06, 9.8313e-06, 1.06046e-05, 1.128e-05, 1.18875e-05, 1.24224e-05, 1.28787e-05, 1.32909e-05, 1.36519e-05, 1.39666e-05, 1.42418e-05, 1.44781e-05, 1.46884e-05, 
			6.9491e-06, 8.069e-06, 9.127e-06, 1.00953e-05, 1.09806e-05, 1.17654e-05, 1.24755e-05, 1.30907e-05, 1.36475e-05, 1.41375e-05, 1.45683e-05, 1.4945e-05, 1.52703e-05, 1.556e-05, 1.5814e-05, 1.60359e-05, 
			8.0524e-06, 9.1742e-06, 1.02446e-05, 1.12238e-05, 1.21265e-05, 1.29392e-05, 1.36532e-05, 1.42992e-05, 1.48719e-05, 1.53768e-05, 1.58201e-05, 1.62045e-05, 1.65478e-05, 1.68479e-05, 1.71119e-05, 1.73424e-05
		)
}

CapTable	"metal5_C_TOP_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.05668e-05, 2.66766e-05, 3.19904e-05, 3.66302e-05, 4.06766e-05, 4.41898e-05, 4.72319e-05, 4.98561e-05, 5.21128e-05, 5.40544e-05, 5.57256e-05, 5.716e-05, 5.83938e-05, 5.9459e-05, 6.03763e-05, 6.11696e-05, 
			2.68803e-05, 3.31135e-05, 3.86799e-05, 4.36034e-05, 4.79278e-05, 5.1699e-05, 5.49764e-05, 5.78129e-05, 6.0267e-05, 6.23842e-05, 6.42063e-05, 6.57843e-05, 6.71443e-05, 6.83209e-05, 6.93387e-05, 7.02224e-05, 
			3.34935e-05, 3.98368e-05, 4.55532e-05, 5.06374e-05, 5.51145e-05, 5.90322e-05, 6.2448e-05, 6.54163e-05, 6.7989e-05, 7.02147e-05, 7.2141e-05, 7.38098e-05, 7.52541e-05, 7.65053e-05, 7.75932e-05, 7.85357e-05, 
			4.03535e-05, 4.67822e-05, 5.25868e-05, 5.77633e-05, 6.23372e-05, 6.63524e-05, 6.98613e-05, 7.29123e-05, 7.55703e-05, 7.78735e-05, 7.98736e-05, 8.1608e-05, 8.31129e-05, 8.44222e-05, 8.55579e-05, 8.6547e-05, 
			4.74006e-05, 5.386e-05, 5.97126e-05, 6.49486e-05, 6.95861e-05, 7.36654e-05, 7.72366e-05, 8.0354e-05, 8.30709e-05, 8.54338e-05, 8.7487e-05, 8.92746e-05, 9.08253e-05, 9.2175e-05, 9.33462e-05, 9.43695e-05
		)
}

CapTable	"metal5_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177158, 0.000100359, 7.06332e-05, 5.38156e-05, 4.26542e-05, 3.45978e-05, 2.84878e-05, 2.37072e-05, 1.98802e-05, 1.67813e-05, 1.42248e-05, 1.21056e-05, 1.03474e-05, 8.8541e-06, 7.5923e-06, 6.51978e-06, 
			0.000188798, 0.000108856, 7.71796e-05, 5.90676e-05, 4.6963e-05, 3.81888e-05, 3.15188e-05, 2.62804e-05, 2.20884e-05, 1.86662e-05, 1.58638e-05, 1.35149e-05, 1.15478e-05, 9.88886e-06, 8.48258e-06, 7.28826e-06, 
			0.000194944, 0.000113735, 8.11004e-05, 6.2283e-05, 4.96652e-05, 4.04792e-05, 3.3482e-05, 2.79662e-05, 2.35326e-05, 1.99276e-05, 1.69351e-05, 1.44403e-05, 1.23453e-05, 1.05749e-05, 9.0737e-06, 7.7889e-06, 
			0.000198666, 0.000116855, 8.36982e-05, 6.44724e-05, 5.15182e-05, 4.20792e-05, 3.48512e-05, 2.9168e-05, 2.45702e-05, 2.081e-05, 1.76971e-05, 1.5097e-05, 1.29138e-05, 1.10588e-05, 9.48114e-06, 8.13212e-06, 
			0.000200638, 0.000118848, 8.54428e-05, 6.59866e-05, 5.28274e-05, 4.32084e-05, 3.58482e-05, 3.00138e-05, 2.53032e-05, 2.14424e-05, 1.82409e-05, 1.55649e-05, 1.33059e-05, 1.13901e-05, 9.75888e-06, 8.36106e-06
		)
}

CapTable	"metal4_C_LATERAL_12MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal4_C_LATERAL_13MAX" {
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

CapTable	"metal4_C_LATERALMAX" {
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

CapTable	"metal4_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal4_C_TOP_GP_12MAX" {
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

CapTable	"metal4_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00017927, 0.000103302, 7.47964e-05, 5.91466e-05, 4.90006e-05, 4.17902e-05, 3.63668e-05, 3.21298e-05, 2.87292e-05, 2.59438e-05, 2.3626e-05, 2.16718e-05, 2.00058e-05, 1.85719e-05, 1.73271e-05, 1.62377e-05, 
			0.000190306, 0.000111825, 8.17712e-05, 6.51138e-05, 5.42438e-05, 4.64938e-05, 4.06518e-05, 3.60792e-05, 3.24024e-05, 2.93846e-05, 2.68674e-05, 2.47396e-05, 2.29206e-05, 2.13502e-05, 1.99824e-05, 1.87814e-05, 
			0.000196771, 0.000117385, 8.65968e-05, 6.9396e-05, 5.81368e-05, 5.00786e-05, 4.39898e-05, 3.92134e-05, 3.5364e-05, 3.2197e-05, 2.95486e-05, 2.73038e-05, 2.53792e-05, 2.37122e-05, 2.22556e-05, 2.09722e-05, 
			0.000201292, 0.000121529, 9.03572e-05, 7.28482e-05, 6.1342e-05, 5.309e-05, 4.684e-05, 4.1926e-05, 3.79564e-05, 3.46826e-05, 3.19378e-05, 2.96046e-05, 2.75984e-05, 2.58556e-05, 2.43278e-05, 2.29774e-05, 
			0.000204378, 0.000124769, 9.34338e-05, 7.57562e-05, 6.41018e-05, 5.57278e-05, 4.93704e-05, 4.43586e-05, 4.03008e-05, 3.69462e-05, 3.41262e-05, 3.1723e-05, 2.96506e-05, 2.78452e-05, 2.62576e-05, 2.48502e-05
		)
}

CapTable	"metal4_C_BOTTOM_GPMAX" {
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

CapTable	"metal4_C_TOP_GPMAX" {
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

CapTable	"metal4_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.90948e-06, 1.17022e-05, 1.42191e-05, 1.64987e-05, 1.85535e-05, 2.03927e-05, 2.20246e-05, 2.34591e-05, 2.47119e-05, 2.57975e-05, 2.67324e-05, 2.75335e-05, 2.82173e-05, 2.88002e-05, 2.92928e-05, 2.97101e-05, 
			1.15683e-05, 1.43985e-05, 1.70269e-05, 1.94383e-05, 2.16295e-05, 2.35956e-05, 2.53422e-05, 2.68811e-05, 2.82251e-05, 2.93908e-05, 3.03952e-05, 3.12571e-05, 3.19938e-05, 3.26204e-05, 3.3152e-05, 3.36021e-05, 
			1.43759e-05, 1.72598e-05, 1.99682e-05, 2.24679e-05, 2.47404e-05, 2.67837e-05, 2.86e-05, 3.01999e-05, 3.15968e-05, 3.28092e-05, 3.38557e-05, 3.47529e-05, 3.55198e-05, 3.61725e-05, 3.6726e-05, 3.71947e-05, 
			1.73065e-05, 2.02475e-05, 2.3014e-05, 2.5571e-05, 2.78992e-05, 2.99913e-05, 3.18511e-05, 3.34888e-05, 3.49202e-05, 3.61628e-05, 3.72344e-05, 3.8154e-05, 3.89394e-05, 3.96079e-05, 4.01782e-05, 4.06513e-05, 
			2.03455e-05, 2.33197e-05, 2.61274e-05, 2.87237e-05, 3.10872e-05, 3.32096e-05, 3.50969e-05, 3.676e-05, 3.82125e-05, 3.94734e-05, 4.05608e-05, 4.14938e-05, 4.22914e-05, 4.29683e-05, 4.35449e-05, 4.40326e-05
		)
}

CapTable	"metal4_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000175957, 9.8721e-05, 6.90092e-05, 5.22426e-05, 4.1095e-05, 3.30136e-05, 2.68558e-05, 2.20204e-05, 1.81499e-05, 1.50131e-05, 1.24491e-05, 1.03427e-05, 8.60378e-06, 7.16516e-06, 5.97224e-06, 4.98162e-06, 
			0.000185393, 0.000105501, 7.41074e-05, 5.62204e-05, 4.42574e-05, 3.5566e-05, 2.89382e-05, 2.37318e-05, 1.95644e-05, 1.61861e-05, 1.3426e-05, 1.11565e-05, 9.28386e-06, 7.73378e-06, 6.44852e-06, 5.3808e-06, 
			0.000190067, 0.000109165, 7.69492e-05, 5.84522e-05, 4.60534e-05, 3.7023e-05, 3.01318e-05, 2.4716e-05, 2.03808e-05, 1.68657e-05, 1.39928e-05, 1.16306e-05, 9.6809e-06, 8.0672e-06, 6.72858e-06, 5.6168e-06, 
			0.000192649, 0.000111296, 7.86464e-05, 5.98076e-05, 4.71426e-05, 3.79128e-05, 3.08638e-05, 2.53232e-05, 2.08854e-05, 1.72875e-05, 1.43459e-05, 1.19274e-05, 9.93078e-06, 8.27774e-06, 6.90646e-06, 5.76806e-06, 
			0.000193691, 0.000112456, 7.96192e-05, 6.06022e-05, 4.77904e-05, 3.84496e-05, 3.1311e-05, 2.56954e-05, 2.11968e-05, 1.7549e-05, 1.45664e-05, 1.21134e-05, 1.00884e-05, 8.41204e-06, 7.02122e-06, 5.8656e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.572e-05, 2.00591e-05, 2.37638e-05, 2.69884e-05, 2.98193e-05, 3.23133e-05, 3.45139e-05, 3.64573e-05, 3.8175e-05, 3.96953e-05, 4.10428e-05, 4.22399e-05, 4.33063e-05, 4.42588e-05, 4.51122e-05, 4.588e-05, 
			1.95708e-05, 2.37156e-05, 2.73908e-05, 3.06518e-05, 3.35459e-05, 3.61132e-05, 3.83898e-05, 4.04093e-05, 4.22014e-05, 4.3794e-05, 4.52117e-05, 4.64765e-05, 4.76078e-05, 4.86229e-05, 4.95366e-05, 5.03622e-05, 
			2.3393e-05, 2.74126e-05, 3.10372e-05, 3.4284e-05, 3.71825e-05, 3.97666e-05, 4.20677e-05, 4.41167e-05, 4.5942e-05, 4.75703e-05, 4.90253e-05, 5.03284e-05, 5.14988e-05, 5.25534e-05, 5.35067e-05, 5.43719e-05, 
			2.7183e-05, 3.11074e-05, 3.46678e-05, 3.78758e-05, 4.0754e-05, 4.3329e-05, 4.56304e-05, 4.7687e-05, 4.95258e-05, 5.11719e-05, 5.26483e-05, 5.39759e-05, 5.51728e-05, 5.62554e-05, 5.72381e-05, 5.81334e-05, 
			3.094e-05, 3.47582e-05, 3.82462e-05, 4.14038e-05, 4.42462e-05, 4.67982e-05, 4.90871e-05, 5.11398e-05, 5.29813e-05, 5.46355e-05, 5.61247e-05, 5.74682e-05, 5.86841e-05, 5.97879e-05, 6.07937e-05, 6.17133e-05
		)
}

CapTable	"metal4_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.72697e-05, 3.71409e-05, 4.51754e-05, 5.15047e-05, 5.63965e-05, 6.01296e-05, 6.29574e-05, 6.50881e-05, 6.66913e-05, 6.78901e-05, 6.87821e-05, 6.9465e-05, 6.99685e-05, 7.03484e-05, 7.05797e-05, 7.07879e-05, 
			3.96463e-05, 4.97203e-05, 5.79492e-05, 6.44674e-05, 6.95281e-05, 7.34129e-05, 7.63689e-05, 7.86035e-05, 8.02756e-05, 8.15498e-05, 8.25048e-05, 8.32171e-05, 8.36933e-05, 8.40899e-05, 8.43852e-05, 8.46081e-05, 
			5.23609e-05, 6.24857e-05, 7.07789e-05, 7.73727e-05, 8.25093e-05, 8.64662e-05, 8.94816e-05, 9.17602e-05, 9.34904e-05, 9.47862e-05, 9.57667e-05, 9.64282e-05, 9.69744e-05, 9.73804e-05, 9.76886e-05, 9.79849e-05, 
			6.52325e-05, 7.53807e-05, 8.3702e-05, 9.03306e-05, 9.5511e-05, 9.94898e-05, 0.000102539, 0.000104852, 0.000106595, 0.000107834, 0.000108819, 0.000109557, 0.000110109, 0.000110527, 0.000110919, 0.000111149, 
			7.81954e-05, 8.83211e-05, 9.66506e-05, 0.000103291, 0.000108478, 0.000112481, 0.000115531, 0.000117858, 0.000119526, 0.000120845, 0.000121835, 0.000122585, 0.000123227, 0.000123642, 0.000123955, 0.000124184
		)
}

CapTable	"metal4_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000164868, 8.50336e-05, 5.40172e-05, 3.69126e-05, 2.61096e-05, 1.88165e-05, 1.37207e-05, 1.00801e-05, 7.44426e-06, 5.52014e-06, 4.10472e-06, 3.05684e-06, 2.2818e-06, 1.70395e-06, 1.27458e-06, 9.53432e-07, 
			0.000170356, 8.87692e-05, 5.6699e-05, 3.89056e-05, 2.76056e-05, 1.99499e-05, 1.45775e-05, 1.07307e-05, 7.9403e-06, 5.8943e-06, 4.38666e-06, 3.2712e-06, 2.44304e-06, 1.82601e-06, 1.36587e-06, 1.02105e-06, 
			0.000172346, 9.04156e-05, 5.79574e-05, 3.98632e-05, 2.8347e-05, 2.05178e-05, 1.50149e-05, 1.10675e-05, 8.19508e-06, 6.08994e-06, 4.5343e-06, 3.38402e-06, 2.52792e-06, 1.89028e-06, 1.41277e-06, 1.05766e-06, 
			0.000173139, 9.11918e-05, 5.85946e-05, 4.03622e-05, 2.87282e-05, 2.08208e-05, 1.52506e-05, 1.12477e-05, 8.33498e-06, 6.19682e-06, 4.61732e-06, 3.4465e-06, 2.57558e-06, 1.92406e-06, 1.43855e-06, 1.07664e-06, 
			0.000172971, 9.1436e-05, 5.8848e-05, 4.05808e-05, 2.89096e-05, 2.0968e-05, 1.53729e-05, 1.13421e-05, 8.40902e-06, 6.25356e-06, 4.66144e-06, 3.47662e-06, 2.59984e-06, 1.94486e-06, 1.45592e-06, 1.09029e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.09535e-05, 1.43528e-05, 1.73967e-05, 2.0143e-05, 2.26136e-05, 2.48184e-05, 2.67697e-05, 2.84827e-05, 2.99739e-05, 3.12642e-05, 3.23754e-05, 3.33257e-05, 3.41368e-05, 3.48243e-05, 3.54082e-05, 3.59009e-05, 
			1.42955e-05, 1.775e-05, 2.09397e-05, 2.38551e-05, 2.64908e-05, 2.88503e-05, 3.09418e-05, 3.27779e-05, 3.43778e-05, 3.57637e-05, 3.69557e-05, 3.79773e-05, 3.88474e-05, 3.95876e-05, 4.02144e-05, 4.07444e-05, 
			1.78171e-05, 2.13524e-05, 2.46476e-05, 2.76709e-05, 3.04092e-05, 3.28601e-05, 3.50324e-05, 3.69413e-05, 3.86044e-05, 4.00449e-05, 4.12835e-05, 4.23456e-05, 4.32511e-05, 4.40206e-05, 4.46735e-05, 4.52239e-05, 
			2.15039e-05, 2.51154e-05, 2.84846e-05, 3.15804e-05, 3.43842e-05, 3.68929e-05, 3.91171e-05, 4.10698e-05, 4.2772e-05, 4.42449e-05, 4.55133e-05, 4.65994e-05, 4.75266e-05, 4.83148e-05, 4.89791e-05, 4.95498e-05, 
			2.53263e-05, 2.89823e-05, 3.24014e-05, 3.55421e-05, 3.83864e-05, 4.09308e-05, 4.31861e-05, 4.51646e-05, 4.68907e-05, 4.83846e-05, 4.96698e-05, 5.07718e-05, 5.17112e-05, 5.25107e-05, 5.31859e-05, 5.37578e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.18784e-05, 1.47402e-05, 1.70765e-05, 1.90615e-05, 2.07908e-05, 2.23232e-05, 2.36974e-05, 2.49403e-05, 2.60726e-05, 2.71097e-05, 2.80644e-05, 2.89472e-05, 2.9767e-05, 3.05311e-05, 3.12461e-05, 3.19175e-05, 
			1.40668e-05, 1.66422e-05, 1.8864e-05, 2.08115e-05, 2.25435e-05, 2.40992e-05, 2.55083e-05, 2.67928e-05, 2.79705e-05, 2.90555e-05, 3.00596e-05, 3.09926e-05, 3.18629e-05, 3.26778e-05, 3.34435e-05, 3.41651e-05, 
			1.6116e-05, 1.85106e-05, 2.06392e-05, 2.25419e-05, 2.42562e-05, 2.58121e-05, 2.72322e-05, 2.85353e-05, 2.97368e-05, 3.08495e-05, 3.1884e-05, 3.28496e-05, 3.37541e-05, 3.46045e-05, 3.54065e-05, 3.61653e-05, 
			1.8068e-05, 2.03398e-05, 2.23908e-05, 2.42484e-05, 2.59399e-05, 2.74862e-05, 2.8907e-05, 3.02185e-05, 3.14338e-05, 3.25642e-05, 3.362e-05, 3.46097e-05, 3.55403e-05, 3.64184e-05, 3.72494e-05, 3.80386e-05, 
			1.9959e-05, 2.21252e-05, 2.41104e-05, 2.5926e-05, 2.75918e-05, 2.91248e-05, 3.05415e-05, 3.18556e-05, 3.30793e-05, 3.42224e-05, 3.52945e-05, 3.63029e-05, 3.72547e-05, 3.81559e-05, 3.90117e-05, 3.98268e-05
		)
}

CapTable	"metal4_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182291, 0.000107254, 7.95252e-05, 6.45056e-05, 5.48534e-05, 4.8014e-05, 4.28542e-05, 3.87892e-05, 3.5483e-05, 3.27282e-05, 3.03882e-05, 2.83692e-05, 2.66042e-05, 2.5044e-05, 2.36514e-05, 2.23978e-05, 
			0.000194461, 0.000116871, 8.7547e-05, 7.14658e-05, 6.10326e-05, 5.3597e-05, 4.79642e-05, 4.35122e-05, 3.98818e-05, 3.68498e-05, 3.42686e-05, 3.20368e-05, 3.00818e-05, 2.835e-05, 2.68012e-05, 2.54044e-05, 
			0.00020201, 0.000123435, 9.32948e-05, 7.65902e-05, 6.5692e-05, 5.78788e-05, 5.19366e-05, 4.72246e-05, 4.33712e-05, 4.01442e-05, 3.73904e-05, 3.50036e-05, 3.2908e-05, 3.10474e-05, 2.93798e-05, 2.78726e-05, 
			0.000207518, 0.000128465, 9.78442e-05, 8.07416e-05, 6.95162e-05, 6.14382e-05, 5.5272e-05, 5.03668e-05, 4.6344e-05, 4.29666e-05, 4.0077e-05, 3.75664e-05, 3.5357e-05, 3.33912e-05, 3.16254e-05, 3.00258e-05, 
			0.000211468, 0.000132456, 0.00010157, 8.4209e-05, 7.27572e-05, 6.44886e-05, 5.81554e-05, 5.31006e-05, 4.89438e-05, 4.5445e-05, 4.24442e-05, 3.98312e-05, 3.75264e-05, 3.54712e-05, 3.36212e-05, 3.1942e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.4955e-06, 1.29295e-05, 1.59694e-05, 1.85357e-05, 2.06189e-05, 2.22749e-05, 2.35609e-05, 2.45496e-05, 2.53027e-05, 2.58743e-05, 2.63139e-05, 2.66326e-05, 2.68748e-05, 2.70586e-05, 2.72466e-05, 2.73538e-05, 
			1.31959e-05, 1.67305e-05, 1.98988e-05, 2.2598e-05, 2.48033e-05, 2.65582e-05, 2.79266e-05, 2.89828e-05, 2.98001e-05, 3.04079e-05, 3.08695e-05, 3.12207e-05, 3.15427e-05, 3.17461e-05, 3.18999e-05, 3.20149e-05, 
			1.70297e-05, 2.06407e-05, 2.38947e-05, 2.66631e-05, 2.89297e-05, 3.0736e-05, 3.21485e-05, 3.32443e-05, 3.40775e-05, 3.47139e-05, 3.5197e-05, 3.56318e-05, 3.59117e-05, 3.61233e-05, 3.62816e-05, 3.63334e-05, 
			2.09613e-05, 2.46355e-05, 2.79374e-05, 3.07482e-05, 3.30498e-05, 3.48904e-05, 3.63234e-05, 3.74333e-05, 3.8288e-05, 3.90142e-05, 3.95127e-05, 3.98915e-05, 4.01774e-05, 4.03919e-05, 4.04755e-05, 4.05994e-05, 
			2.49728e-05, 2.86749e-05, 3.20024e-05, 3.48372e-05, 3.71574e-05, 3.9007e-05, 4.04591e-05, 4.15819e-05, 4.2531e-05, 4.31944e-05, 4.36976e-05, 4.40784e-05, 4.42802e-05, 4.45001e-05, 4.46661e-05, 4.47937e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.48331e-06, 9.6321e-06, 1.15277e-05, 1.32403e-05, 1.48007e-05, 1.62248e-05, 1.75223e-05, 1.86981e-05, 1.97601e-05, 2.07149e-05, 2.15692e-05, 2.23337e-05, 2.30101e-05, 2.36131e-05, 2.41452e-05, 2.46124e-05, 
			9.4333e-06, 1.1547e-05, 1.34974e-05, 1.52979e-05, 1.69608e-05, 1.84886e-05, 1.98857e-05, 2.11562e-05, 2.23078e-05, 2.33424e-05, 2.42725e-05, 2.51001e-05, 2.58392e-05, 2.6494e-05, 2.70721e-05, 2.75832e-05, 
			1.14334e-05, 1.35593e-05, 1.55594e-05, 1.74277e-05, 1.91605e-05, 2.07584e-05, 2.22223e-05, 2.3555e-05, 2.47641e-05, 2.58512e-05, 2.68293e-05, 2.7702e-05, 2.84773e-05, 2.9167e-05, 2.97775e-05, 3.03161e-05, 
			1.35027e-05, 1.56606e-05, 1.77046e-05, 1.96237e-05, 2.14087e-05, 2.30592e-05, 2.45702e-05, 2.59494e-05, 2.71963e-05, 2.83228e-05, 2.93329e-05, 3.02343e-05, 3.10378e-05, 3.17514e-05, 3.23817e-05, 3.2939e-05, 
			1.56509e-05, 1.78328e-05, 1.99131e-05, 2.18703e-05, 2.36945e-05, 2.53815e-05, 2.6926e-05, 2.83366e-05, 2.96139e-05, 3.07641e-05, 3.17976e-05, 3.27216e-05, 3.35441e-05, 3.4273e-05, 3.49193e-05, 3.54899e-05
		)
}

CapTable	"metal4_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.78049e-06, 1.26495e-05, 1.51845e-05, 1.74677e-05, 1.95392e-05, 2.14217e-05, 2.31287e-05, 2.4674e-05, 2.60661e-05, 2.73148e-05, 2.84316e-05, 2.94242e-05, 3.03076e-05, 3.10869e-05, 3.17761e-05, 3.23842e-05, 
			1.23899e-05, 1.52308e-05, 1.78422e-05, 2.02436e-05, 2.24468e-05, 2.44628e-05, 2.62995e-05, 2.79646e-05, 2.94661e-05, 3.08173e-05, 3.20236e-05, 3.3101e-05, 3.40571e-05, 3.49044e-05, 3.56528e-05, 3.63125e-05, 
			1.50992e-05, 1.79583e-05, 2.06346e-05, 2.31177e-05, 2.54106e-05, 2.75151e-05, 2.94354e-05, 3.1179e-05, 3.27523e-05, 3.41675e-05, 3.54329e-05, 3.65632e-05, 3.75674e-05, 3.84569e-05, 3.92418e-05, 3.99336e-05, 
			1.79105e-05, 2.08088e-05, 2.35386e-05, 2.60859e-05, 2.84425e-05, 3.06076e-05, 3.25868e-05, 3.43826e-05, 3.60067e-05, 3.74655e-05, 3.87728e-05, 3.99393e-05, 4.0976e-05, 4.18927e-05, 4.27057e-05, 4.34208e-05, 
			2.08257e-05, 2.37532e-05, 2.65267e-05, 2.91203e-05, 3.15237e-05, 3.37333e-05, 3.57526e-05, 3.75864e-05, 3.92447e-05, 4.07359e-05, 4.20711e-05, 4.32607e-05, 4.43183e-05, 4.52582e-05, 4.6086e-05, 4.68166e-05
		)
}

CapTable	"metal4_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177965, 0.000101449, 7.23516e-05, 5.60734e-05, 4.52814e-05, 3.74274e-05, 3.13818e-05, 2.65586e-05, 2.26188e-05, 1.93488e-05, 1.66038e-05, 1.42806e-05, 1.23041e-05, 1.06139e-05, 9.16436e-06, 7.91916e-06, 
			0.000188359, 0.00010919, 7.83894e-05, 6.0951e-05, 4.92938e-05, 4.0775e-05, 3.42026e-05, 2.89536e-05, 2.46628e-05, 2.11e-05, 1.81085e-05, 1.55774e-05, 1.34215e-05, 1.15786e-05, 9.99892e-06, 8.64008e-06, 
			0.000193989, 0.000113763, 8.2079e-05, 6.39636e-05, 5.18016e-05, 4.28784e-05, 3.59818e-05, 3.04678e-05, 2.59574e-05, 2.22118e-05, 1.90648e-05, 1.64002e-05, 1.41327e-05, 1.21929e-05, 1.05292e-05, 9.09882e-06, 
			0.00019747, 0.000116717, 8.45178e-05, 6.59824e-05, 5.34838e-05, 4.4296e-05, 3.71844e-05, 3.14928e-05, 2.6836e-05, 2.29654e-05, 1.97133e-05, 1.69602e-05, 1.46152e-05, 1.261e-05, 1.08895e-05, 9.41006e-06, 
			0.000199314, 0.000118586, 8.61152e-05, 6.73254e-05, 5.46128e-05, 4.52542e-05, 3.80024e-05, 3.21914e-05, 2.74338e-05, 2.34796e-05, 2.0156e-05, 1.73416e-05, 1.49446e-05, 1.2894e-05, 1.11354e-05, 9.62264e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.2053e-06, 8.3542e-06, 1.02504e-05, 1.18581e-05, 1.31817e-05, 1.42746e-05, 1.51544e-05, 1.58547e-05, 1.64193e-05, 1.68712e-05, 1.72327e-05, 1.75219e-05, 1.78136e-05, 1.79797e-05, 1.81163e-05, 1.82267e-05, 
			8.418e-06, 1.05818e-05, 1.25392e-05, 1.42157e-05, 1.56316e-05, 1.67905e-05, 1.77366e-05, 1.85019e-05, 1.91184e-05, 1.96136e-05, 2.0012e-05, 2.03829e-05, 2.06246e-05, 2.08208e-05, 2.09798e-05, 2.11005e-05, 
			1.06624e-05, 1.28425e-05, 1.48421e-05, 1.6579e-05, 1.80363e-05, 1.92446e-05, 2.02331e-05, 2.10358e-05, 2.16842e-05, 2.22687e-05, 2.2673e-05, 2.30001e-05, 2.32659e-05, 2.34803e-05, 2.36493e-05, 2.37945e-05, 
			1.29341e-05, 1.51544e-05, 1.71769e-05, 1.89456e-05, 2.04411e-05, 2.16806e-05, 2.26976e-05, 2.35252e-05, 2.42456e-05, 2.47743e-05, 2.52022e-05, 2.55472e-05, 2.58219e-05, 2.60547e-05, 2.62182e-05, 2.63687e-05, 
			1.52546e-05, 1.74846e-05, 1.95336e-05, 2.13246e-05, 2.28436e-05, 2.4103e-05, 2.51962e-05, 2.60231e-05, 2.66968e-05, 2.72449e-05, 2.76893e-05, 2.80432e-05, 2.83398e-05, 2.85525e-05, 2.877e-05, 2.89259e-05
		)
}

CapTable	"metal4_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.83971e-05, 3.84012e-05, 4.64912e-05, 5.28681e-05, 5.78459e-05, 6.17436e-05, 6.47845e-05, 6.71613e-05, 6.90334e-05, 7.05056e-05, 7.16733e-05, 7.26015e-05, 7.32778e-05, 7.38944e-05, 7.43822e-05, 7.47756e-05, 
			4.07498e-05, 5.08354e-05, 5.90636e-05, 6.56025e-05, 7.07744e-05, 7.48447e-05, 7.80526e-05, 8.05805e-05, 8.25767e-05, 8.41641e-05, 8.54312e-05, 8.63833e-05, 8.721e-05, 8.78717e-05, 8.84034e-05, 8.88325e-05, 
			5.33178e-05, 6.33827e-05, 7.16453e-05, 7.82752e-05, 8.35377e-05, 8.77132e-05, 9.10161e-05, 9.36296e-05, 9.57101e-05, 9.73036e-05, 9.86494e-05, 9.97256e-05, 0.000100589, 0.000101283, 0.00010184, 0.000102288, 
			6.59783e-05, 7.60448e-05, 8.43197e-05, 9.09936e-05, 9.63251e-05, 0.000100554, 0.000103919, 0.000106603, 0.00010868, 0.000110403, 0.000111782, 0.000112895, 0.000113777, 0.00011449, 0.000115092, 0.000115557, 
			7.87176e-05, 8.87414e-05, 9.70264e-05, 0.000103725, 0.000109083, 0.000113358, 0.000116703, 0.000119443, 0.000121629, 0.000123379, 0.000124782, 0.000125907, 0.000126812, 0.000127573, 0.000128134, 0.00012861
		)
}

CapTable	"metal4_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000166505, 8.73686e-05, 5.69354e-05, 4.02488e-05, 2.96874e-05, 2.24396e-05, 1.72594e-05, 1.34519e-05, 1.05816e-05, 8.39206e-06, 6.69908e-06, 5.37818e-06, 4.34482e-06, 3.52046e-06, 2.86692e-06, 2.34458e-06, 
			0.00017299, 9.21418e-05, 6.06302e-05, 4.32258e-05, 3.2075e-05, 2.44038e-05, 1.88718e-05, 1.47746e-05, 1.16779e-05, 9.2993e-06, 7.45078e-06, 6.00976e-06, 4.86642e-06, 3.95954e-06, 3.23678e-06, 2.65898e-06, 
			0.000176015, 9.47968e-05, 6.28406e-05, 4.50288e-05, 3.3593e-05, 2.56612e-05, 1.99258e-05, 1.56596e-05, 1.24187e-05, 9.9267e-06, 7.97962e-06, 6.45034e-06, 5.24108e-06, 4.2797e-06, 3.51274e-06, 2.89748e-06, 
			0.0001778, 9.64688e-05, 6.43024e-05, 4.62708e-05, 3.46308e-05, 2.65484e-05, 2.06794e-05, 1.62938e-05, 1.29644e-05, 1.03857e-05, 8.37278e-06, 6.78584e-06, 5.53512e-06, 4.53532e-06, 3.73376e-06, 3.09332e-06, 
			0.000178508, 9.7509e-05, 6.5259e-05, 4.71144e-05, 3.53664e-05, 2.7185e-05, 2.12358e-05, 1.67749e-05, 1.33722e-05, 1.07391e-05, 8.6807e-06, 7.05982e-06, 5.77216e-06, 4.74346e-06, 3.926e-06, 3.26714e-06
		)
}

CapTable	"metal4_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178514, 0.000102199, 7.32838e-05, 5.71674e-05, 4.65124e-05, 3.87672e-05, 3.2802e-05, 2.80322e-05, 2.412e-05, 2.08552e-05, 1.80948e-05, 1.5741e-05, 1.37189e-05, 1.19747e-05, 1.04618e-05, 9.14736e-06, 
			0.000189162, 0.000110207, 7.95994e-05, 6.2328e-05, 5.08074e-05, 4.23936e-05, 3.58942e-05, 3.0688e-05, 2.64142e-05, 2.28432e-05, 1.9824e-05, 1.72463e-05, 1.5033e-05, 1.31208e-05, 1.14635e-05, 1.0023e-05, 
			0.000195065, 0.000115056, 8.35648e-05, 6.56106e-05, 5.35766e-05, 4.4747e-05, 3.79108e-05, 3.24252e-05, 2.7917e-05, 2.41478e-05, 2.0959e-05, 1.8235e-05, 1.58946e-05, 1.38734e-05, 1.21196e-05, 1.05944e-05, 
			0.000198824, 0.000118283, 8.62682e-05, 6.78824e-05, 5.54966e-05, 4.63874e-05, 3.93194e-05, 3.36418e-05, 2.89696e-05, 2.50626e-05, 2.17536e-05, 1.89272e-05, 1.64976e-05, 1.43974e-05, 1.25758e-05, 1.09909e-05, 
			0.000200942, 0.000120414, 8.81116e-05, 6.94548e-05, 5.68378e-05, 4.75402e-05, 4.03144e-05, 3.45012e-05, 2.9714e-05, 2.57074e-05, 2.23142e-05, 1.94139e-05, 1.69196e-05, 1.47634e-05, 1.28938e-05, 1.12664e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.25072e-05, 1.55878e-05, 1.81323e-05, 2.03201e-05, 2.22504e-05, 2.39831e-05, 2.55574e-05, 2.69995e-05, 2.83288e-05, 2.95589e-05, 3.07011e-05, 3.17641e-05, 3.27551e-05, 3.36804e-05, 3.45452e-05, 3.53542e-05, 
			1.49158e-05, 1.7722e-05, 2.0173e-05, 2.23517e-05, 2.43161e-05, 2.61061e-05, 2.77499e-05, 2.92679e-05, 3.06756e-05, 3.19849e-05, 3.32056e-05, 3.43454e-05, 3.54113e-05, 3.64091e-05, 3.73435e-05, 3.82194e-05, 
			1.7204e-05, 1.985e-05, 2.22336e-05, 2.43966e-05, 2.63748e-05, 2.81963e-05, 2.98822e-05, 3.14484e-05, 3.29076e-05, 3.42699e-05, 3.55437e-05, 3.67365e-05, 3.78544e-05, 3.89025e-05, 3.98859e-05, 4.08093e-05, 
			1.9422e-05, 2.19726e-05, 2.43076e-05, 2.64562e-05, 2.84417e-05, 3.02834e-05, 3.19979e-05, 3.3598e-05, 3.5094e-05, 3.64948e-05, 3.7808e-05, 3.904e-05, 4.01964e-05, 4.12826e-05, 4.23032e-05, 4.32625e-05, 
			2.1619e-05, 2.40892e-05, 2.63888e-05, 2.85248e-05, 3.0513e-05, 3.23685e-05, 3.41029e-05, 3.57275e-05, 3.72507e-05, 3.86801e-05, 4.00227e-05, 4.12843e-05, 4.24703e-05, 4.35858e-05, 4.46349e-05, 4.56221e-05
		)
}

CapTable	"metal4_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181771, 0.000106569, 7.86808e-05, 6.35016e-05, 5.3688e-05, 4.66854e-05, 4.13616e-05, 3.71336e-05, 3.36678e-05, 3.0759e-05, 2.82726e-05, 2.61166e-05, 2.42258e-05, 2.25518e-05, 2.10586e-05, 1.97179e-05, 
			0.000193755, 0.000115982, 8.6472e-05, 7.02004e-05, 5.9573e-05, 5.1941e-05, 4.61122e-05, 4.14676e-05, 3.7651e-05, 3.44416e-05, 3.16942e-05, 2.93092e-05, 2.72154e-05, 2.53602e-05, 2.37044e-05, 2.2217e-05, 
			0.000201092, 0.000122309, 9.19524e-05, 7.50254e-05, 6.39014e-05, 5.58624e-05, 4.96974e-05, 4.47694e-05, 4.07098e-05, 3.72894e-05, 3.4357e-05, 3.1808e-05, 2.95678e-05, 2.75814e-05, 2.5807e-05, 2.42118e-05, 
			0.000206354, 0.00012706, 9.61914e-05, 7.88358e-05, 6.7356e-05, 5.90266e-05, 5.2616e-05, 4.74772e-05, 4.32348e-05, 3.9654e-05, 3.65794e-05, 3.39038e-05, 3.15502e-05, 2.94612e-05, 2.75936e-05, 2.59136e-05, 
			0.000210012, 0.00013073, 9.95652e-05, 8.19232e-05, 7.0193e-05, 6.16528e-05, 5.50596e-05, 4.97594e-05, 4.53754e-05, 4.16694e-05, 3.84832e-05, 3.57076e-05, 3.32636e-05, 3.10926e-05, 2.91504e-05, 2.74022e-05
		)
}

CapTable	"metal4_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000166891, 8.79346e-05, 5.7663e-05, 4.11158e-05, 3.06208e-05, 2.34796e-05, 1.83205e-05, 1.45151e-05, 1.16156e-05, 9.38182e-06, 7.63394e-06, 6.25128e-06, 5.14714e-06, 4.25842e-06, 3.54454e-06, 2.95654e-06, 
			0.000173615, 9.29538e-05, 6.16406e-05, 4.43958e-05, 3.33354e-05, 2.57044e-05, 2.01988e-05, 1.60804e-05, 1.29396e-05, 1.05e-05, 8.57888e-06, 7.05224e-06, 5.82914e-06, 4.845e-06, 4.03886e-06, 3.38044e-06, 
			0.000176917, 9.58806e-05, 6.41474e-05, 4.64668e-05, 3.51218e-05, 2.72238e-05, 2.14828e-05, 1.71793e-05, 1.38768e-05, 1.13009e-05, 9.2656e-06, 7.6478e-06, 6.33824e-06, 5.27704e-06, 4.41062e-06, 3.70456e-06, 
			0.000178998, 9.78726e-05, 6.58676e-05, 4.7972e-05, 3.63988e-05, 2.83346e-05, 2.24426e-05, 1.80015e-05, 1.4585e-05, 1.1915e-05, 9.80206e-06, 8.1016e-06, 6.73216e-06, 5.62006e-06, 4.71224e-06, 3.96802e-06, 
			0.000179978, 9.9184e-05, 6.70904e-05, 4.90502e-05, 3.73518e-05, 2.91702e-05, 2.31746e-05, 1.86419e-05, 1.51497e-05, 1.24023e-05, 1.02206e-05, 8.46694e-06, 7.05666e-06, 5.90652e-06, 4.96654e-06, 4.1955e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.2862e-06, 8.0484e-06, 9.592e-06, 1.09806e-05, 1.22459e-05, 1.34024e-05, 1.44613e-05, 1.54278e-05, 1.6308e-05, 1.71074e-05, 1.78323e-05, 1.84844e-05, 1.9074e-05, 1.95998e-05, 2.00747e-05, 2.04994e-05, 
			7.8472e-06, 9.5596e-06, 1.11324e-05, 1.25838e-05, 1.39243e-05, 1.51626e-05, 1.63035e-05, 1.73475e-05, 1.83018e-05, 1.91713e-05, 1.99587e-05, 2.06718e-05, 2.13123e-05, 2.18913e-05, 2.24107e-05, 2.28728e-05, 
			9.4277e-06, 1.11356e-05, 1.27381e-05, 1.42382e-05, 1.56336e-05, 1.69277e-05, 1.81225e-05, 1.92221e-05, 2.02257e-05, 2.11431e-05, 2.19725e-05, 2.27264e-05, 2.34067e-05, 2.40162e-05, 2.45655e-05, 2.50577e-05, 
			1.10504e-05, 1.27726e-05, 1.44063e-05, 1.59451e-05, 1.73818e-05, 1.87191e-05, 1.99562e-05, 2.10934e-05, 2.21359e-05, 2.30846e-05, 2.39494e-05, 2.47323e-05, 2.54363e-05, 2.60724e-05, 2.66437e-05, 2.71555e-05, 
			1.27258e-05, 1.44629e-05, 1.61216e-05, 1.76903e-05, 1.91625e-05, 2.05307e-05, 2.17992e-05, 2.29642e-05, 2.40351e-05, 2.5012e-05, 2.58975e-05, 2.67016e-05, 2.74279e-05, 2.80818e-05, 2.86683e-05, 2.91943e-05
		)
}

CapTable	"metal4_C_TOP_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.02814e-05, 1.32328e-05, 1.58216e-05, 1.81424e-05, 2.02436e-05, 2.21571e-05, 2.38988e-05, 2.54833e-05, 2.69221e-05, 2.82234e-05, 2.93982e-05, 3.04574e-05, 3.14071e-05, 3.22605e-05, 3.30218e-05, 3.37009e-05, 
			1.29246e-05, 1.58212e-05, 1.84702e-05, 2.08981e-05, 2.31286e-05, 2.51732e-05, 2.70439e-05, 2.87535e-05, 3.03073e-05, 3.1717e-05, 3.29919e-05, 3.41417e-05, 3.51765e-05, 3.61031e-05, 3.6932e-05, 3.76751e-05, 
			1.56471e-05, 1.8544e-05, 2.12461e-05, 2.37522e-05, 2.60682e-05, 2.82026e-05, 3.0161e-05, 3.19514e-05, 3.35846e-05, 3.5065e-05, 3.64076e-05, 3.76177e-05, 3.87053e-05, 3.96838e-05, 4.05587e-05, 4.13404e-05, 
			1.8457e-05, 2.13833e-05, 2.41315e-05, 2.66965e-05, 2.90786e-05, 3.12765e-05, 3.32975e-05, 3.51478e-05, 3.68359e-05, 3.83696e-05, 3.97571e-05, 4.10099e-05, 4.21397e-05, 4.31516e-05, 4.40588e-05, 4.48707e-05, 
			2.13652e-05, 2.43113e-05, 2.71008e-05, 2.97129e-05, 3.21417e-05, 3.43891e-05, 3.6455e-05, 3.83505e-05, 4.00782e-05, 4.16479e-05, 4.30716e-05, 4.43555e-05, 4.55113e-05, 4.65505e-05, 4.74813e-05, 4.8314e-05
		)
}

CapTable	"metal4_C_LATERAL_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182429, 0.000107426, 7.97148e-05, 6.46944e-05, 5.5023e-05, 4.8147e-05, 4.29346e-05, 3.88036e-05, 3.54212e-05, 3.25826e-05, 3.01544e-05, 2.8045e-05, 2.61904e-05, 2.4543e-05, 2.30676e-05, 2.1737e-05, 
			0.000194641, 0.000117069, 8.77418e-05, 7.16352e-05, 6.11554e-05, 5.36542e-05, 4.79402e-05, 4.33946e-05, 3.96624e-05, 3.65232e-05, 3.3833e-05, 3.14932e-05, 2.94336e-05, 2.76026e-05, 2.59616e-05, 2.44808e-05, 
			0.00020221, 0.00012363, 9.34574e-05, 7.66966e-05, 6.57208e-05, 5.78122e-05, 5.17606e-05, 4.69298e-05, 4.2952e-05, 3.95988e-05, 3.672e-05, 3.42124e-05, 3.20024e-05, 3.0036e-05, 2.8272e-05, 2.66792e-05, 
			0.000207708, 0.000128617, 9.79302e-05, 8.07384e-05, 6.9404e-05, 6.12014e-05, 5.49002e-05, 4.9854e-05, 4.56886e-05, 4.217e-05, 3.91442e-05, 3.6505e-05, 3.41762e-05, 3.2102e-05, 3.024e-05, 2.85574e-05, 
			0.000211604, 0.000132519, 0.000101532, 8.40492e-05, 7.24588e-05, 6.40398e-05, 5.75498e-05, 5.23364e-05, 4.80232e-05, 4.43732e-05, 4.12298e-05, 3.84846e-05, 3.606e-05, 3.38984e-05, 3.19564e-05, 3.02004e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.1439e-06, 6.9031e-06, 8.4497e-06, 9.7594e-06, 1.0852e-05, 1.17282e-05, 1.24539e-05, 1.30334e-05, 1.35092e-05, 1.3895e-05, 1.42082e-05, 1.44631e-05, 1.46714e-05, 1.48419e-05, 1.50604e-05, 1.51547e-05, 
			6.9402e-06, 8.7018e-06, 1.02813e-05, 1.16348e-05, 1.27885e-05, 1.37415e-05, 1.45162e-05, 1.51546e-05, 1.56757e-05, 1.61012e-05, 1.64482e-05, 1.67331e-05, 1.69666e-05, 1.72297e-05, 1.7369e-05, 1.74859e-05, 
			8.7383e-06, 1.05112e-05, 1.21106e-05, 1.35172e-05, 1.47005e-05, 1.56918e-05, 1.65095e-05, 1.71826e-05, 1.77332e-05, 1.81854e-05, 1.85564e-05, 1.89462e-05, 1.91758e-05, 1.9365e-05, 1.95234e-05, 1.96554e-05, 
			1.05457e-05, 1.23351e-05, 1.3971e-05, 1.53965e-05, 1.66139e-05, 1.76334e-05, 1.84764e-05, 1.91725e-05, 1.9744e-05, 2.0216e-05, 2.06789e-05, 2.09794e-05, 2.12278e-05, 2.14349e-05, 2.16068e-05, 2.1749e-05, 
			1.23942e-05, 1.41842e-05, 1.58368e-05, 1.72878e-05, 1.85252e-05, 1.95628e-05, 2.04244e-05, 2.11371e-05, 2.18123e-05, 2.22767e-05, 2.26604e-05, 2.29761e-05, 2.32413e-05, 2.34605e-05, 2.36425e-05, 2.37885e-05
		)
}

CapTable	"metal4_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.89581e-05, 3.90793e-05, 4.72503e-05, 5.36778e-05, 5.87242e-05, 6.26417e-05, 6.5744e-05, 6.81806e-05, 7.0124e-05, 7.16697e-05, 7.29117e-05, 7.39136e-05, 7.47263e-05, 7.53888e-05, 7.58467e-05, 7.63145e-05, 
			4.13906e-05, 5.15664e-05, 5.98351e-05, 6.64004e-05, 7.16221e-05, 7.57501e-05, 7.9016e-05, 8.1619e-05, 8.36967e-05, 8.53698e-05, 8.67249e-05, 8.78227e-05, 8.87133e-05, 8.93703e-05, 8.99931e-05, 9.05037e-05, 
			5.39939e-05, 6.41292e-05, 7.2399e-05, 7.9067e-05, 8.43687e-05, 8.86034e-05, 9.19787e-05, 9.46761e-05, 9.6849e-05, 9.86047e-05, 0.000100031, 0.000101102, 0.000102078, 0.000102879, 0.000103539, 0.000104076, 
			6.66537e-05, 7.67573e-05, 8.50614e-05, 9.17605e-05, 9.71383e-05, 0.00010143, 0.000104876, 0.000107654, 0.000109894, 0.000111703, 0.000113103, 0.000114341, 0.00011535, 0.000116178, 0.00011686, 0.000117425, 
			7.9393e-05, 8.94338e-05, 9.77388e-05, 0.000104467, 0.000109875, 0.000114219, 0.000117715, 0.000120539, 0.000122734, 0.00012462, 0.000126159, 0.000127425, 0.00012845, 0.000129301, 0.000130006, 0.000130582
		)
}

CapTable	"metal4_C_TOP_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.07724e-05, 1.3826e-05, 1.64901e-05, 1.8869e-05, 2.10205e-05, 2.29757e-05, 2.47598e-05, 2.6385e-05, 2.78662e-05, 2.92113e-05, 3.04327e-05, 3.15375e-05, 3.25393e-05, 3.34404e-05, 3.42539e-05, 3.49852e-05, 
			1.3481e-05, 1.6459e-05, 1.91714e-05, 2.16514e-05, 2.3925e-05, 2.60135e-05, 2.79264e-05, 2.96787e-05, 3.12787e-05, 3.27352e-05, 3.40625e-05, 3.52642e-05, 3.63515e-05, 3.73366e-05, 3.82233e-05, 3.90219e-05, 
			1.62531e-05, 1.92184e-05, 2.1974e-05, 2.45278e-05, 2.6886e-05, 2.90621e-05, 3.10632e-05, 3.28997e-05, 3.45797e-05, 3.61147e-05, 3.7509e-05, 3.87785e-05, 3.99267e-05, 4.09654e-05, 4.19033e-05, 4.27494e-05, 
			1.91029e-05, 2.20847e-05, 2.48842e-05, 2.74925e-05, 2.99154e-05, 3.21565e-05, 3.42214e-05, 3.61217e-05, 3.78603e-05, 3.94471e-05, 4.08962e-05, 4.22119e-05, 4.34044e-05, 4.44842e-05, 4.54597e-05, 4.6341e-05, 
			2.20436e-05, 2.50407e-05, 2.78748e-05, 3.05283e-05, 3.29993e-05, 3.52887e-05, 3.74039e-05, 3.93469e-05, 4.1132e-05, 4.27614e-05, 4.4247e-05, 4.55979e-05, 4.68244e-05, 4.7936e-05, 4.89388e-05, 4.98445e-05
		)
}

CapTable	"metal4_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178836, 0.000102636, 7.38302e-05, 5.78138e-05, 4.72464e-05, 3.95774e-05, 3.36736e-05, 2.89514e-05, 2.5073e-05, 2.18278e-05, 1.9077e-05, 1.67207e-05, 1.46881e-05, 1.29237e-05, 1.13876e-05, 1.00416e-05, 
			0.000189629, 0.0001108, 8.03104e-05, 6.31458e-05, 5.17186e-05, 4.33822e-05, 3.69454e-05, 3.17852e-05, 2.75418e-05, 2.39874e-05, 2.09714e-05, 1.83857e-05, 1.61536e-05, 1.42167e-05, 1.25257e-05, 1.10455e-05, 
			0.00019569, 0.000115814, 8.4445e-05, 6.65994e-05, 5.46588e-05, 4.5905e-05, 3.91262e-05, 3.36826e-05, 2.91984e-05, 2.54396e-05, 2.22466e-05, 1.95092e-05, 1.71426e-05, 1.50862e-05, 1.32916e-05, 1.17216e-05, 
			0.000199616, 0.00011921, 8.73174e-05, 6.90392e-05, 5.6743e-05, 4.77044e-05, 4.06886e-05, 3.5045e-05, 3.03906e-05, 2.6485e-05, 2.3166e-05, 2.03158e-05, 1.78519e-05, 1.57121e-05, 1.38415e-05, 1.22022e-05, 
			0.000201904, 0.00012151, 8.93272e-05, 7.07718e-05, 5.82382e-05, 4.90038e-05, 4.18228e-05, 3.60352e-05, 3.12588e-05, 2.72458e-05, 2.3832e-05, 2.09006e-05, 1.83668e-05, 1.61608e-05, 1.42349e-05, 1.25466e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.169e-05, 1.44778e-05, 1.67509e-05, 1.86838e-05, 2.03754e-05, 2.18853e-05, 2.32528e-05, 2.4504e-05, 2.56579e-05, 2.67284e-05, 2.77258e-05, 2.86589e-05, 2.95337e-05, 3.0356e-05, 3.11303e-05, 3.18603e-05, 
			1.37938e-05, 1.62948e-05, 1.84552e-05, 2.03574e-05, 2.20614e-05, 2.36076e-05, 2.50244e-05, 2.63329e-05, 2.75481e-05, 2.86821e-05, 2.97439e-05, 3.07408e-05, 3.16789e-05, 3.25632e-05, 3.33979e-05, 3.41866e-05, 
			1.5759e-05, 1.80852e-05, 2.01616e-05, 2.2032e-05, 2.37338e-05, 2.52964e-05, 2.67415e-05, 2.80852e-05, 2.93404e-05, 3.05168e-05, 3.16226e-05, 3.26641e-05, 3.36466e-05, 3.45747e-05, 3.54526e-05, 3.62835e-05, 
			1.7635e-05, 1.98514e-05, 2.18658e-05, 2.37086e-05, 2.54048e-05, 2.69765e-05, 2.84401e-05, 2.98088e-05, 3.10927e-05, 3.23005e-05, 3.3439e-05, 3.45139e-05, 3.55303e-05, 3.64922e-05, 3.74033e-05, 3.82671e-05, 
			1.947e-05, 2.15964e-05, 2.35628e-05, 2.53838e-05, 2.70741e-05, 2.86512e-05, 3.01277e-05, 3.15143e-05, 3.28199e-05, 3.40516e-05, 3.52153e-05, 3.63163e-05, 3.73588e-05, 3.83471e-05, 3.92845e-05, 4.0174e-05
		)
}

CapTable	"metal4_C_TOP_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.91872e-05, 3.93096e-05, 4.74616e-05, 5.38568e-05, 5.8878e-05, 6.27583e-05, 6.58562e-05, 6.83035e-05, 7.02447e-05, 7.18095e-05, 7.30757e-05, 7.41056e-05, 7.49493e-05, 7.5645e-05, 7.62213e-05, 7.67017e-05, 
			4.15506e-05, 5.16803e-05, 5.98852e-05, 6.63737e-05, 7.15521e-05, 7.56502e-05, 7.88928e-05, 8.14943e-05, 8.35816e-05, 8.52739e-05, 8.66556e-05, 8.77861e-05, 8.87141e-05, 8.94872e-05, 9.0065e-05, 9.0626e-05, 
			5.40175e-05, 6.40616e-05, 7.22224e-05, 7.88101e-05, 8.40554e-05, 8.82336e-05, 9.15854e-05, 9.42764e-05, 9.64578e-05, 9.82342e-05, 9.96908e-05, 0.000100892, 0.000101888, 0.000102664, 0.000103381, 0.000103974, 
			6.64702e-05, 7.64466e-05, 8.46287e-05, 9.12178e-05, 9.65168e-05, 0.000100755, 0.00010417, 0.00010694, 0.000109188, 0.000111021, 0.000112537, 0.000113735, 0.000114801, 0.000115691, 0.000116435, 0.000117062, 
			7.89715e-05, 8.88536e-05, 9.69984e-05, 0.000103604, 0.000108918, 0.0001132, 0.000116662, 0.000119476, 0.000121776, 0.000123666, 0.00012518, 0.000126503, 0.000127591, 0.000128508, 0.000129281, 0.000129929
		)
}

CapTable	"metal4_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167251, 8.84638e-05, 5.83496e-05, 4.1941e-05, 3.15568e-05, 2.45182e-05, 1.94134e-05, 1.56273e-05, 1.27653e-05, 1.05313e-05, 8.77218e-06, 7.36962e-06, 6.23896e-06, 5.31882e-06, 4.56412e-06, 3.94066e-06, 
			0.000174221, 9.37596e-05, 6.26348e-05, 4.55684e-05, 3.46306e-05, 2.70892e-05, 2.16528e-05, 1.75677e-05, 1.44394e-05, 1.19954e-05, 1.00567e-05, 8.5019e-06, 7.24284e-06, 6.21156e-06, 5.36556e-06, 4.65864e-06, 
			0.000177817, 9.7009e-05, 6.54998e-05, 4.79896e-05, 3.67618e-05, 2.89808e-05, 2.32996e-05, 1.90274e-05, 1.57327e-05, 1.31457e-05, 1.10841e-05, 9.42178e-06, 8.0678e-06, 6.95884e-06, 6.03546e-06, 5.27012e-06, 
			0.000180249, 9.93712e-05, 6.75868e-05, 4.98798e-05, 3.84418e-05, 3.04718e-05, 2.46372e-05, 2.02224e-05, 1.68064e-05, 1.41163e-05, 1.19614e-05, 1.02182e-05, 8.79104e-06, 7.61502e-06, 6.6393e-06, 5.8251e-06, 
			0.000181592, 0.000101051, 6.92078e-05, 5.13522e-05, 3.97906e-05, 3.17008e-05, 2.57574e-05, 2.12434e-05, 1.77353e-05, 1.49603e-05, 1.27357e-05, 1.09222e-05, 9.443e-06, 8.21796e-06, 7.19944e-06, 6.34728e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.3904e-06, 6.8795e-06, 8.1767e-06, 9.3408e-06, 1.03997e-05, 1.13688e-05, 1.22559e-05, 1.30687e-05, 1.38108e-05, 1.44896e-05, 1.51057e-05, 1.56673e-05, 1.61727e-05, 1.66338e-05, 1.70463e-05, 1.74218e-05, 
			6.6886e-06, 8.1248e-06, 9.4382e-06, 1.06492e-05, 1.17686e-05, 1.28012e-05, 1.37546e-05, 1.4631e-05, 1.54347e-05, 1.61723e-05, 1.68417e-05, 1.74549e-05, 1.80118e-05, 1.85126e-05, 1.89693e-05, 1.93813e-05, 
			7.9935e-06, 9.417e-06, 1.075e-05, 1.19958e-05, 1.31564e-05, 1.42346e-05, 1.52343e-05, 1.61552e-05, 1.70038e-05, 1.77787e-05, 1.84905e-05, 1.91351e-05, 1.97251e-05, 2.02601e-05, 2.07442e-05, 2.11797e-05, 
			9.3245e-06, 1.07548e-05, 1.21074e-05, 1.33823e-05, 1.45756e-05, 1.56879e-05, 1.67223e-05, 1.76751e-05, 1.85562e-05, 1.93655e-05, 2.01016e-05, 2.07767e-05, 2.13907e-05, 2.19459e-05, 2.24514e-05, 2.2908e-05, 
			1.06934e-05, 1.21291e-05, 1.35e-05, 1.47999e-05, 1.60195e-05, 1.71605e-05, 1.82182e-05, 1.92012e-05, 2.01029e-05, 2.09349e-05, 2.16963e-05, 2.23913e-05, 2.30219e-05, 2.35966e-05, 2.41177e-05, 2.45888e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.67398e-05, 5.00704e-05, 6.11652e-05, 7.01946e-05, 7.748e-05, 8.3348e-05, 8.80881e-05, 9.19357e-05, 9.50791e-05, 9.76665e-05, 9.78948e-05, 9.79042e-05, 9.79393e-05, 9.79876e-05, 9.80419e-05, 9.80979e-05, 
			5.38188e-05, 6.78652e-05, 7.96816e-05, 8.94148e-05, 9.73784e-05, 0.000103883, 0.000109209, 0.00011359, 0.000116974, 0.000116891, 0.000116897, 0.00011695, 0.000117029, 0.000117118, 0.000117212, 0.000117304, 
			7.21692e-05, 8.68868e-05, 9.93778e-05, 0.000109782, 0.000118377, 0.00012548, 0.000131361, 0.000135645, 0.000135467, 0.00013545, 0.000135519, 0.000135633, 0.000135768, 0.00013591, 0.000136053, 0.00013619, 
			9.1769e-05, 0.000107276, 0.000120519, 0.000131643, 0.000140922, 0.000148655, 0.000154599, 0.000154223, 0.000154139, 0.000154211, 0.000154363, 0.000154554, 0.000154761, 0.000154969, 0.000155172, 0.000155365, 
			0.00011275, 0.000129102, 0.000143182, 0.000155099, 0.000165125, 0.000173539, 0.000173317, 0.000173071, 0.000173108, 0.000173291, 0.000173546, 0.000173832, 0.000174125, 0.000174413, 0.000174688, 0.000174946
		)
}

CapTable	"metal3_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000164706, 8.46246e-05, 5.33218e-05, 3.58294e-05, 2.4514e-05, 1.66018e-05, 1.07975e-05, 6.397e-06, 2.9772e-06, 2.66384e-07, 0, 0, 0, 0, 0, 0, 
			0.000169152, 8.69458e-05, 5.42324e-05, 3.57132e-05, 2.35596e-05, 1.4947e-05, 8.54504e-06, 3.62806e-06, 0, 0, 0, 0, 0, 0, 0, 0, 
			0.000169426, 8.64222e-05, 5.28822e-05, 3.36212e-05, 2.08396e-05, 1.16615e-05, 4.75816e-06, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0.000167683, 8.41016e-05, 4.98768e-05, 2.99636e-05, 1.65799e-05, 6.86826e-06, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0.000164014, 8.0179e-05, 4.53332e-05, 2.47876e-05, 1.08093e-05, 5.63316e-07, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		)
}

CapTable	"metal4_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.4536e-06, 5.9586e-06, 7.2768e-06, 8.3912e-06, 9.3178e-06, 1.00568e-05, 1.0674e-05, 1.11745e-05, 1.15741e-05, 1.19081e-05, 1.21814e-05, 1.24065e-05, 1.25925e-05, 1.27469e-05, 1.28756e-05, 1.29832e-05, 
			5.9804e-06, 7.4781e-06, 8.817e-06, 9.9559e-06, 1.09313e-05, 1.17366e-05, 1.23904e-05, 1.2936e-05, 1.3384e-05, 1.37517e-05, 1.40557e-05, 1.4308e-05, 1.45181e-05, 1.46932e-05, 1.49024e-05, 1.50054e-05, 
			7.4965e-06, 8.9964e-06, 1.03388e-05, 1.15233e-05, 1.25258e-05, 1.33536e-05, 1.4048e-05, 1.46212e-05, 1.50955e-05, 1.54881e-05, 1.58131e-05, 1.60842e-05, 1.63112e-05, 1.65522e-05, 1.66915e-05, 1.68129e-05, 
			9.0062e-06, 1.05112e-05, 1.18845e-05, 1.30774e-05, 1.41014e-05, 1.49612e-05, 1.56768e-05, 1.62696e-05, 1.67636e-05, 1.71747e-05, 1.75166e-05, 1.78618e-05, 1.808e-05, 1.8263e-05, 1.84207e-05, 1.85549e-05, 
			1.05457e-05, 1.20504e-05, 1.34248e-05, 1.46398e-05, 1.56794e-05, 1.65542e-05, 1.72856e-05, 1.78946e-05, 1.84037e-05, 1.88267e-05, 1.92263e-05, 1.95028e-05, 1.974e-05, 1.994e-05, 2.01096e-05, 2.02567e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.85737e-05, 3.8425e-05, 4.63237e-05, 5.25478e-05, 5.74312e-05, 6.12652e-05, 6.42841e-05, 6.66687e-05, 6.85581e-05, 7.00603e-05, 7.12586e-05, 7.2217e-05, 7.29858e-05, 7.36021e-05, 7.40982e-05, 7.44965e-05, 
			4.10948e-05, 5.10191e-05, 5.90335e-05, 6.54029e-05, 7.04507e-05, 7.44502e-05, 7.76233e-05, 8.01467e-05, 8.21592e-05, 8.37654e-05, 8.50532e-05, 8.60855e-05, 8.69138e-05, 8.7581e-05, 8.81157e-05, 8.85468e-05, 
			5.38349e-05, 6.37309e-05, 7.17678e-05, 7.82046e-05, 8.3334e-05, 8.74221e-05, 9.06828e-05, 9.32865e-05, 9.53697e-05, 9.70389e-05, 9.83766e-05, 9.94518e-05, 0.000100315, 0.000101009, 0.000101567, 0.000102013, 
			6.66508e-05, 7.65325e-05, 8.45794e-05, 9.10527e-05, 9.62337e-05, 0.000100376, 0.000103689, 0.000106343, 0.000108469, 0.000110174, 0.000111543, 0.000112642, 0.000113525, 0.000114233, 0.000114797, 0.000115256, 
			7.95186e-05, 8.93445e-05, 9.73838e-05, 0.00010387, 0.000109079, 0.00011325, 0.000116593, 0.000119274, 0.000121424, 0.000123149, 0.000124535, 0.000125646, 0.000126536, 0.000127254, 0.000127823, 0.000128279
		)
}

CapTable	"metal3_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.4543e-06, 7.37017e-06, 9.06846e-06, 1.05172e-05, 1.17208e-05, 1.27041e-05, 1.34998e-05, 1.41409e-05, 1.46577e-05, 1.50739e-05, 1.54092e-05, 1.56795e-05, 1.58974e-05, 1.60746e-05, 1.62173e-05, 1.63334e-05, 
			7.38338e-06, 9.31252e-06, 1.10535e-05, 1.25585e-05, 1.38221e-05, 1.48644e-05, 1.57162e-05, 1.64087e-05, 1.69698e-05, 1.74247e-05, 1.77918e-05, 1.80902e-05, 1.83324e-05, 1.85282e-05, 1.86872e-05, 1.88159e-05, 
			9.34595e-06, 1.12847e-05, 1.30522e-05, 1.45902e-05, 1.58896e-05, 1.69691e-05, 1.78556e-05, 1.85799e-05, 1.91691e-05, 1.96473e-05, 2.00369e-05, 2.03528e-05, 2.06094e-05, 2.08169e-05, 2.09862e-05, 2.1125e-05, 
			1.13316e-05, 1.32829e-05, 1.50682e-05, 1.66299e-05, 1.79553e-05, 1.90593e-05, 1.99695e-05, 2.07135e-05, 2.13219e-05, 2.18175e-05, 2.22204e-05, 2.25485e-05, 2.28148e-05, 2.3032e-05, 2.32114e-05, 2.33515e-05, 
			1.33396e-05, 1.52973e-05, 1.70972e-05, 1.86756e-05, 2.00187e-05, 2.11386e-05, 2.20629e-05, 2.2823e-05, 2.34438e-05, 2.39502e-05, 2.43616e-05, 2.46976e-05, 2.49722e-05, 2.51928e-05, 2.53766e-05, 2.55237e-05
		)
}

CapTable	"metal3_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000166829, 8.78248e-05, 5.75278e-05, 4.0939e-05, 3.04254e-05, 2.32262e-05, 1.80612e-05, 1.42408e-05, 1.13535e-05, 9.1372e-06, 7.4157e-06, 6.0665e-06, 5.0015e-06, 4.15664e-06, 3.48362e-06, 2.94622e-06, 
			0.000173229, 9.25114e-05, 6.1176e-05, 4.38986e-05, 3.28582e-05, 2.52464e-05, 1.97505e-05, 1.56616e-05, 1.2556e-05, 1.01619e-05, 8.296e-06, 6.82934e-06, 5.66984e-06, 4.74882e-06, 4.01514e-06, 3.4293e-06, 
			0.000176173, 9.51144e-05, 6.3373e-05, 4.57432e-05, 3.44334e-05, 2.65888e-05, 2.09006e-05, 1.66526e-05, 1.34162e-05, 1.09148e-05, 8.96154e-06, 7.42442e-06, 6.20856e-06, 5.24272e-06, 4.4736e-06, 3.86016e-06, 
			0.000177919, 9.68126e-05, 6.48794e-05, 4.70544e-05, 3.5566e-05, 2.75782e-05, 2.1769e-05, 1.74206e-05, 1.41008e-05, 1.15319e-05, 9.52392e-06, 7.94352e-06, 6.69324e-06, 5.70076e-06, 4.91112e-06, 4.28262e-06, 
			0.000178674, 9.79212e-05, 6.5938e-05, 4.8011e-05, 3.64196e-05, 2.83484e-05, 2.24672e-05, 1.80552e-05, 1.46838e-05, 1.20735e-05, 1.00329e-05, 8.42698e-06, 7.15732e-06, 6.15064e-06, 5.35064e-06, 4.71468e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.70117e-05, 3.66015e-05, 4.43494e-05, 5.04484e-05, 5.5182e-05, 5.88169e-05, 6.15885e-05, 6.36919e-05, 6.52811e-05, 6.64802e-05, 6.73821e-05, 6.80593e-05, 6.85685e-05, 6.89501e-05, 6.92567e-05, 6.94726e-05, 
			3.94301e-05, 4.92216e-05, 5.71575e-05, 6.34348e-05, 6.83309e-05, 7.21084e-05, 7.49988e-05, 7.72004e-05, 7.88675e-05, 8.01273e-05, 8.10783e-05, 8.17917e-05, 8.23527e-05, 8.27572e-05, 8.30612e-05, 8.32891e-05, 
			5.21884e-05, 6.20351e-05, 7.00389e-05, 7.63935e-05, 8.13599e-05, 8.52025e-05, 8.81503e-05, 9.03975e-05, 9.21008e-05, 9.33919e-05, 9.43648e-05, 9.51271e-05, 9.56793e-05, 9.60939e-05, 9.64059e-05, 9.66401e-05, 
			6.50998e-05, 7.49795e-05, 8.30182e-05, 8.94102e-05, 9.44167e-05, 9.82918e-05, 0.000101268, 0.000103541, 0.000105262, 0.0001066, 0.000107587, 0.000108329, 0.00010889, 0.00010931, 0.000109626, 0.000109864, 
			7.80976e-05, 8.79543e-05, 9.59971e-05, 0.000102403, 0.000107426, 0.000111311, 0.000114302, 0.000116583, 0.000118356, 0.000119671, 0.000120662, 0.00012141, 0.000121973, 0.000122396, 0.000122716, 0.000122955
		)
}

CapTable	"metal3_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.41386e-06, 1.28851e-05, 1.59808e-05, 1.86096e-05, 2.07542e-05, 2.24599e-05, 2.37918e-05, 2.4817e-05, 2.56015e-05, 2.61969e-05, 2.66473e-05, 2.69878e-05, 2.72422e-05, 2.74348e-05, 2.75573e-05, 2.76632e-05, 
			1.30879e-05, 1.6671e-05, 1.98977e-05, 2.26488e-05, 2.49057e-05, 2.6705e-05, 2.81153e-05, 2.92048e-05, 3.004e-05, 3.06759e-05, 3.11559e-05, 3.15204e-05, 3.17688e-05, 3.19727e-05, 3.21239e-05, 3.2237e-05, 
			1.69244e-05, 2.05781e-05, 2.38769e-05, 2.66949e-05, 2.90053e-05, 3.08543e-05, 3.23027e-05, 3.3425e-05, 3.42873e-05, 3.494e-05, 3.54378e-05, 3.57815e-05, 3.60619e-05, 3.62706e-05, 3.64274e-05, 3.65471e-05, 
			2.08618e-05, 2.45709e-05, 2.79104e-05, 3.07652e-05, 3.31081e-05, 3.49804e-05, 3.645e-05, 3.75869e-05, 3.84616e-05, 3.90929e-05, 3.95956e-05, 3.99726e-05, 4.02566e-05, 4.04697e-05, 4.06322e-05, 4.07516e-05, 
			2.48744e-05, 2.86053e-05, 3.19717e-05, 3.48439e-05, 3.7203e-05, 3.90912e-05, 4.0565e-05, 4.17125e-05, 4.2552e-05, 4.32195e-05, 4.37226e-05, 4.41035e-05, 4.43937e-05, 4.46085e-05, 4.47678e-05, 4.48879e-05
		)
}

CapTable	"metal3_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000165004, 8.52104e-05, 5.42358e-05, 3.7151e-05, 2.63438e-05, 1.90352e-05, 1.39095e-05, 1.02376e-05, 7.57088e-06, 5.61682e-06, 4.1768e-06, 3.11066e-06, 2.3193e-06, 1.73022e-06, 1.29162e-06, 9.64164e-07, 
			0.000170316, 8.87644e-05, 5.67528e-05, 3.90154e-05, 2.77384e-05, 2.00866e-05, 1.47039e-05, 1.08368e-05, 8.02252e-06, 5.95678e-06, 4.43184e-06, 3.3019e-06, 2.46246e-06, 1.83714e-06, 1.37095e-06, 1.02295e-06, 
			0.000172125, 9.02578e-05, 5.78922e-05, 3.98706e-05, 2.84008e-05, 2.05912e-05, 1.5088e-05, 1.11285e-05, 8.24292e-06, 6.12308e-06, 4.55644e-06, 3.39542e-06, 2.5318e-06, 1.88854e-06, 1.40868e-06, 1.04978e-06, 
			0.000172771, 9.09196e-05, 5.84384e-05, 4.02996e-05, 2.87252e-05, 2.08428e-05, 1.52811e-05, 1.12755e-05, 8.35444e-06, 6.20716e-06, 4.61956e-06, 3.4419e-06, 2.56594e-06, 1.91324e-06, 1.42545e-06, 1.0618e-06, 
			0.000172509, 9.10954e-05, 5.86422e-05, 4.04758e-05, 2.88648e-05, 2.09564e-05, 1.5373e-05, 1.13454e-05, 8.40778e-06, 6.24662e-06, 4.64884e-06, 3.46296e-06, 2.57966e-06, 1.92223e-06, 1.4322e-06, 1.06582e-06
		)
}

CapTable	"metal3_C_BOTTOM_GPMAX" {
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

CapTable	"metal3_C_TOP_GPMAX" {
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

CapTable	"metal3_C_LATERALMAX" {
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

CapTable	"metal3_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177304, 0.000100558, 7.12696e-05, 5.48476e-05, 4.39588e-05, 3.6052e-05, 2.99918e-05, 2.51848e-05, 2.12856e-05, 1.80732e-05, 1.53981e-05, 1.31527e-05, 1.12571e-05, 9.64986e-06, 8.28236e-06, 7.11604e-06, 
			0.00018737, 0.000107971, 7.69922e-05, 5.9431e-05, 4.77024e-05, 3.91574e-05, 3.2596e-05, 2.73866e-05, 2.31578e-05, 1.9672e-05, 1.67676e-05, 1.43285e-05, 1.22683e-05, 1.05206e-05, 9.03278e-06, 7.76264e-06, 
			0.000192676, 0.00011224, 8.0408e-05, 6.22014e-05, 4.99996e-05, 4.10786e-05, 3.42176e-05, 2.87646e-05, 2.43344e-05, 2.06802e-05, 1.7634e-05, 1.50743e-05, 1.29112e-05, 1.10748e-05, 9.51106e-06, 8.17536e-06, 
			0.000195857, 0.00011493, 8.26204e-05, 6.40292e-05, 5.15204e-05, 4.2361e-05, 3.53062e-05, 2.96938e-05, 2.51306e-05, 2.13648e-05, 1.82233e-05, 1.55827e-05, 1.33496e-05, 1.14537e-05, 9.8379e-06, 8.4575e-06, 
			0.000197448, 0.000116588, 8.40438e-05, 6.523e-05, 5.25338e-05, 4.3225e-05, 3.60464e-05, 3.03282e-05, 2.56762e-05, 2.18352e-05, 1.86292e-05, 1.59332e-05, 1.36525e-05, 1.17149e-05, 1.00638e-05, 8.65276e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.56844e-05, 2.00166e-05, 2.37313e-05, 2.69885e-05, 2.98728e-05, 3.24381e-05, 3.47238e-05, 3.67616e-05, 3.85796e-05, 4.02027e-05, 4.16528e-05, 4.29506e-05, 4.41136e-05, 4.51582e-05, 4.60984e-05, 4.69468e-05, 
			1.95274e-05, 2.36854e-05, 2.73994e-05, 3.07209e-05, 3.36962e-05, 3.63612e-05, 3.87473e-05, 4.08838e-05, 4.27969e-05, 4.45113e-05, 4.60491e-05, 4.74302e-05, 4.86728e-05, 4.97932e-05, 5.08055e-05, 5.17225e-05, 
			2.33748e-05, 2.74386e-05, 3.11308e-05, 3.4467e-05, 3.74729e-05, 4.01785e-05, 4.26106e-05, 4.47962e-05, 4.676e-05, 4.85257e-05, 5.0115e-05, 5.15475e-05, 5.28408e-05, 5.40109e-05, 5.5072e-05, 5.60365e-05, 
			2.7232e-05, 3.12321e-05, 3.48892e-05, 3.82132e-05, 4.1223e-05, 4.39411e-05, 4.63929e-05, 4.86031e-05, 5.05957e-05, 5.23929e-05, 5.40157e-05, 5.54833e-05, 5.68125e-05, 5.80191e-05, 5.91168e-05, 6.01179e-05, 
			3.1098e-05, 3.50208e-05, 3.86336e-05, 4.19324e-05, 4.49284e-05, 4.76432e-05, 5.00992e-05, 5.23204e-05, 5.43291e-05, 5.61462e-05, 5.7792e-05, 5.92848e-05, 6.0641e-05, 6.18756e-05, 6.30023e-05, 6.40329e-05
		)
}

CapTable	"metal3_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179266, 0.000103259, 7.46886e-05, 5.89504e-05, 4.86996e-05, 4.1374e-05, 3.58304e-05, 3.14724e-05, 2.79528e-05, 2.50528e-05, 2.26262e-05, 2.05698e-05, 1.88092e-05, 1.72881e-05, 1.59637e-05, 1.48024e-05, 
			0.000190248, 0.000111683, 8.15176e-05, 6.47308e-05, 5.37202e-05, 4.58244e-05, 3.98362e-05, 3.51204e-05, 3.13056e-05, 2.81568e-05, 2.55166e-05, 2.32746e-05, 2.13504e-05, 1.96838e-05, 1.82288e-05, 1.69495e-05, 
			0.000196595, 0.000117077, 8.61362e-05, 6.8771e-05, 5.7342e-05, 4.91142e-05, 4.28594e-05, 3.79232e-05, 3.3922e-05, 3.06124e-05, 2.78312e-05, 2.54638e-05, 2.3427e-05, 2.16584e-05, 2.01102e-05, 1.87452e-05, 
			0.000200934, 0.000120996, 8.96368e-05, 7.19348e-05, 6.0236e-05, 5.17958e-05, 4.53644e-05, 4.02782e-05, 3.61464e-05, 3.27216e-05, 2.9837e-05, 2.73758e-05, 2.52532e-05, 2.34054e-05, 2.17838e-05, 2.03504e-05, 
			0.000203782, 0.000123962, 9.24114e-05, 7.45186e-05, 6.26536e-05, 5.40768e-05, 4.75264e-05, 4.23332e-05, 3.81056e-05, 3.4594e-05, 3.16298e-05, 2.9095e-05, 2.69038e-05, 2.4992e-05, 2.331e-05, 2.18196e-05
		)
}

CapTable	"metal3_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000175019, 9.7417e-05, 6.7384e-05, 5.03608e-05, 3.90288e-05, 3.08356e-05, 2.46324e-05, 1.98065e-05, 1.599e-05, 1.29391e-05, 1.04853e-05, 8.5025e-06, 6.89656e-06, 5.593e-06, 4.53392e-06, 3.67268e-06, 
			0.000183965, 0.00010369, 7.19774e-05, 5.38504e-05, 4.173e-05, 3.29576e-05, 2.63164e-05, 2.11524e-05, 1.70692e-05, 1.38066e-05, 1.11827e-05, 9.06372e-06, 7.34766e-06, 5.95484e-06, 4.82286e-06, 3.90308e-06, 
			0.000188126, 0.000106856, 7.43514e-05, 5.56508e-05, 4.31322e-05, 3.40582e-05, 2.71876e-05, 2.18452e-05, 1.76215e-05, 1.42488e-05, 1.15362e-05, 9.34542e-06, 7.57096e-06, 6.13182e-06, 4.96124e-06, 4.00948e-06, 
			0.000190213, 0.000108531, 7.56334e-05, 5.66334e-05, 4.38888e-05, 3.46508e-05, 2.76538e-05, 2.22134e-05, 1.79133e-05, 1.44792e-05, 1.17174e-05, 9.4866e-06, 7.68066e-06, 6.21416e-06, 5.0222e-06, 4.05246e-06, 
			0.000190807, 0.00010929, 7.62514e-05, 5.7115e-05, 4.42598e-05, 3.49414e-05, 2.78836e-05, 2.23922e-05, 1.80516e-05, 1.45846e-05, 1.17975e-05, 9.54556e-06, 7.72142e-06, 6.24e-06, 5.03796e-06, 4.05928e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.1749e-05, 1.52442e-05, 1.83336e-05, 2.11104e-05, 2.36155e-05, 2.58747e-05, 2.79031e-05, 2.9716e-05, 3.13293e-05, 3.27595e-05, 3.40214e-05, 3.51314e-05, 3.61062e-05, 3.69585e-05, 3.77042e-05, 3.83534e-05, 
			1.50807e-05, 1.85784e-05, 2.17847e-05, 2.47167e-05, 2.73846e-05, 2.9801e-05, 3.19765e-05, 3.39253e-05, 3.5662e-05, 3.72037e-05, 3.85651e-05, 3.97653e-05, 4.08183e-05, 4.17427e-05, 4.2549e-05, 4.3254e-05, 
			1.85565e-05, 2.21016e-05, 2.53987e-05, 2.84332e-05, 3.12041e-05, 3.37194e-05, 3.59877e-05, 3.80208e-05, 3.98339e-05, 4.14452e-05, 4.2869e-05, 4.41254e-05, 4.52283e-05, 4.61965e-05, 4.7042e-05, 4.7782e-05, 
			2.2176e-05, 2.57816e-05, 2.91448e-05, 3.22502e-05, 3.50932e-05, 3.76743e-05, 4.00047e-05, 4.20942e-05, 4.39599e-05, 4.56167e-05, 4.70842e-05, 4.8377e-05, 4.95147e-05, 5.05118e-05, 5.13855e-05, 5.21491e-05, 
			2.59259e-05, 2.95667e-05, 3.29775e-05, 3.61332e-05, 3.90228e-05, 4.16483e-05, 4.40199e-05, 4.61472e-05, 4.80491e-05, 4.97373e-05, 5.12333e-05, 5.25519e-05, 5.37131e-05, 5.47316e-05, 5.56244e-05, 5.64036e-05
		)
}

CapTable	"metal3_C_TOP_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.37156e-06, 8.26798e-06, 9.96016e-06, 1.14924e-05, 1.28855e-05, 1.41474e-05, 1.52869e-05, 1.63115e-05, 1.72268e-05, 1.80407e-05, 1.87622e-05, 1.93993e-05, 1.99589e-05, 2.04508e-05, 2.08801e-05, 2.12561e-05, 
			8.08529e-06, 9.96641e-06, 1.17111e-05, 1.33207e-05, 1.48003e-05, 1.61497e-05, 1.73734e-05, 1.84754e-05, 1.94626e-05, 2.03418e-05, 2.1123e-05, 2.18126e-05, 2.24211e-05, 2.29536e-05, 2.34223e-05, 2.38312e-05, 
			9.86391e-06, 1.176e-05, 1.35453e-05, 1.52094e-05, 1.67458e-05, 1.81518e-05, 1.94284e-05, 2.05806e-05, 2.16146e-05, 2.25358e-05, 2.33549e-05, 2.40785e-05, 2.47175e-05, 2.52785e-05, 2.57715e-05, 2.62019e-05, 
			1.1705e-05, 1.36259e-05, 1.54468e-05, 1.71517e-05, 1.87284e-05, 2.01737e-05, 2.14874e-05, 2.26746e-05, 2.37396e-05, 2.46908e-05, 2.55352e-05, 2.62836e-05, 2.69436e-05, 2.75242e-05, 2.80333e-05, 2.8479e-05, 
			1.36109e-05, 1.55489e-05, 1.73977e-05, 1.91308e-05, 2.07374e-05, 2.22117e-05, 2.35517e-05, 2.47636e-05, 2.58503e-05, 2.68223e-05, 2.76856e-05, 2.8451e-05, 2.91256e-05, 2.972e-05, 3.02399e-05, 3.06965e-05
		)
}

CapTable	"metal3_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000164868, 8.50336e-05, 5.40172e-05, 3.69126e-05, 2.61096e-05, 1.88165e-05, 1.37207e-05, 1.00801e-05, 7.44426e-06, 5.52014e-06, 4.10472e-06, 3.05684e-06, 2.2818e-06, 1.70395e-06, 1.27458e-06, 9.53432e-07, 
			0.000170356, 8.87692e-05, 5.6699e-05, 3.89056e-05, 2.76056e-05, 1.99499e-05, 1.45775e-05, 1.07307e-05, 7.9403e-06, 5.8943e-06, 4.38666e-06, 3.2712e-06, 2.44304e-06, 1.82601e-06, 1.36587e-06, 1.02105e-06, 
			0.000172346, 9.04156e-05, 5.79574e-05, 3.98632e-05, 2.8347e-05, 2.05178e-05, 1.50149e-05, 1.10675e-05, 8.19508e-06, 6.08994e-06, 4.5343e-06, 3.38402e-06, 2.52792e-06, 1.89028e-06, 1.41277e-06, 1.05766e-06, 
			0.000173139, 9.11918e-05, 5.85946e-05, 4.03622e-05, 2.87282e-05, 2.08208e-05, 1.52506e-05, 1.12477e-05, 8.33498e-06, 6.19682e-06, 4.61732e-06, 3.4465e-06, 2.57558e-06, 1.92406e-06, 1.43855e-06, 1.07664e-06, 
			0.000172971, 9.1436e-05, 5.8848e-05, 4.05808e-05, 2.89096e-05, 2.0968e-05, 1.53729e-05, 1.13421e-05, 8.40902e-06, 6.25356e-06, 4.66144e-06, 3.47662e-06, 2.59984e-06, 1.94486e-06, 1.45592e-06, 1.09029e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.05266e-05, 1.38839e-05, 1.69145e-05, 1.96572e-05, 2.21148e-05, 2.42915e-05, 2.61964e-05, 2.78441e-05, 2.92556e-05, 3.04561e-05, 3.14671e-05, 3.23161e-05, 3.30235e-05, 3.36116e-05, 3.40983e-05, 3.44995e-05, 
			1.38853e-05, 1.73324e-05, 2.05299e-05, 2.34482e-05, 2.60738e-05, 2.84002e-05, 3.04376e-05, 3.21993e-05, 3.37074e-05, 3.49902e-05, 3.60714e-05, 3.6978e-05, 3.77345e-05, 3.83631e-05, 3.88803e-05, 3.93106e-05, 
			1.7454e-05, 2.10016e-05, 2.43127e-05, 2.7342e-05, 3.00654e-05, 3.24779e-05, 3.45887e-05, 3.64121e-05, 3.79744e-05, 3.9301e-05, 4.04199e-05, 4.13579e-05, 4.21397e-05, 4.27986e-05, 4.33264e-05, 4.37709e-05, 
			2.12003e-05, 2.48345e-05, 2.82231e-05, 3.13234e-05, 3.41066e-05, 3.657e-05, 3.87226e-05, 4.05839e-05, 4.2176e-05, 4.35284e-05, 4.46692e-05, 4.56214e-05, 4.64189e-05, 4.70819e-05, 4.75878e-05, 4.80367e-05, 
			2.50872e-05, 2.87696e-05, 3.22073e-05, 3.53496e-05, 3.81678e-05, 4.06606e-05, 4.28369e-05, 4.47172e-05, 4.63271e-05, 4.76919e-05, 4.88523e-05, 4.98081e-05, 5.0613e-05, 5.12359e-05, 5.17869e-05, 5.22417e-05
		)
}

CapTable	"metal3_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.0543e-05, 1.39611e-05, 1.70625e-05, 1.98689e-05, 2.23847e-05, 2.46108e-05, 2.65558e-05, 2.82376e-05, 2.96771e-05, 3.0899e-05, 3.19302e-05, 3.27931e-05, 3.35132e-05, 3.41108e-05, 3.46053e-05, 3.50137e-05, 
			1.39039e-05, 1.742e-05, 2.06857e-05, 2.36694e-05, 2.635e-05, 2.87258e-05, 3.08002e-05, 3.25936e-05, 3.41304e-05, 3.54343e-05, 3.65339e-05, 3.74552e-05, 3.82223e-05, 3.88599e-05, 3.93907e-05, 3.98228e-05, 
			1.74968e-05, 2.1109e-05, 2.44869e-05, 2.75762e-05, 3.03524e-05, 3.28105e-05, 3.49567e-05, 3.68128e-05, 3.84007e-05, 3.97471e-05, 4.08828e-05, 4.18346e-05, 4.26289e-05, 4.32786e-05, 4.38321e-05, 4.42827e-05, 
			2.12729e-05, 2.49647e-05, 2.84165e-05, 3.15712e-05, 3.44046e-05, 3.69112e-05, 3.91006e-05, 4.09897e-05, 4.26067e-05, 4.39774e-05, 4.51334e-05, 4.6106e-05, 4.69094e-05, 4.75809e-05, 4.8178e-05, 4.86408e-05, 
			2.5187e-05, 2.89248e-05, 3.24213e-05, 3.56154e-05, 3.84834e-05, 4.1017e-05, 4.32265e-05, 4.51356e-05, 4.67683e-05, 4.81545e-05, 4.93132e-05, 5.02983e-05, 5.11146e-05, 5.18391e-05, 5.24011e-05, 5.2867e-05
		)
}

CapTable	"metal3_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181156, 0.000105743, 7.76572e-05, 6.22986e-05, 5.23278e-05, 4.51928e-05, 3.97624e-05, 3.54516e-05, 3.1925e-05, 2.89738e-05, 2.64602e-05, 2.42888e-05, 2.23912e-05, 2.07168e-05, 1.92269e-05, 1.78916e-05, 
			0.000192881, 0.000114877, 8.51552e-05, 6.86982e-05, 5.79154e-05, 5.01586e-05, 4.42338e-05, 3.95188e-05, 3.56534e-05, 3.24126e-05, 2.96476e-05, 2.72546e-05, 2.51596e-05, 2.33076e-05, 2.16566e-05, 2.0174e-05, 
			0.000199931, 0.000120909, 9.03422e-05, 7.3239e-05, 6.19738e-05, 5.38264e-05, 4.75822e-05, 4.25994e-05, 3.85046e-05, 3.5064e-05, 3.2122e-05, 2.9571e-05, 2.7333e-05, 2.53504e-05, 2.35794e-05, 2.1986e-05, 
			0.000204892, 0.000125368, 9.43032e-05, 7.67904e-05, 6.51902e-05, 5.67724e-05, 5.03006e-05, 4.51224e-05, 4.08568e-05, 3.72644e-05, 3.41862e-05, 3.15114e-05, 2.91598e-05, 2.70726e-05, 2.52046e-05, 2.35206e-05, 
			0.00020826, 0.000128764, 9.74276e-05, 7.96528e-05, 6.78246e-05, 5.92162e-05, 5.2578e-05, 4.72508e-05, 4.28526e-05, 3.91404e-05, 3.59528e-05, 3.31772e-05, 3.07324e-05, 2.85582e-05, 2.66086e-05, 2.4848e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.4955e-06, 1.29295e-05, 1.59694e-05, 1.85357e-05, 2.06189e-05, 2.22749e-05, 2.35609e-05, 2.45496e-05, 2.53027e-05, 2.58743e-05, 2.63139e-05, 2.66326e-05, 2.68748e-05, 2.70586e-05, 2.72466e-05, 2.73538e-05, 
			1.31959e-05, 1.67305e-05, 1.98988e-05, 2.2598e-05, 2.48033e-05, 2.65582e-05, 2.79266e-05, 2.89828e-05, 2.98001e-05, 3.04079e-05, 3.08695e-05, 3.12207e-05, 3.15427e-05, 3.17461e-05, 3.18999e-05, 3.20149e-05, 
			1.70297e-05, 2.06407e-05, 2.38947e-05, 2.66631e-05, 2.89297e-05, 3.0736e-05, 3.21485e-05, 3.32443e-05, 3.40775e-05, 3.47139e-05, 3.5197e-05, 3.56318e-05, 3.59117e-05, 3.61233e-05, 3.62816e-05, 3.63334e-05, 
			2.09613e-05, 2.46355e-05, 2.79374e-05, 3.07482e-05, 3.30498e-05, 3.48904e-05, 3.63234e-05, 3.74333e-05, 3.8288e-05, 3.90142e-05, 3.95127e-05, 3.98915e-05, 4.01774e-05, 4.03919e-05, 4.04755e-05, 4.05994e-05, 
			2.49728e-05, 2.86749e-05, 3.20024e-05, 3.48372e-05, 3.71574e-05, 3.9007e-05, 4.04591e-05, 4.15819e-05, 4.2531e-05, 4.31944e-05, 4.36976e-05, 4.40784e-05, 4.42802e-05, 4.45001e-05, 4.46661e-05, 4.47937e-05
		)
}

CapTable	"metal3_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.72697e-05, 3.71409e-05, 4.51754e-05, 5.15047e-05, 5.63965e-05, 6.01296e-05, 6.29574e-05, 6.50881e-05, 6.66913e-05, 6.78901e-05, 6.87821e-05, 6.9465e-05, 6.99685e-05, 7.03484e-05, 7.05797e-05, 7.07879e-05, 
			3.96463e-05, 4.97203e-05, 5.79492e-05, 6.44674e-05, 6.95281e-05, 7.34129e-05, 7.63689e-05, 7.86035e-05, 8.02756e-05, 8.15498e-05, 8.25048e-05, 8.32171e-05, 8.36933e-05, 8.40899e-05, 8.43852e-05, 8.46081e-05, 
			5.23609e-05, 6.24857e-05, 7.07789e-05, 7.73727e-05, 8.25093e-05, 8.64662e-05, 8.94816e-05, 9.17602e-05, 9.34904e-05, 9.47862e-05, 9.57667e-05, 9.64282e-05, 9.69744e-05, 9.73804e-05, 9.76886e-05, 9.79849e-05, 
			6.52325e-05, 7.53807e-05, 8.3702e-05, 9.03306e-05, 9.5511e-05, 9.94898e-05, 0.000102539, 0.000104852, 0.000106595, 0.000107834, 0.000108819, 0.000109557, 0.000110109, 0.000110527, 0.000110919, 0.000111149, 
			7.81954e-05, 8.83211e-05, 9.66506e-05, 0.000103291, 0.000108478, 0.000112481, 0.000115531, 0.000117858, 0.000119526, 0.000120845, 0.000121835, 0.000122585, 0.000123227, 0.000123642, 0.000123955, 0.000124184
		)
}

CapTable	"metal3_C_TOP_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.91779e-06, 8.86178e-06, 1.05662e-05, 1.21021e-05, 1.35036e-05, 1.47903e-05, 1.59728e-05, 1.70577e-05, 1.80514e-05, 1.89586e-05, 1.97832e-05, 2.05305e-05, 2.12068e-05, 2.18156e-05, 2.23641e-05, 2.28546e-05, 
			8.59992e-06, 1.04907e-05, 1.2228e-05, 1.38341e-05, 1.53223e-05, 1.66998e-05, 1.79729e-05, 1.9146e-05, 2.02223e-05, 2.12057e-05, 2.21005e-05, 2.29142e-05, 2.36494e-05, 2.43134e-05, 2.49099e-05, 2.5446e-05, 
			1.03217e-05, 1.2206e-05, 1.39778e-05, 1.56373e-05, 1.71857e-05, 1.86274e-05, 1.99634e-05, 2.11955e-05, 2.23264e-05, 2.33622e-05, 2.43053e-05, 2.51629e-05, 2.59376e-05, 2.66379e-05, 2.72673e-05, 2.78322e-05, 
			1.20957e-05, 1.39984e-05, 1.58028e-05, 1.75051e-05, 1.91021e-05, 2.05912e-05, 2.19721e-05, 2.32461e-05, 2.44189e-05, 2.5491e-05, 2.64697e-05, 2.73574e-05, 2.81615e-05, 2.88864e-05, 2.95394e-05, 3.01272e-05, 
			1.39364e-05, 1.58531e-05, 1.76887e-05, 1.94273e-05, 2.106e-05, 2.25833e-05, 2.39986e-05, 2.53054e-05, 2.65081e-05, 2.76072e-05, 2.86103e-05, 2.95208e-05, 3.03449e-05, 3.10906e-05, 3.17599e-05, 3.23615e-05
		)
}

CapTable	"metal3_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178914, 0.000102718, 7.38898e-05, 5.7828e-05, 4.71996e-05, 3.946e-05, 3.3484e-05, 2.86916e-05, 2.47492e-05, 2.14484e-05, 1.86497e-05, 1.62558e-05, 1.41942e-05, 1.24097e-05, 1.08599e-05, 9.50944e-06, 
			0.000189704, 0.000110845, 8.02982e-05, 6.30588e-05, 5.15466e-05, 4.3124e-05, 3.66036e-05, 3.13676e-05, 2.70574e-05, 2.34476e-05, 2.03866e-05, 1.77678e-05, 1.55124e-05, 1.35606e-05, 1.18647e-05, 1.03877e-05, 
			0.000195718, 0.000115774, 8.43178e-05, 6.63754e-05, 5.43356e-05, 4.5487e-05, 3.8622e-05, 3.3102e-05, 2.85552e-05, 2.47452e-05, 2.15136e-05, 1.87487e-05, 1.63668e-05, 1.43057e-05, 1.25141e-05, 1.09533e-05, 
			0.000199548, 0.000119045, 8.70438e-05, 6.86554e-05, 5.62538e-05, 4.71186e-05, 4.0019e-05, 3.43042e-05, 2.95932e-05, 2.5644e-05, 2.22938e-05, 1.94262e-05, 1.69565e-05, 1.4818e-05, 1.29596e-05, 1.13403e-05, 
			0.000201704, 0.000121191, 8.88884e-05, 7.02186e-05, 5.75794e-05, 4.82532e-05, 4.09938e-05, 3.51428e-05, 3.0317e-05, 2.62702e-05, 2.28366e-05, 1.98966e-05, 1.73637e-05, 1.51708e-05, 1.32651e-05, 1.16043e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.3259e-05, 1.66222e-05, 1.944e-05, 2.18883e-05, 2.40632e-05, 2.60215e-05, 2.77996e-05, 2.94234e-05, 3.09116e-05, 3.22798e-05, 3.35409e-05, 3.47061e-05, 3.57849e-05, 3.67857e-05, 3.77162e-05, 3.8583e-05, 
			1.5979e-05, 1.9096e-05, 2.18498e-05, 2.43143e-05, 2.65445e-05, 2.85764e-05, 3.04369e-05, 3.21462e-05, 3.37213e-05, 3.51762e-05, 3.65227e-05, 3.77721e-05, 3.89333e-05, 4.00145e-05, 4.10234e-05, 4.19665e-05, 
			1.86168e-05, 2.1597e-05, 2.43018e-05, 2.6766e-05, 2.90196e-05, 3.10896e-05, 3.29965e-05, 3.47574e-05, 3.63873e-05, 3.78988e-05, 3.93035e-05, 4.06109e-05, 4.18304e-05, 4.29698e-05, 4.40363e-05, 4.50363e-05, 
			2.1216e-05, 2.41162e-05, 2.67818e-05, 2.92376e-05, 3.15006e-05, 3.3592e-05, 3.55282e-05, 3.73238e-05, 3.89924e-05, 4.05457e-05, 4.19938e-05, 4.33462e-05, 4.46117e-05, 4.57974e-05, 4.69104e-05, 4.79569e-05, 
			2.381e-05, 2.66376e-05, 2.92704e-05, 3.17132e-05, 3.39784e-05, 3.60816e-05, 3.8037e-05, 3.9858e-05, 4.15557e-05, 4.31414e-05, 4.46243e-05, 4.60135e-05, 4.73168e-05, 4.85414e-05, 4.96938e-05, 5.078e-05
		)
}

CapTable	"metal3_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.11381e-05, 1.45981e-05, 1.77029e-05, 2.05104e-05, 2.3041e-05, 2.53126e-05, 2.73337e-05, 2.91207e-05, 3.06871e-05, 3.20526e-05, 3.32365e-05, 3.42561e-05, 3.51332e-05, 3.5883e-05, 3.65222e-05, 3.70664e-05, 
			1.44485e-05, 1.79587e-05, 2.12055e-05, 2.41801e-05, 2.6882e-05, 2.931e-05, 3.14764e-05, 3.33902e-05, 3.50708e-05, 3.65338e-05, 3.78039e-05, 3.88991e-05, 3.98389e-05, 4.06446e-05, 4.13317e-05, 4.19173e-05, 
			1.79575e-05, 2.15395e-05, 2.48898e-05, 2.79734e-05, 3.07781e-05, 3.33017e-05, 3.55512e-05, 3.7539e-05, 3.92853e-05, 4.08066e-05, 4.21245e-05, 4.32631e-05, 4.42412e-05, 4.50777e-05, 4.57932e-05, 4.64012e-05, 
			2.16337e-05, 2.52907e-05, 2.87132e-05, 3.187e-05, 3.47406e-05, 3.73243e-05, 3.96249e-05, 4.166e-05, 4.34451e-05, 4.50005e-05, 4.63504e-05, 4.75147e-05, 4.85145e-05, 4.93724e-05, 5.01038e-05, 5.07185e-05, 
			2.54558e-05, 2.9156e-05, 3.26286e-05, 3.58308e-05, 3.87423e-05, 4.13625e-05, 4.36961e-05, 4.57575e-05, 4.75677e-05, 4.91456e-05, 5.05129e-05, 5.16944e-05, 5.27081e-05, 5.35661e-05, 5.43104e-05, 5.49471e-05
		)
}

CapTable	"metal3_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176453, 9.9376e-05, 6.9785e-05, 5.30996e-05, 4.1998e-05, 3.39308e-05, 2.77638e-05, 2.29e-05, 1.89868e-05, 1.58e-05, 1.31793e-05, 1.10149e-05, 9.21636e-06, 7.7198e-06, 6.47236e-06, 5.4299e-06, 
			0.000186111, 0.000106361, 7.50656e-05, 5.7238e-05, 4.52998e-05, 3.66062e-05, 2.99538e-05, 2.47076e-05, 2.0486e-05, 1.7048e-05, 1.42233e-05, 1.18877e-05, 9.9498e-06, 8.33666e-06, 6.99112e-06, 5.86686e-06, 
			0.000190979, 0.00011019, 7.80466e-05, 5.95864e-05, 4.71938e-05, 3.81452e-05, 3.12178e-05, 2.57516e-05, 2.13554e-05, 1.77732e-05, 1.48306e-05, 1.23982e-05, 1.03792e-05, 8.69878e-06, 7.29662e-06, 6.12594e-06, 
			0.000193717, 0.000112447, 7.98444e-05, 6.10222e-05, 4.83494e-05, 3.9089e-05, 3.19946e-05, 2.63962e-05, 2.18924e-05, 1.82241e-05, 1.52094e-05, 1.27176e-05, 1.06493e-05, 8.92708e-06, 7.49116e-06, 6.29228e-06, 
			0.000194875, 0.000113695, 8.08846e-05, 6.18692e-05, 4.90378e-05, 3.96586e-05, 3.24682e-05, 2.67912e-05, 2.22238e-05, 1.85026e-05, 1.54448e-05, 1.29165e-05, 1.08187e-05, 9.07388e-06, 7.61698e-06, 6.40012e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.11961e-06, 1.16602e-05, 1.38761e-05, 1.58675e-05, 1.76839e-05, 1.93497e-05, 2.08793e-05, 2.22821e-05, 2.35643e-05, 2.47326e-05, 2.5795e-05, 2.67572e-05, 2.76254e-05, 2.84085e-05, 2.91105e-05, 2.97419e-05, 
			1.13805e-05, 1.38567e-05, 1.61228e-05, 1.82122e-05, 2.01454e-05, 2.19332e-05, 2.35825e-05, 2.50983e-05, 2.64872e-05, 2.77554e-05, 2.89101e-05, 2.99554e-05, 3.09012e-05, 3.17526e-05, 3.25194e-05, 3.32059e-05, 
			1.36887e-05, 1.61652e-05, 1.84834e-05, 2.06483e-05, 2.26647e-05, 2.45357e-05, 2.62656e-05, 2.78592e-05, 2.93209e-05, 3.06552e-05, 3.18707e-05, 3.29714e-05, 3.39688e-05, 3.48661e-05, 3.56751e-05, 3.64008e-05, 
			1.60743e-05, 1.8581e-05, 2.09494e-05, 2.31735e-05, 2.52511e-05, 2.7184e-05, 2.89734e-05, 3.06236e-05, 3.21358e-05, 3.35191e-05, 3.47768e-05, 3.59193e-05, 3.69514e-05, 3.78835e-05, 3.87219e-05, 3.94727e-05, 
			1.85506e-05, 2.10849e-05, 2.34929e-05, 2.57631e-05, 2.78886e-05, 2.98675e-05, 3.17001e-05, 3.33904e-05, 3.494e-05, 3.63581e-05, 3.76476e-05, 3.88192e-05, 3.98788e-05, 4.08327e-05, 4.16927e-05, 4.24642e-05
		)
}

CapTable	"metal3_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.80795e-05, 3.80431e-05, 4.61184e-05, 5.24882e-05, 5.74548e-05, 6.13219e-05, 6.43197e-05, 6.66441e-05, 6.84548e-05, 6.98614e-05, 7.09621e-05, 7.18237e-05, 7.24558e-05, 7.30055e-05, 7.34322e-05, 7.37705e-05, 
			4.04393e-05, 5.0524e-05, 5.87612e-05, 6.53067e-05, 7.04642e-05, 7.45031e-05, 7.76606e-05, 8.01245e-05, 8.20476e-05, 8.35566e-05, 8.46855e-05, 8.5633e-05, 8.63781e-05, 8.6964e-05, 8.74301e-05, 8.77905e-05, 
			5.30585e-05, 6.31505e-05, 7.1435e-05, 7.80727e-05, 8.33216e-05, 8.74586e-05, 9.07028e-05, 9.32421e-05, 9.5238e-05, 9.67607e-05, 9.8009e-05, 9.89909e-05, 9.97652e-05, 0.000100377, 0.000100856, 0.000101266, 
			6.57993e-05, 7.59039e-05, 8.4211e-05, 9.08941e-05, 9.62075e-05, 0.000100391, 0.000103688, 0.000106228, 0.000108285, 0.000109903, 0.000111177, 0.000112185, 0.000112974, 0.000113635, 0.000114125, 0.000114487, 
			7.86305e-05, 8.87042e-05, 9.70242e-05, 0.000103731, 0.000109066, 0.000113288, 0.000116573, 0.000119214, 0.000121291, 0.00012293, 0.000124223, 0.000125239, 0.000126081, 0.000126716, 0.00012718, 0.000127577
		)
}

CapTable	"metal3_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000166096, 8.67804e-05, 5.61892e-05, 3.93788e-05, 2.8732e-05, 2.14492e-05, 1.62674e-05, 1.2482e-05, 9.65552e-06, 7.52202e-06, 5.89244e-06, 4.63842e-06, 3.6706e-06, 2.91272e-06, 2.3224e-06, 1.85924e-06, 
			0.000172326, 9.12792e-05, 5.96036e-05, 4.20742e-05, 3.0856e-05, 2.31592e-05, 1.76417e-05, 1.35866e-05, 1.05515e-05, 8.247e-06, 6.48538e-06, 5.12064e-06, 4.06106e-06, 3.23494e-06, 2.58892e-06, 2.08154e-06, 
			0.000175074, 9.3651e-05, 6.1538e-05, 4.36204e-05, 3.21298e-05, 2.41924e-05, 1.84893e-05, 1.42833e-05, 1.11217e-05, 8.7189e-06, 6.86958e-06, 5.4393e-06, 4.3271e-06, 3.45916e-06, 2.7785e-06, 2.24244e-06, 
			0.000176576, 9.50562e-05, 6.27428e-05, 4.46226e-05, 3.29482e-05, 2.48788e-05, 1.90605e-05, 1.47605e-05, 1.1518e-05, 9.04652e-06, 7.14542e-06, 5.67464e-06, 4.5274e-06, 3.62856e-06, 2.92636e-06, 2.37452e-06, 
			0.000177019, 9.58432e-05, 6.34668e-05, 4.5252e-05, 3.34886e-05, 2.5339e-05, 1.94563e-05, 1.50903e-05, 1.17993e-05, 9.28688e-06, 7.35358e-06, 5.85318e-06, 4.6816e-06, 3.7683e-06, 3.0547e-06, 2.49122e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.0633e-06, 1.05079e-05, 1.26981e-05, 1.46891e-05, 1.64976e-05, 1.81288e-05, 1.95894e-05, 2.08848e-05, 2.20283e-05, 2.30265e-05, 2.3896e-05, 2.46465e-05, 2.52936e-05, 2.58484e-05, 2.63221e-05, 2.67259e-05, 
			1.03827e-05, 1.28417e-05, 1.51299e-05, 1.7242e-05, 1.91748e-05, 2.09263e-05, 2.24954e-05, 2.38902e-05, 2.51216e-05, 2.61994e-05, 2.71351e-05, 2.79457e-05, 2.86439e-05, 2.92421e-05, 2.97536e-05, 3.01885e-05, 
			1.28077e-05, 1.53155e-05, 1.76796e-05, 1.98752e-05, 2.18887e-05, 2.37156e-05, 2.53532e-05, 2.68101e-05, 2.80923e-05, 2.92162e-05, 3.01936e-05, 3.10386e-05, 3.17665e-05, 3.23904e-05, 3.29232e-05, 3.33776e-05, 
			1.53425e-05, 1.79057e-05, 2.03294e-05, 2.25838e-05, 2.4652e-05, 2.65287e-05, 2.82116e-05, 2.97053e-05, 3.10227e-05, 3.21754e-05, 3.31776e-05, 3.40446e-05, 3.47906e-05, 3.54303e-05, 3.59769e-05, 3.64508e-05, 
			1.7977e-05, 2.05758e-05, 2.30438e-05, 2.5339e-05, 2.74469e-05, 2.93529e-05, 3.10637e-05, 3.25823e-05, 3.39205e-05, 3.50918e-05, 3.61093e-05, 3.69891e-05, 3.77472e-05, 3.8405e-05, 3.89576e-05, 3.94248e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.34556e-05, 1.68862e-05, 1.97758e-05, 2.23072e-05, 2.45802e-05, 2.66533e-05, 2.85629e-05, 3.03331e-05, 3.19804e-05, 3.35171e-05, 3.49532e-05, 3.62959e-05, 3.75524e-05, 3.8728e-05, 3.98283e-05, 4.08577e-05, 
			1.62322e-05, 1.94272e-05, 2.2272e-05, 2.48475e-05, 2.72095e-05, 2.93942e-05, 3.14262e-05, 3.33233e-05, 3.50985e-05, 3.67622e-05, 3.83222e-05, 3.97856e-05, 4.11584e-05, 4.24461e-05, 4.36534e-05, 4.4785e-05, 
			1.89444e-05, 2.20232e-05, 2.48502e-05, 2.74595e-05, 2.98836e-05, 3.21469e-05, 3.42666e-05, 3.62555e-05, 3.81242e-05, 3.98811e-05, 4.15327e-05, 4.30856e-05, 4.45451e-05, 4.59162e-05, 4.72036e-05, 4.84119e-05, 
			2.1648e-05, 2.46788e-05, 2.75038e-05, 3.01448e-05, 3.26213e-05, 3.49477e-05, 3.7137e-05, 3.91993e-05, 4.11426e-05, 4.29739e-05, 4.46992e-05, 4.63237e-05, 4.78527e-05, 4.92909e-05, 5.06429e-05, 5.19127e-05, 
			2.4393e-05, 2.73892e-05, 3.02232e-05, 3.28952e-05, 3.54156e-05, 3.77946e-05, 4.0042e-05, 4.21649e-05, 4.41698e-05, 4.60625e-05, 4.78483e-05, 4.95321e-05, 5.11185e-05, 5.2612e-05, 5.40169e-05, 5.53376e-05
		)
}

CapTable	"metal3_C_LATERAL_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180977, 0.000105496, 7.73284e-05, 6.18706e-05, 5.17822e-05, 4.45122e-05, 3.89314e-05, 3.44586e-05, 3.0762e-05, 2.76366e-05, 2.4948e-05, 2.26046e-05, 2.05402e-05, 1.87067e-05, 1.7067e-05, 1.55928e-05, 
			0.00019263, 0.000114531, 8.4692e-05, 6.80946e-05, 5.71492e-05, 4.92108e-05, 4.309e-05, 3.8169e-05, 3.40924e-05, 3.06394e-05, 2.76652e-05, 2.50696e-05, 2.2781e-05, 2.07466e-05, 1.89261e-05, 1.72883e-05, 
			0.000199571, 0.000120416, 8.96878e-05, 7.23972e-05, 6.09224e-05, 5.25478e-05, 4.60644e-05, 4.08362e-05, 3.64948e-05, 3.28106e-05, 2.96326e-05, 2.68556e-05, 2.44046e-05, 2.2224e-05, 2.02712e-05, 1.85131e-05, 
			0.000204372, 0.000124667, 9.33922e-05, 7.56432e-05, 6.37864e-05, 5.50982e-05, 4.83484e-05, 4.28902e-05, 3.83482e-05, 3.44872e-05, 3.11518e-05, 2.82342e-05, 2.56566e-05, 2.33614e-05, 2.13044e-05, 1.94517e-05, 
			0.000207516, 0.00012779, 9.61918e-05, 7.81328e-05, 6.60044e-05, 5.70868e-05, 5.01368e-05, 4.45014e-05, 3.9803e-05, 3.58032e-05, 3.23434e-05, 2.93138e-05, 2.6635e-05, 2.4248e-05, 2.21076e-05, 2.01784e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.0579e-06, 9.5325e-06, 1.17204e-05, 1.3576e-05, 1.51022e-05, 1.63489e-05, 1.73456e-05, 1.81332e-05, 1.87592e-05, 1.92539e-05, 1.96438e-05, 1.99511e-05, 2.02349e-05, 2.04113e-05, 2.05528e-05, 2.06643e-05, 
			9.6353e-06, 1.21438e-05, 1.44092e-05, 1.63501e-05, 1.79788e-05, 1.93037e-05, 2.03737e-05, 2.12299e-05, 2.19109e-05, 2.24504e-05, 2.29291e-05, 2.32514e-05, 2.35068e-05, 2.37101e-05, 2.3861e-05, 2.3994e-05, 
			1.22661e-05, 1.48055e-05, 1.7124e-05, 1.91319e-05, 2.08086e-05, 2.2187e-05, 2.33019e-05, 2.41976e-05, 2.49113e-05, 2.55224e-05, 2.59594e-05, 2.63068e-05, 2.65827e-05, 2.67938e-05, 2.69725e-05, 2.70796e-05, 
			1.49407e-05, 1.75269e-05, 1.98792e-05, 2.19233e-05, 2.36403e-05, 2.50512e-05, 2.61955e-05, 2.71655e-05, 2.7886e-05, 2.84615e-05, 2.89186e-05, 2.92724e-05, 2.95666e-05, 2.97634e-05, 2.99476e-05, 3.01215e-05, 
			1.76749e-05, 2.02786e-05, 2.2658e-05, 2.4728e-05, 2.64684e-05, 2.7899e-05, 2.91037e-05, 3.00257e-05, 3.07657e-05, 3.13561e-05, 3.18194e-05, 3.21988e-05, 3.24604e-05, 3.26967e-05, 3.29193e-05, 3.30658e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.57362e-06, 9.60601e-06, 1.13594e-05, 1.29249e-05, 1.43521e-05, 1.56648e-05, 1.68779e-05, 1.80011e-05, 1.90405e-05, 2.00003e-05, 2.08847e-05, 2.16974e-05, 2.24441e-05, 2.31266e-05, 2.37511e-05, 2.43195e-05, 
			9.31462e-06, 1.12618e-05, 1.30302e-05, 1.46582e-05, 1.61677e-05, 1.75715e-05, 1.88785e-05, 2.00938e-05, 2.12203e-05, 2.22649e-05, 2.32281e-05, 2.41163e-05, 2.49301e-05, 2.56772e-05, 2.63595e-05, 2.69826e-05, 
			1.10611e-05, 1.29847e-05, 1.47793e-05, 1.64568e-05, 1.80273e-05, 1.94976e-05, 2.08708e-05, 2.21506e-05, 2.33395e-05, 2.44424e-05, 2.54607e-05, 2.64e-05, 2.72624e-05, 2.80535e-05, 2.87768e-05, 2.94366e-05, 
			1.28461e-05, 1.47777e-05, 1.66009e-05, 1.8322e-05, 1.99422e-05, 2.14622e-05, 2.28868e-05, 2.42154e-05, 2.54525e-05, 2.65983e-05, 2.76585e-05, 2.86352e-05, 2.95337e-05, 3.03568e-05, 3.11104e-05, 3.17979e-05, 
			1.46906e-05, 1.66308e-05, 1.84845e-05, 2.02423e-05, 2.19009e-05, 2.34612e-05, 2.49246e-05, 2.62908e-05, 2.75636e-05, 2.87432e-05, 2.98348e-05, 3.08406e-05, 3.17655e-05, 3.26135e-05, 3.33898e-05, 3.40964e-05
		)
}

CapTable	"metal3_C_TOP_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.44678e-06, 9.47119e-06, 1.12239e-05, 1.27915e-05, 1.42175e-05, 1.55293e-05, 1.67417e-05, 1.78629e-05, 1.88993e-05, 1.98566e-05, 2.07388e-05, 2.15506e-05, 2.22943e-05, 2.29757e-05, 2.35972e-05, 2.41639e-05, 
			9.15318e-06, 1.10938e-05, 1.2863e-05, 1.44898e-05, 1.5998e-05, 1.74002e-05, 1.87042e-05, 1.99154e-05, 2.10402e-05, 2.20797e-05, 2.30402e-05, 2.39233e-05, 2.4736e-05, 2.54795e-05, 2.61587e-05, 2.67782e-05, 
			1.08769e-05, 1.27923e-05, 1.45839e-05, 1.62596e-05, 1.78272e-05, 1.92928e-05, 2.06617e-05, 2.19374e-05, 2.3123e-05, 2.42207e-05, 2.52354e-05, 2.61695e-05, 2.70278e-05, 2.78144e-05, 2.85338e-05, 2.91892e-05, 
			1.26389e-05, 1.45607e-05, 1.63801e-05, 1.80962e-05, 1.97109e-05, 2.12275e-05, 2.26456e-05, 2.39692e-05, 2.51996e-05, 2.63415e-05, 2.73959e-05, 2.83679e-05, 2.92606e-05, 3.00786e-05, 3.08269e-05, 3.15099e-05, 
			1.44614e-05, 1.63926e-05, 1.82375e-05, 1.99885e-05, 2.16421e-05, 2.31978e-05, 2.46546e-05, 2.60155e-05, 2.7281e-05, 2.84547e-05, 2.95398e-05, 3.05401e-05, 3.14582e-05, 3.2301e-05, 3.30707e-05, 3.37738e-05
		)
}

CapTable	"metal3_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179717, 0.000103801, 7.52238e-05, 5.93814e-05, 4.89374e-05, 4.13452e-05, 3.54796e-05, 3.07624e-05, 2.68628e-05, 2.35758e-05, 2.07664e-05, 1.83402e-05, 1.62289e-05, 1.43813e-05, 1.2757e-05, 1.13249e-05, 
			0.00019086, 0.000112293, 8.20068e-05, 6.49898e-05, 5.36592e-05, 4.53762e-05, 3.89552e-05, 3.37812e-05, 2.94992e-05, 2.58874e-05, 2.27994e-05, 2.01322e-05, 1.78114e-05, 1.578e-05, 1.3995e-05, 1.24201e-05, 
			0.000197244, 0.000117593, 8.63918e-05, 6.86616e-05, 5.67888e-05, 4.80636e-05, 4.12806e-05, 3.58046e-05, 3.12678e-05, 2.74386e-05, 2.41634e-05, 2.13336e-05, 1.88714e-05, 1.67157e-05, 1.48208e-05, 1.31503e-05, 
			0.000201448, 0.000121227, 8.9465e-05, 7.12698e-05, 5.90154e-05, 4.99828e-05, 4.29442e-05, 3.72538e-05, 3.25342e-05, 2.85486e-05, 2.51382e-05, 2.21914e-05, 1.96261e-05, 1.73814e-05, 1.54072e-05, 1.36659e-05, 
			0.000203964, 0.000123714, 9.1628e-05, 7.31282e-05, 6.0613e-05, 5.13666e-05, 4.41472e-05, 3.83012e-05, 3.34488e-05, 2.93496e-05, 2.584e-05, 2.2807e-05, 2.01672e-05, 1.78554e-05, 1.58232e-05, 1.40315e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.6407e-06, 8.5985e-06, 1.03389e-05, 1.19145e-05, 1.33471e-05, 1.46437e-05, 1.58149e-05, 1.68632e-05, 1.77975e-05, 1.86284e-05, 1.93595e-05, 2.00057e-05, 2.05689e-05, 2.10645e-05, 2.14968e-05, 2.18725e-05, 
			8.4479e-06, 1.03883e-05, 1.21856e-05, 1.38453e-05, 1.53688e-05, 1.67569e-05, 1.80131e-05, 1.91447e-05, 2.01529e-05, 2.10519e-05, 2.18471e-05, 2.25453e-05, 2.31607e-05, 2.36991e-05, 2.41684e-05, 2.45774e-05, 
			1.03094e-05, 1.22696e-05, 1.41136e-05, 1.58323e-05, 1.74162e-05, 1.88638e-05, 2.01782e-05, 2.13594e-05, 2.24184e-05, 2.3358e-05, 2.41925e-05, 2.49279e-05, 2.55739e-05, 2.61392e-05, 2.6633e-05, 2.70637e-05, 
			1.2237e-05, 1.42261e-05, 1.61098e-05, 1.78701e-05, 1.9499e-05, 2.09884e-05, 2.23419e-05, 2.35612e-05, 2.46509e-05, 2.56228e-05, 2.64835e-05, 2.72422e-05, 2.79092e-05, 2.84934e-05, 2.90045e-05, 2.94501e-05, 
			1.42313e-05, 1.6241e-05, 1.81542e-05, 1.99489e-05, 2.16076e-05, 2.31274e-05, 2.45067e-05, 2.57504e-05, 2.68646e-05, 2.78568e-05, 2.87353e-05, 2.95103e-05, 3.0192e-05, 3.07897e-05, 3.13128e-05, 3.17688e-05
		)
}

CapTable	"metal3_C_TOP_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.16579e-05, 1.51907e-05, 1.83332e-05, 2.11616e-05, 2.371e-05, 2.60021e-05, 2.80538e-05, 2.98825e-05, 3.15038e-05, 3.29348e-05, 3.41933e-05, 3.52943e-05, 3.62584e-05, 3.70979e-05, 3.78272e-05, 3.84612e-05, 
			1.49821e-05, 1.85293e-05, 2.17904e-05, 2.47709e-05, 2.74807e-05, 2.99286e-05, 3.21254e-05, 3.40866e-05, 3.58286e-05, 3.73672e-05, 3.87207e-05, 3.99104e-05, 4.09492e-05, 4.18565e-05, 4.26467e-05, 4.33343e-05, 
			1.84736e-05, 2.2067e-05, 2.54148e-05, 2.84953e-05, 3.13042e-05, 3.38473e-05, 3.61332e-05, 3.81748e-05, 3.99888e-05, 4.15954e-05, 4.30088e-05, 4.42508e-05, 4.5338e-05, 4.62877e-05, 4.71161e-05, 4.7836e-05, 
			2.21102e-05, 2.57605e-05, 2.91718e-05, 3.23195e-05, 3.51962e-05, 3.78012e-05, 4.01443e-05, 4.2238e-05, 4.41025e-05, 4.57509e-05, 4.72052e-05, 4.8483e-05, 4.96015e-05, 5.05809e-05, 5.14335e-05, 5.21758e-05, 
			2.58787e-05, 2.9561e-05, 3.30164e-05, 3.62101e-05, 3.91294e-05, 4.17742e-05, 4.41573e-05, 4.6287e-05, 4.81832e-05, 4.98622e-05, 5.13434e-05, 5.26464e-05, 5.37872e-05, 5.47844e-05, 5.56524e-05, 5.64099e-05
		)
}

CapTable	"metal3_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00017716, 0.000100355, 7.10132e-05, 5.45474e-05, 4.36264e-05, 3.56994e-05, 2.96274e-05, 2.48188e-05, 2.09254e-05, 1.77234e-05, 1.50654e-05, 1.28384e-05, 1.09658e-05, 9.37998e-06, 8.03558e-06, 6.89226e-06, 
			0.000187173, 0.000107716, 7.6688e-05, 5.90876e-05, 4.73308e-05, 3.87688e-05, 3.22012e-05, 2.6992e-05, 2.27732e-05, 1.93006e-05, 1.64145e-05, 1.39984e-05, 1.19618e-05, 1.02388e-05, 8.77716e-06, 7.53238e-06, 
			0.000192425, 0.000111938, 8.00626e-05, 6.18214e-05, 4.95966e-05, 4.06634e-05, 3.37982e-05, 2.83516e-05, 2.39324e-05, 2.02968e-05, 1.72714e-05, 1.47356e-05, 1.25985e-05, 1.07901e-05, 9.25356e-06, 7.94606e-06, 
			0.00019556, 0.000114588, 8.22404e-05, 6.36214e-05, 5.10928e-05, 4.19264e-05, 3.48712e-05, 2.92672e-05, 2.47198e-05, 2.0974e-05, 1.78563e-05, 1.52426e-05, 1.30381e-05, 1.11709e-05, 9.58534e-06, 8.235e-06, 
			0.00019711, 0.000116212, 8.36354e-05, 6.4797e-05, 5.2088e-05, 4.27744e-05, 3.5601e-05, 2.98946e-05, 2.52602e-05, 2.14416e-05, 1.82625e-05, 1.55946e-05, 1.3345e-05, 1.14394e-05, 9.8208e-06, 8.44112e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.7011e-06, 7.6663e-06, 9.3958e-06, 1.08608e-05, 1.20787e-05, 1.30568e-05, 1.38589e-05, 1.44982e-05, 1.50177e-05, 1.54361e-05, 1.57733e-05, 1.60456e-05, 1.62663e-05, 1.64452e-05, 1.66648e-05, 1.67652e-05, 
			7.7181e-06, 9.692e-06, 1.14622e-05, 1.29813e-05, 1.42671e-05, 1.53251e-05, 1.61819e-05, 1.68835e-05, 1.74515e-05, 1.79125e-05, 1.82851e-05, 1.85886e-05, 1.89261e-05, 1.91054e-05, 1.92533e-05, 1.93742e-05, 
			9.7458e-06, 1.17339e-05, 1.35304e-05, 1.51038e-05, 1.6424e-05, 1.7524e-05, 1.84269e-05, 1.91634e-05, 1.97638e-05, 2.02518e-05, 2.06496e-05, 2.10567e-05, 2.13009e-05, 2.15023e-05, 2.16653e-05, 2.18027e-05, 
			1.17891e-05, 1.37974e-05, 1.56293e-05, 1.72251e-05, 1.85815e-05, 1.97102e-05, 2.06404e-05, 2.14014e-05, 2.2024e-05, 2.26304e-05, 2.30232e-05, 2.33431e-05, 2.36063e-05, 2.38234e-05, 2.40002e-05, 2.41309e-05, 
			1.38735e-05, 1.58859e-05, 1.77359e-05, 1.93582e-05, 2.0734e-05, 2.18832e-05, 2.28316e-05, 2.36115e-05, 2.43374e-05, 2.48391e-05, 2.52507e-05, 2.55874e-05, 2.58649e-05, 2.60919e-05, 2.62663e-05, 2.64281e-05
		)
}

CapTable	"metal3_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.86651e-05, 3.87213e-05, 4.68468e-05, 5.32402e-05, 5.82531e-05, 6.21397e-05, 6.52014e-05, 6.7597e-05, 6.94953e-05, 7.09957e-05, 7.21934e-05, 7.31528e-05, 7.39254e-05, 7.45507e-05, 7.498e-05, 7.54143e-05, 
			4.10477e-05, 5.11736e-05, 5.94074e-05, 6.59457e-05, 7.11309e-05, 7.52179e-05, 7.84401e-05, 8.09931e-05, 8.3019e-05, 8.464e-05, 8.59438e-05, 8.69925e-05, 8.77407e-05, 8.8454e-05, 8.90357e-05, 8.95098e-05, 
			5.36156e-05, 6.37109e-05, 7.19526e-05, 7.85866e-05, 8.3852e-05, 8.80412e-05, 9.13651e-05, 9.4007e-05, 9.61222e-05, 9.78199e-05, 9.91891e-05, 0.000100209, 0.000101133, 0.000101884, 0.000102502, 0.000103, 
			6.62501e-05, 7.63164e-05, 8.45877e-05, 9.12535e-05, 9.65891e-05, 0.000100832, 0.00010422, 0.000106938, 0.000109115, 0.000110758, 0.000112201, 0.000113379, 0.000114333, 0.000115111, 0.000115749, 0.000116281, 
			7.89573e-05, 8.89643e-05, 9.72357e-05, 0.000103926, 0.000109289, 0.000113579, 0.000117015, 0.000119773, 0.000121901, 0.000123719, 0.000125193, 0.000126397, 0.000127367, 0.000128168, 0.000128838, 0.000129375
		)
}

CapTable	"metal3_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000166689, 8.76434e-05, 5.72944e-05, 4.0686e-05, 3.01542e-05, 2.29896e-05, 1.78332e-05, 1.404e-05, 1.1166e-05, 8.96352e-06, 7.25022e-06, 5.90348e-06, 4.83514e-06, 3.98106e-06, 3.2992e-06, 2.74192e-06, 
			0.000173296, 9.25434e-05, 6.11504e-05, 4.3843e-05, 3.2754e-05, 2.5116e-05, 1.9618e-05, 1.55244e-05, 1.24175e-05, 1.00175e-05, 8.13906e-06, 6.65586e-06, 5.4822e-06, 4.53158e-06, 3.76398e-06, 3.141e-06, 
			0.000176478, 9.53532e-05, 6.3543e-05, 4.58176e-05, 3.4449e-05, 2.65538e-05, 2.0833e-05, 1.65626e-05, 1.3302e-05, 1.07733e-05, 8.7873e-06, 7.21832e-06, 5.95712e-06, 4.94166e-06, 4.11772e-06, 3.4503e-06, 
			0.000178441, 9.72372e-05, 6.5173e-05, 4.72394e-05, 3.56564e-05, 2.76038e-05, 2.17406e-05, 1.73406e-05, 1.3973e-05, 1.13636e-05, 9.29778e-06, 7.65188e-06, 6.3347e-06, 5.27158e-06, 4.4088e-06, 3.70506e-06, 
			0.000179325, 9.84608e-05, 6.63194e-05, 4.82548e-05, 3.6556e-05, 2.83948e-05, 2.24354e-05, 1.79505e-05, 1.45126e-05, 1.18239e-05, 9.70132e-06, 8.00558e-06, 6.65014e-06, 5.55106e-06, 4.65472e-06, 3.9249e-06
		)
}

CapTable	"metal2_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167294, 8.85012e-05, 5.83984e-05, 4.19702e-05, 3.15748e-05, 2.44496e-05, 1.93183e-05, 1.54957e-05, 1.25772e-05, 1.03061e-05, 8.51158e-06, 7.07578e-06, 5.9149e-06, 4.96782e-06, 4.18922e-06, 3.54486e-06, 
			0.000173984, 9.35048e-05, 6.2381e-05, 4.5271e-05, 3.43454e-05, 2.67958e-05, 2.13148e-05, 1.71996e-05, 1.40341e-05, 1.15536e-05, 9.58096e-06, 7.99334e-06, 6.7028e-06, 5.64508e-06, 4.77152e-06, 4.04584e-06, 
			0.000177254, 9.64456e-05, 6.49178e-05, 4.74474e-05, 3.6236e-05, 2.84304e-05, 2.2728e-05, 1.84214e-05, 1.50898e-05, 1.24655e-05, 1.03686e-05, 8.67352e-06, 7.29018e-06, 6.15192e-06, 5.20906e-06, 4.4234e-06, 
			0.000179342, 9.84848e-05, 6.67538e-05, 4.9068e-05, 3.76506e-05, 2.96692e-05, 2.38094e-05, 1.93634e-05, 1.59091e-05, 1.31771e-05, 1.0986e-05, 9.2086e-06, 7.7536e-06, 6.55306e-06, 5.55604e-06, 4.72332e-06, 
			0.000180437, 9.99188e-05, 6.81142e-05, 5.02954e-05, 3.87384e-05, 3.06332e-05, 2.46594e-05, 2.0107e-05, 1.65582e-05, 1.37427e-05, 1.14779e-05, 9.63594e-06, 8.12434e-06, 6.8744e-06, 5.83434e-06, 4.96404e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.16948e-05, 4.22122e-05, 5.05824e-05, 5.7143e-05, 6.22768e-05, 6.63143e-05, 6.95136e-05, 7.20718e-05, 7.41364e-05, 7.5819e-05, 7.72035e-05, 7.83534e-05, 7.93172e-05, 8.0132e-05, 8.08268e-05, 8.14241e-05, 
			4.44556e-05, 5.47708e-05, 6.30524e-05, 6.96086e-05, 7.4802e-05, 7.89348e-05, 8.22476e-05, 8.49258e-05, 8.71106e-05, 8.89094e-05, 9.04038e-05, 9.16567e-05, 9.27163e-05, 9.36194e-05, 9.43963e-05, 9.50689e-05, 
			5.70862e-05, 6.7128e-05, 7.52482e-05, 8.1737e-05, 8.69188e-05, 9.10822e-05, 9.4449e-05, 9.71938e-05, 9.94528e-05, 0.000101328, 0.000102898, 0.000104224, 0.000105354, 0.000106324, 0.000107164, 0.000107895, 
			6.94688e-05, 7.92822e-05, 8.725e-05, 9.36588e-05, 9.88146e-05, 0.000102984, 0.00010638, 0.000109168, 0.000111479, 0.000113409, 0.000115037, 0.000116421, 0.000117607, 0.000118631, 0.000119523, 0.000120306, 
			8.162e-05, 9.1192e-05, 9.90118e-05, 0.000105338, 0.000110458, 0.000114621, 0.000118031, 0.00012085, 0.000123198, 0.000125172, 0.000126846, 0.000128277, 0.00012951, 0.000130581, 0.000131519, 0.000132345
		)
}

CapTable	"metal2_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000168656, 9.04928e-05, 6.09816e-05, 4.5077e-05, 3.5125e-05, 2.83624e-05, 2.35194e-05, 1.99197e-05, 1.71681e-05, 1.50169e-05, 1.33032e-05, 1.1916e-05, 1.07772e-05, 9.83058e-06, 9.0347e-06, 8.35864e-06, 
			0.000176288, 9.65722e-05, 6.61536e-05, 4.96614e-05, 3.9256e-05, 3.21302e-05, 2.69844e-05, 2.31272e-05, 2.01534e-05, 1.78086e-05, 1.59252e-05, 1.43883e-05, 1.31167e-05, 1.20516e-05, 1.11497e-05, 1.03781e-05, 
			0.0001807, 0.000100771, 7.00448e-05, 5.327e-05, 4.26392e-05, 3.53038e-05, 2.9971e-05, 2.59462e-05, 2.28212e-05, 2.03404e-05, 1.8334e-05, 1.66857e-05, 1.53131e-05, 1.4156e-05, 1.31701e-05, 1.23216e-05, 
			0.000184112, 0.000104239, 7.3393e-05, 5.64682e-05, 4.56814e-05, 3.82064e-05, 3.27414e-05, 2.85928e-05, 2.53532e-05, 2.2766e-05, 2.06614e-05, 1.89225e-05, 1.74661e-05, 1.62317e-05, 1.5174e-05, 1.42589e-05, 
			0.000186696, 0.00010725, 7.64022e-05, 5.9399e-05, 4.85126e-05, 4.09412e-05, 3.53792e-05, 3.11332e-05, 2.78012e-05, 2.51266e-05, 2.29402e-05, 2.11244e-05, 1.95962e-05, 1.82943e-05, 1.71734e-05, 1.61989e-05
		)
}

CapTable	"metal2_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000166614, 8.75102e-05, 5.7116e-05, 4.04408e-05, 2.98572e-05, 2.2605e-05, 1.7403e-05, 1.35585e-05, 1.06576e-05, 8.4349e-06, 6.71188e-06, 5.36356e-06, 4.3011e-06, 3.45868e-06, 2.78786e-06, 2.25128e-06, 
			0.000172884, 9.20504e-05, 6.06026e-05, 4.32268e-05, 3.21066e-05, 2.44346e-05, 1.88958e-05, 1.47779e-05, 1.16542e-05, 9.24902e-06, 7.3765e-06, 5.90618e-06, 4.74384e-06, 3.81992e-06, 3.08206e-06, 2.49118e-06, 
			0.000175679, 9.44898e-05, 6.2624e-05, 4.48862e-05, 3.3489e-05, 2.55772e-05, 1.98397e-05, 1.55567e-05, 1.22948e-05, 9.77544e-06, 7.80848e-06, 6.26018e-06, 5.03342e-06, 4.0567e-06, 3.27542e-06, 2.64862e-06, 
			0.000177258, 9.60084e-05, 6.39404e-05, 4.5998e-05, 3.44132e-05, 2.63502e-05, 2.04828e-05, 1.60898e-05, 1.27358e-05, 1.01392e-05, 8.10778e-06, 6.50556e-06, 5.23472e-06, 4.2211e-06, 3.41008e-06, 2.7585e-06, 
			0.000177828, 9.69224e-05, 6.4793e-05, 4.6738e-05, 3.50398e-05, 2.68816e-05, 2.09306e-05, 1.64624e-05, 1.30447e-05, 1.03942e-05, 8.31794e-06, 6.67828e-06, 5.37586e-06, 4.3368e-06, 3.50428e-06, 2.83498e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.922e-05, 3.92051e-05, 4.71926e-05, 5.34812e-05, 5.84205e-05, 6.23135e-05, 6.53991e-05, 6.78585e-05, 6.98334e-05, 7.14293e-05, 7.27272e-05, 7.37897e-05, 7.46641e-05, 7.53876e-05, 7.59904e-05, 7.64931e-05, 
			4.18097e-05, 5.18198e-05, 5.989e-05, 6.63052e-05, 7.14019e-05, 7.54638e-05, 7.87149e-05, 8.13322e-05, 8.34512e-05, 8.51776e-05, 8.65919e-05, 8.77569e-05, 8.87217e-05, 8.9525e-05, 9.01967e-05, 9.07599e-05, 
			5.45656e-05, 6.45074e-05, 7.25784e-05, 7.90509e-05, 8.42297e-05, 8.83906e-05, 9.17473e-05, 9.44669e-05, 9.66847e-05, 9.85015e-05, 9.99967e-05, 0.000101237, 0.000102266, 0.000103127, 0.000103848, 0.000104457, 
			6.73545e-05, 7.72572e-05, 8.53251e-05, 9.18342e-05, 9.70751e-05, 0.000101307, 0.00010474, 0.000107536, 0.000109826, 0.000111711, 0.00011327, 0.000114565, 0.000115644, 0.000116551, 0.000117313, 0.000117954, 
			8.01684e-05, 9.00024e-05, 9.806e-05, 0.000104591, 0.000109879, 0.000114164, 0.000117654, 0.000120509, 0.000122858, 0.000124795, 0.000126404, 0.000127742, 0.000128863, 0.000129804, 0.000130598, 0.000131267
		)
}

CapTable	"metal2_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.20983e-06, 5.66867e-06, 6.957e-06, 8.05362e-06, 8.96541e-06, 9.71235e-06, 1.03202e-05, 1.08164e-05, 1.122e-05, 1.15501e-05, 1.18213e-05, 1.20447e-05, 1.22298e-05, 1.2384e-05, 1.25117e-05, 1.26196e-05, 
			5.66047e-06, 7.11637e-06, 8.42802e-06, 9.56081e-06, 1.05147e-05, 1.13054e-05, 1.19563e-05, 1.24932e-05, 1.29347e-05, 1.32988e-05, 1.36001e-05, 1.38498e-05, 1.40585e-05, 1.42319e-05, 1.43778e-05, 1.45013e-05, 
			7.1218e-06, 8.57601e-06, 9.89978e-06, 1.10537e-05, 1.20343e-05, 1.2854e-05, 1.35347e-05, 1.40987e-05, 1.45655e-05, 1.4953e-05, 1.52757e-05, 1.55436e-05, 1.57686e-05, 1.59573e-05, 1.6117e-05, 1.6251e-05, 
			8.58891e-06, 1.00459e-05, 1.13791e-05, 1.25488e-05, 1.35493e-05, 1.43907e-05, 1.50927e-05, 1.56774e-05, 1.61638e-05, 1.65692e-05, 1.69072e-05, 1.71904e-05, 1.7429e-05, 1.76289e-05, 1.77971e-05, 1.79417e-05, 
			1.00654e-05, 1.15228e-05, 1.28658e-05, 1.40495e-05, 1.50648e-05, 1.59214e-05, 1.66399e-05, 1.72409e-05, 1.77411e-05, 1.81603e-05, 1.85112e-05, 1.88068e-05, 1.90545e-05, 1.92647e-05, 1.94408e-05, 1.95923e-05
		)
}

CapTable	"metal2_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000165004, 8.52104e-05, 5.42358e-05, 3.7151e-05, 2.63438e-05, 1.90352e-05, 1.39095e-05, 1.02376e-05, 7.57088e-06, 5.61682e-06, 4.1768e-06, 3.11066e-06, 2.3193e-06, 1.73022e-06, 1.29162e-06, 9.64164e-07, 
			0.000170316, 8.87644e-05, 5.67528e-05, 3.90154e-05, 2.77384e-05, 2.00866e-05, 1.47039e-05, 1.08368e-05, 8.02252e-06, 5.95678e-06, 4.43184e-06, 3.3019e-06, 2.46246e-06, 1.83714e-06, 1.37095e-06, 1.02295e-06, 
			0.000172125, 9.02578e-05, 5.78922e-05, 3.98706e-05, 2.84008e-05, 2.05912e-05, 1.5088e-05, 1.11285e-05, 8.24292e-06, 6.12308e-06, 4.55644e-06, 3.39542e-06, 2.5318e-06, 1.88854e-06, 1.40868e-06, 1.04978e-06, 
			0.000172771, 9.09196e-05, 5.84384e-05, 4.02996e-05, 2.87252e-05, 2.08428e-05, 1.52811e-05, 1.12755e-05, 8.35444e-06, 6.20716e-06, 4.61956e-06, 3.4419e-06, 2.56594e-06, 1.91324e-06, 1.42545e-06, 1.0618e-06, 
			0.000172509, 9.10954e-05, 5.86422e-05, 4.04758e-05, 2.88648e-05, 2.09564e-05, 1.5373e-05, 1.13454e-05, 8.40778e-06, 6.24662e-06, 4.64884e-06, 3.46296e-06, 2.57966e-06, 1.92223e-06, 1.4322e-06, 1.06582e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.82078e-05, 3.79693e-05, 4.58072e-05, 5.19906e-05, 5.68435e-05, 6.06537e-05, 6.3651e-05, 6.60141e-05, 6.78826e-05, 6.93654e-05, 7.05452e-05, 7.14889e-05, 7.22425e-05, 7.28487e-05, 7.33358e-05, 7.37285e-05, 
			4.06534e-05, 5.05113e-05, 5.84824e-05, 6.48247e-05, 6.98546e-05, 7.38371e-05, 7.69947e-05, 7.95037e-05, 8.14999e-05, 8.3092e-05, 8.4367e-05, 8.53872e-05, 8.62077e-05, 8.68682e-05, 8.73982e-05, 8.78302e-05, 
			5.33397e-05, 6.31889e-05, 7.12007e-05, 7.76258e-05, 8.2747e-05, 8.68298e-05, 9.00842e-05, 9.26798e-05, 9.4757e-05, 9.64178e-05, 9.77514e-05, 9.88231e-05, 9.96854e-05, 0.000100383, 0.000100944, 0.000101397, 
			6.61228e-05, 7.59776e-05, 8.40162e-05, 9.04917e-05, 9.56812e-05, 9.98302e-05, 0.000103148, 0.000105807, 0.000107935, 0.000109645, 0.000111018, 0.000112122, 0.000113016, 0.000113736, 0.000114371, 0.000114846, 
			7.89787e-05, 8.87968e-05, 9.68471e-05, 0.000103354, 0.000108586, 0.000112779, 0.000116142, 0.000118841, 0.000121007, 0.000122749, 0.000124155, 0.000125284, 0.000126196, 0.000126995, 0.000127595, 0.000128082
		)
}

CapTable	"metal2_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.09534e-06, 8.25155e-06, 1.01668e-05, 1.18036e-05, 1.31634e-05, 1.42731e-05, 1.51696e-05, 1.58912e-05, 1.64706e-05, 1.6935e-05, 1.7308e-05, 1.76061e-05, 1.78476e-05, 1.80409e-05, 1.8197e-05, 1.83231e-05, 
			8.28021e-06, 1.04603e-05, 1.2432e-05, 1.41375e-05, 1.55688e-05, 1.67493e-05, 1.77115e-05, 1.84904e-05, 1.91189e-05, 1.9628e-05, 2.00365e-05, 2.03676e-05, 2.06335e-05, 2.08489e-05, 2.10257e-05, 2.11646e-05, 
			1.05141e-05, 1.27143e-05, 1.47213e-05, 1.6469e-05, 1.7945e-05, 1.9169e-05, 2.01711e-05, 2.09875e-05, 2.16482e-05, 2.21848e-05, 2.26171e-05, 2.29677e-05, 2.32512e-05, 2.34788e-05, 2.36671e-05, 2.38181e-05, 
			1.27846e-05, 1.5005e-05, 1.70394e-05, 1.88183e-05, 2.03256e-05, 2.15776e-05, 2.26088e-05, 2.34485e-05, 2.41332e-05, 2.46871e-05, 2.51369e-05, 2.55047e-05, 2.57972e-05, 2.60369e-05, 2.61784e-05, 2.63323e-05, 
			1.50883e-05, 1.73238e-05, 1.93789e-05, 2.11795e-05, 2.27093e-05, 2.39819e-05, 2.50318e-05, 2.5889e-05, 2.65882e-05, 2.71563e-05, 2.76151e-05, 2.79921e-05, 2.82962e-05, 2.84812e-05, 2.86775e-05, 2.88356e-05
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
			2.70117e-05, 3.66015e-05, 4.43494e-05, 5.04484e-05, 5.5182e-05, 5.88169e-05, 6.15885e-05, 6.36919e-05, 6.52811e-05, 6.64802e-05, 6.73821e-05, 6.80593e-05, 6.85685e-05, 6.89501e-05, 6.92567e-05, 6.94726e-05, 
			3.94301e-05, 4.92216e-05, 5.71575e-05, 6.34348e-05, 6.83309e-05, 7.21084e-05, 7.49988e-05, 7.72004e-05, 7.88675e-05, 8.01273e-05, 8.10783e-05, 8.17917e-05, 8.23527e-05, 8.27572e-05, 8.30612e-05, 8.32891e-05, 
			5.21884e-05, 6.20351e-05, 7.00389e-05, 7.63935e-05, 8.13599e-05, 8.52025e-05, 8.81503e-05, 9.03975e-05, 9.21008e-05, 9.33919e-05, 9.43648e-05, 9.51271e-05, 9.56793e-05, 9.60939e-05, 9.64059e-05, 9.66401e-05, 
			6.50998e-05, 7.49795e-05, 8.30182e-05, 8.94102e-05, 9.44167e-05, 9.82918e-05, 0.000101268, 0.000103541, 0.000105262, 0.0001066, 0.000107587, 0.000108329, 0.00010889, 0.00010931, 0.000109626, 0.000109864, 
			7.80976e-05, 8.79543e-05, 9.59971e-05, 0.000102403, 0.000107426, 0.000111311, 0.000114302, 0.000116583, 0.000118356, 0.000119671, 0.000120662, 0.00012141, 0.000121973, 0.000122396, 0.000122716, 0.000122955
		)
}

CapTable	"metal2_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.41386e-06, 1.28851e-05, 1.59808e-05, 1.86096e-05, 2.07542e-05, 2.24599e-05, 2.37918e-05, 2.4817e-05, 2.56015e-05, 2.61969e-05, 2.66473e-05, 2.69878e-05, 2.72422e-05, 2.74348e-05, 2.75573e-05, 2.76632e-05, 
			1.30879e-05, 1.6671e-05, 1.98977e-05, 2.26488e-05, 2.49057e-05, 2.6705e-05, 2.81153e-05, 2.92048e-05, 3.004e-05, 3.06759e-05, 3.11559e-05, 3.15204e-05, 3.17688e-05, 3.19727e-05, 3.21239e-05, 3.2237e-05, 
			1.69244e-05, 2.05781e-05, 2.38769e-05, 2.66949e-05, 2.90053e-05, 3.08543e-05, 3.23027e-05, 3.3425e-05, 3.42873e-05, 3.494e-05, 3.54378e-05, 3.57815e-05, 3.60619e-05, 3.62706e-05, 3.64274e-05, 3.65471e-05, 
			2.08618e-05, 2.45709e-05, 2.79104e-05, 3.07652e-05, 3.31081e-05, 3.49804e-05, 3.645e-05, 3.75869e-05, 3.84616e-05, 3.90929e-05, 3.95956e-05, 3.99726e-05, 4.02566e-05, 4.04697e-05, 4.06322e-05, 4.07516e-05, 
			2.48744e-05, 2.86053e-05, 3.19717e-05, 3.48439e-05, 3.7203e-05, 3.90912e-05, 4.0565e-05, 4.17125e-05, 4.2552e-05, 4.32195e-05, 4.37226e-05, 4.41035e-05, 4.43937e-05, 4.46085e-05, 4.47678e-05, 4.48879e-05
		)
}

CapTable	"metal2_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177808, 0.000101458, 7.26892e-05, 5.68682e-05, 4.6619e-05, 3.93542e-05, 3.39108e-05, 2.96776e-05, 2.62966e-05, 2.35412e-05, 2.12592e-05, 1.93442e-05, 1.77187e-05, 1.6325e-05, 1.51195e-05, 1.4068e-05, 
			0.000188342, 0.000109559, 7.9304e-05, 6.25216e-05, 5.1581e-05, 4.37988e-05, 3.79514e-05, 3.33916e-05, 2.97396e-05, 2.67538e-05, 2.42732e-05, 2.21838e-05, 2.04036e-05, 1.88713e-05, 1.75404e-05, 1.63747e-05, 
			0.000194415, 0.000114803, 8.38676e-05, 6.65788e-05, 5.52738e-05, 4.71988e-05, 4.11134e-05, 3.63544e-05, 3.25312e-05, 2.93958e-05, 2.67816e-05, 2.45724e-05, 2.2683e-05, 2.10506e-05, 1.96272e-05, 1.83756e-05, 
			0.000198643, 0.000118712, 8.7435e-05, 6.98648e-05, 5.83288e-05, 5.00692e-05, 4.3827e-05, 3.89314e-05, 3.49866e-05, 3.17416e-05, 2.90276e-05, 2.67258e-05, 2.47506e-05, 2.3038e-05, 2.1539e-05, 2.02162e-05, 
			0.000201512, 0.000121781, 9.0369e-05, 7.26474e-05, 6.09726e-05, 5.25954e-05, 4.62466e-05, 4.12516e-05, 3.72154e-05, 3.38856e-05, 3.10918e-05, 2.87152e-05, 2.66688e-05, 2.48886e-05, 2.33252e-05, 2.19406e-05
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

CapTable	"metal2_C_TOP_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.79143e-06, 6.25459e-06, 7.55946e-06, 8.72966e-06, 9.77668e-06, 1.07094e-05, 1.1537e-05, 1.2268e-05, 1.29113e-05, 1.34769e-05, 1.39717e-05, 1.44045e-05, 1.47828e-05, 1.51136e-05, 1.54027e-05, 1.56545e-05, 
			6.1318e-06, 7.57924e-06, 8.91467e-06, 1.01327e-05, 1.12349e-05, 1.22243e-05, 1.31089e-05, 1.38932e-05, 1.45869e-05, 1.51978e-05, 1.57356e-05, 1.6208e-05, 1.66219e-05, 1.6985e-05, 1.73023e-05, 1.75797e-05, 
			7.50645e-06, 8.954e-06, 1.03092e-05, 1.15581e-05, 1.26952e-05, 1.37212e-05, 1.46416e-05, 1.54603e-05, 1.61869e-05, 1.68293e-05, 1.73962e-05, 1.78954e-05, 1.83336e-05, 1.87181e-05, 1.9055e-05, 1.93519e-05, 
			8.90988e-06, 1.03647e-05, 1.17356e-05, 1.30076e-05, 1.41698e-05, 1.52216e-05, 1.61663e-05, 1.70106e-05, 1.77617e-05, 1.84268e-05, 1.90151e-05, 1.95333e-05, 1.99891e-05, 2.03901e-05, 2.07434e-05, 2.10528e-05, 
			1.03421e-05, 1.1801e-05, 1.31855e-05, 1.44742e-05, 1.56541e-05, 1.6725e-05, 1.76892e-05, 1.85527e-05, 1.93222e-05, 2.00048e-05, 2.06082e-05, 2.11409e-05, 2.16119e-05, 2.20258e-05, 2.23898e-05, 2.27098e-05
		)
}

CapTable	"metal2_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176091, 9.9061e-05, 6.9633e-05, 5.31856e-05, 4.23564e-05, 3.45662e-05, 2.86566e-05, 2.40182e-05, 2.02916e-05, 1.72478e-05, 1.4731e-05, 1.26305e-05, 1.0864e-05, 9.36976e-06, 8.09936e-06, 7.0146e-06, 
			0.000185757, 0.000106197, 7.51842e-05, 5.76844e-05, 4.60818e-05, 3.77022e-05, 3.13268e-05, 2.63098e-05, 2.22696e-05, 1.89621e-05, 1.62212e-05, 1.39285e-05, 1.19966e-05, 1.0359e-05, 8.96398e-06, 7.77104e-06, 
			0.000190831, 0.000110353, 7.85786e-05, 6.05004e-05, 4.84712e-05, 3.9746e-05, 3.30894e-05, 2.78386e-05, 2.36008e-05, 2.01242e-05, 1.72377e-05, 1.48187e-05, 1.27766e-05, 1.10431e-05, 9.56384e-06, 8.29688e-06, 
			0.000193936, 0.000113062, 8.08782e-05, 6.24602e-05, 5.01514e-05, 4.12026e-05, 3.43584e-05, 2.89478e-05, 2.45728e-05, 2.09774e-05, 1.79871e-05, 1.54772e-05, 1.33556e-05, 1.15516e-05, 1.00106e-05, 8.68884e-06, 
			0.000195575, 0.000114837, 8.24624e-05, 6.3847e-05, 5.13624e-05, 4.22678e-05, 3.52966e-05, 2.97734e-05, 2.52998e-05, 2.16178e-05, 1.85518e-05, 1.59747e-05, 1.37936e-05, 1.19367e-05, 1.0349e-05, 8.9863e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.77416e-05, 2.28834e-05, 2.72782e-05, 3.10756e-05, 3.43706e-05, 3.7235e-05, 3.9728e-05, 4.19003e-05, 4.37963e-05, 4.54545e-05, 4.69089e-05, 4.81882e-05, 4.93177e-05, 5.03187e-05, 5.12093e-05, 5.20052e-05, 
			2.26044e-05, 2.75852e-05, 3.1974e-05, 3.5825e-05, 3.91988e-05, 4.21519e-05, 4.47364e-05, 4.70004e-05, 4.89863e-05, 5.07325e-05, 5.22715e-05, 5.36327e-05, 5.48407e-05, 5.59169e-05, 5.68797e-05, 5.77447e-05, 
			2.74692e-05, 3.23314e-05, 3.66714e-05, 4.05112e-05, 4.38946e-05, 4.68722e-05, 4.9491e-05, 5.17954e-05, 5.38264e-05, 5.56203e-05, 5.72093e-05, 5.86209e-05, 5.98798e-05, 6.10069e-05, 6.202e-05, 6.29345e-05, 
			3.23044e-05, 3.70681e-05, 4.134e-05, 4.51412e-05, 4.85062e-05, 5.14808e-05, 5.41077e-05, 5.64295e-05, 5.84847e-05, 6.03077e-05, 6.19292e-05, 6.33765e-05, 6.46728e-05, 6.58384e-05, 6.6891e-05, 6.78452e-05, 
			3.7097e-05, 4.1743e-05, 4.5938e-05, 4.96856e-05, 5.30194e-05, 5.59756e-05, 5.85974e-05, 6.09244e-05, 6.29926e-05, 6.48339e-05, 6.64789e-05, 6.79527e-05, 6.92784e-05, 7.04753e-05, 7.15604e-05, 7.25484e-05
		)
}

CapTable	"metal2_C_TOP_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.77868e-06, 8.91805e-06, 1.08461e-05, 1.25859e-05, 1.41446e-05, 1.55297e-05, 1.67515e-05, 1.78198e-05, 1.87482e-05, 1.95507e-05, 2.02416e-05, 2.08325e-05, 2.13375e-05, 2.17677e-05, 2.2134e-05, 2.24444e-05, 
			8.80046e-06, 1.09562e-05, 1.29577e-05, 1.47887e-05, 1.64449e-05, 1.79244e-05, 1.92325e-05, 2.03813e-05, 2.13813e-05, 2.22484e-05, 2.29944e-05, 2.3635e-05, 2.41837e-05, 2.46513e-05, 2.50494e-05, 2.53883e-05, 
			1.09136e-05, 1.30986e-05, 1.51518e-05, 1.70456e-05, 1.87617e-05, 2.02993e-05, 2.16629e-05, 2.28614e-05, 2.39062e-05, 2.48114e-05, 2.55929e-05, 2.6265e-05, 2.684e-05, 2.73312e-05, 2.77502e-05, 2.81062e-05, 
			1.31003e-05, 1.53208e-05, 1.74155e-05, 1.93503e-05, 2.11101e-05, 2.26874e-05, 2.40876e-05, 2.53181e-05, 2.63927e-05, 2.73254e-05, 2.81309e-05, 2.88232e-05, 2.94165e-05, 2.99242e-05, 3.03568e-05, 3.07217e-05, 
			1.53575e-05, 1.75997e-05, 1.97238e-05, 2.16911e-05, 2.34805e-05, 2.50854e-05, 2.65092e-05, 2.7763e-05, 2.88585e-05, 2.98092e-05, 3.06306e-05, 3.13378e-05, 3.19434e-05, 3.24648e-05, 3.28919e-05, 3.32772e-05
		)
}

CapTable	"metal2_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000175233, 9.78592e-05, 6.81064e-05, 5.1367e-05, 4.02892e-05, 3.23002e-05, 2.62436e-05, 2.15078e-05, 1.77299e-05, 1.46752e-05, 1.21818e-05, 1.01326e-05, 8.44076e-06, 7.03756e-06, 5.87124e-06, 4.89892e-06, 
			0.000184458, 0.000104516, 7.3148e-05, 5.53354e-05, 4.34724e-05, 3.48912e-05, 2.83732e-05, 2.32692e-05, 1.91926e-05, 1.58929e-05, 1.31975e-05, 1.09795e-05, 9.14594e-06, 7.62516e-06, 6.35934e-06, 5.30368e-06, 
			0.000189041, 0.00010816, 7.60178e-05, 5.76222e-05, 4.53368e-05, 3.64206e-05, 2.96366e-05, 2.43178e-05, 2.0065e-05, 1.66202e-05, 1.38025e-05, 1.14833e-05, 9.5644e-06, 7.9713e-06, 6.64478e-06, 5.53804e-06, 
			0.000191626, 0.000110341, 7.779e-05, 5.90634e-05, 4.65124e-05, 3.73908e-05, 3.0441e-05, 2.4987e-05, 2.06214e-05, 1.7082e-05, 1.41859e-05, 1.18001e-05, 9.82554e-06, 8.18494e-06, 6.81858e-06, 5.67834e-06, 
			0.000192733, 0.000111589, 7.88594e-05, 5.99522e-05, 4.72472e-05, 3.80034e-05, 3.09526e-05, 2.54106e-05, 2.0973e-05, 1.73723e-05, 1.44244e-05, 1.19948e-05, 9.9832e-06, 8.31122e-06, 6.91978e-06, 5.75598e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.50874e-05, 1.97354e-05, 2.38025e-05, 2.73861e-05, 3.05447e-05, 3.33238e-05, 3.57625e-05, 3.78969e-05, 3.97618e-05, 4.13871e-05, 4.28037e-05, 4.40366e-05, 4.51096e-05, 4.60427e-05, 4.68546e-05, 4.75623e-05, 
			1.97468e-05, 2.4413e-05, 2.86101e-05, 3.23589e-05, 3.56906e-05, 3.86386e-05, 4.12353e-05, 4.3518e-05, 4.55189e-05, 4.72701e-05, 4.87996e-05, 5.01347e-05, 5.12999e-05, 5.23158e-05, 5.32028e-05, 5.3977e-05, 
			2.45797e-05, 2.92842e-05, 3.35612e-05, 3.74065e-05, 4.08376e-05, 4.38857e-05, 4.65796e-05, 4.89546e-05, 5.10419e-05, 5.28728e-05, 5.44756e-05, 5.58778e-05, 5.71045e-05, 5.81764e-05, 5.91142e-05, 5.99321e-05, 
			2.95531e-05, 3.42993e-05, 3.86282e-05, 4.25332e-05, 4.60308e-05, 4.91448e-05, 5.19063e-05, 5.43446e-05, 5.64913e-05, 5.83787e-05, 6.00342e-05, 6.14857e-05, 6.27571e-05, 6.38701e-05, 6.48431e-05, 6.56958e-05, 
			3.46411e-05, 3.93982e-05, 4.37571e-05, 4.77018e-05, 5.12435e-05, 5.44032e-05, 5.72102e-05, 5.96929e-05, 6.1884e-05, 6.38124e-05, 6.5507e-05, 6.69954e-05, 6.82985e-05, 6.94425e-05, 7.04442e-05, 7.13219e-05
		)
}

CapTable	"metal2_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.01587e-05, 1.35708e-05, 1.66746e-05, 1.94616e-05, 2.19236e-05, 2.40597e-05, 2.58873e-05, 2.74283e-05, 2.87157e-05, 2.97838e-05, 3.066e-05, 3.13759e-05, 3.1959e-05, 3.24311e-05, 3.28124e-05, 3.31159e-05, 
			1.35868e-05, 1.71146e-05, 2.03821e-05, 2.33371e-05, 2.59507e-05, 2.82224e-05, 3.01636e-05, 3.18033e-05, 3.31748e-05, 3.43098e-05, 3.52441e-05, 3.60069e-05, 3.66267e-05, 3.71324e-05, 3.75349e-05, 3.78634e-05, 
			1.7245e-05, 2.0869e-05, 2.42404e-05, 2.72922e-05, 2.99883e-05, 3.2331e-05, 3.43342e-05, 3.60257e-05, 3.7439e-05, 3.86085e-05, 3.9571e-05, 4.03581e-05, 4.09967e-05, 4.15162e-05, 4.19366e-05, 4.22557e-05, 
			2.10712e-05, 2.4769e-05, 2.82063e-05, 3.13122e-05, 3.40577e-05, 3.64413e-05, 3.84788e-05, 4.01979e-05, 4.16337e-05, 4.2822e-05, 4.38031e-05, 4.45982e-05, 4.52503e-05, 4.57574e-05, 4.6183e-05, 4.65276e-05, 
			2.5019e-05, 2.87547e-05, 3.22298e-05, 3.5369e-05, 3.8142e-05, 4.05458e-05, 4.25984e-05, 4.43323e-05, 4.57804e-05, 4.69799e-05, 4.79649e-05, 4.87728e-05, 4.94053e-05, 4.99383e-05, 5.03667e-05, 5.07126e-05
		)
}

CapTable	"metal2_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000173392, 9.53076e-05, 6.49446e-05, 4.77324e-05, 3.63322e-05, 2.8168e-05, 2.20648e-05, 1.73887e-05, 1.37538e-05, 1.09012e-05, 8.64994e-06, 6.86704e-06, 5.45174e-06, 4.32624e-06, 3.43034e-06, 2.71686e-06, 
			0.000181668, 0.000101003, 6.9045e-05, 5.08022e-05, 3.86744e-05, 2.99802e-05, 2.34814e-05, 1.85014e-05, 1.46298e-05, 1.15917e-05, 9.194e-06, 7.2949e-06, 5.78744e-06, 4.58806e-06, 3.63382e-06, 2.87276e-06, 
			0.000185291, 0.000103732, 7.10654e-05, 5.23132e-05, 3.98376e-05, 3.08808e-05, 2.4183e-05, 1.90504e-05, 1.50591e-05, 1.19279e-05, 9.45618e-06, 7.49814e-06, 5.94324e-06, 4.7066e-06, 3.72136e-06, 2.93706e-06, 
			0.000186974, 0.000105091, 7.2099e-05, 5.30988e-05, 4.0434e-05, 3.13418e-05, 2.45394e-05, 1.93268e-05, 1.52729e-05, 1.20919e-05, 9.58034e-06, 7.59138e-06, 6.01066e-06, 4.75406e-06, 3.7528e-06, 2.9541e-06, 
			0.000187279, 0.000105633, 7.25508e-05, 5.345e-05, 4.07016e-05, 3.1549e-05, 2.47006e-05, 1.94483e-05, 1.53631e-05, 1.21564e-05, 9.62554e-06, 7.61922e-06, 6.02692e-06, 4.75848e-06, 3.74914e-06, 2.94428e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.41853e-05, 1.86738e-05, 2.26405e-05, 2.61573e-05, 2.92655e-05, 3.19972e-05, 3.43818e-05, 3.64525e-05, 3.82405e-05, 3.97772e-05, 4.10928e-05, 4.22171e-05, 4.31736e-05, 4.39872e-05, 4.46766e-05, 4.52614e-05, 
			1.87747e-05, 2.33388e-05, 2.74763e-05, 3.11879e-05, 3.44879e-05, 3.73985e-05, 3.99476e-05, 4.21642e-05, 4.40828e-05, 4.57335e-05, 4.71497e-05, 4.83612e-05, 4.93937e-05, 5.02715e-05, 5.10177e-05, 5.16498e-05, 
			2.35894e-05, 2.82372e-05, 3.24874e-05, 3.63172e-05, 3.97315e-05, 4.27491e-05, 4.53944e-05, 4.76984e-05, 4.96947e-05, 5.14151e-05, 5.28924e-05, 5.41554e-05, 5.52341e-05, 5.61522e-05, 5.6932e-05, 5.75938e-05, 
			2.85887e-05, 3.33128e-05, 3.76385e-05, 4.15463e-05, 4.50345e-05, 4.81218e-05, 5.08294e-05, 5.31899e-05, 5.52379e-05, 5.70026e-05, 5.85192e-05, 5.98177e-05, 6.0926e-05, 6.18699e-05, 6.26721e-05, 6.3356e-05, 
			3.37327e-05, 3.84959e-05, 4.28718e-05, 4.68287e-05, 5.03643e-05, 5.34952e-05, 5.62442e-05, 5.86424e-05, 6.07225e-05, 6.25175e-05, 6.406e-05, 6.53814e-05, 6.65094e-05, 6.7468e-05, 6.82983e-05, 6.89828e-05
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
			1.31999e-05, 1.75836e-05, 2.15088e-05, 2.49981e-05, 2.80539e-05, 3.06923e-05, 3.29397e-05, 3.4834e-05, 3.64123e-05, 3.77164e-05, 3.87896e-05, 3.96659e-05, 4.03778e-05, 4.09548e-05, 4.1421e-05, 4.18004e-05, 
			1.78228e-05, 2.23578e-05, 2.64959e-05, 3.01917e-05, 3.34386e-05, 3.62425e-05, 3.86322e-05, 4.06459e-05, 4.23232e-05, 4.37121e-05, 4.48522e-05, 4.57842e-05, 4.65426e-05, 4.71544e-05, 4.76525e-05, 4.80526e-05, 
			2.273e-05, 2.73916e-05, 3.16582e-05, 3.54736e-05, 3.88231e-05, 4.17162e-05, 4.41798e-05, 4.62549e-05, 4.79849e-05, 4.94163e-05, 5.05921e-05, 5.15529e-05, 5.23366e-05, 5.29672e-05, 5.34792e-05, 5.39087e-05, 
			2.78482e-05, 3.26056e-05, 3.69527e-05, 4.0839e-05, 4.42483e-05, 4.71889e-05, 4.96948e-05, 5.18033e-05, 5.35624e-05, 5.50171e-05, 5.62096e-05, 5.71874e-05, 5.7982e-05, 5.86445e-05, 5.91662e-05, 5.95863e-05, 
			3.31156e-05, 3.79181e-05, 4.23104e-05, 4.6235e-05, 4.96754e-05, 5.26432e-05, 5.517e-05, 5.72964e-05, 5.90705e-05, 6.05377e-05, 6.17406e-05, 6.2726e-05, 6.35478e-05, 6.41982e-05, 6.47242e-05, 6.51491e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.19218e-05, 1.47903e-05, 1.71012e-05, 1.90311e-05, 2.06798e-05, 2.21116e-05, 2.33694e-05, 2.44848e-05, 2.54815e-05, 2.63785e-05, 2.71911e-05, 2.79315e-05, 2.86099e-05, 2.9235e-05, 2.98136e-05, 3.03521e-05, 
			1.41574e-05, 1.6717e-05, 1.88876e-05, 2.07519e-05, 2.23753e-05, 2.3803e-05, 2.50692e-05, 2.62007e-05, 2.72188e-05, 2.81411e-05, 2.89812e-05, 2.97512e-05, 3.04604e-05, 3.11171e-05, 3.17284e-05, 3.22997e-05, 
			1.6217e-05, 1.85672e-05, 2.06148e-05, 2.24062e-05, 2.39853e-05, 2.53875e-05, 2.66412e-05, 2.77694e-05, 2.87912e-05, 2.97221e-05, 3.05747e-05, 3.13602e-05, 3.20876e-05, 3.27643e-05, 3.33968e-05, 3.39909e-05, 
			1.8138e-05, 2.03352e-05, 2.22756e-05, 2.3995e-05, 2.55257e-05, 2.68955e-05, 2.81291e-05, 2.92464e-05, 3.02641e-05, 3.11964e-05, 3.2055e-05, 3.28497e-05, 3.3589e-05, 3.428e-05, 3.49286e-05, 3.55401e-05, 
			1.9956e-05, 2.20174e-05, 2.3864e-05, 2.55162e-05, 2.69982e-05, 2.8334e-05, 2.95451e-05, 3.06483e-05, 3.16589e-05, 3.25892e-05, 3.34501e-05, 3.42507e-05, 3.49987e-05, 3.57006e-05, 3.63621e-05, 3.69878e-05
		)
}

CapTable	"metal2_C_LATERAL_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182377, 0.00010746, 7.98864e-05, 6.50426e-05, 5.55782e-05, 4.89322e-05, 4.39676e-05, 4.00958e-05, 3.6979e-05, 3.44074e-05, 3.22432e-05, 3.0392e-05, 2.87864e-05, 2.7377e-05, 2.6127e-05, 2.50078e-05, 
			0.000194703, 0.000117307, 8.82004e-05, 7.2348e-05, 6.21482e-05, 5.49458e-05, 4.95428e-05, 4.53146e-05, 4.19002e-05, 3.90746e-05, 3.66902e-05, 3.46446e-05, 3.28656e-05, 3.12998e-05, 2.9907e-05, 2.8657e-05, 
			0.00020251, 0.000124192, 9.43192e-05, 7.78858e-05, 6.72574e-05, 5.97084e-05, 5.40222e-05, 4.95562e-05, 4.59376e-05, 4.29336e-05, 4.03908e-05, 3.82028e-05, 3.62942e-05, 3.46096e-05, 3.31074e-05, 3.17552e-05, 
			0.00020836, 0.000129614, 9.93024e-05, 8.2506e-05, 7.15792e-05, 6.37892e-05, 5.78988e-05, 5.32562e-05, 4.94822e-05, 4.63394e-05, 4.36708e-05, 4.1368e-05, 3.93536e-05, 3.75706e-05, 3.59764e-05, 3.4538e-05, 
			0.000212718, 0.000134054, 0.000103511, 8.64838e-05, 7.53528e-05, 6.73904e-05, 6.13474e-05, 5.6567e-05, 5.26688e-05, 4.9413e-05, 4.66404e-05, 4.42412e-05, 4.21368e-05, 4.02694e-05, 3.85956e-05, 3.7082e-05
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

CapTable	"metal2_C_BOTTOM_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.12505e-05, 1.44131e-05, 1.71378e-05, 1.95472e-05, 2.17093e-05, 2.36654e-05, 2.5441e-05, 2.70565e-05, 2.85265e-05, 2.98627e-05, 3.10773e-05, 3.21785e-05, 3.31763e-05, 3.40809e-05, 3.48969e-05, 3.56329e-05, 
			1.41348e-05, 1.71977e-05, 1.99544e-05, 2.24566e-05, 2.47373e-05, 2.6822e-05, 2.87291e-05, 3.04724e-05, 3.2065e-05, 3.35179e-05, 3.48408e-05, 3.60462e-05, 3.71382e-05, 3.81299e-05, 3.90257e-05, 3.98376e-05, 
			1.70389e-05, 2.00713e-05, 2.28632e-05, 2.54313e-05, 2.7794e-05, 2.99682e-05, 3.19661e-05, 3.37998e-05, 3.54784e-05, 3.70131e-05, 3.8415e-05, 3.96895e-05, 4.08475e-05, 4.19006e-05, 4.28525e-05, 4.37161e-05, 
			1.99903e-05, 2.30301e-05, 2.58582e-05, 2.84814e-05, 3.09093e-05, 3.31512e-05, 3.52177e-05, 3.71179e-05, 3.8864e-05, 4.04597e-05, 4.19191e-05, 4.32474e-05, 4.44577e-05, 4.55545e-05, 4.65516e-05, 4.74545e-05, 
			2.30141e-05, 2.60603e-05, 2.89216e-05, 3.15894e-05, 3.40694e-05, 3.63644e-05, 3.84846e-05, 4.04395e-05, 4.22329e-05, 4.38756e-05, 4.53796e-05, 4.67486e-05, 4.79974e-05, 4.91328e-05, 5.01585e-05, 5.10906e-05
		)
}

CapTable	"metal2_C_TOP_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.34551e-06, 6.85087e-06, 8.16237e-06, 9.33177e-06, 1.03875e-05, 1.13463e-05, 1.22207e-05, 1.30176e-05, 1.37444e-05, 1.44068e-05, 1.5009e-05, 1.55571e-05, 1.60546e-05, 1.6504e-05, 1.69126e-05, 1.72826e-05, 
			6.64585e-06, 8.09512e-06, 9.41696e-06, 1.06255e-05, 1.17356e-05, 1.27553e-05, 1.36918e-05, 1.45516e-05, 1.53395e-05, 1.606e-05, 1.67181e-05, 1.73153e-05, 1.7861e-05, 1.83551e-05, 1.88047e-05, 1.921e-05, 
			7.95167e-06, 9.38029e-06, 1.07136e-05, 1.19531e-05, 1.3101e-05, 1.41633e-05, 1.51442e-05, 1.6047e-05, 1.68776e-05, 1.76387e-05, 1.83333e-05, 1.89694e-05, 1.95494e-05, 2.00746e-05, 2.0553e-05, 2.09845e-05, 
			9.27533e-06, 1.07029e-05, 1.20496e-05, 1.33132e-05, 1.44921e-05, 1.55881e-05, 1.66034e-05, 1.75408e-05, 1.84015e-05, 1.91942e-05, 1.9919e-05, 2.05825e-05, 2.11857e-05, 2.17365e-05, 2.22342e-05, 2.26847e-05, 
			1.06309e-05, 1.20581e-05, 1.34198e-05, 1.47048e-05, 1.59084e-05, 1.70306e-05, 1.8072e-05, 1.90338e-05, 1.99227e-05, 2.07403e-05, 2.14874e-05, 2.21724e-05, 2.27952e-05, 2.33609e-05, 2.38781e-05, 2.43439e-05
		)
}

CapTable	"metal2_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178601, 0.000102421, 7.36744e-05, 5.77336e-05, 4.72458e-05, 3.96512e-05, 3.38146e-05, 2.9149e-05, 2.53166e-05, 2.21076e-05, 1.93822e-05, 1.70434e-05, 1.50204e-05, 1.32599e-05, 1.17205e-05, 1.03697e-05, 
			0.000189425, 0.000110678, 8.02856e-05, 6.32184e-05, 5.18804e-05, 4.3622e-05, 3.72492e-05, 3.214e-05, 2.7934e-05, 2.4406e-05, 2.14058e-05, 1.88283e-05, 1.65966e-05, 1.46527e-05, 1.29521e-05, 1.14586e-05, 
			0.000195606, 0.000115847, 8.45932e-05, 6.68516e-05, 5.49988e-05, 4.63164e-05, 3.9593e-05, 3.41888e-05, 2.97314e-05, 2.5987e-05, 2.27988e-05, 2.0057e-05, 1.76812e-05, 1.56105e-05, 1.37982e-05, 1.22057e-05, 
			0.000199702, 0.00011943, 8.76562e-05, 6.94774e-05, 5.72606e-05, 4.82816e-05, 4.13082e-05, 3.56912e-05, 3.10506e-05, 2.71476e-05, 2.38206e-05, 2.09578e-05, 1.84754e-05, 1.6311e-05, 1.44153e-05, 1.27495e-05, 
			0.000202184, 0.000121926, 8.98556e-05, 7.13898e-05, 5.89222e-05, 4.9734e-05, 4.2581e-05, 3.68064e-05, 3.20298e-05, 2.8008e-05, 2.45776e-05, 2.1624e-05, 1.90613e-05, 1.68261e-05, 1.48684e-05, 1.31473e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.03949e-05, 1.34173e-05, 1.6058e-05, 1.84185e-05, 2.05492e-05, 2.24791e-05, 2.4225e-05, 2.57982e-05, 2.72117e-05, 2.8477e-05, 2.96034e-05, 3.06032e-05, 3.14894e-05, 3.22707e-05, 3.29594e-05, 3.35641e-05, 
			1.32311e-05, 1.62078e-05, 1.89204e-05, 2.1401e-05, 2.3671e-05, 2.57402e-05, 2.76195e-05, 2.93187e-05, 3.08476e-05, 3.22173e-05, 3.34386e-05, 3.45244e-05, 3.54863e-05, 3.63361e-05, 3.70842e-05, 3.77426e-05, 
			1.61305e-05, 1.9121e-05, 2.19003e-05, 2.44702e-05, 2.68324e-05, 2.89945e-05, 3.09627e-05, 3.27428e-05, 3.43457e-05, 3.57829e-05, 3.70655e-05, 3.8206e-05, 3.92167e-05, 4.01095e-05, 4.08968e-05, 4.15892e-05, 
			1.91186e-05, 2.21513e-05, 2.49895e-05, 2.76243e-05, 3.00564e-05, 3.2283e-05, 3.43112e-05, 3.61475e-05, 3.78016e-05, 3.9285e-05, 4.06091e-05, 4.17864e-05, 4.28305e-05, 4.37532e-05, 4.45668e-05, 4.52828e-05, 
			2.22107e-05, 2.52709e-05, 2.81539e-05, 3.08398e-05, 3.33185e-05, 3.55909e-05, 3.76609e-05, 3.95365e-05, 4.12252e-05, 4.27398e-05, 4.40919e-05, 4.52952e-05, 4.63618e-05, 4.7305e-05, 4.81372e-05, 4.88694e-05
		)
}

CapTable	"metal2_C_TOP_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.43348e-06, 9.61407e-06, 1.15412e-05, 1.32747e-05, 1.48465e-05, 1.62723e-05, 1.75637e-05, 1.87311e-05, 1.97804e-05, 2.07188e-05, 2.15571e-05, 2.23019e-05, 2.29611e-05, 2.35428e-05, 2.40557e-05, 2.45067e-05, 
			9.3951e-06, 1.15414e-05, 1.35176e-05, 1.53369e-05, 1.70058e-05, 1.85333e-05, 1.9924e-05, 2.11828e-05, 2.23168e-05, 2.33341e-05, 2.42426e-05, 2.50511e-05, 2.57667e-05, 2.64e-05, 2.69579e-05, 2.74491e-05, 
			1.14115e-05, 1.35638e-05, 1.55847e-05, 1.74646e-05, 1.92026e-05, 2.07974e-05, 2.22513e-05, 2.35705e-05, 2.47604e-05, 2.58274e-05, 2.67802e-05, 2.76297e-05, 2.83824e-05, 2.90483e-05, 2.9636e-05, 3.01533e-05, 
			1.34926e-05, 1.56693e-05, 1.77301e-05, 1.96589e-05, 2.14448e-05, 2.30871e-05, 2.45866e-05, 2.59467e-05, 2.71748e-05, 2.82751e-05, 2.92602e-05, 3.01371e-05, 3.09154e-05, 3.16042e-05, 3.22121e-05, 3.27477e-05, 
			1.56445e-05, 1.78431e-05, 1.99363e-05, 2.18996e-05, 2.37219e-05, 2.53983e-05, 2.69287e-05, 2.83167e-05, 2.9571e-05, 3.06965e-05, 3.17029e-05, 3.25995e-05, 3.33955e-05, 3.41003e-05, 3.47216e-05, 3.52685e-05
		)
}

CapTable	"metal2_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177637, 0.000101111, 7.20368e-05, 5.57926e-05, 4.50346e-05, 3.72126e-05, 3.11968e-05, 2.64024e-05, 2.24912e-05, 1.92497e-05, 1.65331e-05, 1.4239e-05, 1.22898e-05, 1.06282e-05, 9.20524e-06, 7.98472e-06, 
			0.000188035, 0.000108909, 7.8154e-05, 6.07556e-05, 4.91314e-05, 4.0641e-05, 3.40948e-05, 2.88716e-05, 2.46078e-05, 2.10722e-05, 1.81091e-05, 1.56055e-05, 1.34793e-05, 1.16645e-05, 1.01118e-05, 8.77872e-06, 
			0.000193746, 0.00011358, 8.1944e-05, 6.38642e-05, 5.173e-05, 4.28308e-05, 3.59568e-05, 3.04662e-05, 2.59812e-05, 2.22612e-05, 1.9143e-05, 1.6507e-05, 1.42674e-05, 1.23562e-05, 1.07194e-05, 9.31446e-06, 
			0.000197333, 0.000116639, 8.44824e-05, 6.59768e-05, 5.35008e-05, 4.4334e-05, 3.7243e-05, 3.15744e-05, 2.6941e-05, 2.30978e-05, 1.98735e-05, 1.71487e-05, 1.48322e-05, 1.28546e-05, 1.11609e-05, 9.70624e-06, 
			0.000199286, 0.00011861, 8.61748e-05, 6.74096e-05, 5.47166e-05, 4.53778e-05, 3.81454e-05, 3.23578e-05, 2.76248e-05, 2.36968e-05, 2.04016e-05, 1.76153e-05, 1.52463e-05, 1.32231e-05, 1.14901e-05, 1.00013e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.506e-06, 1.24521e-05, 1.50754e-05, 1.74333e-05, 1.95489e-05, 2.14315e-05, 2.3095e-05, 2.4551e-05, 2.58181e-05, 2.6911e-05, 2.78507e-05, 2.86519e-05, 2.93345e-05, 2.9913e-05, 3.04021e-05, 3.08142e-05, 
			1.23989e-05, 1.53681e-05, 1.81018e-05, 2.05953e-05, 2.28504e-05, 2.48674e-05, 2.66512e-05, 2.82162e-05, 2.95798e-05, 3.07571e-05, 3.17695e-05, 3.26351e-05, 3.3372e-05, 3.39969e-05, 3.45252e-05, 3.49703e-05, 
			1.54055e-05, 1.84279e-05, 2.12442e-05, 2.38303e-05, 2.61725e-05, 2.82706e-05, 3.01284e-05, 3.17601e-05, 3.31794e-05, 3.44074e-05, 3.54629e-05, 3.63658e-05, 3.71344e-05, 3.77864e-05, 3.83377e-05, 3.88023e-05, 
			1.85258e-05, 2.16059e-05, 2.44864e-05, 2.71339e-05, 2.95355e-05, 3.16866e-05, 3.35918e-05, 3.52643e-05, 3.67199e-05, 3.79794e-05, 3.90619e-05, 3.99878e-05, 4.0776e-05, 4.1445e-05, 4.20323e-05, 4.24886e-05, 
			2.17505e-05, 2.48645e-05, 2.77888e-05, 3.0479e-05, 3.29199e-05, 3.51027e-05, 3.70367e-05, 3.87353e-05, 4.02133e-05, 4.14918e-05, 4.25907e-05, 4.3531e-05, 4.433e-05, 4.50296e-05, 4.55871e-05, 4.60755e-05
		)
}

CapTable	"metal2_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.09734e-05, 1.44518e-05, 1.75728e-05, 2.03791e-05, 2.28865e-05, 2.51125e-05, 2.70688e-05, 2.8777e-05, 3.02559e-05, 3.15285e-05, 3.26178e-05, 3.35455e-05, 3.43341e-05, 3.50007e-05, 3.55627e-05, 3.60368e-05, 
			1.43515e-05, 1.78851e-05, 2.11446e-05, 2.41117e-05, 2.67812e-05, 2.9156e-05, 3.12496e-05, 3.3077e-05, 3.46621e-05, 3.60256e-05, 3.71949e-05, 3.81916e-05, 3.90373e-05, 3.97544e-05, 4.036e-05, 4.08713e-05, 
			1.79171e-05, 2.15183e-05, 2.48748e-05, 2.79429e-05, 3.07085e-05, 3.31716e-05, 3.53423e-05, 3.72381e-05, 3.88837e-05, 4.03007e-05, 4.15141e-05, 4.25502e-05, 4.34311e-05, 4.41766e-05, 4.4808e-05, 4.53411e-05, 
			2.16348e-05, 2.53043e-05, 2.8726e-05, 3.18607e-05, 3.46861e-05, 3.72032e-05, 3.94214e-05, 4.13593e-05, 4.30407e-05, 4.44887e-05, 4.57312e-05, 4.67915e-05, 4.76922e-05, 4.84579e-05, 4.90823e-05, 4.96505e-05, 
			2.54827e-05, 2.91897e-05, 3.26552e-05, 3.58288e-05, 3.86907e-05, 4.12399e-05, 4.34863e-05, 4.54487e-05, 4.71523e-05, 4.86212e-05, 4.98799e-05, 5.09561e-05, 5.18723e-05, 5.26264e-05, 5.33031e-05, 5.38568e-05
		)
}

CapTable	"metal2_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000175585, 9.8309e-05, 6.85968e-05, 5.1849e-05, 4.07298e-05, 3.2682e-05, 2.65624e-05, 2.17666e-05, 1.79361e-05, 1.48404e-05, 1.23157e-05, 1.02471e-05, 8.54294e-06, 7.13664e-06, 5.97382e-06, 5.00982e-06, 
			0.000185004, 0.000105128, 7.37606e-05, 5.5904e-05, 4.39726e-05, 3.53142e-05, 2.87218e-05, 2.35538e-05, 1.94234e-05, 1.60851e-05, 1.33609e-05, 1.11272e-05, 9.2888e-06, 7.77004e-06, 6.51318e-06, 5.47072e-06, 
			0.000189737, 0.000108877, 7.6696e-05, 5.82298e-05, 4.586e-05, 3.68592e-05, 3.00004e-05, 2.46192e-05, 2.03186e-05, 1.6839e-05, 1.40015e-05, 1.16734e-05, 9.75572e-06, 8.1715e-06, 6.85924e-06, 5.7711e-06, 
			0.000192415, 0.00011111, 7.84936e-05, 5.96814e-05, 4.70424e-05, 3.78382e-05, 3.08188e-05, 2.53084e-05, 2.09034e-05, 1.73394e-05, 1.44309e-05, 1.20442e-05, 1.00776e-05, 8.45158e-06, 7.10706e-06, 5.98824e-06, 
			0.000193562, 0.000112371, 7.9563e-05, 6.05692e-05, 4.77794e-05, 3.84614e-05, 3.1349e-05, 2.5763e-05, 2.12954e-05, 1.7679e-05, 1.47274e-05, 1.23039e-05, 1.03067e-05, 8.65802e-06, 7.28778e-06, 6.15166e-06
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

CapTable	"metal1_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000172007, 9.0874e-05, 5.9327e-05, 4.20914e-05, 3.12746e-05, 2.39606e-05, 1.87772e-05, 1.49797e-05, 1.21261e-05, 9.93736e-06, 8.22954e-06, 6.8772e-06, 5.79252e-06, 4.91258e-06, 4.19158e-06, 3.59546e-06, 
			0.000179714, 9.65344e-05, 6.38222e-05, 4.58098e-05, 3.44046e-05, 2.66224e-05, 2.10542e-05, 1.69354e-05, 1.38107e-05, 1.1392e-05, 9.48812e-06, 7.9681e-06, 6.73958e-06, 5.73588e-06, 4.9081e-06, 4.21964e-06, 
			0.00018337, 9.98256e-05, 6.66922e-05, 4.83136e-05, 3.65946e-05, 2.85364e-05, 2.27266e-05, 1.83963e-05, 1.50868e-05, 1.25067e-05, 1.04621e-05, 8.81938e-06, 7.48378e-06, 6.38666e-06, 5.47732e-06, 4.71748e-06, 
			0.000185357, 0.000102068, 6.878e-05, 5.0192e-05, 3.82754e-05, 3.00352e-05, 2.4052e-05, 1.95652e-05, 1.61159e-05, 1.34117e-05, 1.12572e-05, 9.51736e-06, 8.09626e-06, 6.92382e-06, 5.94818e-06, 5.13018e-06, 
			0.000186976, 0.000103856, 7.04718e-05, 5.17364e-05, 3.96638e-05, 3.12694e-05, 2.51508e-05, 2.054e-05, 1.69784e-05, 1.41732e-05, 1.19286e-05, 1.01088e-05, 8.61654e-06, 7.38128e-06, 6.3501e-06, 5.48288e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.14928e-05, 5.46172e-05, 6.4648e-05, 7.2187e-05, 7.78452e-05, 8.21202e-05, 8.53808e-05, 8.78972e-05, 8.98625e-05, 9.14179e-05, 9.26626e-05, 9.36724e-05, 9.44996e-05, 9.51858e-05, 9.57601e-05, 9.62456e-05, 
			5.96838e-05, 7.29304e-05, 8.31252e-05, 9.08602e-05, 9.6732e-05, 0.000101218, 0.000104678, 0.000107377, 0.000109507, 0.000111207, 0.000112581, 0.000113705, 0.000114632, 0.000115405, 0.000116057, 0.000116612, 
			7.8043e-05, 9.11598e-05, 0.000101316, 0.000109087, 0.000115036, 0.000119621, 0.000123188, 0.000125993, 0.000128224, 0.000130019, 0.00013148, 0.000132681, 0.000133681, 0.000134519, 0.00013523, 0.000135837, 
			9.64178e-05, 0.000109382, 0.000119481, 0.000127262, 0.000133255, 0.000137905, 0.000141549, 0.000144433, 0.000146743, 0.000148612, 0.000150141, 0.000151406, 0.000152463, 0.000153356, 0.000154115, 0.000154767, 
			0.000114684, 0.000127502, 0.000137524, 0.000145278, 0.000151286, 0.000155976, 0.000159666, 0.000162603, 0.000164967, 0.00016689, 0.000168473, 0.000169787, 0.000170891, 0.000171827, 0.000172627, 0.000173317
		)
}

CapTable	"metal1_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000173148, 9.28898e-05, 6.2197e-05, 4.5727e-05, 3.55598e-05, 2.87788e-05, 2.40232e-05, 2.05638e-05, 1.79745e-05, 1.59901e-05, 1.44384e-05, 1.32036e-05, 1.22054e-05, 1.13872e-05, 1.07079e-05, 1.01374e-05, 
			0.00018109, 9.87896e-05, 6.69398e-05, 4.97048e-05, 3.8967e-05, 3.17394e-05, 2.66228e-05, 2.28664e-05, 2.00294e-05, 1.78368e-05, 1.61086e-05, 1.47233e-05, 1.35958e-05, 1.26659e-05, 1.18896e-05, 1.12341e-05, 
			0.000185064, 0.000102426, 7.0175e-05, 5.25946e-05, 4.15658e-05, 3.40864e-05, 2.8752e-05, 2.4807e-05, 2.1806e-05, 1.94707e-05, 1.7618e-05, 1.61235e-05, 1.49002e-05, 1.38857e-05, 1.30342e-05, 1.23119e-05, 
			0.000187375, 0.000104996, 7.25994e-05, 5.48218e-05, 4.36108e-05, 3.5965e-05, 3.0474e-05, 2.6389e-05, 2.32634e-05, 2.08174e-05, 1.88662e-05, 1.72842e-05, 1.59828e-05, 1.48984e-05, 1.39843e-05, 1.32055e-05, 
			0.000189402, 0.000107232, 7.4772e-05, 5.6878e-05, 4.55372e-05, 3.7761e-05, 3.21562e-05, 2.79652e-05, 2.47428e-05, 2.22086e-05, 2.01774e-05, 1.85229e-05, 1.71558e-05, 1.60118e-05, 1.50433e-05, 1.4215e-05
		)
}

CapTable	"metal1_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000171676, 9.03806e-05, 5.86832e-05, 4.13216e-05, 3.04082e-05, 2.30266e-05, 1.78015e-05, 1.3984e-05, 1.1128e-05, 8.9506e-06, 7.2646e-06, 5.94196e-06, 4.8926e-06, 4.05208e-06, 3.37336e-06, 2.82092e-06, 
			0.00017919, 9.58176e-05, 6.2932e-05, 4.47788e-05, 3.327e-05, 2.54194e-05, 1.98139e-05, 1.56833e-05, 1.25671e-05, 1.01723e-05, 8.3042e-06, 6.82842e-06, 5.64988e-06, 4.70038e-06, 3.92904e-06, 3.2983e-06, 
			0.000182627, 9.8867e-05, 6.55458e-05, 4.70198e-05, 3.51968e-05, 2.70752e-05, 2.12366e-05, 1.69054e-05, 1.36171e-05, 1.10748e-05, 9.08012e-06, 7.49622e-06, 6.2249e-06, 5.19598e-06, 4.35654e-06, 3.6674e-06, 
			0.00018438, 0.000100862, 6.73796e-05, 4.86438e-05, 3.6628e-05, 2.83326e-05, 2.23312e-05, 1.78564e-05, 1.4442e-05, 1.17896e-05, 9.69948e-06, 8.03232e-06, 6.68936e-06, 5.59826e-06, 4.70538e-06, 3.96996e-06, 
			0.000185749, 0.000102391, 6.88108e-05, 4.99318e-05, 3.77678e-05, 2.9329e-05, 2.32052e-05, 1.86201e-05, 1.51079e-05, 1.23691e-05, 1.02033e-05, 8.47002e-06, 7.06946e-06, 5.92864e-06, 4.99242e-06, 4.21968e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.00179e-05, 5.33067e-05, 6.36814e-05, 7.16264e-05, 7.76923e-05, 8.23368e-05, 8.59159e-05, 8.86962e-05, 9.08774e-05, 9.26033e-05, 9.3983e-05, 9.50971e-05, 9.60024e-05, 9.67458e-05, 9.73617e-05, 9.78724e-05, 
			5.74506e-05, 7.08647e-05, 8.13918e-05, 8.95337e-05, 9.58217e-05, 0.000100691, 0.000104488, 0.000107472, 0.000109836, 0.000111728, 0.000113255, 0.000114497, 0.000115516, 0.00011636, 0.000117062, 0.000117651, 
			7.51611e-05, 8.8485e-05, 9.90083e-05, 0.000107218, 0.000113611, 0.00011861, 0.000122541, 0.000125656, 0.000128145, 0.000130152, 0.000131783, 0.000133121, 0.000134223, 0.000135143, 0.000135911, 0.000136559, 
			9.2902e-05, 0.000106097, 0.000116586, 0.000124826, 0.000131286, 0.000136368, 0.000140396, 0.000143609, 0.000146194, 0.00014829, 0.000150004, 0.000151415, 0.000152586, 0.000153565, 0.000154387, 0.000155084, 
			0.000110664, 0.000123786, 0.000134256, 0.000142521, 0.000149036, 0.000154194, 0.000158299, 0.000161591, 0.000164253, 0.00016642, 0.000168201, 0.000169674, 0.000170902, 0.000171931, 0.000172801, 0.000173536
		)
}

CapTable	"metal1_C_TOP_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.87752e-06, 3.9033e-06, 4.77764e-06, 5.50315e-06, 6.08614e-06, 6.54861e-06, 6.91399e-06, 7.20308e-06, 7.43251e-06, 7.61634e-06, 7.76448e-06, 7.88474e-06, 7.98303e-06, 8.06465e-06, 8.13171e-06, 8.18909e-06, 
			3.89124e-06, 4.90994e-06, 5.80598e-06, 6.55648e-06, 7.16765e-06, 7.65915e-06, 8.05253e-06, 8.36773e-06, 8.62106e-06, 8.82573e-06, 8.99295e-06, 9.1297e-06, 9.2432e-06, 9.33677e-06, 9.41597e-06, 9.48217e-06, 
			4.90694e-06, 5.92338e-06, 6.8265e-06, 7.59061e-06, 8.21899e-06, 8.72883e-06, 9.14085e-06, 9.47371e-06, 9.74383e-06, 9.96382e-06, 1.0145e-05, 1.02937e-05, 1.04188e-05, 1.05213e-05, 1.06095e-05, 1.06834e-05, 
			5.92744e-06, 6.93957e-06, 7.847e-06, 8.61987e-06, 9.25979e-06, 9.78274e-06, 1.0208e-05, 1.05546e-05, 1.08372e-05, 1.10698e-05, 1.1261e-05, 1.14205e-05, 1.15535e-05, 1.16652e-05, 1.17599e-05, 1.18387e-05, 
			6.94421e-06, 7.95801e-06, 8.8697e-06, 9.65021e-06, 1.02997e-05, 1.08334e-05, 1.12695e-05, 1.16273e-05, 1.19198e-05, 1.21629e-05, 1.23622e-05, 1.25305e-05, 1.26704e-05, 1.2789e-05, 1.2888e-05, 1.29742e-05
		)
}

CapTable	"metal1_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000171285, 8.9811e-05, 5.79484e-05, 4.04518e-05, 2.94404e-05, 2.19976e-05, 1.67439e-05, 1.29246e-05, 1.00877e-05, 7.94532e-06, 6.30554e-06, 5.03736e-06, 4.04718e-06, 3.26818e-06, 2.65188e-06, 2.16132e-06, 
			0.000178531, 9.49462e-05, 6.18712e-05, 4.35684e-05, 3.19556e-05, 2.40456e-05, 1.84189e-05, 1.42984e-05, 1.12166e-05, 8.8746e-06, 7.07158e-06, 5.6695e-06, 4.56988e-06, 3.70118e-06, 3.01114e-06, 2.46034e-06, 
			0.000181657, 9.76646e-05, 6.41414e-05, 4.54624e-05, 3.35394e-05, 2.53674e-05, 1.95212e-05, 1.52165e-05, 1.19812e-05, 9.51096e-06, 7.6013e-06, 6.11068e-06, 4.93756e-06, 4.00846e-06, 3.26816e-06, 2.6761e-06, 
			0.000183071, 9.93088e-05, 6.56212e-05, 4.67362e-05, 3.46306e-05, 2.62994e-05, 2.03082e-05, 1.58788e-05, 1.25374e-05, 9.97754e-06, 7.9925e-06, 6.43868e-06, 5.21292e-06, 4.2395e-06, 3.46302e-06, 2.84036e-06, 
			0.000184084, 0.000100482, 6.6702e-05, 4.76852e-05, 3.54466e-05, 2.69906e-05, 2.08968e-05, 1.63781e-05, 1.29596e-05, 1.0334e-05, 8.2936e-06, 6.69284e-06, 5.4281e-06, 4.42204e-06, 3.61792e-06, 2.97336e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.94634e-05, 5.2653e-05, 6.29541e-05, 7.0854e-05, 7.68845e-05, 8.14973e-05, 8.50424e-05, 8.77862e-05, 8.99256e-05, 9.16068e-05, 9.29397e-05, 9.40033e-05, 9.48593e-05, 9.55514e-05, 9.61158e-05, 9.65786e-05, 
			5.67967e-05, 7.01524e-05, 8.0647e-05, 8.87674e-05, 9.50327e-05, 9.98762e-05, 0.000103637, 0.000106577, 0.00010889, 0.000110725, 0.000112191, 0.00011337, 0.000114325, 0.000115105, 0.000115743, 0.000116269, 
			7.44359e-05, 8.77466e-05, 9.82684e-05, 0.000106475, 0.000112858, 0.000117831, 0.000121723, 0.000124787, 0.000127216, 0.000129155, 0.000130713, 0.000131975, 0.000133002, 0.000133843, 0.000134536, 0.000135109, 
			9.21388e-05, 0.000105354, 0.000115866, 0.000124117, 0.000130572, 0.00013563, 0.000139614, 0.000142768, 0.000145282, 0.0001473, 0.000148929, 0.000150254, 0.000151336, 0.000152225, 0.000152961, 0.000153572, 
			0.000109894, 0.00012307, 0.000133581, 0.000141868, 0.00014838, 0.000153511, 0.000157566, 0.00016079, 0.000163373, 0.000165451, 0.000167136, 0.000168511, 0.000169638, 0.000170567, 0.000171338, 0.000171978
		)
}

CapTable	"metal1_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.85962e-06, 5.23135e-06, 6.4197e-06, 7.40135e-06, 8.19133e-06, 8.81713e-06, 9.31113e-06, 9.7008e-06, 1.00084e-05, 1.02536e-05, 1.04497e-05, 1.06077e-05, 1.07351e-05, 1.08395e-05, 1.09238e-05, 1.09935e-05, 
			5.24406e-06, 6.62495e-06, 7.84104e-06, 8.86179e-06, 9.69327e-06, 1.03604e-05, 1.08933e-05, 1.13179e-05, 1.16576e-05, 1.19307e-05, 1.21509e-05, 1.23295e-05, 1.24748e-05, 1.25933e-05, 1.26908e-05, 1.27722e-05, 
			6.64746e-06, 8.03142e-06, 9.26178e-06, 1.03038e-05, 1.11597e-05, 1.18528e-05, 1.24108e-05, 1.28596e-05, 1.32211e-05, 1.35128e-05, 1.37505e-05, 1.39427e-05, 1.41008e-05, 1.42314e-05, 1.43384e-05, 1.44275e-05, 
			8.05976e-06, 9.44449e-06, 1.0685e-05, 1.17419e-05, 1.26154e-05, 1.33268e-05, 1.39033e-05, 1.43694e-05, 1.47471e-05, 1.50527e-05, 1.53019e-05, 1.55061e-05, 1.5675e-05, 1.58133e-05, 1.59285e-05, 1.60241e-05, 
			9.4777e-06, 1.08661e-05, 1.2116e-05, 1.31849e-05, 1.40729e-05, 1.47992e-05, 1.53897e-05, 1.58698e-05, 1.62584e-05, 1.65755e-05, 1.68361e-05, 1.7049e-05, 1.72252e-05, 1.73709e-05, 1.74919e-05, 1.7593e-05
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
			3.8662e-05, 5.16533e-05, 6.18101e-05, 6.96036e-05, 7.5547e-05, 8.00804e-05, 8.35498e-05, 8.6217e-05, 8.82773e-05, 8.98799e-05, 9.11343e-05, 9.21205e-05, 9.28987e-05, 9.35198e-05, 9.40135e-05, 9.44094e-05, 
			5.58496e-05, 6.9059e-05, 7.94469e-05, 8.74837e-05, 9.36744e-05, 9.84425e-05, 0.000102123, 0.000104976, 0.000107198, 0.000108939, 0.00011031, 0.000111393, 0.000112253, 0.000112942, 0.000113494, 0.000113936, 
			7.34027e-05, 8.66108e-05, 9.70569e-05, 0.000105199, 0.000111514, 0.000116409, 0.000120213, 0.000123181, 0.000125507, 0.000127334, 0.000128782, 0.00012993, 0.000130846, 0.00013158, 0.00013217, 0.000132646, 
			9.10685e-05, 0.000104217, 0.000114678, 0.000122878, 0.000129268, 0.000134244, 0.000138132, 0.00014118, 0.000143573, 0.000145464, 0.000146965, 0.000148161, 0.000149118, 0.000149881, 0.000150502, 0.000150999, 
			0.000108824, 0.00012196, 0.000132437, 0.000140678, 0.000147125, 0.000152169, 0.000156117, 0.00015922, 0.000161666, 0.000163605, 0.000165145, 0.000166375, 0.000167362, 0.000168153, 0.000168791, 0.000169421
		)
}

CapTable	"metal1_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			5.16697e-06, 7.01168e-06, 8.6145e-06, 9.94161e-06, 1.10086e-05, 1.1853e-05, 1.25153e-05, 1.30344e-05, 1.3442e-05, 1.37628e-05, 1.40152e-05, 1.42141e-05, 1.43741e-05, 1.45e-05, 1.46016e-05, 1.46823e-05, 
			7.07379e-06, 8.94279e-06, 1.05939e-05, 1.19799e-05, 1.3107e-05, 1.40079e-05, 1.47233e-05, 1.52896e-05, 1.57377e-05, 1.60917e-05, 1.6372e-05, 1.6597e-05, 1.67767e-05, 1.6919e-05, 1.70332e-05, 1.71262e-05, 
			9.01933e-06, 1.09026e-05, 1.25817e-05, 1.40001e-05, 1.51631e-05, 1.61005e-05, 1.68494e-05, 1.74444e-05, 1.79168e-05, 1.82946e-05, 1.8594e-05, 1.88352e-05, 1.90269e-05, 1.91814e-05, 1.93059e-05, 1.9404e-05, 
			1.09917e-05, 1.28848e-05, 1.45818e-05, 1.60243e-05, 1.72117e-05, 1.81737e-05, 1.89438e-05, 1.95585e-05, 2.00507e-05, 2.0444e-05, 2.0757e-05, 2.10079e-05, 2.12105e-05, 2.13765e-05, 2.15035e-05, 2.16102e-05, 
			1.29792e-05, 1.48844e-05, 1.65975e-05, 1.80579e-05, 1.9263e-05, 2.02409e-05, 2.1029e-05, 2.16586e-05, 2.21644e-05, 2.25673e-05, 2.28916e-05, 2.3152e-05, 2.33588e-05, 2.35291e-05, 2.36662e-05, 2.36616e-05
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

CapTable	"metal1_C_LATERAL_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000187377, 0.000109504, 7.9463e-05, 6.2592e-05, 5.14374e-05, 4.3377e-05, 3.72292e-05, 3.23712e-05, 2.84368e-05, 2.51928e-05, 2.24814e-05, 2.019e-05, 1.82367e-05, 1.65588e-05, 1.51081e-05, 1.38465e-05, 
			0.000200602, 0.000119481, 8.74642e-05, 6.92834e-05, 5.71916e-05, 4.84298e-05, 4.1737e-05, 3.64426e-05, 3.21502e-05, 2.86066e-05, 2.56404e-05, 2.31296e-05, 2.0985e-05, 1.91391e-05, 1.75394e-05, 1.6145e-05, 
			0.000207982, 0.000125608, 9.26258e-05, 7.37476e-05, 6.11378e-05, 5.19752e-05, 4.49632e-05, 3.94076e-05, 3.48968e-05, 3.11672e-05, 2.80398e-05, 2.53882e-05, 2.31188e-05, 2.11614e-05, 1.94616e-05, 1.79767e-05, 
			0.00021244, 0.000129753, 9.62884e-05, 7.70154e-05, 6.41026e-05, 5.47e-05, 4.74874e-05, 4.1764e-05, 3.711e-05, 3.3256e-05, 3.00192e-05, 2.727e-05, 2.49132e-05, 2.28766e-05, 2.11046e-05, 1.95535e-05, 
			0.00021573, 0.000132896, 9.91606e-05, 7.96464e-05, 6.65336e-05, 5.6964e-05, 4.9615e-05, 4.37748e-05, 3.90186e-05, 3.50742e-05, 3.17564e-05, 2.89338e-05, 2.651e-05, 2.4412e-05, 2.25834e-05, 2.09798e-05
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

CapTable	"metal1_C_TOP_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.64308e-06, 4.69964e-06, 5.6237e-06, 6.4473e-06, 7.1853e-06, 7.84902e-06, 8.44524e-06, 8.97984e-06, 9.45831e-06, 9.88579e-06, 1.02668e-05, 1.06073e-05, 1.09095e-05, 1.11784e-05, 1.14173e-05, 1.16309e-05, 
			4.54014e-06, 5.57707e-06, 6.52059e-06, 7.37922e-06, 8.15997e-06, 8.86708e-06, 9.50758e-06, 1.00843e-05, 1.06026e-05, 1.10675e-05, 1.1483e-05, 1.1855e-05, 1.21876e-05, 1.24839e-05, 1.27493e-05, 1.29854e-05, 
			5.46694e-06, 6.49672e-06, 7.45315e-06, 8.33439e-06, 9.1415e-06, 9.8773e-06, 1.05453e-05, 1.1149e-05, 1.16945e-05, 1.21843e-05, 1.26237e-05, 1.30177e-05, 1.33711e-05, 1.36873e-05, 1.397e-05, 1.42233e-05, 
			6.41851e-06, 7.4453e-06, 8.41067e-06, 9.30823e-06, 1.01335e-05, 1.08884e-05, 1.15762e-05, 1.21994e-05, 1.27632e-05, 1.32718e-05, 1.37289e-05, 1.41404e-05, 1.45091e-05, 1.48403e-05, 1.51367e-05, 1.5402e-05, 
			7.3857e-06, 8.41606e-06, 9.39044e-06, 1.02992e-05, 1.11386e-05, 1.19099e-05, 1.26129e-05, 1.32518e-05, 1.38307e-05, 1.43542e-05, 1.48262e-05, 1.52507e-05, 1.56328e-05, 1.59752e-05, 1.6283e-05, 1.65592e-05
		)
}

CapTable	"metal1_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000186365, 0.000108158, 7.77896e-05, 6.0605e-05, 4.91548e-05, 4.08194e-05, 3.44186e-05, 2.93304e-05, 2.51884e-05, 2.17594e-05, 1.88841e-05, 1.64498e-05, 1.43727e-05, 1.25892e-05, 1.10497e-05, 9.71478e-06, 
			0.000199136, 0.000117608, 8.51936e-05, 6.66322e-05, 5.4181e-05, 4.50846e-05, 3.80838e-05, 3.2509e-05, 2.79644e-05, 2.41962e-05, 2.10318e-05, 1.83486e-05, 1.60555e-05, 1.40834e-05, 1.23783e-05, 1.08975e-05, 
			0.000206046, 0.000123206, 8.97694e-05, 7.04556e-05, 5.74346e-05, 4.78892e-05, 4.05248e-05, 3.46492e-05, 2.98504e-05, 2.58648e-05, 2.25126e-05, 1.96653e-05, 1.72281e-05, 1.51288e-05, 1.3311e-05, 1.173e-05, 
			0.000210026, 0.000126821, 9.28506e-05, 7.30926e-05, 5.97224e-05, 4.9894e-05, 4.229e-05, 3.62112e-05, 3.12382e-05, 2.71012e-05, 2.3616e-05, 2.06514e-05, 1.81102e-05, 1.59182e-05, 1.40177e-05, 1.23626e-05, 
			0.000212808, 0.000129409, 9.51188e-05, 7.50736e-05, 6.14602e-05, 5.1425e-05, 4.36492e-05, 3.74218e-05, 3.2319e-05, 2.80672e-05, 2.44804e-05, 2.14252e-05, 1.88029e-05, 1.65381e-05, 1.45721e-05, 1.28581e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.97646e-05, 2.51858e-05, 2.9833e-05, 3.39107e-05, 3.75262e-05, 4.0742e-05, 4.36034e-05, 4.61478e-05, 4.84086e-05, 5.04162e-05, 5.21982e-05, 5.37808e-05, 5.51866e-05, 5.64367e-05, 5.75498e-05, 5.85422e-05, 
			2.4682e-05, 2.9949e-05, 3.46508e-05, 3.88596e-05, 4.26299e-05, 4.60038e-05, 4.90184e-05, 5.17083e-05, 5.41061e-05, 5.62419e-05, 5.8144e-05, 5.98385e-05, 6.13489e-05, 6.26965e-05, 6.39005e-05, 6.49777e-05, 
			2.9781e-05, 3.49772e-05, 3.96932e-05, 4.39534e-05, 4.77912e-05, 5.12378e-05, 5.4327e-05, 5.70911e-05, 5.95613e-05, 6.17673e-05, 6.37374e-05, 6.54969e-05, 6.70698e-05, 6.84771e-05, 6.9738e-05, 7.08693e-05, 
			3.506e-05, 4.0195e-05, 4.48966e-05, 4.91646e-05, 5.30214e-05, 5.6495e-05, 5.96156e-05, 6.2414e-05, 6.492e-05, 6.7164e-05, 6.91721e-05, 7.09699e-05, 7.25805e-05, 7.40251e-05, 7.53226e-05, 7.64896e-05, 
			4.0438e-05, 4.55248e-05, 5.01924e-05, 5.44436e-05, 5.82944e-05, 6.1771e-05, 6.49e-05, 6.77122e-05, 7.02364e-05, 7.25008e-05, 7.45316e-05, 7.63532e-05, 7.7989e-05, 7.946e-05, 8.07826e-05, 8.19762e-05
		)
}

CapTable	"metal1_C_TOP_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.66971e-06, 6.02779e-06, 7.22331e-06, 8.29377e-06, 9.2571e-06, 1.01241e-05, 1.09025e-05, 1.15998e-05, 1.22213e-05, 1.2774e-05, 1.32637e-05, 1.36964e-05, 1.40779e-05, 1.44151e-05, 1.47122e-05, 1.4972e-05, 
			5.86358e-06, 7.20651e-06, 8.43803e-06, 9.56339e-06, 1.05894e-05, 1.1519e-05, 1.23586e-05, 1.3113e-05, 1.3788e-05, 1.43886e-05, 1.49231e-05, 1.53973e-05, 1.58159e-05, 1.61867e-05, 1.65126e-05, 1.67999e-05, 
			7.10475e-06, 8.45092e-06, 9.70738e-06, 1.08686e-05, 1.19334e-05, 1.29036e-05, 1.37817e-05, 1.45724e-05, 1.52811e-05, 1.59138e-05, 1.64782e-05, 1.69799e-05, 1.74226e-05, 1.78155e-05, 1.81603e-05, 1.84672e-05, 
			8.38808e-06, 9.74089e-06, 1.10174e-05, 1.22042e-05, 1.32968e-05, 1.42941e-05, 1.51978e-05, 1.60141e-05, 1.67477e-05, 1.74028e-05, 1.79883e-05, 1.85074e-05, 1.89687e-05, 1.93755e-05, 1.97378e-05, 2.00557e-05, 
			9.70318e-06, 1.10669e-05, 1.23598e-05, 1.35663e-05, 1.46781e-05, 1.56955e-05, 1.66193e-05, 1.7455e-05, 1.82072e-05, 1.8879e-05, 1.94796e-05, 2.00125e-05, 2.04884e-05, 2.09079e-05, 2.12788e-05, 2.16085e-05
		)
}

CapTable	"metal1_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000185996, 0.000107648, 7.7141e-05, 5.9825e-05, 4.82556e-05, 3.98168e-05, 3.33308e-05, 2.8177e-05, 2.39892e-05, 2.0533e-05, 1.76481e-05, 1.52197e-05, 1.31619e-05, 1.14092e-05, 9.91012e-06, 8.6232e-06, 
			0.000198583, 0.000116889, 8.4313e-05, 6.56002e-05, 5.30144e-05, 4.3804e-05, 3.67118e-05, 3.10696e-05, 2.64802e-05, 2.2689e-05, 1.95213e-05, 1.6852e-05, 1.45878e-05, 1.26573e-05, 1.10039e-05, 9.58364e-06, 
			0.000205282, 0.000122255, 8.86392e-05, 6.91626e-05, 5.60004e-05, 4.63386e-05, 3.88848e-05, 3.29458e-05, 2.81094e-05, 2.41092e-05, 2.07634e-05, 1.79409e-05, 1.55442e-05, 1.34986e-05, 1.17451e-05, 1.02368e-05, 
			0.000209022, 0.000125618, 9.14588e-05, 7.15336e-05, 5.8022e-05, 4.8081e-05, 4.03934e-05, 3.42598e-05, 2.92586e-05, 2.51176e-05, 2.16504e-05, 1.87225e-05, 1.62341e-05, 1.41079e-05, 1.22838e-05, 1.07131e-05, 
			0.000211548, 0.00012794, 9.34598e-05, 7.3249e-05, 5.95e-05, 4.93604e-05, 4.1511e-05, 3.52402e-05, 3.01214e-05, 2.58788e-05, 2.23232e-05, 1.93179e-05, 1.67614e-05, 1.45751e-05, 1.2698e-05, 1.10808e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.73555e-05, 2.2212e-05, 2.64247e-05, 3.01608e-05, 3.35019e-05, 3.64932e-05, 3.91689e-05, 4.15577e-05, 4.36865e-05, 4.55802e-05, 4.72634e-05, 4.87566e-05, 5.00826e-05, 5.1259e-05, 5.23032e-05, 5.32289e-05, 
			2.19371e-05, 2.67819e-05, 3.11508e-05, 3.50966e-05, 3.8659e-05, 4.18673e-05, 4.47476e-05, 4.73282e-05, 4.96346e-05, 5.16921e-05, 5.3526e-05, 5.51575e-05, 5.66085e-05, 5.78994e-05, 5.90465e-05, 6.00674e-05, 
			2.67131e-05, 3.15959e-05, 3.60654e-05, 4.0136e-05, 4.38299e-05, 4.71675e-05, 5.01749e-05, 5.28746e-05, 5.52927e-05, 5.74554e-05, 5.93865e-05, 6.11089e-05, 6.26434e-05, 6.40107e-05, 6.52289e-05, 6.63138e-05, 
			3.16705e-05, 3.65835e-05, 4.11197e-05, 4.52702e-05, 4.90471e-05, 5.24706e-05, 5.55598e-05, 5.83414e-05, 6.08376e-05, 6.3073e-05, 6.50731e-05, 6.68592e-05, 6.84537e-05, 6.98765e-05, 7.11466e-05, 7.22804e-05, 
			3.67583e-05, 4.17073e-05, 4.62878e-05, 5.04922e-05, 5.43282e-05, 5.78111e-05, 6.09619e-05, 6.38024e-05, 6.63563e-05, 6.86476e-05, 7.06994e-05, 7.25361e-05, 7.41783e-05, 7.56457e-05, 7.69559e-05, 7.81267e-05
		)
}

CapTable	"metal1_C_TOP_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			6.18076e-06, 8.01373e-06, 9.64078e-06, 1.11043e-05, 1.24229e-05, 1.3609e-05, 1.46708e-05, 1.56169e-05, 1.64543e-05, 1.71916e-05, 1.78395e-05, 1.84041e-05, 1.88969e-05, 1.93237e-05, 1.96946e-05, 2.00143e-05, 
			7.83422e-06, 9.6693e-06, 1.13615e-05, 1.29116e-05, 1.43235e-05, 1.56025e-05, 1.67512e-05, 1.77752e-05, 1.86845e-05, 1.9488e-05, 2.01921e-05, 2.08099e-05, 2.13479e-05, 2.18148e-05, 2.22198e-05, 2.25719e-05, 
			9.57221e-06, 1.14291e-05, 1.31681e-05, 1.47765e-05, 1.62498e-05, 1.75856e-05, 1.87878e-05, 1.98627e-05, 2.08164e-05, 2.16605e-05, 2.24007e-05, 2.30499e-05, 2.36157e-05, 2.41095e-05, 2.45366e-05, 2.49065e-05, 
			1.13867e-05, 1.32653e-05, 1.50423e-05, 1.66929e-05, 1.82051e-05, 1.95797e-05, 2.08193e-05, 2.19261e-05, 2.29116e-05, 2.37815e-05, 2.45466e-05, 2.52162e-05, 2.58031e-05, 2.63116e-05, 2.67537e-05, 2.71382e-05, 
			1.32578e-05, 1.51634e-05, 1.69686e-05, 1.86481e-05, 2.01917e-05, 2.15936e-05, 2.2859e-05, 2.39885e-05, 2.49946e-05, 2.5883e-05, 2.66664e-05, 2.73515e-05, 2.79504e-05, 2.84718e-05, 2.89244e-05, 2.93172e-05
		)
}

CapTable	"metal1_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000185399, 0.000106819, 7.60936e-05, 5.85792e-05, 4.68378e-05, 3.82572e-05, 3.16614e-05, 2.64292e-05, 2.21926e-05, 1.87147e-05, 1.58316e-05, 1.3425e-05, 1.14064e-05, 9.70594e-06, 8.27016e-06, 7.05402e-06, 
			0.000197697, 0.000115745, 8.29276e-05, 6.39992e-05, 5.12304e-05, 4.18726e-05, 3.467e-05, 2.89528e-05, 2.43222e-05, 2.05192e-05, 1.73658e-05, 1.47329e-05, 1.25237e-05, 1.06615e-05, 9.08802e-06, 7.75554e-06, 
			0.000204072, 0.000120771, 8.6903e-05, 6.72052e-05, 5.38594e-05, 4.40548e-05, 3.64984e-05, 3.04954e-05, 2.563e-05, 2.16326e-05, 1.83164e-05, 1.55467e-05, 1.32205e-05, 1.12601e-05, 9.60238e-06, 8.19778e-06, 
			0.000207468, 0.000123782, 8.93682e-05, 6.9225e-05, 5.55372e-05, 4.54638e-05, 3.76866e-05, 3.15034e-05, 2.64892e-05, 2.2368e-05, 1.89466e-05, 1.60876e-05, 1.36861e-05, 1.16611e-05, 9.94848e-06, 8.4966e-06, 
			0.000209636, 0.000125748, 9.10182e-05, 7.05994e-05, 5.66868e-05, 4.64292e-05, 3.85064e-05, 3.2203e-05, 2.70886e-05, 2.2882e-05, 1.93898e-05, 1.64697e-05, 1.40159e-05, 1.19466e-05, 1.01957e-05, 8.71114e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.67975e-05, 2.1556e-05, 2.57047e-05, 2.9398e-05, 3.27084e-05, 3.56757e-05, 3.83288e-05, 4.06919e-05, 4.27906e-05, 4.46482e-05, 4.62884e-05, 4.77339e-05, 4.9006e-05, 5.01224e-05, 5.1102e-05, 5.19628e-05, 
			2.13256e-05, 2.61091e-05, 3.0437e-05, 3.43604e-05, 3.79062e-05, 4.11016e-05, 4.39671e-05, 4.65261e-05, 4.88035e-05, 5.08245e-05, 5.26117e-05, 5.41888e-05, 5.55794e-05, 5.68019e-05, 5.78781e-05, 5.88228e-05, 
			2.60743e-05, 3.09233e-05, 3.53764e-05, 3.94408e-05, 4.31322e-05, 4.64648e-05, 4.94605e-05, 5.21405e-05, 5.45294e-05, 5.66521e-05, 5.85314e-05, 6.01921e-05, 6.16592e-05, 6.29505e-05, 6.40895e-05, 6.50886e-05, 
			3.10339e-05, 3.59355e-05, 4.04728e-05, 4.46302e-05, 4.84132e-05, 5.18359e-05, 5.49188e-05, 5.76791e-05, 6.01427e-05, 6.23336e-05, 6.42763e-05, 6.59971e-05, 6.75152e-05, 6.88576e-05, 7.00364e-05, 7.10772e-05, 
			3.61438e-05, 4.11009e-05, 4.56974e-05, 4.99197e-05, 5.37679e-05, 5.72551e-05, 6.03977e-05, 6.32148e-05, 6.57304e-05, 6.79722e-05, 6.99612e-05, 7.17256e-05, 7.32822e-05, 7.4659e-05, 7.58732e-05, 7.69417e-05
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
			1.60402e-05, 2.06699e-05, 2.47326e-05, 2.83665e-05, 3.16317e-05, 3.45573e-05, 3.71664e-05, 3.94799e-05, 4.15216e-05, 4.33148e-05, 4.48822e-05, 4.62498e-05, 4.74365e-05, 4.84669e-05, 4.93563e-05, 5.01261e-05, 
			2.0504e-05, 2.51972e-05, 2.94679e-05, 3.33502e-05, 3.68651e-05, 4.00247e-05, 4.28495e-05, 4.53602e-05, 4.7577e-05, 4.95252e-05, 5.12324e-05, 5.27198e-05, 5.40134e-05, 5.51375e-05, 5.61104e-05, 5.69493e-05, 
			2.52208e-05, 3.00109e-05, 3.44289e-05, 3.84693e-05, 4.21358e-05, 4.54396e-05, 4.83958e-05, 5.10239e-05, 5.33474e-05, 5.53899e-05, 5.7181e-05, 5.87428e-05, 6.01033e-05, 6.12823e-05, 6.23055e-05, 6.319e-05, 
			3.01733e-05, 3.50431e-05, 3.95615e-05, 4.37061e-05, 4.74747e-05, 5.08705e-05, 5.39101e-05, 5.66145e-05, 5.90052e-05, 6.11095e-05, 6.29548e-05, 6.45662e-05, 6.59668e-05, 6.71853e-05, 6.82408e-05, 6.91532e-05, 
			3.53022e-05, 4.02446e-05, 4.48372e-05, 4.90545e-05, 5.28895e-05, 5.63502e-05, 5.94456e-05, 6.22035e-05, 6.46408e-05, 6.6788e-05, 6.86678e-05, 7.03128e-05, 7.17447e-05, 7.29876e-05, 7.40659e-05, 7.49987e-05
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

CapTable	"poly_C_BOTTOM_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.6561e-05, 3.3883e-05, 4.02672e-05, 4.58664e-05, 5.07874e-05, 5.5111e-05, 5.89076e-05, 6.22399e-05, 6.51642e-05, 6.7731e-05, 6.99856e-05, 7.1968e-05, 7.37133e-05, 7.52522e-05, 7.66112e-05, 7.78136e-05, 
			3.5398e-05, 4.26704e-05, 4.91968e-05, 5.50044e-05, 6.01588e-05, 6.47192e-05, 6.87476e-05, 7.23034e-05, 7.54404e-05, 7.82076e-05, 8.06504e-05, 8.28088e-05, 8.47177e-05, 8.64073e-05, 8.79064e-05, 8.92384e-05, 
			4.4541e-05, 5.17806e-05, 5.83468e-05, 6.42386e-05, 6.94958e-05, 7.41728e-05, 7.8325e-05, 8.20062e-05, 8.52668e-05, 8.81564e-05, 9.07154e-05, 9.29858e-05, 9.50004e-05, 9.67917e-05, 9.83845e-05, 9.98051e-05, 
			5.3861e-05, 6.10668e-05, 6.76342e-05, 7.35588e-05, 7.88716e-05, 8.36178e-05, 8.7847e-05, 9.161e-05, 9.49552e-05, 9.79292e-05, 0.000100572, 0.000102924, 0.000105018, 0.000106884, 0.00010855, 0.000110038, 
			6.324e-05, 7.03806e-05, 7.69244e-05, 8.28508e-05, 8.81842e-05, 9.29664e-05, 9.72374e-05, 0.00010105, 0.000104449, 0.00010748, 0.000110182, 0.00011259, 0.00011474, 0.000116662, 0.00011838, 0.000119919
		)
}

CapTable	"poly_C_LATERAL_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217398, 0.000124775, 8.91338e-05, 6.91026e-05, 5.58746e-05, 4.6345e-05, 3.91078e-05, 3.3417e-05, 2.88318e-05, 2.50706e-05, 2.19424e-05, 1.93117e-05, 1.70794e-05, 1.51707e-05, 1.35281e-05, 1.21063e-05, 
			0.0002311, 0.000135297, 9.75882e-05, 7.61696e-05, 6.19222e-05, 5.16138e-05, 4.37574e-05, 3.75596e-05, 3.25496e-05, 2.84264e-05, 2.49856e-05, 2.20822e-05, 1.96103e-05, 1.74897e-05, 1.56586e-05, 1.40686e-05, 
			0.000238172, 0.000141399, 0.000102805, 8.07004e-05, 6.59382e-05, 5.52072e-05, 4.6999e-05, 4.05028e-05, 3.52352e-05, 3.08866e-05, 2.72466e-05, 2.41662e-05, 2.15356e-05, 1.92723e-05, 1.73125e-05, 1.56059e-05, 
			0.000242808, 0.000145613, 0.000106558, 8.40622e-05, 6.89734e-05, 5.79682e-05, 4.9528e-05, 4.2829e-05, 3.73818e-05, 3.28728e-05, 2.90886e-05, 2.58776e-05, 2.31286e-05, 2.07576e-05, 1.86993e-05, 1.69028e-05, 
			0.000244836, 0.000148248, 0.000109147, 8.65092e-05, 7.12588e-05, 6.01036e-05, 5.15286e-05, 4.47052e-05, 3.91386e-05, 3.45196e-05, 3.06342e-05, 2.733e-05, 2.4495e-05, 2.20442e-05, 1.99125e-05, 1.80478e-05
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

CapTable	"poly_C_BOTTOM_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.45443e-05, 3.13808e-05, 3.73479e-05, 4.25786e-05, 4.71837e-05, 5.12263e-05, 5.47736e-05, 5.78825e-05, 6.06064e-05, 6.29901e-05, 6.50782e-05, 6.69075e-05, 6.85109e-05, 6.99198e-05, 7.11569e-05, 7.22474e-05, 
			3.28291e-05, 3.96362e-05, 4.57512e-05, 5.11962e-05, 5.60269e-05, 6.02979e-05, 6.40696e-05, 6.73906e-05, 7.03168e-05, 7.28901e-05, 7.5155e-05, 7.71499e-05, 7.89051e-05, 8.04555e-05, 8.18235e-05, 8.30335e-05, 
			4.14269e-05, 4.8229e-05, 5.43974e-05, 5.99286e-05, 6.48645e-05, 6.92521e-05, 7.3144e-05, 7.65873e-05, 7.96304e-05, 8.23207e-05, 8.46954e-05, 8.67961e-05, 8.86524e-05, 9.02957e-05, 9.17533e-05, 9.30457e-05, 
			5.02309e-05, 5.70162e-05, 6.31976e-05, 6.87722e-05, 7.37677e-05, 7.82258e-05, 8.21933e-05, 8.5716e-05, 8.88405e-05, 9.16117e-05, 9.40665e-05, 9.62441e-05, 9.81745e-05, 9.98894e-05, 0.000101414, 0.00010277, 
			5.91121e-05, 6.58464e-05, 7.20161e-05, 7.75994e-05, 8.26218e-05, 8.71183e-05, 9.1129e-05, 9.47017e-05, 9.78818e-05, 0.000100708, 0.00010322, 0.000105453, 0.000107439, 0.000109208, 0.000110783, 0.00011219
		)
}

CapTable	"poly_C_TOP_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.31768e-06, 2.93875e-06, 3.49005e-06, 3.98884e-06, 4.42554e-06, 4.81629e-06, 5.16315e-06, 5.46898e-06, 5.73761e-06, 5.97524e-06, 6.18317e-06, 6.36644e-06, 6.52815e-06, 6.6691e-06, 6.79481e-06, 6.90428e-06, 
			3.03595e-06, 3.65599e-06, 4.22164e-06, 4.73439e-06, 5.19748e-06, 5.61468e-06, 5.98401e-06, 6.31377e-06, 6.60455e-06, 6.86269e-06, 7.09121e-06, 7.2917e-06, 7.47054e-06, 7.62702e-06, 7.76677e-06, 7.88984e-06, 
			3.78109e-06, 4.39241e-06, 4.96402e-06, 5.49064e-06, 5.9665e-06, 6.39627e-06, 6.77937e-06, 7.12286e-06, 7.42842e-06, 7.69849e-06, 7.93983e-06, 8.15212e-06, 8.34184e-06, 8.50935e-06, 8.65865e-06, 8.7912e-06, 
			4.53105e-06, 5.14339e-06, 5.71979e-06, 6.25159e-06, 6.73434e-06, 7.17277e-06, 7.56529e-06, 7.918e-06, 8.23331e-06, 8.51254e-06, 8.76254e-06, 8.98406e-06, 9.18195e-06, 9.35747e-06, 9.51435e-06, 9.65387e-06, 
			5.29191e-06, 5.90355e-06, 6.48113e-06, 7.01677e-06, 7.50457e-06, 7.94852e-06, 8.34862e-06, 8.70645e-06, 9.02783e-06, 9.3145e-06, 9.57088e-06, 9.79892e-06, 1.00032e-05, 1.01848e-05, 1.03477e-05, 1.04928e-05
		)
}

CapTable	"poly_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.00021716, 0.000124446, 8.872e-05, 6.86096e-05, 5.53108e-05, 4.57204e-05, 3.84332e-05, 3.27038e-05, 2.80908e-05, 2.43118e-05, 2.11748e-05, 1.85432e-05, 1.63167e-05, 1.44195e-05, 1.27926e-05, 1.13902e-05, 
			0.000230742, 0.000134838, 9.70332e-05, 7.55254e-05, 6.11986e-05, 5.08224e-05, 4.29104e-05, 3.66696e-05, 3.16286e-05, 2.74852e-05, 2.40338e-05, 2.11284e-05, 1.86614e-05, 1.65515e-05, 1.47358e-05, 1.31647e-05, 
			0.000237672, 0.00014079, 0.000102091, 7.98898e-05, 6.5043e-05, 5.42406e-05, 4.59746e-05, 3.94338e-05, 3.41342e-05, 2.97648e-05, 2.61138e-05, 2.30308e-05, 2.04048e-05, 1.81519e-05, 1.62071e-05, 1.45191e-05, 
			0.000242146, 0.000144833, 0.000105668, 8.30722e-05, 6.7897e-05, 5.68194e-05, 4.83214e-05, 4.1578e-05, 3.60992e-05, 3.15698e-05, 2.7775e-05, 2.45618e-05, 2.18176e-05, 1.94571e-05, 1.7414e-05, 1.5636e-05, 
			0.000243994, 0.000147286, 0.000108071, 8.53318e-05, 6.99936e-05, 5.87652e-05, 5.01314e-05, 4.32628e-05, 3.76634e-05, 3.30228e-05, 2.91254e-05, 2.58172e-05, 2.29852e-05, 2.05432e-05, 1.84245e-05, 1.65763e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.39712e-05, 3.06408e-05, 3.6464e-05, 4.15738e-05, 4.60654e-05, 5.00109e-05, 5.34736e-05, 5.65098e-05, 5.91708e-05, 6.15026e-05, 6.35466e-05, 6.53393e-05, 6.69134e-05, 6.82973e-05, 6.95153e-05, 7.05899e-05, 
			3.2137e-05, 3.88009e-05, 4.47824e-05, 5.01073e-05, 5.48321e-05, 5.9012e-05, 6.27022e-05, 6.59556e-05, 6.88221e-05, 7.13459e-05, 7.35698e-05, 7.5529e-05, 7.72578e-05, 7.87841e-05, 8.01327e-05, 8.13268e-05, 
			4.06375e-05, 4.73015e-05, 5.33466e-05, 5.87695e-05, 6.3607e-05, 6.79087e-05, 7.17261e-05, 7.51059e-05, 7.80965e-05, 8.07397e-05, 8.30774e-05, 8.51456e-05, 8.69759e-05, 8.85971e-05, 9.00355e-05, 9.13117e-05, 
			4.93465e-05, 5.60069e-05, 6.20742e-05, 6.7546e-05, 7.24515e-05, 7.68318e-05, 8.07321e-05, 8.41982e-05, 8.72736e-05, 9.00032e-05, 9.24233e-05, 9.45708e-05, 9.6476e-05, 9.81688e-05, 9.96741e-05, 0.000101014, 
			5.81526e-05, 6.47785e-05, 7.08459e-05, 7.63405e-05, 8.12835e-05, 8.57119e-05, 8.96646e-05, 9.31873e-05, 9.63233e-05, 9.91124e-05, 0.000101593, 0.000103798, 0.000105759, 0.000107506, 0.000109062, 0.00011045
		)
}

CapTable	"poly_C_TOP_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.9768e-06, 3.78418e-06, 4.50077e-06, 5.14104e-06, 5.71204e-06, 6.21968e-06, 6.66947e-06, 7.06683e-06, 7.41727e-06, 7.726e-06, 7.99798e-06, 8.23732e-06, 8.44809e-06, 8.63374e-06, 8.79781e-06, 8.94199e-06, 
			3.89403e-06, 4.6917e-06, 5.42562e-06, 6.09273e-06, 6.69447e-06, 7.23399e-06, 7.71521e-06, 8.14385e-06, 8.52388e-06, 8.8605e-06, 9.15795e-06, 9.42202e-06, 9.65551e-06, 9.8614e-06, 1.00448e-05, 1.02076e-05, 
			4.83546e-06, 5.63086e-06, 6.37358e-06, 7.05474e-06, 7.67421e-06, 8.23247e-06, 8.73294e-06, 9.1801e-06, 9.57809e-06, 9.93291e-06, 1.0248e-05, 1.05272e-05, 1.07759e-05, 1.09968e-05, 1.11935e-05, 1.13684e-05, 
			5.79349e-06, 6.58953e-06, 7.33864e-06, 8.02939e-06, 8.65934e-06, 9.22978e-06, 9.74271e-06, 1.02034e-05, 1.06152e-05, 1.09822e-05, 1.13099e-05, 1.16016e-05, 1.1862e-05, 1.20937e-05, 1.23006e-05, 1.2485e-05, 
			6.76638e-06, 7.5609e-06, 8.31266e-06, 9.00906e-06, 9.64626e-06, 1.02255e-05, 1.07478e-05, 1.12169e-05, 1.16381e-05, 1.20148e-05, 1.2352e-05, 1.26527e-05, 1.29218e-05, 1.31618e-05, 1.33766e-05, 1.35681e-05
		)
}

CapTable	"poly_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217092, 0.000124366, 8.86252e-05, 6.85012e-05, 5.51896e-05, 4.55864e-05, 3.8286e-05, 3.25428e-05, 2.7915e-05, 2.41204e-05, 2.09668e-05, 1.83185e-05, 1.60749e-05, 1.41604e-05, 1.25168e-05, 1.10979e-05, 
			0.00023061, 0.000134684, 9.6858e-05, 7.5329e-05, 6.09814e-05, 5.0584e-05, 4.26506e-05, 3.63876e-05, 3.1324e-05, 2.71576e-05, 2.36832e-05, 2.0755e-05, 1.82657e-05, 1.61345e-05, 1.42985e-05, 1.27086e-05, 
			0.000237466, 0.000140555, 0.000101827, 7.95968e-05, 6.47208e-05, 5.38888e-05, 4.5593e-05, 3.9022e-05, 3.36924e-05, 2.92934e-05, 2.56136e-05, 2.25032e-05, 1.98512e-05, 1.75741e-05, 1.5607e-05, 1.38989e-05, 
			0.000241858, 0.00014451, 0.000105307, 8.26746e-05, 6.74612e-05, 5.63454e-05, 4.78092e-05, 4.10284e-05, 3.55132e-05, 3.09486e-05, 2.71208e-05, 2.38766e-05, 2.1104e-05, 1.87175e-05, 1.66513e-05, 1.48531e-05, 
			0.000243608, 0.000146854, 0.000107591, 8.48044e-05, 6.94182e-05, 5.81426e-05, 4.94626e-05, 4.25498e-05, 3.69086e-05, 3.22288e-05, 2.82952e-05, 2.49544e-05, 2.2093e-05, 1.96251e-05, 1.74842e-05, 1.56175e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.33826e-05, 2.99244e-05, 3.56429e-05, 4.067e-05, 4.5093e-05, 4.89817e-05, 5.23959e-05, 5.53892e-05, 5.80117e-05, 6.03082e-05, 6.23188e-05, 6.40795e-05, 6.56222e-05, 6.69753e-05, 6.8163e-05, 6.9206e-05, 
			3.14378e-05, 3.79938e-05, 4.38885e-05, 4.91416e-05, 5.38076e-05, 5.79365e-05, 6.15831e-05, 6.47978e-05, 6.76274e-05, 7.01168e-05, 7.23074e-05, 7.42333e-05, 7.59285e-05, 7.74193e-05, 7.8734e-05, 7.98928e-05, 
			3.98476e-05, 4.64246e-05, 5.23966e-05, 5.77598e-05, 6.25471e-05, 6.68075e-05, 7.05858e-05, 7.39306e-05, 7.68866e-05, 7.94967e-05, 8.17997e-05, 8.38322e-05, 8.56269e-05, 8.72097e-05, 8.86099e-05, 8.98469e-05, 
			4.84883e-05, 5.50779e-05, 6.10875e-05, 6.6511e-05, 7.13762e-05, 7.57201e-05, 7.95864e-05, 8.30199e-05, 8.60633e-05, 8.87579e-05, 9.11438e-05, 9.32531e-05, 9.51197e-05, 9.67717e-05, 9.82344e-05, 9.95309e-05, 
			5.72514e-05, 6.38195e-05, 6.98411e-05, 7.52975e-05, 8.02069e-05, 8.46047e-05, 8.85281e-05, 9.20197e-05, 9.51243e-05, 9.78788e-05, 0.000100321, 0.000102487, 0.000104408, 0.000106111, 0.00010762, 0.000108961
		)
}

CapTable	"poly_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			3.81841e-06, 4.8602e-06, 5.78854e-06, 6.61823e-06, 7.3588e-06, 8.0179e-06, 8.60241e-06, 9.11912e-06, 9.57452e-06, 9.97543e-06, 1.0328e-05, 1.06379e-05, 1.09103e-05, 1.11495e-05, 1.136e-05, 1.15459e-05, 
			5.00925e-06, 6.0428e-06, 6.99534e-06, 7.86244e-06, 8.64583e-06, 9.34893e-06, 9.97648e-06, 1.05346e-05, 1.10294e-05, 1.14674e-05, 1.18542e-05, 1.21957e-05, 1.24973e-05, 1.27641e-05, 1.29995e-05, 1.32079e-05, 
			6.23643e-06, 7.27024e-06, 8.23765e-06, 9.12657e-06, 9.93433e-06, 1.06633e-05, 1.13168e-05, 1.19004e-05, 1.242e-05, 1.28809e-05, 1.32905e-05, 1.3654e-05, 1.39751e-05, 1.42603e-05, 1.45123e-05, 1.47361e-05, 
			7.49066e-06, 8.52909e-06, 9.50649e-06, 1.04094e-05, 1.12334e-05, 1.19797e-05, 1.26512e-05, 1.32525e-05, 1.37897e-05, 1.42689e-05, 1.46944e-05, 1.50733e-05, 1.54093e-05, 1.57083e-05, 1.59731e-05, 1.62075e-05, 
			8.76562e-06, 9.80593e-06, 1.07907e-05, 1.17031e-05, 1.25381e-05, 1.32965e-05, 1.39803e-05, 1.45949e-05, 1.51449e-05, 1.56364e-05, 1.6074e-05, 1.64642e-05, 1.68113e-05, 1.71185e-05, 1.73925e-05, 1.76363e-05
		)
}

CapTable	"poly_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000216892, 0.000124091, 8.82786e-05, 6.80858e-05, 5.47102e-05, 4.50494e-05, 3.76984e-05, 3.1912e-05, 2.72486e-05, 2.34254e-05, 2.02502e-05, 1.75865e-05, 1.53334e-05, 1.34146e-05, 1.17711e-05, 1.03565e-05, 
			0.000230288, 0.000134275, 9.63632e-05, 7.4753e-05, 6.03306e-05, 4.98666e-05, 4.18754e-05, 3.55636e-05, 3.04602e-05, 2.62628e-05, 2.27654e-05, 1.9822e-05, 1.73242e-05, 1.51906e-05, 1.33575e-05, 1.17753e-05, 
			0.000237002, 0.000139991, 0.000101167, 7.88466e-05, 6.38886e-05, 5.29842e-05, 4.46264e-05, 3.8004e-05, 3.26334e-05, 2.82034e-05, 2.45018e-05, 2.13778e-05, 1.872e-05, 1.6444e-05, 1.44838e-05, 1.2788e-05, 
			0.000241232, 0.000143775, 0.000104468, 8.17386e-05, 6.64384e-05, 5.52472e-05, 4.66474e-05, 3.98146e-05, 3.4259e-05, 2.96652e-05, 2.58178e-05, 2.25636e-05, 1.9789e-05, 1.7408e-05, 1.53535e-05, 1.35726e-05, 
			0.000242804, 0.000145935, 0.000106562, 8.36744e-05, 6.8199e-05, 5.68468e-05, 4.81036e-05, 4.11404e-05, 3.54608e-05, 3.07548e-05, 2.68056e-05, 2.34588e-05, 2.06002e-05, 1.81429e-05, 1.60194e-05, 1.41756e-05
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

CapModel	"metal4Config8" {
		refLayer				= "M4"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_21MAX"
		topCapDataNom			= "metal4_C_TOP_GP_21MAX"
		topCapDataMax			= "metal4_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_21MAX"
}

CapModel	"metal4Config9" {
		refLayer				= "M4"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_22MAX"
		topCapDataNom			= "metal4_C_TOP_GP_22MAX"
		topCapDataMax			= "metal4_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_22MAX"
}

CapModel	"metal4Config10" {
		refLayer				= "M4"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_23MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_23MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_23MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_23MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_23MAX"
}

CapModel	"metal4Config15" {
		refLayer				= "M4"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_31MAX"
		topCapDataNom			= "metal4_C_TOP_GP_31MAX"
		topCapDataMax			= "metal4_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_31MAX"
}

CapModel	"metal4Config16" {
		refLayer				= "M4"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_32MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_32MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_32MAX"
		topCapDataNom			= "metal4_C_TOP_GP_32MAX"
		topCapDataMax			= "metal4_C_TOP_GP_32MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_32MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_32MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_32MAX"
}

CapModel	"metal4Config17" {
		refLayer				= "M4"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_33MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_33MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_33MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_33MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_33MAX"
}

CapModel	"metal4Config22" {
		refLayer				= "M4"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_41MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_41MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_41MAX"
		topCapDataNom			= "metal4_C_TOP_GP_41MAX"
		topCapDataMax			= "metal4_C_TOP_GP_41MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_41MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_41MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_41MAX"
}

CapModel	"metal4Config23" {
		refLayer				= "M4"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_42MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_42MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_42MAX"
		topCapDataNom			= "metal4_C_TOP_GP_42MAX"
		topCapDataMax			= "metal4_C_TOP_GP_42MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_42MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_42MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_42MAX"
}

CapModel	"metal4Config24" {
		refLayer				= "M4"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_43MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_43MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_43MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_43MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_43MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_43MAX"
}

CapModel	"metal4Config29" {
		refLayer				= "M4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_51MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_51MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_51MAX"
		topCapDataNom			= "metal4_C_TOP_GP_51MAX"
		topCapDataMax			= "metal4_C_TOP_GP_51MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_51MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_51MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_51MAX"
}

CapModel	"metal4Config30" {
		refLayer				= "M4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_52MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_52MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_52MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_52MAX"
		topCapDataNom			= "metal4_C_TOP_GP_52MAX"
		topCapDataMax			= "metal4_C_TOP_GP_52MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_52MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_52MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_52MAX"
}

CapModel	"metal4Config31" {
		refLayer				= "M4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_53MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_53MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_53MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_53MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_53MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_53MAX"
}

CapModel	"metal5Config1" {
		refLayer				= "M5"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GPMAX"
		topCapDataNom			= "metal5_C_TOP_GPMAX"
		topCapDataMax			= "metal5_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERALMAX"
		lateralCapDataNom		= "metal5_C_LATERALMAX"
		lateralCapDataMax		= "metal5_C_LATERALMAX"
}

CapModel	"metal5Config2" {
		refLayer				= "M5"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_12MAX"
}

CapModel	"metal5Config8" {
		refLayer				= "M5"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_21MAX"
		topCapDataNom			= "metal5_C_TOP_GP_21MAX"
		topCapDataMax			= "metal5_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_21MAX"
}

CapModel	"metal5Config9" {
		refLayer				= "M5"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_22MAX"
}

CapModel	"metal5Config15" {
		refLayer				= "M5"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_31MAX"
		topCapDataNom			= "metal5_C_TOP_GP_31MAX"
		topCapDataMax			= "metal5_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_31MAX"
}

CapModel	"metal5Config16" {
		refLayer				= "M5"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_32MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_32MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_32MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_32MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_32MAX"
}

CapModel	"metal5Config22" {
		refLayer				= "M5"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_41MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_41MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_41MAX"
		topCapDataNom			= "metal5_C_TOP_GP_41MAX"
		topCapDataMax			= "metal5_C_TOP_GP_41MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_41MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_41MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_41MAX"
}

CapModel	"metal5Config23" {
		refLayer				= "M5"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_42MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_42MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_42MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_42MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_42MAX"
}

CapModel	"metal5Config29" {
		refLayer				= "M5"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_51MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_51MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_51MAX"
		topCapDataNom			= "metal5_C_TOP_GP_51MAX"
		topCapDataMax			= "metal5_C_TOP_GP_51MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_51MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_51MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_51MAX"
}

CapModel	"metal5Config30" {
		refLayer				= "M5"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_52MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_52MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_52MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_52MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_52MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_52MAX"
}

CapModel	"metal5Config36" {
		refLayer				= "M5"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_61MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_61MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_61MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_61MAX"
		topCapDataNom			= "metal5_C_TOP_GP_61MAX"
		topCapDataMax			= "metal5_C_TOP_GP_61MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_61MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_61MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_61MAX"
}

CapModel	"metal5Config37" {
		refLayer				= "M5"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_62MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_62MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_62MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_62MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_62MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_62MAX"
}

CapModel	"metal6Config1" {
		refLayer				= "M6"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERALMAX"
		lateralCapDataNom		= "metal6_C_LATERALMAX"
		lateralCapDataMax		= "metal6_C_LATERALMAX"
}

CapModel	"metal6Config8" {
		refLayer				= "M6"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_21MAX"
}

CapModel	"metal6Config15" {
		refLayer				= "M6"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_31MAX"
}

CapModel	"metal6Config22" {
		refLayer				= "M6"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_41MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_41MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_41MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_41MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_41MAX"
}

CapModel	"metal6Config29" {
		refLayer				= "M6"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_51MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_51MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_51MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_51MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_51MAX"
}

CapModel	"metal6Config36" {
		refLayer				= "M6"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_61MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_61MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_61MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_61MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_61MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_61MAX"
}

CapModel	"metal6Config43" {
		refLayer				= "M6"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_71MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_71MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_71MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_71MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_71MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_71MAX"
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
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_15MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_15MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_15MAX"
		topCapDataNom			= "poly_C_TOP_GP_15MAX"
		topCapDataMax			= "poly_C_TOP_GP_15MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_15MAX"
		lateralCapDataNom		= "poly_C_LATERAL_15MAX"
		lateralCapDataMax		= "poly_C_LATERAL_15MAX"
}

CapModel	"polyConfig6" {
		refLayer				= "POLY1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_16MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_16MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_16MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_16MAX"
		topCapDataNom			= "poly_C_TOP_GP_16MAX"
		topCapDataMax			= "poly_C_TOP_GP_16MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_16MAX"
		lateralCapDataNom		= "poly_C_LATERAL_16MAX"
		lateralCapDataMax		= "poly_C_LATERAL_16MAX"
}

CapModel	"polyConfig7" {
		refLayer				= "POLY1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_17MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_17MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_17MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_17MAX"
		lateralCapDataNom		= "poly_C_LATERAL_17MAX"
		lateralCapDataMax		= "poly_C_LATERAL_17MAX"
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
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_14MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_14MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_14MAX"
		topCapDataNom			= "metal1_C_TOP_GP_14MAX"
		topCapDataMax			= "metal1_C_TOP_GP_14MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_14MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_14MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_14MAX"
}

CapModel	"metal1Config5" {
		refLayer				= "M1"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_15MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_15MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_15MAX"
		topCapDataNom			= "metal1_C_TOP_GP_15MAX"
		topCapDataMax			= "metal1_C_TOP_GP_15MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_15MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_15MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_15MAX"
}

CapModel	"metal1Config6" {
		refLayer				= "M1"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_16MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_16MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_16MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_16MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_16MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_16MAX"
}

CapModel	"metal1Config8" {
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

CapModel	"metal1Config9" {
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

CapModel	"metal1Config10" {
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

CapModel	"metal1Config11" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_24MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_24MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_24MAX"
		topCapDataNom			= "metal1_C_TOP_GP_24MAX"
		topCapDataMax			= "metal1_C_TOP_GP_24MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_24MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_24MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_24MAX"
}

CapModel	"metal1Config12" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_25MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_25MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_25MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_25MAX"
		topCapDataNom			= "metal1_C_TOP_GP_25MAX"
		topCapDataMax			= "metal1_C_TOP_GP_25MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_25MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_25MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_25MAX"
}

CapModel	"metal1Config13" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_26MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_26MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_26MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_26MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_26MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_26MAX"
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
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_13MAX"
		topCapDataNom			= "metal2_C_TOP_GP_13MAX"
		topCapDataMax			= "metal2_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_13MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_13MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_13MAX"
}

CapModel	"metal2Config4" {
		refLayer				= "M2"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_14MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_14MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_14MAX"
		topCapDataNom			= "metal2_C_TOP_GP_14MAX"
		topCapDataMax			= "metal2_C_TOP_GP_14MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_14MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_14MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_14MAX"
}

CapModel	"metal2Config5" {
		refLayer				= "M2"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_15MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_15MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_15MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_15MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_15MAX"
}

CapModel	"metal2Config8" {
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

CapModel	"metal2Config9" {
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

CapModel	"metal2Config10" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_23MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_23MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_23MAX"
		topCapDataNom			= "metal2_C_TOP_GP_23MAX"
		topCapDataMax			= "metal2_C_TOP_GP_23MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_23MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_23MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_23MAX"
}

CapModel	"metal2Config11" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_24MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_24MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_24MAX"
		topCapDataNom			= "metal2_C_TOP_GP_24MAX"
		topCapDataMax			= "metal2_C_TOP_GP_24MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_24MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_24MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_24MAX"
}

CapModel	"metal2Config12" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_25MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_25MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_25MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_25MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_25MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_25MAX"
}

CapModel	"metal2Config15" {
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

CapModel	"metal2Config16" {
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

CapModel	"metal2Config17" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_33MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_33MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_33MAX"
		topCapDataNom			= "metal2_C_TOP_GP_33MAX"
		topCapDataMax			= "metal2_C_TOP_GP_33MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_33MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_33MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_33MAX"
}

CapModel	"metal2Config18" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_34MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_34MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_34MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_34MAX"
		topCapDataNom			= "metal2_C_TOP_GP_34MAX"
		topCapDataMax			= "metal2_C_TOP_GP_34MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_34MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_34MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_34MAX"
}

CapModel	"metal2Config19" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_35MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_35MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_35MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_35MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_35MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_35MAX"
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
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_12MAX"
		topCapDataNom			= "metal3_C_TOP_GP_12MAX"
		topCapDataMax			= "metal3_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_12MAX"
}

CapModel	"metal3Config3" {
		refLayer				= "M3"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_13MAX"
		topCapDataNom			= "metal3_C_TOP_GP_13MAX"
		topCapDataMax			= "metal3_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_13MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_13MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_13MAX"
}

CapModel	"metal3Config4" {
		refLayer				= "M3"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_14MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_14MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_14MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_14MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_14MAX"
}

CapModel	"metal3Config8" {
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

CapModel	"metal3Config9" {
		refLayer				= "M3"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_22MAX"
		topCapDataNom			= "metal3_C_TOP_GP_22MAX"
		topCapDataMax			= "metal3_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_22MAX"
}

CapModel	"metal3Config10" {
		refLayer				= "M3"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_23MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_23MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_23MAX"
		topCapDataNom			= "metal3_C_TOP_GP_23MAX"
		topCapDataMax			= "metal3_C_TOP_GP_23MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_23MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_23MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_23MAX"
}

CapModel	"metal3Config11" {
		refLayer				= "M3"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_24MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_24MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_24MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_24MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_24MAX"
}

CapModel	"metal3Config15" {
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

CapModel	"metal3Config16" {
		refLayer				= "M3"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_32MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_32MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_32MAX"
		topCapDataNom			= "metal3_C_TOP_GP_32MAX"
		topCapDataMax			= "metal3_C_TOP_GP_32MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_32MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_32MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_32MAX"
}

CapModel	"metal3Config17" {
		refLayer				= "M3"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_33MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_33MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_33MAX"
		topCapDataNom			= "metal3_C_TOP_GP_33MAX"
		topCapDataMax			= "metal3_C_TOP_GP_33MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_33MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_33MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_33MAX"
}

CapModel	"metal3Config18" {
		refLayer				= "M3"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_34MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_34MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_34MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_34MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_34MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_34MAX"
}

CapModel	"metal3Config22" {
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

CapModel	"metal3Config23" {
		refLayer				= "M3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_42MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_42MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_42MAX"
		topCapDataNom			= "metal3_C_TOP_GP_42MAX"
		topCapDataMax			= "metal3_C_TOP_GP_42MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_42MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_42MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_42MAX"
}

CapModel	"metal3Config24" {
		refLayer				= "M3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_43MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_43MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_43MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_43MAX"
		topCapDataNom			= "metal3_C_TOP_GP_43MAX"
		topCapDataMax			= "metal3_C_TOP_GP_43MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_43MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_43MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_43MAX"
}

CapModel	"metal3Config25" {
		refLayer				= "M3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_44MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_44MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_44MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_44MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_44MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_44MAX"
}

CapModel	"metal4Config1" {
		refLayer				= "M4"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= "M5"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GPMAX"
		topCapDataNom			= "metal4_C_TOP_GPMAX"
		topCapDataMax			= "metal4_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERALMAX"
		lateralCapDataNom		= "metal4_C_LATERALMAX"
		lateralCapDataMax		= "metal4_C_LATERALMAX"
}

CapModel	"metal4Config2" {
		refLayer				= "M4"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= "M6"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_12MAX"
		topCapDataNom			= "metal4_C_TOP_GP_12MAX"
		topCapDataMax			= "metal4_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_12MAX"
}

CapModel	"metal4Config3" {
		refLayer				= "M4"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_13MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_13MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_13MAX"
}

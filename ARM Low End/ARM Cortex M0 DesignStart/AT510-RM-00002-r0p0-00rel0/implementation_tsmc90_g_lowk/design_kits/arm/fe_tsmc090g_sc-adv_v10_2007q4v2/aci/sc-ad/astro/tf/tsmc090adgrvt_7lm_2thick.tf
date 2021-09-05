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
   $Id: tsmc090_7lm_2thick.tf,v 1.1 2006/05/11 06:34:21 Exp $
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

Layer		"M7" {
		layerNumber			= 37
		maskName			= "metal7"
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

Layer		"VIA6" {
		layerNumber			= 56
		maskName			= "via6"
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
		fatTblFatContactNumber		= (7,7,77)
		fatTblFatContactMinCuts		= (1,2,2)
		fatTblExtensionContactNumber	= (0,0,7)
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

Layer		"TEXT7" {
		layerNumber			= 137
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

ContactCode	"via6" {
		contactCodeNumber		= 7
		cutLayer			= "VIA6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		isDefaultContact		= 1
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.08
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.08
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

ContactCode	"via6_fat" {
		contactCodeNumber		= 77
		cutLayer			= "VIA6"
		lowerLayer			= "M6"
		upperLayer			= "M7"
		cutWidth			= 0.36
		cutHeight			= 0.36
		upperLayerEncWidth		= 0.08
		upperLayerEncHeight		= 0.03
		lowerLayerEncWidth		= 0.03
		lowerLayerEncHeight		= 0.08
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

DesignRule	{
		layer1				= "via6Blockage"
		layer2				= "VIA6"
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

CapTable	"metal7_C_LATERAL_21MAX" {
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

CapTable	"metal7_C_BOTTOM_GPMAX" {
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

CapTable	"metal7_C_LATERALMAX" {
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

CapTable	"metal7_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal7_C_LATERAL_31MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal7_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000238024, 0.000143106, 0.000107783, 8.83414e-05, 7.55356e-05, 6.6168e-05, 5.8837e-05, 5.28328e-05, 4.7759e-05, 4.33768e-05, 3.95328e-05, 3.61236e-05, 3.30758e-05, 3.03346e-05, 2.78584e-05, 2.56136e-05, 
			0.000257028, 0.000157906, 0.00011989, 9.85424e-05, 8.42724e-05, 7.37392e-05, 6.54564e-05, 5.8662e-05, 5.29246e-05, 4.79796e-05, 4.3655e-05, 3.98324e-05, 3.64262e-05, 3.3373e-05, 3.06228e-05, 2.81366e-05, 
			0.000268894, 0.000167734, 0.000128112, 0.000105511, 9.025e-05, 7.89086e-05, 6.99612e-05, 6.26156e-05, 5.6417e-05, 5.10836e-05, 4.64294e-05, 4.2325e-05, 3.86766e-05, 3.54132e-05, 3.24798e-05, 2.98328e-05, 
			0.000276794, 0.000174656, 0.000133979, 0.000110497, 9.45186e-05, 8.2597e-05, 7.31666e-05, 6.54218e-05, 5.88916e-05, 5.32806e-05, 4.83924e-05, 4.40894e-05, 4.02708e-05, 3.68606e-05, 3.37998e-05, 3.10412e-05, 
			0.000282806, 0.000179848, 0.00013838, 0.000114228, 9.7703e-05, 8.53328e-05, 7.55402e-05, 6.7498e-05, 6.07218e-05, 5.49064e-05, 4.98468e-05, 4.53988e-05, 4.14566e-05, 3.794e-05, 3.4787e-05, 3.19478e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.7502e-05, 2.14999e-05, 2.47346e-05, 2.75196e-05, 3.00308e-05, 3.23638e-05, 3.45715e-05, 3.66809e-05, 3.87047e-05, 4.06475e-05, 4.25098e-05, 4.42901e-05, 4.5987e-05, 4.75992e-05, 4.9126e-05, 5.05674e-05, 
			2.0434e-05, 2.40652e-05, 2.72368e-05, 3.01068e-05, 3.27786e-05, 3.53076e-05, 3.77268e-05, 4.00506e-05, 4.22839e-05, 4.44276e-05, 4.64803e-05, 4.84398e-05, 5.03046e-05, 5.20732e-05, 5.3746e-05, 5.53231e-05, 
			2.3256e-05, 2.67406e-05, 2.99242e-05, 3.28938e-05, 3.57066e-05, 3.83964e-05, 4.09816e-05, 4.34668e-05, 4.58557e-05, 4.8145e-05, 5.03332e-05, 5.24185e-05, 5.43991e-05, 5.62749e-05, 5.80464e-05, 5.97149e-05, 
			2.6131e-05, 2.95774e-05, 3.2818e-05, 3.58922e-05, 3.8832e-05, 4.16556e-05, 4.4373e-05, 4.69842e-05, 4.94904e-05, 5.18882e-05, 5.41752e-05, 5.6351e-05, 5.84146e-05, 6.03662e-05, 6.22069e-05, 6.39389e-05, 
			2.9124e-05, 3.26056e-05, 3.59224e-05, 3.90982e-05, 4.21482e-05, 4.50816e-05, 4.7904e-05, 5.06124e-05, 5.3207e-05, 5.56864e-05, 5.80462e-05, 6.0289e-05, 6.24126e-05, 6.44193e-05, 6.63102e-05, 6.8088e-05
		)
}

CapTable	"metal7_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000236768, 0.0001415, 0.000105887, 8.62074e-05, 7.32092e-05, 6.36906e-05, 5.62456e-05, 5.01602e-05, 4.50332e-05, 4.06216e-05, 3.67686e-05, 3.33676e-05, 3.03422e-05, 2.76354e-05, 2.52034e-05, 2.30112e-05, 
			0.000255372, 0.000155916, 0.000117625, 9.60562e-05, 8.16124e-05, 7.09474e-05, 6.25692e-05, 5.57106e-05, 4.99352e-05, 4.49746e-05, 4.06528e-05, 3.68484e-05, 3.34736e-05, 3.04626e-05, 2.77638e-05, 2.53368e-05, 
			0.000266854, 0.000165388, 0.00012552, 0.000102725, 8.73164e-05, 7.58676e-05, 6.68464e-05, 5.94552e-05, 5.32344e-05, 4.78986e-05, 4.32584e-05, 3.91816e-05, 3.55726e-05, 3.23584e-05, 2.94826e-05, 2.69e-05, 
			0.0002744, 0.000171993, 0.000131103, 0.00010746, 9.1362e-05, 7.93574e-05, 6.9874e-05, 6.21008e-05, 5.55626e-05, 4.99608e-05, 4.50962e-05, 4.08288e-05, 3.70562e-05, 3.3701e-05, 3.07028e-05, 2.80132e-05, 
			0.000280098, 0.00017691, 0.000135266, 0.000110984, 9.43668e-05, 8.19364e-05, 7.2109e-05, 6.40536e-05, 5.7282e-05, 5.14856e-05, 4.64578e-05, 4.2052e-05, 3.81614e-05, 3.47046e-05, 3.16182e-05, 2.88516e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.4732e-05, 1.77898e-05, 2.01692e-05, 2.2168e-05, 2.39514e-05, 2.56135e-05, 2.72043e-05, 2.87512e-05, 3.02658e-05, 3.17522e-05, 3.32096e-05, 3.46344e-05, 3.60231e-05, 3.73713e-05, 3.86757e-05, 3.9933e-05, 
			1.6688e-05, 1.934e-05, 2.15982e-05, 2.36166e-05, 2.54972e-05, 2.72972e-05, 2.90457e-05, 3.07589e-05, 3.24406e-05, 3.40904e-05, 3.57045e-05, 3.72788e-05, 3.88084e-05, 4.02896e-05, 4.17188e-05, 4.30936e-05, 
			1.8472e-05, 2.09382e-05, 2.31642e-05, 2.52376e-05, 2.722e-05, 2.91446e-05, 3.10278e-05, 3.28764e-05, 3.46894e-05, 3.64637e-05, 3.81948e-05, 3.98781e-05, 4.1509e-05, 4.30841e-05, 4.46003e-05, 4.6056e-05, 
			2.0251e-05, 2.26464e-05, 2.4897e-05, 2.70484e-05, 2.9133e-05, 3.11704e-05, 3.31684e-05, 3.51268e-05, 3.70444e-05, 3.89154e-05, 4.07353e-05, 4.24998e-05, 4.42053e-05, 4.58486e-05, 4.74274e-05, 4.89404e-05, 
			2.2099e-05, 2.45054e-05, 2.68134e-05, 2.90484e-05, 3.12288e-05, 3.33646e-05, 3.54582e-05, 3.75054e-05, 3.95042e-05, 4.14498e-05, 4.33371e-05, 4.51627e-05, 4.69235e-05, 4.8617e-05, 5.02416e-05, 5.17968e-05
		)
}

CapTable	"metal7_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000238956, 0.000144289, 0.000109178, 8.9917e-05, 7.72656e-05, 6.80292e-05, 6.08078e-05, 5.48926e-05, 4.98888e-05, 4.55584e-05, 4.17498e-05, 3.83616e-05, 3.53212e-05, 3.25762e-05, 3.00858e-05, 2.78184e-05, 
			0.000258244, 0.000159363, 0.000121554, 0.000100382, 8.62608e-05, 7.58508e-05, 6.76678e-05, 6.09514e-05, 5.52722e-05, 5.03676e-05, 4.60676e-05, 4.22552e-05, 3.88474e-05, 3.57816e-05, 3.30098e-05, 3.0494e-05, 
			0.000270384, 0.000169453, 0.000130026, 0.000107588, 9.2462e-05, 8.12294e-05, 7.23672e-05, 6.50852e-05, 5.89312e-05, 5.36256e-05, 4.89846e-05, 4.48806e-05, 4.12216e-05, 3.79382e-05, 3.49768e-05, 3.22946e-05, 
			0.000278544, 0.000176619, 0.000136119, 0.000112784, 9.6922e-05, 8.50916e-05, 7.57296e-05, 6.80332e-05, 6.15336e-05, 5.59382e-05, 5.10526e-05, 4.6741e-05, 4.29042e-05, 3.94676e-05, 3.63734e-05, 3.35754e-05, 
			0.0002848, 0.000182034, 0.000140722, 0.000116696, 0.000100268, 8.79714e-05, 7.82308e-05, 7.02226e-05, 6.34648e-05, 5.76542e-05, 5.25882e-05, 4.8124e-05, 4.41572e-05, 4.06092e-05, 3.74186e-05, 3.45364e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.5904e-05, 1.93452e-05, 2.2073e-05, 2.43936e-05, 2.64784e-05, 2.84231e-05, 3.02784e-05, 3.20711e-05, 3.38126e-05, 3.55061e-05, 3.71507e-05, 3.87433e-05, 4.02802e-05, 4.17583e-05, 4.31745e-05, 4.45272e-05, 
			1.8252e-05, 2.13002e-05, 2.39302e-05, 2.62996e-05, 2.85106e-05, 3.06188e-05, 3.26566e-05, 3.46371e-05, 3.65643e-05, 3.84376e-05, 4.02535e-05, 4.2008e-05, 4.36974e-05, 4.53181e-05, 4.68684e-05, 4.83463e-05, 
			2.0451e-05, 2.3331e-05, 2.59478e-05, 2.83926e-05, 3.0724e-05, 3.29744e-05, 3.51608e-05, 3.7289e-05, 3.93579e-05, 4.13647e-05, 4.33053e-05, 4.51756e-05, 4.69722e-05, 4.86925e-05, 5.03348e-05, 5.18981e-05, 
			2.267e-05, 2.54942e-05, 2.81524e-05, 3.06886e-05, 3.31344e-05, 3.5507e-05, 3.78164e-05, 4.00612e-05, 4.22394e-05, 4.43478e-05, 4.63811e-05, 4.83362e-05, 5.02105e-05, 5.20021e-05, 5.37097e-05, 5.53333e-05, 
			2.4981e-05, 2.78288e-05, 3.05544e-05, 3.3183e-05, 3.5732e-05, 3.82092e-05, 4.06168e-05, 4.2954e-05, 4.52172e-05, 4.74016e-05, 4.95048e-05, 5.15229e-05, 5.34544e-05, 5.52982e-05, 5.70535e-05, 5.87208e-05
		)
}

CapTable	"metal7_C_LATERAL_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000239852, 0.000145419, 0.000110505, 9.1417e-05, 7.8918e-05, 6.98168e-05, 6.27146e-05, 5.6904e-05, 5.19904e-05, 4.7737e-05, 4.39932e-05, 4.06578e-05, 3.76598e-05, 3.49468e-05, 3.24794e-05, 3.02264e-05, 
			0.00025939, 0.000160733, 0.000123121, 0.000102123, 8.8155e-05, 7.78804e-05, 6.98162e-05, 6.32034e-05, 5.7613e-05, 5.27838e-05, 4.85464e-05, 4.4785e-05, 4.14172e-05, 3.83816e-05, 3.56306e-05, 3.31272e-05, 
			0.000271772, 0.000171059, 0.000131824, 0.000109557, 9.45796e-05, 8.3478e-05, 7.473e-05, 6.75468e-05, 6.1477e-05, 5.62424e-05, 5.16598e-05, 4.7603e-05, 4.39804e-05, 4.07236e-05, 3.77796e-05, 3.51064e-05, 
			0.000280174, 0.000178456, 0.00013814, 0.000114967, 9.92476e-05, 8.75414e-05, 7.8287e-05, 7.0683e-05, 6.42618e-05, 5.87318e-05, 5.38996e-05, 4.96302e-05, 4.58252e-05, 4.24112e-05, 3.93304e-05, 3.65374e-05, 
			0.000286664, 0.000184093, 0.000142956, 0.000119082, 0.000102788, 9.06074e-05, 8.09666e-05, 7.30434e-05, 6.63574e-05, 6.06062e-05, 5.55878e-05, 5.11608e-05, 4.72214e-05, 4.36912e-05, 4.05098e-05, 3.76286e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.4133e-05, 1.70034e-05, 1.92138e-05, 2.10556e-05, 2.26918e-05, 2.42127e-05, 2.56696e-05, 2.70887e-05, 2.84827e-05, 2.98555e-05, 3.12068e-05, 3.25336e-05, 3.38321e-05, 3.50982e-05, 3.63287e-05, 3.75202e-05, 
			1.5903e-05, 1.8365e-05, 2.04438e-05, 2.22924e-05, 2.40098e-05, 2.56536e-05, 2.72532e-05, 2.88244e-05, 3.03718e-05, 3.18952e-05, 3.33914e-05, 3.48566e-05, 3.62864e-05, 3.76766e-05, 3.90241e-05, 4.03257e-05, 
			1.7491e-05, 1.97612e-05, 2.17972e-05, 2.36896e-05, 2.54976e-05, 2.72538e-05, 2.89768e-05, 3.06726e-05, 3.23413e-05, 3.39807e-05, 3.55862e-05, 3.71536e-05, 3.86784e-05, 4.01573e-05, 4.1587e-05, 4.29656e-05, 
			1.9062e-05, 2.12526e-05, 2.33048e-05, 2.52636e-05, 2.71642e-05, 2.90244e-05, 3.0853e-05, 3.26508e-05, 3.44172e-05, 3.61469e-05, 3.7836e-05, 3.94802e-05, 4.10758e-05, 4.26195e-05, 4.41093e-05, 4.55435e-05, 
			2.0688e-05, 2.28822e-05, 2.49818e-05, 2.70168e-05, 2.90042e-05, 3.09558e-05, 3.2873e-05, 3.47546e-05, 3.65974e-05, 3.83978e-05, 4.01509e-05, 4.18534e-05, 4.35021e-05, 4.50947e-05, 4.66291e-05, 4.81044e-05
		)
}

CapTable	"metal7_C_LATERAL_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000239434, 0.000144892, 0.000109886, 9.07174e-05, 7.81472e-05, 6.89824e-05, 6.18238e-05, 5.59636e-05, 5.10066e-05, 4.67158e-05, 4.294e-05, 3.95776e-05, 3.65572e-05, 3.38264e-05, 3.13448e-05, 2.90812e-05, 
			0.000258858, 0.000160098, 0.000122394, 0.000101316, 8.72762e-05, 7.69384e-05, 6.88186e-05, 6.2157e-05, 5.65244e-05, 5.1659e-05, 4.7391e-05, 4.3604e-05, 4.0215e-05, 3.71622e-05, 3.43978e-05, 3.18846e-05, 
			0.000271134, 0.000170319, 0.000130995, 0.000108648, 9.36024e-05, 8.24402e-05, 7.36392e-05, 6.64098e-05, 6.03006e-05, 5.5032e-05, 5.04208e-05, 4.63398e-05, 4.26976e-05, 3.94248e-05, 3.64686e-05, 3.37864e-05, 
			0.000279428, 0.000177613, 0.000137213, 0.000113965, 9.81808e-05, 8.64176e-05, 7.7114e-05, 6.94672e-05, 6.30094e-05, 5.74482e-05, 5.25896e-05, 4.8298e-05, 4.4475e-05, 4.10464e-05, 3.79544e-05, 3.51532e-05, 
			0.000285814, 0.000183154, 0.000141936, 0.000117993, 0.000101639, 8.94052e-05, 7.9719e-05, 7.17564e-05, 6.50366e-05, 5.92566e-05, 5.4214e-05, 4.97666e-05, 4.58104e-05, 4.22668e-05, 3.90752e-05, 3.61868e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal6_C_LATERAL_12MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.3611e-05, 1.6319e-05, 1.83846e-05, 2.0093e-05, 2.1604e-05, 2.30056e-05, 2.43478e-05, 2.56572e-05, 2.69465e-05, 2.82199e-05, 2.94772e-05, 3.07158e-05, 3.19318e-05, 3.31217e-05, 3.42816e-05, 3.54084e-05, 
			1.5229e-05, 1.75296e-05, 1.94562e-05, 2.1162e-05, 2.2743e-05, 2.42546e-05, 2.57275e-05, 2.71774e-05, 2.86093e-05, 3.00232e-05, 3.14163e-05, 3.27847e-05, 3.4124e-05, 3.54301e-05, 3.67e-05, 3.79305e-05, 
			1.6664e-05, 1.87666e-05, 2.06436e-05, 2.23834e-05, 2.40444e-05, 2.566e-05, 2.7248e-05, 2.88147e-05, 3.03607e-05, 3.18836e-05, 3.33795e-05, 3.48439e-05, 3.62728e-05, 3.76625e-05, 3.901e-05, 4.0313e-05, 
			1.8071e-05, 2.00892e-05, 2.19756e-05, 2.3774e-05, 2.55204e-05, 2.72326e-05, 2.892e-05, 3.0583e-05, 3.22213e-05, 3.38298e-05, 3.54046e-05, 3.69417e-05, 3.84376e-05, 3.98886e-05, 4.12928e-05, 4.26482e-05, 
			1.9522e-05, 2.15396e-05, 2.34664e-05, 2.53356e-05, 2.71636e-05, 2.89616e-05, 3.07324e-05, 3.24746e-05, 3.41856e-05, 3.58605e-05, 3.74962e-05, 3.90883e-05, 4.06342e-05, 4.21313e-05, 4.35774e-05, 4.49718e-05
		)
}

CapTable	"metal6_C_BOTTOM_GPMAX" {
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

CapTable	"metal6_C_TOP_GPMAX" {
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

CapTable	"metal6_C_LATERALMAX" {
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

CapTable	"metal6_C_LATERAL_21MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_22MAX" {
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

CapTable	"metal6_C_LATERAL_22MAX" {
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

CapTable	"metal6_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000232908, 0.000133835, 9.63742e-05, 7.5606e-05, 6.20252e-05, 5.22978e-05, 4.49206e-05, 3.91028e-05, 3.43828e-05, 3.04698e-05, 2.71704e-05, 2.43504e-05, 2.1913e-05, 1.9787e-05, 1.79182e-05, 1.62648e-05, 
			0.00024773, 0.000144882, 0.000105202, 8.29962e-05, 6.8383e-05, 5.78698e-05, 4.98652e-05, 4.35282e-05, 3.83672e-05, 3.40726e-05, 3.0438e-05, 2.73206e-05, 2.46174e-05, 2.22522e-05, 2.01674e-05, 1.83182e-05, 
			0.000256156, 0.000151802, 0.000111045, 8.80588e-05, 7.28546e-05, 6.18622e-05, 5.34574e-05, 4.67774e-05, 4.13164e-05, 3.6756e-05, 3.28836e-05, 2.95522e-05, 2.66552e-05, 2.41138e-05, 2.18686e-05, 1.98732e-05, 
			0.000261374, 0.000156613, 0.000115303, 9.18522e-05, 7.62636e-05, 6.4951e-05, 5.62604e-05, 4.93278e-05, 4.36412e-05, 3.88774e-05, 3.4821e-05, 3.13218e-05, 2.82718e-05, 2.5591e-05, 2.32178e-05, 2.11054e-05, 
			0.000265524, 0.000160425, 0.000118745, 9.49578e-05, 7.90782e-05, 6.7506e-05, 5.85888e-05, 5.14526e-05, 4.55818e-05, 4.06506e-05, 3.64416e-05, 3.28032e-05, 2.96258e-05, 2.68282e-05, 2.43482e-05, 2.21376e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal6_C_TOP_GP_21MAX" {
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

CapTable	"metal6_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.36298e-05, 5.90702e-05, 7.11686e-05, 8.03594e-05, 8.71928e-05, 9.21921e-05, 9.57659e-05, 9.83719e-05, 0.000100216, 0.000101497, 0.000102404, 0.000103041, 0.000103487, 0.000103843, 0.00010406, 0.000104209, 
			6.44195e-05, 8.01949e-05, 9.26049e-05, 0.000102068, 0.000109119, 0.000114279, 0.000118041, 0.000120691, 0.000122596, 0.000123941, 0.000124894, 0.000125557, 0.000126073, 0.000126396, 0.00012662, 0.00012678, 
			8.57357e-05, 0.000101611, 0.000114124, 0.000123661, 0.000130811, 0.000136049, 0.000139809, 0.000142516, 0.000144447, 0.000145812, 0.000146839, 0.000147514, 0.000147984, 0.000148311, 0.000148545, 0.000148688, 
			0.000107278, 0.000123132, 0.000135657, 0.000145252, 0.00015236, 0.000157604, 0.000161406, 0.000164143, 0.000166082, 0.00016752, 0.000168487, 0.000169163, 0.000169646, 0.000169961, 0.000170185, 0.000170335, 
			0.00012895, 0.000144833, 0.000157356, 0.000166907, 0.000174047, 0.000179298, 0.000183102, 0.000185912, 0.000187854, 0.000189229, 0.000190207, 0.000190887, 0.000191341, 0.000191675, 0.000191886, 0.000192043
		)
}

CapTable	"metal6_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000209854, 0.000105258, 6.46186e-05, 4.23976e-05, 2.86454e-05, 1.96404e-05, 1.35838e-05, 9.43624e-06, 6.57942e-06, 4.59834e-06, 3.2226e-06, 2.26294e-06, 1.59316e-06, 1.12417e-06, 7.96982e-07, 5.68042e-07, 
			0.000216206, 0.000109199, 6.72202e-05, 4.42044e-05, 2.99186e-05, 2.0548e-05, 1.42238e-05, 9.89958e-06, 6.91232e-06, 4.8399e-06, 3.39558e-06, 2.38996e-06, 1.68824e-06, 1.19743e-06, 8.54022e-07, 6.1249e-07, 
			0.000218112, 0.000110581, 6.81924e-05, 4.48996e-05, 3.04214e-05, 2.09156e-05, 1.44937e-05, 1.00992e-05, 7.06128e-06, 4.95234e-06, 3.4819e-06, 2.45768e-06, 1.7422e-06, 1.24184e-06, 8.89868e-07, 6.46676e-07, 
			0.000218156, 0.000110925, 6.84926e-05, 4.51256e-05, 3.06054e-05, 2.1068e-05, 1.46146e-05, 1.01866e-05, 7.1303e-06, 5.01054e-06, 3.53254e-06, 2.50126e-06, 1.77739e-06, 1.27642e-06, 9.23908e-07, 6.7716e-07, 
			0.000218058, 0.000110991, 6.85946e-05, 4.5213e-05, 3.06844e-05, 2.11294e-05, 1.46705e-05, 1.02391e-05, 7.17774e-06, 5.05156e-06, 3.5649e-06, 2.53152e-06, 1.81399e-06, 1.3049e-06, 9.5553e-07, 7.05492e-07
		)
}

CapTable	"metal6_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			2.2359e-05, 2.86948e-05, 3.41778e-05, 3.8982e-05, 4.32168e-05, 4.69617e-05, 5.02831e-05, 5.32383e-05, 5.58758e-05, 5.82376e-05, 6.03593e-05, 6.22709e-05, 6.39985e-05, 6.55636e-05, 6.69849e-05, 6.82785e-05, 
			2.811e-05, 3.4317e-05, 3.98634e-05, 4.48018e-05, 4.9199e-05, 5.31202e-05, 5.66228e-05, 5.97618e-05, 6.25818e-05, 6.51217e-05, 6.7417e-05, 6.94963e-05, 7.13845e-05, 7.31031e-05, 7.46701e-05, 7.61016e-05, 
			3.4025e-05, 4.01522e-05, 4.56958e-05, 5.06792e-05, 5.51534e-05, 5.91708e-05, 6.27836e-05, 6.60396e-05, 6.89806e-05, 7.1645e-05, 7.40634e-05, 7.62628e-05, 7.82688e-05, 8.01002e-05, 8.17754e-05, 8.33108e-05, 
			4.0051e-05, 4.60898e-05, 5.1609e-05, 5.66078e-05, 6.11244e-05, 6.5205e-05, 6.88966e-05, 7.22412e-05, 7.52758e-05, 7.80356e-05, 8.0551e-05, 8.28462e-05, 8.49462e-05, 8.6868e-05, 8.86312e-05, 9.02486e-05, 
			4.6104e-05, 5.2088e-05, 5.75798e-05, 6.25872e-05, 6.71368e-05, 7.1269e-05, 7.50242e-05, 7.84414e-05, 8.15542e-05, 8.43944e-05, 8.69914e-05, 8.93678e-05, 9.15452e-05, 9.35448e-05, 9.53808e-05, 9.70684e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.8817e-05, 2.37448e-05, 2.79556e-05, 3.16632e-05, 3.49784e-05, 3.79711e-05, 4.0688e-05, 4.31657e-05, 4.54336e-05, 4.75153e-05, 4.94312e-05, 5.11982e-05, 5.28304e-05, 5.43409e-05, 5.57403e-05, 5.70379e-05, 
			2.2857e-05, 2.75654e-05, 3.17776e-05, 3.5572e-05, 3.90114e-05, 4.2144e-05, 4.50094e-05, 4.76388e-05, 5.00579e-05, 5.22895e-05, 5.43524e-05, 5.62626e-05, 5.80338e-05, 5.96783e-05, 6.12066e-05, 6.26279e-05, 
			2.6965e-05, 3.15602e-05, 3.57538e-05, 3.9581e-05, 4.30824e-05, 4.62958e-05, 4.92518e-05, 5.19794e-05, 5.44996e-05, 5.68349e-05, 5.90012e-05, 6.10137e-05, 6.28852e-05, 6.46275e-05, 6.62502e-05, 6.77629e-05, 
			3.1143e-05, 3.56496e-05, 3.9818e-05, 4.36574e-05, 4.71956e-05, 5.04604e-05, 5.34806e-05, 5.62786e-05, 5.88764e-05, 6.12896e-05, 6.35356e-05, 6.56272e-05, 6.75774e-05, 6.93966e-05, 7.10942e-05, 7.2679e-05, 
			3.5347e-05, 3.98024e-05, 4.3949e-05, 4.77956e-05, 5.136e-05, 5.4667e-05, 5.77398e-05, 6.0596e-05, 6.3256e-05, 6.5735e-05, 6.80482e-05, 7.02062e-05, 7.22226e-05, 7.41066e-05, 7.58674e-05, 7.7513e-05
		)
}

CapTable	"metal6_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000235574, 0.000137251, 0.000100339, 7.99438e-05, 6.65936e-05, 5.69868e-05, 4.96474e-05, 4.38056e-05, 3.90156e-05, 3.49994e-05, 3.1573e-05, 2.86092e-05, 2.60174e-05, 2.373e-05, 2.16964e-05, 1.98773e-05, 
			0.000251372, 0.000149152, 0.000109905, 8.7977e-05, 7.35196e-05, 6.3071e-05, 5.50626e-05, 4.86708e-05, 4.34176e-05, 3.9003e-05, 3.52288e-05, 3.1958e-05, 2.90924e-05, 2.65592e-05, 2.43034e-05, 2.22826e-05, 
			0.000260612, 0.000156742, 0.000116303, 9.3507e-05, 7.83956e-05, 6.74232e-05, 5.89832e-05, 5.22266e-05, 4.66584e-05, 4.19678e-05, 3.7949e-05, 3.44594e-05, 3.13968e-05, 2.8685e-05, 2.6267e-05, 2.40978e-05, 
			0.00026647, 0.000162063, 0.000120977, 9.76496e-05, 8.21084e-05, 7.07846e-05, 6.20384e-05, 5.50164e-05, 4.92146e-05, 4.43164e-05, 4.01114e-05, 3.64538e-05, 3.32386e-05, 3.03878e-05, 2.78426e-05, 2.5557e-05, 
			0.0002711, 0.000166255, 0.000124728, 0.000101016, 8.5152e-05, 7.3548e-05, 6.45622e-05, 5.7329e-05, 5.1339e-05, 4.6272e-05, 4.19148e-05, 3.81188e-05, 3.47774e-05, 3.18114e-05, 2.91606e-05, 2.6778e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.39282e-05, 1.92136e-05, 2.38048e-05, 2.7546e-05, 3.04368e-05, 3.26015e-05, 3.42153e-05, 3.53429e-05, 3.61536e-05, 3.67557e-05, 3.71744e-05, 3.74711e-05, 3.76798e-05, 3.77858e-05, 3.7888e-05, 3.7962e-05, 
			1.97105e-05, 2.52247e-05, 3.00339e-05, 3.39416e-05, 3.69674e-05, 3.925e-05, 4.09042e-05, 4.21424e-05, 4.30127e-05, 4.36351e-05, 4.40754e-05, 4.4389e-05, 4.45588e-05, 4.47146e-05, 4.4824e-05, 4.49005e-05, 
			2.57833e-05, 3.14212e-05, 3.63236e-05, 4.03144e-05, 4.33856e-05, 4.56964e-05, 4.74373e-05, 4.86788e-05, 4.95707e-05, 5.02067e-05, 5.05981e-05, 5.09153e-05, 5.11408e-05, 5.13002e-05, 5.14111e-05, 5.14963e-05, 
			3.2014e-05, 3.77048e-05, 4.26494e-05, 4.66504e-05, 4.97966e-05, 5.2135e-05, 5.38584e-05, 5.51074e-05, 5.60067e-05, 5.65785e-05, 5.70315e-05, 5.73527e-05, 5.75786e-05, 5.77446e-05, 5.78601e-05, 5.79448e-05, 
			3.8329e-05, 4.4048e-05, 4.90064e-05, 5.3079e-05, 5.62016e-05, 5.85496e-05, 6.02765e-05, 6.14549e-05, 6.23513e-05, 6.29924e-05, 6.34451e-05, 6.37685e-05, 6.4002e-05, 6.41621e-05, 6.42845e-05, 6.43645e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.06738e-05, 1.46306e-05, 1.81025e-05, 2.09692e-05, 2.32461e-05, 2.50047e-05, 2.63362e-05, 2.74062e-05, 2.81164e-05, 2.86241e-05, 2.89477e-05, 2.92452e-05, 2.94645e-05, 2.96262e-05, 2.97859e-05, 2.98653e-05, 
			1.48671e-05, 1.89747e-05, 2.26145e-05, 2.56306e-05, 2.80324e-05, 2.98922e-05, 3.13613e-05, 3.24001e-05, 3.31651e-05, 3.36621e-05, 3.40966e-05, 3.4418e-05, 3.46549e-05, 3.48741e-05, 3.49946e-05, 3.50791e-05, 
			1.92653e-05, 2.34704e-05, 2.71924e-05, 3.028e-05, 3.28076e-05, 3.46912e-05, 3.61071e-05, 3.71057e-05, 3.79252e-05, 3.85341e-05, 3.89849e-05, 3.93746e-05, 3.96109e-05, 3.97828e-05, 3.9905e-05, 3.9999e-05, 
			2.379e-05, 2.80468e-05, 3.18108e-05, 3.49864e-05, 3.7457e-05, 3.9363e-05, 4.07297e-05, 4.18424e-05, 4.26749e-05, 4.32966e-05, 4.38146e-05, 4.41436e-05, 4.43834e-05, 4.45617e-05, 4.46901e-05, 4.47842e-05, 
			2.8386e-05, 3.27376e-05, 3.65068e-05, 3.96164e-05, 4.20096e-05, 4.3957e-05, 4.54447e-05, 4.65679e-05, 4.74804e-05, 4.80947e-05, 4.85461e-05, 4.88787e-05, 4.91274e-05, 4.93018e-05, 4.94371e-05, 4.95281e-05
		)
}

CapTable	"metal6_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.43972e-05, 5.9869e-05, 7.19999e-05, 8.13154e-05, 8.83781e-05, 9.36845e-05, 9.76342e-05, 0.00010049, 0.000102694, 0.000104341, 0.000105605, 0.000106474, 0.000107112, 0.000107579, 0.000107883, 0.000108142, 
			6.50629e-05, 8.08149e-05, 9.32673e-05, 0.000102895, 0.000110229, 0.000115767, 0.000119854, 0.000122973, 0.000125301, 0.000127084, 0.00012834, 0.000129261, 0.000129932, 0.000130388, 0.00013076, 0.00013104, 
			8.62317e-05, 0.000102083, 0.000114664, 0.000124422, 0.000131817, 0.000137494, 0.000141778, 0.000145048, 0.0001474, 0.000149141, 0.000150426, 0.00015132, 0.000152026, 0.000152547, 0.000152939, 0.000153211, 
			0.000107654, 0.000123502, 0.00013613, 0.000145898, 0.000153456, 0.000159198, 0.000163593, 0.000166809, 0.000169192, 0.000170945, 0.000172195, 0.000173166, 0.000173892, 0.000174412, 0.0001748, 0.000175083, 
			0.000129252, 0.000145082, 0.000157758, 0.000167668, 0.000175351, 0.000181092, 0.000185409, 0.000188633, 0.000190965, 0.000192756, 0.000194093, 0.000195075, 0.000195781, 0.000196324, 0.000196703, 0.000196997
		)
}

CapTable	"metal6_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000211642, 0.000107716, 6.75056e-05, 4.54604e-05, 3.16478e-05, 2.24248e-05, 1.60586e-05, 1.15828e-05, 8.37964e-06, 6.07294e-06, 4.40532e-06, 3.19478e-06, 2.3125e-06, 1.6678e-06, 1.19607e-06, 8.4969e-07, 
			0.00021896, 0.000112531, 7.08572e-05, 4.78834e-05, 3.34236e-05, 2.37358e-05, 1.70317e-05, 1.22849e-05, 8.88688e-06, 6.44094e-06, 4.6654e-06, 3.37498e-06, 2.43506e-06, 1.74592e-06, 1.24039e-06, 8.67846e-07, 
			0.000221682, 0.00011458, 7.23656e-05, 4.8997e-05, 3.42624e-05, 2.43578e-05, 1.74779e-05, 1.26063e-05, 9.11882e-06, 6.60086e-06, 4.77308e-06, 3.44144e-06, 2.46812e-06, 1.7552e-06, 1.23e-06, 8.47966e-07, 
			0.000222344, 0.000115397, 7.30242e-05, 4.95066e-05, 3.4634e-05, 2.4633e-05, 1.76773e-05, 1.27406e-05, 9.20408e-06, 6.65344e-06, 4.79644e-06, 3.44242e-06, 2.44864e-06, 1.72629e-06, 1.19388e-06, 8.0278e-07, 
			0.000222672, 0.000115784, 7.33552e-05, 4.97426e-05, 3.48054e-05, 2.4752e-05, 1.77533e-05, 1.27891e-05, 9.2246e-06, 6.64734e-06, 4.7679e-06, 3.40128e-06, 2.40658e-06, 1.66921e-06, 1.13591e-06, 7.3785e-07
		)
}

CapTable	"metal6_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.00021269, 0.000109187, 6.9303e-05, 4.74404e-05, 3.36584e-05, 2.43678e-05, 1.78511e-05, 1.3167e-05, 9.77918e-06, 7.24374e-06, 5.35244e-06, 3.92488e-06, 2.84548e-06, 2.0304e-06, 1.40775e-06, 9.34888e-07, 
			0.000220622, 0.000114619, 7.32174e-05, 5.03562e-05, 3.58604e-05, 2.60254e-05, 1.90905e-05, 1.41106e-05, 1.04238e-05, 7.6779e-06, 5.63544e-06, 4.07748e-06, 2.90704e-06, 2.01194e-06, 1.33094e-06, 7.99814e-07, 
			0.000223942, 0.000117189, 7.51802e-05, 5.18426e-05, 3.69858e-05, 2.68974e-05, 1.97196e-05, 1.45143e-05, 1.06688e-05, 7.80438e-06, 5.65796e-06, 4.03286e-06, 2.80228e-06, 1.85287e-06, 1.12066e-06, 5.60426e-07, 
			0.00022511, 0.000118435, 7.61742e-05, 5.25956e-05, 3.75686e-05, 2.72672e-05, 1.99335e-05, 1.46185e-05, 1.06692e-05, 7.73718e-06, 5.52286e-06, 3.84962e-06, 2.56082e-06, 1.57885e-06, 8.20552e-07, 2.35662e-07, 
			0.000225834, 0.00011912, 7.67528e-05, 5.3003e-05, 3.77918e-05, 2.7359e-05, 1.99325e-05, 1.45277e-05, 1.05242e-05, 7.53626e-06, 5.26334e-06, 3.53982e-06, 2.22764e-06, 1.21128e-06, 4.3774e-07, 0
		)
}

CapTable	"metal6_C_BOTTOM_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.6755e-05, 2.08722e-05, 2.43398e-05, 2.73826e-05, 3.01168e-05, 3.2609e-05, 3.49016e-05, 3.70239e-05, 3.89972e-05, 4.08379e-05, 4.25589e-05, 4.41712e-05, 4.56835e-05, 4.71035e-05, 4.8438e-05, 4.96926e-05, 
			1.9932e-05, 2.379e-05, 2.72246e-05, 3.03294e-05, 3.3168e-05, 3.57844e-05, 3.82114e-05, 4.04718e-05, 4.25841e-05, 4.45629e-05, 4.64202e-05, 4.81656e-05, 4.9808e-05, 5.13545e-05, 5.28115e-05, 5.41847e-05, 
			2.3119e-05, 2.68482e-05, 3.02568e-05, 3.33918e-05, 3.62896e-05, 3.89842e-05, 4.14982e-05, 4.38514e-05, 4.60599e-05, 4.8136e-05, 5.00906e-05, 5.19327e-05, 5.36703e-05, 5.53096e-05, 5.68573e-05, 5.83186e-05, 
			2.6354e-05, 2.99986e-05, 3.33904e-05, 3.65428e-05, 3.94818e-05, 4.22304e-05, 4.48092e-05, 4.72324e-05, 4.95154e-05, 5.16667e-05, 5.36976e-05, 5.56159e-05, 5.74289e-05, 5.91426e-05, 6.07628e-05, 6.22948e-05, 
			2.9616e-05, 3.32206e-05, 3.65998e-05, 3.97674e-05, 4.27388e-05, 4.55328e-05, 4.81636e-05, 5.06446e-05, 5.29878e-05, 5.5203e-05, 5.72978e-05, 5.92798e-05, 6.11568e-05, 6.29331e-05, 6.46148e-05, 6.62064e-05
		)
}

CapTable	"metal6_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.00023717, 0.00013932, 0.000102777, 8.26574e-05, 6.9502e-05, 6.00234e-05, 5.27582e-05, 4.6948e-05, 4.21566e-05, 3.81132e-05, 3.464e-05, 3.16142e-05, 2.89488e-05, 2.65794e-05, 2.4457e-05, 2.25446e-05, 
			0.000253502, 0.000151698, 0.000112762, 9.10526e-05, 7.6739e-05, 6.63746e-05, 5.84038e-05, 5.20138e-05, 4.67344e-05, 4.22724e-05, 3.84344e-05, 3.50874e-05, 3.21356e-05, 2.9509e-05, 2.71542e-05, 2.50302e-05, 
			0.000263212, 0.000159681, 0.000119481, 9.68422e-05, 8.18244e-05, 7.08958e-05, 6.24618e-05, 5.5682e-05, 5.00678e-05, 4.53142e-05, 4.1219e-05, 3.76424e-05, 3.44844e-05, 3.16714e-05, 2.9147e-05, 2.68678e-05, 
			0.00026945, 0.000165297, 0.000124381, 0.000101155, 8.56642e-05, 7.43506e-05, 6.55848e-05, 5.85196e-05, 5.26566e-05, 4.76832e-05, 4.3392e-05, 3.96392e-05, 3.63216e-05, 3.33632e-05, 3.0706e-05, 2.83048e-05, 
			0.00027436, 0.000169694, 0.000128278, 0.000104624, 8.87752e-05, 7.71562e-05, 6.81314e-05, 6.08404e-05, 5.47782e-05, 4.9627e-05, 4.51762e-05, 4.12792e-05, 3.78304e-05, 3.47522e-05, 3.19848e-05, 2.94826e-05
		)
}

CapTable	"metal6_C_LATERAL_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000237962, 0.00014034, 0.000103986, 8.40168e-05, 7.09782e-05, 6.1586e-05, 5.43824e-05, 4.86136e-05, 4.38476e-05, 3.98176e-05, 3.63486e-05, 3.3321e-05, 3.0649e-05, 2.82702e-05, 2.6137e-05, 2.42126e-05, 
			0.000254574, 0.000152983, 0.000114219, 9.26418e-05, 7.84262e-05, 6.81318e-05, 6.02086e-05, 5.38494e-05, 4.85882e-05, 4.41354e-05, 4.03006e-05, 3.69526e-05, 3.39978e-05, 3.1367e-05, 2.90078e-05, 2.688e-05, 
			0.000264548, 0.000161203, 0.000121148, 9.86164e-05, 8.36754e-05, 7.28002e-05, 6.44016e-05, 5.76442e-05, 5.20438e-05, 4.72978e-05, 4.3207e-05, 3.9633e-05, 3.64774e-05, 3.36668e-05, 3.11458e-05, 2.88714e-05, 
			0.000271016, 0.000167019, 0.000126218, 0.000103076, 8.76434e-05, 7.63696e-05, 6.76306e-05, 6.05834e-05, 5.4733e-05, 4.97692e-05, 4.54864e-05, 4.17424e-05, 3.84346e-05, 3.54872e-05, 3.28424e-05, 3.04556e-05, 
			0.000276118, 0.000171576, 0.00013025, 0.000106658, 9.08544e-05, 7.92662e-05, 7.0264e-05, 6.29904e-05, 5.6943e-05, 5.18064e-05, 4.73706e-05, 4.34902e-05, 4.006e-05, 3.70022e-05, 3.42572e-05, 3.1779e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			8.6676e-06, 1.18174e-05, 1.45947e-05, 1.69028e-05, 1.87585e-05, 2.02138e-05, 2.13379e-05, 2.2195e-05, 2.30468e-05, 2.34863e-05, 2.38116e-05, 2.40141e-05, 2.38715e-05, 2.40346e-05, 2.41592e-05, 2.45001e-05, 
			1.19392e-05, 1.51971e-05, 1.81021e-05, 2.05328e-05, 2.24966e-05, 2.40436e-05, 2.52445e-05, 2.63514e-05, 2.70022e-05, 2.74181e-05, 2.78396e-05, 2.77195e-05, 2.7958e-05, 2.81411e-05, 2.85551e-05, 2.86232e-05, 
			1.53606e-05, 1.8691e-05, 2.16618e-05, 2.41564e-05, 2.61712e-05, 2.79976e-05, 2.91834e-05, 3.00887e-05, 3.07252e-05, 3.08026e-05, 3.1233e-05, 3.15631e-05, 3.21557e-05, 3.23051e-05, 3.24113e-05, 3.24906e-05, 
			1.8878e-05, 2.22462e-05, 2.52558e-05, 2.77844e-05, 3.00444e-05, 3.16118e-05, 3.27375e-05, 3.37375e-05, 3.39398e-05, 3.45198e-05, 3.49661e-05, 3.56674e-05, 3.58802e-05, 3.60402e-05, 3.61564e-05, 3.62403e-05, 
			2.2447e-05, 2.5845e-05, 2.91232e-05, 3.1626e-05, 3.36412e-05, 3.5173e-05, 3.58685e-05, 3.68603e-05, 3.76298e-05, 3.86487e-05, 3.90497e-05, 3.93502e-05, 3.95764e-05, 3.97387e-05, 3.98633e-05, 3.9784e-05
		)
}

CapTable	"metal6_C_TOP_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.49914e-05, 6.05243e-05, 7.26723e-05, 8.20408e-05, 8.92271e-05, 9.46994e-05, 9.8859e-05, 0.000102032, 0.000104209, 0.000106109, 0.000107565, 0.000108728, 0.000109914, 0.000110543, 0.000111026, 0.000111151, 
			6.55908e-05, 8.13211e-05, 9.37855e-05, 0.000103487, 0.000110976, 0.000116733, 0.000121147, 0.000124311, 0.000126964, 0.000129077, 0.00013058, 0.00013219, 0.000133078, 0.000133765, 0.000134019, 0.000134472, 
			8.66264e-05, 0.000102451, 0.000115044, 0.00012491, 0.00013258, 0.000138235, 0.000142863, 0.000146431, 0.000149241, 0.000151804, 0.000153394, 0.000154615, 0.000155213, 0.000155986, 0.000156599, 0.000157062, 
			0.000107913, 0.000123736, 0.000136412, 0.000146394, 0.000153931, 0.000160034, 0.000164853, 0.000168426, 0.000171766, 0.000173885, 0.000175523, 0.000176424, 0.00017746, 0.000178252, 0.000178876, 0.000179362, 
			0.000129401, 0.000145296, 0.000157761, 0.00016789, 0.000175829, 0.000182075, 0.000187409, 0.000191068, 0.000193888, 0.000195631, 0.000197377, 0.000198728, 0.000199762, 0.000200592, 0.000201219, 0.000201723
		)
}

CapTable	"metal6_C_TOP_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.54136e-05, 6.10215e-05, 7.32276e-05, 8.26302e-05, 8.98496e-05, 9.53529e-05, 9.95419e-05, 0.000102737, 0.000105161, 0.000106961, 0.000108392, 0.00010948, 0.000110315, 0.000110944, 0.000111451, 0.000111817, 
			6.60871e-05, 8.18966e-05, 9.43821e-05, 0.000104103, 0.000111606, 0.000117376, 0.000121799, 0.000125126, 0.000127744, 0.000129731, 0.000131249, 0.000132415, 0.000133331, 0.000134007, 0.000134488, 0.000134891, 
			8.71938e-05, 0.00010306, 0.000115662, 0.000125521, 0.000133173, 0.000139083, 0.000143593, 0.000147098, 0.000149782, 0.000151841, 0.000153411, 0.000154645, 0.000155564, 0.000156226, 0.000156776, 0.000157182, 
			0.000108531, 0.000124362, 0.000137011, 0.000146947, 0.000154643, 0.000160655, 0.00016527, 0.000168825, 0.00017156, 0.000173685, 0.000175286, 0.000176466, 0.000177417, 0.000178133, 0.000178689, 0.000179117, 
			0.00013003, 0.000145885, 0.000158564, 0.000168526, 0.000176326, 0.000182358, 0.000187026, 0.000190614, 0.000193402, 0.000195519, 0.000197103, 0.000198352, 0.000199294, 0.000200043, 0.000200601, 0.00020105
		)
}

CapTable	"metal6_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.00021297, 0.000109613, 6.98542e-05, 4.80952e-05, 3.43672e-05, 2.5111e-05, 1.86048e-05, 1.39212e-05, 1.04986e-05, 7.97064e-06, 6.0775e-06, 4.65626e-06, 3.58238e-06, 2.77014e-06, 2.15332e-06, 1.68218e-06, 
			0.000221076, 0.000115201, 7.3955e-05, 5.11948e-05, 3.67636e-05, 2.69694e-05, 2.0059e-05, 1.50714e-05, 1.13988e-05, 8.67738e-06, 6.63978e-06, 5.10426e-06, 3.94624e-06, 3.0659e-06, 2.39546e-06, 1.88117e-06, 
			0.000224572, 0.00011797, 7.6103e-05, 5.28746e-05, 3.8101e-05, 2.80358e-05, 2.09152e-05, 1.575e-05, 1.19487e-05, 9.11902e-06, 6.99956e-06, 5.40502e-06, 4.19492e-06, 3.27446e-06, 2.56942e-06, 2.0336e-06, 
			0.000225918, 0.000119406, 7.73012e-05, 5.38554e-05, 3.89058e-05, 2.86964e-05, 2.14558e-05, 1.61957e-05, 1.2314e-05, 9.43024e-06, 7.26232e-06, 5.62574e-06, 4.38016e-06, 3.43776e-06, 2.71434e-06, 2.15878e-06, 
			0.000226834, 0.000120311, 7.8088e-05, 5.45132e-05, 3.9448e-05, 2.91536e-05, 2.18332e-05, 1.65144e-05, 1.25969e-05, 9.66996e-06, 7.46388e-06, 5.80112e-06, 4.54312e-06, 3.57384e-06, 2.83958e-06, 2.26676e-06
		)
}

CapTable	"metal6_C_BOTTOM_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.5755e-05, 1.95094e-05, 2.26382e-05, 2.53692e-05, 2.78225e-05, 3.00648e-05, 3.21374e-05, 3.40675e-05, 3.58738e-05, 3.75698e-05, 3.91657e-05, 4.06694e-05, 4.20877e-05, 4.34258e-05, 4.46886e-05, 4.58806e-05, 
			1.8526e-05, 2.19986e-05, 2.50726e-05, 2.78462e-05, 3.03878e-05, 3.27412e-05, 3.49356e-05, 3.69916e-05, 3.89244e-05, 4.07457e-05, 4.24643e-05, 4.40874e-05, 4.5621e-05, 4.70706e-05, 4.84407e-05, 4.97353e-05, 
			2.1277e-05, 2.46074e-05, 2.76454e-05, 3.04416e-05, 3.30376e-05, 3.54618e-05, 3.77364e-05, 3.98775e-05, 4.18975e-05, 4.38063e-05, 4.5611e-05, 4.73187e-05, 4.89346e-05, 5.04638e-05, 5.19108e-05, 5.32795e-05, 
			2.4058e-05, 2.7299e-05, 3.0316e-05, 3.31288e-05, 3.57626e-05, 3.82384e-05, 4.05724e-05, 4.27766e-05, 4.48621e-05, 4.68365e-05, 4.87068e-05, 5.04786e-05, 5.21573e-05, 5.37476e-05, 5.52538e-05, 5.66796e-05, 
			2.686e-05, 3.00598e-05, 3.30674e-05, 3.58956e-05, 3.85596e-05, 4.10758e-05, 4.3456e-05, 4.57116e-05, 4.7849e-05, 4.98756e-05, 5.17987e-05, 5.36224e-05, 5.53519e-05, 5.69917e-05, 5.8546e-05, 6.00186e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.4955e-05, 1.84239e-05, 2.12864e-05, 2.37708e-05, 2.5998e-05, 2.80354e-05, 2.99245e-05, 3.16915e-05, 3.33544e-05, 3.49251e-05, 3.64124e-05, 3.78229e-05, 3.91617e-05, 4.04329e-05, 4.164e-05, 4.2786e-05, 
			1.7427e-05, 2.0597e-05, 2.33862e-05, 2.58968e-05, 2.81976e-05, 3.03336e-05, 3.23332e-05, 3.42163e-05, 3.5997e-05, 3.76847e-05, 3.92872e-05, 4.08101e-05, 4.22578e-05, 4.36342e-05, 4.49426e-05, 4.6186e-05, 
			1.9854e-05, 2.28702e-05, 2.56144e-05, 2.81398e-05, 3.04872e-05, 3.2688e-05, 3.4763e-05, 3.67268e-05, 3.85899e-05, 4.03606e-05, 4.20448e-05, 4.36479e-05, 4.51737e-05, 4.66256e-05, 4.80072e-05, 4.9321e-05, 
			2.2295e-05, 2.52162e-05, 2.79352e-05, 3.04732e-05, 3.28576e-05, 3.51064e-05, 3.72382e-05, 3.92634e-05, 4.11889e-05, 4.30224e-05, 4.47692e-05, 4.64335e-05, 4.8019e-05, 4.95292e-05, 5.09669e-05, 5.23351e-05, 
			2.4749e-05, 2.76278e-05, 3.03356e-05, 3.28874e-05, 3.5302e-05, 3.75912e-05, 3.9769e-05, 4.18426e-05, 4.38184e-05, 4.57025e-05, 4.74994e-05, 4.92131e-05, 5.08471e-05, 5.24041e-05, 5.38876e-05, 5.53001e-05
		)
}

CapTable	"metal6_C_LATERAL_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000238596, 0.000141156, 0.000104956, 8.51142e-05, 7.21786e-05, 6.28672e-05, 5.57244e-05, 4.99992e-05, 4.5262e-05, 4.12484e-05, 3.77856e-05, 3.47554e-05, 3.2074e-05, 2.968e-05, 2.7527e-05, 2.55792e-05, 
			0.000255416, 0.000154, 0.000115381, 9.39202e-05, 7.97964e-05, 6.95712e-05, 6.1698e-05, 5.53724e-05, 5.0131e-05, 4.5687e-05, 4.18516e-05, 3.84954e-05, 3.55264e-05, 3.28764e-05, 3.04942e-05, 2.834e-05, 
			0.00026559, 0.000162404, 0.000122478, 0.000100047, 8.51828e-05, 7.4363e-05, 6.6002e-05, 5.92678e-05, 5.36786e-05, 4.89342e-05, 4.4837e-05, 4.12502e-05, 3.80764e-05, 3.52436e-05, 3.26968e-05, 3.0394e-05, 
			0.000272242, 0.000168383, 0.000127691, 0.000104632, 8.92594e-05, 7.80276e-05, 6.93148e-05, 6.22816e-05, 5.64348e-05, 5.14666e-05, 4.71726e-05, 4.34118e-05, 4.0083e-05, 3.71108e-05, 3.44386e-05, 3.20218e-05, 
			0.000277504, 0.000173077, 0.000131839, 0.000108314, 9.2555e-05, 8.09968e-05, 7.2011e-05, 6.47434e-05, 5.86936e-05, 5.35476e-05, 4.9097e-05, 4.5197e-05, 4.17434e-05, 3.86594e-05, 3.58856e-05, 3.33766e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			7.8774e-06, 1.07215e-05, 1.32182e-05, 1.52926e-05, 1.69802e-05, 1.83031e-05, 1.93373e-05, 2.01338e-05, 2.07464e-05, 2.12584e-05, 2.15965e-05, 2.18567e-05, 2.20506e-05, 2.22109e-05, 2.22977e-05, 2.23898e-05, 
			1.08209e-05, 1.37594e-05, 1.63629e-05, 1.85572e-05, 2.03414e-05, 2.17556e-05, 2.2862e-05, 2.37706e-05, 2.44082e-05, 2.49026e-05, 2.52852e-05, 2.55747e-05, 2.57638e-05, 2.59361e-05, 2.61085e-05, 2.62058e-05, 
			1.38872e-05, 1.68848e-05, 1.9558e-05, 2.18154e-05, 2.3651e-05, 2.51122e-05, 2.62908e-05, 2.7167e-05, 2.78473e-05, 2.8368e-05, 2.87764e-05, 2.9043e-05, 2.92811e-05, 2.95095e-05, 2.96446e-05, 2.97524e-05, 
			1.7043e-05, 2.00748e-05, 2.27888e-05, 2.50806e-05, 2.69822e-05, 2.84506e-05, 2.96122e-05, 3.05173e-05, 3.1218e-05, 3.17148e-05, 3.21297e-05, 3.25013e-05, 3.27438e-05, 3.29312e-05, 3.30737e-05, 3.31812e-05, 
			2.0252e-05, 2.33122e-05, 2.6049e-05, 2.83818e-05, 3.0256e-05, 3.17564e-05, 3.29338e-05, 3.38586e-05, 3.45221e-05, 3.5071e-05, 3.55481e-05, 3.58729e-05, 3.61239e-05, 3.63092e-05, 3.64564e-05, 3.65612e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			7.1989e-06, 9.7582e-06, 1.20116e-05, 1.38908e-05, 1.54301e-05, 1.66431e-05, 1.75988e-05, 1.83421e-05, 1.89179e-05, 1.93616e-05, 1.97775e-05, 2.00167e-05, 2.0201e-05, 2.03299e-05, 2.04521e-05, 2.04683e-05, 
			9.8491e-06, 1.24937e-05, 1.48441e-05, 1.68444e-05, 1.84704e-05, 1.97746e-05, 2.08022e-05, 2.1606e-05, 2.23178e-05, 2.27747e-05, 2.31298e-05, 2.34031e-05, 2.36073e-05, 2.36884e-05, 2.38186e-05, 2.40059e-05, 
			1.26037e-05, 1.53022e-05, 1.772e-05, 1.9777e-05, 2.14612e-05, 2.28116e-05, 2.38792e-05, 2.47903e-05, 2.54204e-05, 2.59105e-05, 2.62759e-05, 2.65823e-05, 2.67112e-05, 2.69952e-05, 2.71288e-05, 2.72338e-05, 
			1.5444e-05, 1.81726e-05, 2.06342e-05, 2.27246e-05, 2.44398e-05, 2.59028e-05, 2.69696e-05, 2.78079e-05, 2.84647e-05, 2.89654e-05, 2.92553e-05, 2.95645e-05, 2.99189e-05, 3.01028e-05, 3.02425e-05, 3.03489e-05, 
			1.8327e-05, 2.10878e-05, 2.35716e-05, 2.5685e-05, 2.74916e-05, 2.88668e-05, 2.99566e-05, 3.07973e-05, 3.14822e-05, 3.18859e-05, 3.24187e-05, 3.27333e-05, 3.2978e-05, 3.31601e-05, 3.33034e-05, 3.34052e-05
		)
}

CapTable	"metal6_C_TOP_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.56571e-05, 6.13094e-05, 7.35354e-05, 8.29558e-05, 9.02175e-05, 9.57745e-05, 0.000100033, 0.000103304, 0.000105809, 0.000107741, 0.000109143, 0.000110317, 0.000111227, 0.000111932, 0.000112468, 0.000112952, 
			6.63059e-05, 8.21327e-05, 9.46255e-05, 0.000104378, 0.000111928, 0.000117769, 0.000122278, 0.000125757, 0.00012835, 0.000130451, 0.000132076, 0.000133339, 0.00013431, 0.000135148, 0.000135727, 0.000136094, 
			8.73623e-05, 0.000103235, 0.00011585, 0.000125748, 0.000133466, 0.000139465, 0.000144123, 0.000147636, 0.000150452, 0.000152638, 0.000154326, 0.000155632, 0.000156737, 0.000157416, 0.00015803, 0.000158491, 
			0.000108654, 0.000124484, 0.000137157, 0.000147147, 0.000154966, 0.00016097, 0.000165727, 0.000169429, 0.000172309, 0.000174528, 0.000176363, 0.000177698, 0.000178629, 0.000179421, 0.000180044, 0.000180527, 
			0.000130105, 0.000145972, 0.000158689, 0.000168759, 0.000176555, 0.000182732, 0.000187559, 0.000191297, 0.000194208, 0.000196573, 0.00019821, 0.000199568, 0.000200605, 0.000201435, 0.000202066, 0.000202594
		)
}

CapTable	"metal6_C_LATERAL_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000213298, 0.000110086, 7.0446e-05, 4.87674e-05, 3.50624e-05, 2.57964e-05, 1.92482e-05, 1.45049e-05, 1.10121e-05, 8.40238e-06, 6.44754e-06, 4.9533e-06, 3.81198e-06, 2.93912e-06, 2.26688e-06, 1.74971e-06, 
			0.000221614, 0.000115885, 7.47504e-05, 5.20306e-05, 3.76106e-05, 2.77764e-05, 2.07988e-05, 1.572e-05, 1.19682e-05, 9.14934e-06, 7.01716e-06, 5.3929e-06, 4.15474e-06, 3.20162e-06, 2.46944e-06, 1.9041e-06, 
			0.000225324, 0.000118851, 7.7065e-05, 5.3857e-05, 3.90538e-05, 2.89214e-05, 2.16998e-05, 1.64417e-05, 1.25246e-05, 9.5795e-06, 7.35508e-06, 5.6537e-06, 4.35584e-06, 3.35882e-06, 2.5872e-06, 1.99618e-06, 
			0.000226842, 0.000120443, 7.83848e-05, 5.49284e-05, 3.99152e-05, 2.96252e-05, 2.22654e-05, 1.68751e-05, 1.28603e-05, 9.84962e-06, 7.55972e-06, 5.81552e-06, 4.47612e-06, 3.45224e-06, 2.66048e-06, 2.04912e-06, 
			0.000227914, 0.000121459, 7.92494e-05, 5.5622e-05, 4.04894e-05, 3.00742e-05, 2.26134e-05, 1.71577e-05, 1.30798e-05, 1.00201e-05, 7.68928e-06, 5.91372e-06, 4.55798e-06, 3.50586e-06, 2.70358e-06, 2.07584e-06
		)
}

CapTable	"metal5_C_LATERAL_12MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal5_C_LATERAL_13MAX" {
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
			3.01117e-05, 4.00685e-05, 4.79197e-05, 5.40014e-05, 5.87201e-05, 6.24135e-05, 6.53409e-05, 6.76875e-05, 6.95887e-05, 7.11532e-05, 7.24507e-05, 7.34855e-05, 7.43906e-05, 7.51228e-05, 7.5757e-05, 7.62876e-05, 
			4.26074e-05, 5.2563e-05, 6.05082e-05, 6.67514e-05, 7.16694e-05, 7.55748e-05, 7.87105e-05, 8.12532e-05, 8.33338e-05, 8.50671e-05, 8.65061e-05, 8.76652e-05, 8.86811e-05, 8.95068e-05, 9.02274e-05, 9.08222e-05, 
			5.52348e-05, 6.51228e-05, 7.30841e-05, 7.94109e-05, 8.44412e-05, 8.84787e-05, 9.17613e-05, 9.44545e-05, 9.66223e-05, 9.84718e-05, 9.99842e-05, 0.000101272, 0.000102354, 0.000103244, 0.000104028, 0.000104673, 
			6.79102e-05, 7.77605e-05, 8.57349e-05, 9.21177e-05, 9.72331e-05, 0.000101363, 0.000104748, 0.000107532, 0.000109788, 0.000111718, 0.000113298, 0.000114655, 0.000115781, 0.000116745, 0.000117564, 0.000118262, 
			8.0625e-05, 9.04141e-05, 9.83906e-05, 0.000104823, 0.000110026, 0.000114186, 0.000117649, 0.000120473, 0.000122842, 0.000124818, 0.000126452, 0.000127863, 0.000129033, 0.000130035, 0.000130891, 0.000131615
		)
}

CapTable	"metal5_C_TOP_GP_12MAX" {
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

CapTable	"metal5_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182737, 0.000107767, 7.95992e-05, 6.40726e-05, 5.39518e-05, 4.67106e-05, 4.12206e-05, 3.68926e-05, 3.33834e-05, 3.0477e-05, 2.8029e-05, 2.59384e-05, 2.41322e-05, 2.25558e-05, 2.11678e-05, 1.99359e-05, 
			0.000196886, 0.00011883, 8.8746e-05, 7.1946e-05, 6.08966e-05, 5.2953e-05, 4.69114e-05, 4.21366e-05, 3.82564e-05, 3.50354e-05, 3.2316e-05, 2.99878e-05, 2.7971e-05, 2.6206e-05, 2.46474e-05, 2.326e-05, 
			0.000205582, 0.000126229, 9.51584e-05, 7.76292e-05, 6.60466e-05, 5.76786e-05, 5.1294e-05, 4.62342e-05, 4.21116e-05, 3.86806e-05, 3.57762e-05, 3.3283e-05, 3.1117e-05, 2.92162e-05, 2.7533e-05, 2.60304e-05, 
			0.000211816, 0.000131799, 0.00010016, 8.21846e-05, 7.02458e-05, 6.15954e-05, 5.49752e-05, 4.97144e-05, 4.54166e-05, 4.18302e-05, 3.87862e-05, 3.61662e-05, 3.38838e-05, 3.18754e-05, 3.0092e-05, 2.84956e-05, 
			0.00021623, 0.000136162, 0.000104225, 8.59774e-05, 7.38074e-05, 6.49654e-05, 5.81792e-05, 5.27698e-05, 4.83394e-05, 4.46328e-05, 4.14786e-05, 3.87566e-05, 3.63796e-05, 3.42822e-05, 3.2415e-05, 3.07392e-05
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

CapTable	"metal5_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.83652e-06, 9.93766e-06, 1.17586e-05, 1.33796e-05, 1.48379e-05, 1.61543e-05, 1.73423e-05, 1.84142e-05, 1.93786e-05, 2.02443e-05, 2.10197e-05, 2.17131e-05, 2.23331e-05, 2.28864e-05, 2.33784e-05, 2.38173e-05, 
			9.73862e-06, 1.17942e-05, 1.36636e-05, 1.53694e-05, 1.69274e-05, 1.83479e-05, 1.96398e-05, 2.08106e-05, 2.1868e-05, 2.28206e-05, 2.3678e-05, 2.44465e-05, 2.51356e-05, 2.57517e-05, 2.63005e-05, 2.67901e-05, 
			1.16595e-05, 1.37144e-05, 1.56237e-05, 1.73892e-05, 1.90146e-05, 2.05055e-05, 2.18658e-05, 2.31021e-05, 2.42225e-05, 2.52352e-05, 2.61479e-05, 2.69675e-05, 2.77034e-05, 2.83608e-05, 2.89515e-05, 2.9477e-05, 
			1.36279e-05, 1.56985e-05, 1.76425e-05, 1.94542e-05, 2.11305e-05, 2.26711e-05, 2.40811e-05, 2.53668e-05, 2.65332e-05, 2.75898e-05, 2.85432e-05, 2.93996e-05, 3.01685e-05, 3.08603e-05, 3.14784e-05, 3.20325e-05, 
			1.56519e-05, 1.77354e-05, 1.97092e-05, 2.15566e-05, 2.32696e-05, 2.48488e-05, 2.62972e-05, 2.76196e-05, 2.88211e-05, 2.99096e-05, 3.08917e-05, 3.17789e-05, 3.25745e-05, 3.32897e-05, 3.39301e-05, 3.45032e-05
		)
}

CapTable	"metal5_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179943, 0.00010401, 7.49362e-05, 5.8561e-05, 4.76552e-05, 3.96986e-05, 3.3566e-05, 2.86694e-05, 2.4665e-05, 2.13346e-05, 1.85309e-05, 1.61483e-05, 1.41094e-05, 1.23549e-05, 1.08378e-05, 9.52184e-06, 
			0.000192879, 0.000113757, 8.26518e-05, 6.48908e-05, 5.29512e-05, 4.41966e-05, 3.74274e-05, 3.20102e-05, 2.75726e-05, 2.38762e-05, 2.07598e-05, 1.81077e-05, 1.58354e-05, 1.38776e-05, 1.21826e-05, 1.07102e-05, 
			0.000200234, 0.000119721, 8.75368e-05, 6.89604e-05, 5.64112e-05, 4.71654e-05, 3.9997e-05, 3.42486e-05, 2.95312e-05, 2.55962e-05, 2.22742e-05, 1.94436e-05, 1.70158e-05, 1.49213e-05, 1.31067e-05, 1.15286e-05, 
			0.000205, 0.000123742, 9.0914e-05, 7.18252e-05, 5.88626e-05, 4.9288e-05, 4.18466e-05, 3.58684e-05, 3.09548e-05, 2.6851e-05, 2.33826e-05, 2.04242e-05, 1.7884e-05, 1.56908e-05, 1.37885e-05, 1.21335e-05, 
			0.000207838, 0.000126461, 9.3276e-05, 7.38658e-05, 6.06328e-05, 5.0836e-05, 4.32062e-05, 3.70648e-05, 3.20104e-05, 2.77848e-05, 2.42092e-05, 2.11572e-05, 1.85342e-05, 1.62673e-05, 1.4301e-05, 1.25882e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.71078e-05, 2.14134e-05, 2.49898e-05, 2.80476e-05, 3.07045e-05, 3.30372e-05, 3.5099e-05, 3.693e-05, 3.85628e-05, 4.00241e-05, 4.13369e-05, 4.25204e-05, 4.35914e-05, 4.45641e-05, 4.54507e-05, 4.6262e-05, 
			2.07696e-05, 2.4809e-05, 2.8331e-05, 3.1419e-05, 3.41445e-05, 3.6561e-05, 3.87118e-05, 4.06332e-05, 4.23555e-05, 4.39047e-05, 4.53031e-05, 4.657e-05, 4.77218e-05, 4.87729e-05, 4.97356e-05, 5.06206e-05, 
			2.4333e-05, 2.82134e-05, 3.16716e-05, 3.47458e-05, 3.74834e-05, 3.99262e-05, 4.21129e-05, 4.40759e-05, 4.58437e-05, 4.74409e-05, 4.8889e-05, 5.02064e-05, 5.14097e-05, 5.25122e-05, 5.35261e-05, 5.4462e-05, 
			2.7843e-05, 3.1609e-05, 3.49992e-05, 3.80384e-05, 4.07612e-05, 4.32046e-05, 4.54018e-05, 4.73824e-05, 4.91742e-05, 5.08e-05, 5.228e-05, 5.36319e-05, 5.48715e-05, 5.60118e-05, 5.70645e-05, 5.80399e-05, 
			3.1318e-05, 3.4967e-05, 3.82834e-05, 4.12756e-05, 4.39706e-05, 4.63996e-05, 4.85938e-05, 5.05802e-05, 5.23836e-05, 5.4027e-05, 5.55286e-05, 5.69054e-05, 5.81721e-05, 5.93418e-05, 6.04255e-05, 6.1433e-05
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
			1.27813e-05, 1.63773e-05, 1.94872e-05, 2.22275e-05, 2.46647e-05, 2.68412e-05, 2.87877e-05, 3.05266e-05, 3.20794e-05, 3.34645e-05, 3.46984e-05, 3.5797e-05, 3.67729e-05, 3.76396e-05, 3.84108e-05, 3.9094e-05, 
			1.61344e-05, 1.9686e-05, 2.28896e-05, 2.57768e-05, 2.83797e-05, 3.07223e-05, 3.2828e-05, 3.47181e-05, 3.64117e-05, 3.79272e-05, 3.92798e-05, 4.04877e-05, 4.15629e-05, 4.25201e-05, 4.33738e-05, 4.4133e-05, 
			1.95805e-05, 2.3148e-05, 2.64255e-05, 2.94114e-05, 3.21182e-05, 3.45661e-05, 3.67748e-05, 3.87628e-05, 4.05483e-05, 4.2148e-05, 4.35792e-05, 4.48595e-05, 4.60012e-05, 4.70212e-05, 4.79274e-05, 4.87366e-05, 
			2.31421e-05, 2.67475e-05, 3.00815e-05, 3.31346e-05, 3.59159e-05, 3.84379e-05, 4.07183e-05, 4.27738e-05, 4.4625e-05, 4.62842e-05, 4.77719e-05, 4.91051e-05, 5.02965e-05, 5.13578e-05, 5.23063e-05, 5.31501e-05, 
			2.68181e-05, 3.04446e-05, 3.38188e-05, 3.69206e-05, 3.97536e-05, 4.23282e-05, 4.46586e-05, 4.67636e-05, 4.86615e-05, 5.03656e-05, 5.18961e-05, 5.32649e-05, 5.44913e-05, 5.5587e-05, 5.65649e-05, 5.74366e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.2183e-05, 1.47598e-05, 1.67754e-05, 1.84356e-05, 1.98531e-05, 2.10944e-05, 2.22009e-05, 2.31999e-05, 2.4111e-05, 2.49483e-05, 2.57231e-05, 2.64443e-05, 2.71187e-05, 2.77526e-05, 2.83508e-05, 2.89176e-05, 
			1.3973e-05, 1.62208e-05, 1.80996e-05, 1.97104e-05, 2.11217e-05, 2.23782e-05, 2.35113e-05, 2.45432e-05, 2.54905e-05, 2.63663e-05, 2.71809e-05, 2.79423e-05, 2.86578e-05, 2.93329e-05, 2.99726e-05, 3.05811e-05, 
			1.5584e-05, 1.76288e-05, 1.9404e-05, 2.09632e-05, 2.23518e-05, 2.36032e-05, 2.47417e-05, 2.57858e-05, 2.67502e-05, 2.76465e-05, 2.84839e-05, 2.92703e-05, 3.00122e-05, 3.07148e-05, 3.13831e-05, 3.2021e-05, 
			1.7084e-05, 1.89944e-05, 2.06854e-05, 2.21954e-05, 2.35568e-05, 2.47944e-05, 2.59289e-05, 2.6976e-05, 2.79482e-05, 2.88562e-05, 2.97084e-05, 3.0512e-05, 3.1273e-05, 3.19965e-05, 3.2687e-05, 3.33481e-05, 
			1.8524e-05, 2.03188e-05, 2.19386e-05, 2.34034e-05, 2.47362e-05, 2.59568e-05, 2.70825e-05, 2.81275e-05, 2.9103e-05, 3.0018e-05, 3.08803e-05, 3.16967e-05, 3.24727e-05, 3.32129e-05, 3.39216e-05, 3.46024e-05
		)
}

CapTable	"metal5_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000186606, 0.000112733, 8.54716e-05, 7.06832e-05, 6.1152e-05, 5.43724e-05, 4.9235e-05, 4.51682e-05, 4.1844e-05, 3.90598e-05, 3.66822e-05, 3.46194e-05, 3.28062e-05, 3.11942e-05, 2.97472e-05, 2.84372e-05, 
			0.000202056, 0.00012504, 9.58134e-05, 7.97016e-05, 6.91926e-05, 6.16636e-05, 5.5931e-05, 5.13776e-05, 4.76468e-05, 4.45158e-05, 4.18376e-05, 3.9511e-05, 3.74628e-05, 3.56398e-05, 3.40012e-05, 3.25158e-05, 
			0.000211978, 0.000133578, 0.000103282, 8.63638e-05, 7.52516e-05, 6.72362e-05, 6.11066e-05, 5.62214e-05, 5.22074e-05, 4.88306e-05, 4.59362e-05, 4.34166e-05, 4.11946e-05, 3.92134e-05, 3.74298e-05, 3.58104e-05, 
			0.000219334, 0.000140165, 0.000109202, 9.17506e-05, 8.02072e-05, 7.1845e-05, 6.54246e-05, 6.0291e-05, 5.60612e-05, 5.24942e-05, 4.94298e-05, 4.67566e-05, 4.43946e-05, 4.22846e-05, 4.03818e-05, 3.86514e-05, 
			0.000224742, 0.000145405, 0.000114043, 9.62346e-05, 8.43868e-05, 7.57712e-05, 6.91322e-05, 6.38058e-05, 5.94052e-05, 5.56854e-05, 5.24826e-05, 4.96828e-05, 4.72042e-05, 4.4986e-05, 4.2982e-05, 4.11566e-05
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

CapTable	"metal5_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.95477e-06, 1.1258e-05, 1.32069e-05, 1.49186e-05, 1.64563e-05, 1.78574e-05, 1.91445e-05, 2.03312e-05, 2.1427e-05, 2.2438e-05, 2.33703e-05, 2.42291e-05, 2.50206e-05, 2.57462e-05, 2.64111e-05, 2.70221e-05, 
			1.09032e-05, 1.30916e-05, 1.50538e-05, 1.68357e-05, 1.84708e-05, 1.99808e-05, 2.13799e-05, 2.26767e-05, 2.38779e-05, 2.49912e-05, 2.60194e-05, 2.69686e-05, 2.78443e-05, 2.86478e-05, 2.9387e-05, 3.00624e-05, 
			1.28353e-05, 1.49876e-05, 1.69739e-05, 1.88128e-05, 2.05195e-05, 2.2108e-05, 2.35856e-05, 2.49594e-05, 2.62354e-05, 2.74206e-05, 2.8516e-05, 2.95275e-05, 3.04621e-05, 3.13194e-05, 3.21095e-05, 3.28338e-05, 
			1.48026e-05, 1.69559e-05, 1.89737e-05, 2.0861e-05, 2.26255e-05, 2.42717e-05, 2.58103e-05, 2.72434e-05, 2.85761e-05, 2.98147e-05, 3.09604e-05, 3.20205e-05, 3.29962e-05, 3.3897e-05, 3.47226e-05, 3.54821e-05, 
			1.68318e-05, 1.8994e-05, 2.10422e-05, 2.29692e-05, 2.47779e-05, 2.64717e-05, 2.80576e-05, 2.95352e-05, 3.09112e-05, 3.21906e-05, 3.33736e-05, 3.44698e-05, 3.54811e-05, 3.64108e-05, 3.72669e-05, 3.80529e-05
		)
}

CapTable	"metal5_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.72843e-06, 1.08992e-05, 1.27347e-05, 1.43515e-05, 1.58109e-05, 1.71465e-05, 1.83771e-05, 1.95147e-05, 2.05674e-05, 2.15421e-05, 2.24433e-05, 2.32753e-05, 2.40405e-05, 2.47453e-05, 2.53931e-05, 2.59854e-05, 
			1.05714e-05, 1.26374e-05, 1.44878e-05, 1.61743e-05, 1.77286e-05, 1.9169e-05, 2.05074e-05, 2.17527e-05, 2.2911e-05, 2.39857e-05, 2.49819e-05, 2.59029e-05, 2.67523e-05, 2.75361e-05, 2.82555e-05, 2.89174e-05, 
			1.23937e-05, 1.44238e-05, 1.62989e-05, 1.80404e-05, 1.96627e-05, 2.11783e-05, 2.25948e-05, 2.39175e-05, 2.51499e-05, 2.62944e-05, 2.73576e-05, 2.83424e-05, 2.92509e-05, 3.009e-05, 3.08604e-05, 3.15685e-05, 
			1.42434e-05, 1.62737e-05, 1.81779e-05, 1.99648e-05, 2.16429e-05, 2.32185e-05, 2.46947e-05, 2.60753e-05, 2.73635e-05, 2.8562e-05, 2.96759e-05, 3.07073e-05, 3.16621e-05, 3.25408e-05, 3.33503e-05, 3.40933e-05, 
			1.61482e-05, 1.81832e-05, 2.0116e-05, 2.19438e-05, 2.36685e-05, 2.52913e-05, 2.6813e-05, 2.82394e-05, 2.9572e-05, 3.08121e-05, 3.19659e-05, 3.30334e-05, 3.4021e-05, 3.4932e-05, 3.57701e-05, 3.65391e-05
		)
}

CapTable	"metal5_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00018221, 0.000107027, 7.85784e-05, 6.26966e-05, 5.2154e-05, 4.44404e-05, 3.84452e-05, 3.35968e-05, 2.95672e-05, 2.61528e-05, 2.3219e-05, 2.0672e-05, 1.84437e-05, 1.64831e-05, 1.47499e-05, 1.32119e-05, 
			0.000196123, 0.000117739, 8.72314e-05, 6.9922e-05, 5.8297e-05, 4.9735e-05, 4.30538e-05, 3.76374e-05, 3.31294e-05, 2.93062e-05, 2.60202e-05, 2.3167e-05, 2.067e-05, 1.84729e-05, 1.65302e-05, 1.48072e-05, 
			0.000204434, 0.000124602, 9.29482e-05, 7.47548e-05, 6.24538e-05, 5.33398e-05, 4.6204e-05, 4.04068e-05, 3.55756e-05, 3.1475e-05, 2.79486e-05, 2.48854e-05, 2.2204e-05, 1.98446e-05, 1.77578e-05, 1.59061e-05, 
			0.000210086, 0.000129424, 9.70434e-05, 7.82602e-05, 6.54776e-05, 5.59738e-05, 4.85124e-05, 4.24404e-05, 3.73744e-05, 3.3071e-05, 2.93684e-05, 2.61506e-05, 2.33344e-05, 2.08544e-05, 1.86627e-05, 1.67166e-05, 
			0.000213704, 0.000132828, 0.000100004, 8.0824e-05, 6.77056e-05, 5.7925e-05, 5.02294e-05, 4.39554e-05, 3.87154e-05, 3.42616e-05, 3.0428e-05, 2.70954e-05, 2.41772e-05, 2.16088e-05, 1.93365e-05, 1.73203e-05
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

CapTable	"metal5_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00018315, 0.000108275, 8.01022e-05, 6.44622e-05, 5.41268e-05, 4.6585e-05, 4.07266e-05, 3.59812e-05, 3.20228e-05, 2.8651e-05, 2.5734e-05, 2.31812e-05, 2.09278e-05, 1.89254e-05, 1.71365e-05, 1.55325e-05, 
			0.000197444, 0.00011938, 8.91602e-05, 7.21008e-05, 6.06868e-05, 5.22958e-05, 4.57466e-05, 4.04256e-05, 3.59796e-05, 3.21882e-05, 2.89068e-05, 2.60342e-05, 2.3499e-05, 2.1246e-05, 1.92339e-05, 1.74295e-05, 
			0.000206152, 0.000126642, 9.52756e-05, 7.73274e-05, 6.52284e-05, 5.62738e-05, 4.92572e-05, 4.35418e-05, 3.87574e-05, 3.46734e-05, 3.11368e-05, 2.80398e-05, 2.53056e-05, 2.28758e-05, 2.07062e-05, 1.87608e-05, 
			0.000212204, 0.00013186, 9.97552e-05, 8.1203e-05, 6.86062e-05, 5.9245e-05, 5.18858e-05, 4.58778e-05, 4.08414e-05, 3.65388e-05, 3.28098e-05, 2.95442e-05, 2.66602e-05, 2.4098e-05, 2.18084e-05, 1.97563e-05, 
			0.000216218, 0.000135643, 0.000103076, 8.41078e-05, 7.11554e-05, 6.1497e-05, 5.38834e-05, 4.76548e-05, 4.24274e-05, 3.79576e-05, 3.40822e-05, 3.06874e-05, 2.7689e-05, 2.5024e-05, 2.26442e-05, 2.05116e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.34488e-05, 1.64132e-05, 1.87794e-05, 2.07673e-05, 2.24993e-05, 2.4047e-05, 2.54554e-05, 2.67528e-05, 2.79583e-05, 2.90858e-05, 3.01447e-05, 3.11424e-05, 3.20846e-05, 3.29759e-05, 3.38201e-05, 3.462e-05, 
			1.5612e-05, 1.82476e-05, 2.04986e-05, 2.24692e-05, 2.42347e-05, 2.58423e-05, 2.7324e-05, 2.87017e-05, 2.9991e-05, 3.12033e-05, 3.23466e-05, 3.34276e-05, 3.44512e-05, 3.54216e-05, 3.63424e-05, 3.72167e-05, 
			1.7603e-05, 2.0052e-05, 2.22254e-05, 2.41798e-05, 2.59615e-05, 2.76049e-05, 2.91338e-05, 3.05652e-05, 3.19117e-05, 3.31825e-05, 3.43849e-05, 3.55242e-05, 3.66056e-05, 3.76322e-05, 3.86077e-05, 3.95345e-05, 
			1.9511e-05, 2.18494e-05, 2.39702e-05, 2.5912e-05, 2.77048e-05, 2.93736e-05, 3.09366e-05, 3.24076e-05, 3.37965e-05, 3.51115e-05, 3.63583e-05, 3.75422e-05, 3.86672e-05, 3.97366e-05, 4.07536e-05, 4.17212e-05, 
			2.1393e-05, 2.3649e-05, 2.57332e-05, 2.76648e-05, 2.94656e-05, 3.11538e-05, 3.27422e-05, 3.42434e-05, 3.56649e-05, 3.70137e-05, 3.82951e-05, 3.95132e-05, 4.06721e-05, 4.17748e-05, 4.28242e-05, 4.38231e-05
		)
}

CapTable	"metal5_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000185578, 0.000111423, 8.39016e-05, 6.8864e-05, 5.90874e-05, 5.20638e-05, 4.6683e-05, 4.23744e-05, 3.88122e-05, 3.57954e-05, 3.31934e-05, 3.09164e-05, 2.89008e-05, 2.71e-05, 2.54786e-05, 2.401e-05, 
			0.000200718, 0.000123406, 9.38894e-05, 7.74894e-05, 6.66914e-05, 5.88728e-05, 5.28516e-05, 4.80132e-05, 4.40036e-05, 4.06028e-05, 3.76668e-05, 3.50962e-05, 3.28202e-05, 3.07866e-05, 2.8956e-05, 2.72978e-05, 
			0.00021031, 0.000131587, 0.000100965, 8.37172e-05, 7.2274e-05, 6.3928e-05, 5.7471e-05, 5.22652e-05, 4.79406e-05, 4.42668e-05, 4.1091e-05, 3.83084e-05, 3.5843e-05, 3.36396e-05, 3.16556e-05, 2.98586e-05, 
			0.000217296, 0.000137769, 0.00010644, 8.8619e-05, 7.67052e-05, 6.79758e-05, 6.11954e-05, 5.57128e-05, 5.11488e-05, 4.7265e-05, 4.39042e-05, 4.09566e-05, 3.83436e-05, 3.60074e-05, 3.39032e-05, 3.19966e-05, 
			0.000222288, 0.000142552, 0.000110785, 9.25682e-05, 8.03154e-05, 7.13022e-05, 6.42776e-05, 5.8581e-05, 5.383e-05, 4.97816e-05, 4.62742e-05, 4.3196e-05, 4.04656e-05, 3.80232e-05, 3.58228e-05, 3.38286e-05
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
			7.01524e-06, 8.748e-06, 1.01916e-05, 1.14475e-05, 1.25738e-05, 1.36034e-05, 1.45527e-05, 1.54288e-05, 1.62489e-05, 1.70164e-05, 1.77337e-05, 1.84041e-05, 1.90299e-05, 1.96134e-05, 2.0158e-05, 2.06636e-05, 
			8.4141e-06, 1.00262e-05, 1.14559e-05, 1.27493e-05, 1.39372e-05, 1.50367e-05, 1.60619e-05, 1.70225e-05, 1.79232e-05, 1.87673e-05, 1.95587e-05, 2.03008e-05, 2.09944e-05, 2.16429e-05, 2.22467e-05, 2.28097e-05, 
			9.7704e-06, 1.13309e-05, 1.27669e-05, 1.40927e-05, 1.53215e-05, 1.64738e-05, 1.75578e-05, 1.85764e-05, 1.95348e-05, 2.04358e-05, 2.12814e-05, 2.20754e-05, 2.2818e-05, 2.35121e-05, 2.41604e-05, 2.47639e-05, 
			1.11314e-05, 1.26769e-05, 1.41203e-05, 1.54722e-05, 1.67446e-05, 1.79421e-05, 1.90712e-05, 2.01359e-05, 2.11397e-05, 2.20849e-05, 2.29732e-05, 2.38063e-05, 2.4587e-05, 2.5318e-05, 2.59978e-05, 2.66326e-05, 
			1.25275e-05, 1.40621e-05, 1.55201e-05, 1.69011e-05, 1.82057e-05, 1.94393e-05, 2.06058e-05, 2.17082e-05, 2.27486e-05, 2.37285e-05, 2.46496e-05, 2.55149e-05, 2.6325e-05, 2.70819e-05, 2.77894e-05, 2.84494e-05
		)
}

CapTable	"metal5_C_TOP_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.47456e-06, 1.17506e-05, 1.36462e-05, 1.52998e-05, 1.67826e-05, 1.81363e-05, 1.9389e-05, 2.05607e-05, 2.16519e-05, 2.26709e-05, 2.36244e-05, 2.45161e-05, 2.5349e-05, 2.61262e-05, 2.68496e-05, 2.75234e-05, 
			1.13427e-05, 1.34724e-05, 1.53589e-05, 1.70659e-05, 1.86332e-05, 2.00904e-05, 2.14524e-05, 2.27282e-05, 2.39251e-05, 2.50495e-05, 2.61041e-05, 2.70919e-05, 2.8016e-05, 2.88793e-05, 2.96855e-05, 3.04361e-05, 
			1.31596e-05, 1.52259e-05, 1.71165e-05, 1.88659e-05, 2.05031e-05, 2.20352e-05, 2.3474e-05, 2.48288e-05, 2.61045e-05, 2.73044e-05, 2.84316e-05, 2.94886e-05, 3.04792e-05, 3.14057e-05, 3.22694e-05, 3.30752e-05, 
			1.49836e-05, 1.70311e-05, 1.89425e-05, 2.07358e-05, 2.24222e-05, 2.40119e-05, 2.55136e-05, 2.69311e-05, 2.82679e-05, 2.95262e-05, 3.07103e-05, 3.18214e-05, 3.28628e-05, 3.38351e-05, 3.47472e-05, 3.55953e-05, 
			1.68455e-05, 1.88923e-05, 2.08281e-05, 2.26571e-05, 2.43889e-05, 2.60287e-05, 2.75808e-05, 2.90477e-05, 3.04329e-05, 3.17389e-05, 3.29682e-05, 3.41212e-05, 3.52029e-05, 3.62158e-05, 3.71603e-05, 3.8039e-05
		)
}

CapTable	"metal5_C_LATERAL_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000186176, 0.000112184, 8.4806e-05, 6.98942e-05, 6.023e-05, 5.33062e-05, 4.80142e-05, 4.37842e-05, 4.0291e-05, 3.73344e-05, 3.4784e-05, 3.25508e-05, 3.05718e-05, 2.88008e-05, 2.7203e-05, 2.5752e-05, 
			0.0002015, 0.000124351, 9.49794e-05, 7.87096e-05, 6.8028e-05, 6.03134e-05, 5.43844e-05, 4.96274e-05, 4.5689e-05, 4.235e-05, 3.9467e-05, 3.6941e-05, 3.47018e-05, 3.26978e-05, 3.089e-05, 2.92486e-05, 
			0.000211276, 0.000132714, 0.000102237, 8.51204e-05, 7.37942e-05, 6.55526e-05, 5.91878e-05, 5.40632e-05, 4.98094e-05, 4.61964e-05, 4.30726e-05, 4.0333e-05, 3.79028e-05, 3.57272e-05, 3.3764e-05, 3.19814e-05, 
			0.000218446, 0.000139076, 0.000107891, 9.02e-05, 7.84018e-05, 6.97748e-05, 6.30848e-05, 5.76814e-05, 5.31858e-05, 4.93606e-05, 4.60488e-05, 4.31418e-05, 4.05614e-05, 3.82498e-05, 3.61636e-05, 3.42686e-05, 
			0.000223618, 0.000144038, 0.000112411, 9.43208e-05, 8.21804e-05, 7.32662e-05, 6.63288e-05, 6.07082e-05, 5.60222e-05, 5.20288e-05, 4.85672e-05, 4.5526e-05, 4.28246e-05, 4.04036e-05, 3.82176e-05, 3.62314e-05
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

CapTable	"metal5_C_TOP_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.80113e-06, 1.21236e-05, 1.40461e-05, 1.57136e-05, 1.7206e-05, 1.85684e-05, 1.9827e-05, 2.09985e-05, 2.2096e-05, 2.3124e-05, 2.40889e-05, 2.49937e-05, 2.58436e-05, 2.66396e-05, 2.73856e-05, 2.80825e-05, 
			1.16802e-05, 1.38384e-05, 1.57389e-05, 1.74527e-05, 1.90246e-05, 2.04823e-05, 2.18443e-05, 2.31229e-05, 2.43257e-05, 2.5457e-05, 2.65222e-05, 2.7525e-05, 2.84675e-05, 2.93514e-05, 3.01795e-05, 3.09562e-05, 
			1.34946e-05, 1.55767e-05, 1.74765e-05, 1.9228e-05, 2.08577e-05, 2.23871e-05, 2.38255e-05, 2.51814e-05, 2.64605e-05, 2.76686e-05, 2.88073e-05, 2.98804e-05, 3.08895e-05, 3.18379e-05, 3.27262e-05, 3.35589e-05, 
			1.53044e-05, 1.73604e-05, 1.92704e-05, 2.10579e-05, 2.27389e-05, 2.43248e-05, 2.58228e-05, 2.72403e-05, 2.85814e-05, 2.98492e-05, 3.10455e-05, 3.21717e-05, 3.32336e-05, 3.42306e-05, 3.51672e-05, 3.60441e-05, 
			1.71524e-05, 1.91928e-05, 2.11216e-05, 2.29437e-05, 2.46673e-05, 2.62994e-05, 2.78481e-05, 2.93157e-05, 3.07062e-05, 3.20207e-05, 3.3263e-05, 3.44332e-05, 3.55355e-05, 3.65727e-05, 3.7545e-05, 3.84565e-05
		)
}

CapTable	"metal5_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183515, 0.000108757, 8.06892e-05, 6.51456e-05, 5.48966e-05, 4.74314e-05, 4.16396e-05, 3.69508e-05, 3.30392e-05, 2.97046e-05, 2.68156e-05, 2.42832e-05, 2.20422e-05, 2.00446e-05, 1.82549e-05, 1.66439e-05, 
			0.000197949, 0.000120008, 8.99012e-05, 7.29452e-05, 6.16234e-05, 5.33138e-05, 4.6835e-05, 4.15732e-05, 3.71752e-05, 3.3422e-05, 3.01682e-05, 2.7315e-05, 2.47902e-05, 2.254e-05, 2.05242e-05, 1.87106e-05, 
			0.000206804, 0.000127422, 9.61728e-05, 7.83312e-05, 6.63274e-05, 5.74554e-05, 5.05092e-05, 4.48518e-05, 4.0115e-05, 3.60672e-05, 3.25558e-05, 2.94754e-05, 2.67484e-05, 2.4319e-05, 2.21422e-05, 2.01834e-05, 
			0.000213012, 0.000132797, 0.00010081, 8.23656e-05, 6.98632e-05, 6.05834e-05, 5.3293e-05, 4.7341e-05, 4.2349e-05, 3.80792e-05, 3.43724e-05, 3.11194e-05, 2.82398e-05, 2.5673e-05, 2.3374e-05, 2.13048e-05, 
			0.000217182, 0.000136737, 0.000104289, 8.54258e-05, 7.2565e-05, 6.29856e-05, 5.54374e-05, 4.92608e-05, 4.4074e-05, 3.9633e-05, 3.57766e-05, 3.23904e-05, 2.93918e-05, 2.67198e-05, 2.43252e-05, 2.21708e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.27004e-05, 1.54226e-05, 1.7568e-05, 1.93544e-05, 2.0899e-05, 2.22727e-05, 2.35187e-05, 2.46647e-05, 2.57296e-05, 2.67266e-05, 2.76652e-05, 2.85522e-05, 2.93929e-05, 3.01915e-05, 3.09516e-05, 3.16756e-05, 
			1.4618e-05, 1.70072e-05, 1.90256e-05, 2.07795e-05, 2.23413e-05, 2.37575e-05, 2.50601e-05, 2.62704e-05, 2.74037e-05, 2.84711e-05, 2.94803e-05, 3.04377e-05, 3.13479e-05, 3.22148e-05, 3.30415e-05, 3.38305e-05, 
			1.6356e-05, 1.85514e-05, 2.04822e-05, 2.22076e-05, 2.37725e-05, 2.52122e-05, 2.655e-05, 2.78025e-05, 2.89821e-05, 3.00979e-05, 3.11565e-05, 3.21637e-05, 3.31235e-05, 3.4039e-05, 3.49136e-05, 3.57491e-05, 
			1.7999e-05, 2.00757e-05, 2.19456e-05, 2.3647e-05, 2.52142e-05, 2.66693e-05, 2.80321e-05, 2.93155e-05, 3.05294e-05, 3.16818e-05, 3.27784e-05, 3.38235e-05, 3.48211e-05, 3.57744e-05, 3.66857e-05, 3.75575e-05, 
			1.9607e-05, 2.1591e-05, 2.34168e-05, 2.51012e-05, 2.66676e-05, 2.81348e-05, 2.95159e-05, 3.08228e-05, 3.20635e-05, 3.32443e-05, 3.43702e-05, 3.54452e-05, 3.64727e-05, 3.74554e-05, 3.83958e-05, 3.92962e-05
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
			6.23107e-06, 7.7438e-06, 8.9967e-06, 1.00826e-05, 1.1052e-05, 1.19349e-05, 1.27504e-05, 1.35094e-05, 1.42175e-05, 1.48817e-05, 1.55052e-05, 1.609e-05, 1.66377e-05, 1.71522e-05, 1.76327e-05, 1.80834e-05, 
			7.4306e-06, 8.8258e-06, 1.00599e-05, 1.11701e-05, 1.21873e-05, 1.31301e-05, 1.40103e-05, 1.48353e-05, 1.56106e-05, 1.63407e-05, 1.70282e-05, 1.76737e-05, 1.82802e-05, 1.88509e-05, 1.93863e-05, 1.98859e-05, 
			8.5824e-06, 9.9243e-06, 1.11527e-05, 1.22848e-05, 1.33389e-05, 1.43244e-05, 1.52518e-05, 1.61265e-05, 1.69515e-05, 1.77291e-05, 1.84632e-05, 1.91536e-05, 1.98045e-05, 2.04147e-05, 2.09889e-05, 2.15266e-05, 
			9.7306e-06, 1.1051e-05, 1.22832e-05, 1.34375e-05, 1.45209e-05, 1.55428e-05, 1.65084e-05, 1.74219e-05, 1.82852e-05, 1.91003e-05, 1.98712e-05, 2.05987e-05, 2.12816e-05, 2.19252e-05, 2.25275e-05, 2.30936e-05, 
			1.08986e-05, 1.2209e-05, 1.34498e-05, 1.46225e-05, 1.57337e-05, 1.6786e-05, 1.77825e-05, 1.87276e-05, 1.96217e-05, 2.0469e-05, 2.1268e-05, 2.20232e-05, 2.27344e-05, 2.34014e-05, 2.40292e-05, 2.46174e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.2108e-05, 1.46452e-05, 1.66266e-05, 1.82615e-05, 1.96663e-05, 2.0909e-05, 2.2032e-05, 2.30621e-05, 2.40178e-05, 2.49119e-05, 2.57539e-05, 2.655e-05, 2.73059e-05, 2.80257e-05, 2.87125e-05, 2.93688e-05, 
			1.3846e-05, 1.6049e-05, 1.78958e-05, 1.94889e-05, 2.08989e-05, 2.21719e-05, 2.33387e-05, 2.44205e-05, 2.54325e-05, 2.63851e-05, 2.72863e-05, 2.81424e-05, 2.89577e-05, 2.9736e-05, 3.04805e-05, 3.11933e-05, 
			1.54e-05, 1.74066e-05, 1.91596e-05, 2.07146e-05, 2.21189e-05, 2.34057e-05, 2.45983e-05, 2.57128e-05, 2.67619e-05, 2.77543e-05, 2.8697e-05, 2.95949e-05, 3.04526e-05, 3.12732e-05, 3.20591e-05, 3.2813e-05, 
			1.6853e-05, 1.8737e-05, 2.04208e-05, 2.1946e-05, 2.33438e-05, 2.46386e-05, 2.58481e-05, 2.69862e-05, 2.80626e-05, 2.9085e-05, 3.0059e-05, 3.09893e-05, 3.18795e-05, 3.27325e-05, 3.35511e-05, 3.43369e-05, 
			1.8262e-05, 2.00494e-05, 2.16834e-05, 2.3185e-05, 2.45764e-05, 2.58754e-05, 2.70977e-05, 2.82533e-05, 2.93509e-05, 3.03964e-05, 3.13951e-05, 3.2351e-05, 3.32669e-05, 3.4146e-05, 3.49903e-05, 3.58017e-05
		)
}

CapTable	"metal5_C_LATERAL_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00018665, 0.000112785, 8.55154e-05, 7.07006e-05, 6.11238e-05, 5.42796e-05, 4.906e-05, 4.4896e-05, 4.14626e-05, 3.85602e-05, 3.60584e-05, 3.38688e-05, 3.19282e-05, 3.01906e-05, 2.86216e-05, 2.7195e-05, 
			0.000202112, 0.000125087, 9.58272e-05, 7.96584e-05, 6.9069e-05, 6.14384e-05, 5.55864e-05, 5.08996e-05, 4.70246e-05, 4.37432e-05, 4.09116e-05, 3.84312e-05, 3.62322e-05, 3.42632e-05, 3.24852e-05, 3.08688e-05, 
			0.000212024, 0.000133585, 0.000103221, 8.62084e-05, 7.49768e-05, 6.68216e-05, 6.05358e-05, 5.54832e-05, 5.12944e-05, 4.774e-05, 4.46682e-05, 4.19748e-05, 3.95848e-05, 3.74436e-05, 3.55098e-05, 3.37512e-05, 
			0.000219332, 0.000140085, 0.000109013, 9.1426e-05, 7.97232e-05, 7.11834e-05, 6.45732e-05, 5.9242e-05, 5.48114e-05, 5.10444e-05, 4.77842e-05, 4.49224e-05, 4.2381e-05, 4.01028e-05, 3.8044e-05, 3.61714e-05, 
			0.000224642, 0.000145184, 0.00011367, 9.5683e-05, 8.36376e-05, 7.48106e-05, 6.7952e-05, 6.24028e-05, 5.77806e-05, 5.38442e-05, 5.04326e-05, 4.74346e-05, 4.47704e-05, 4.23804e-05, 4.02198e-05, 3.82538e-05
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

CapTable	"metal5_C_BOTTOM_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.6191e-06, 6.9685e-06, 8.0808e-06, 9.0422e-06, 9.8978e-06, 1.06767e-05, 1.13946e-05, 1.20614e-05, 1.26887e-05, 1.32744e-05, 1.38255e-05, 1.43438e-05, 1.48323e-05, 1.52902e-05, 1.57213e-05, 1.61249e-05, 
			6.6756e-06, 7.9134e-06, 9.0024e-06, 9.981e-06, 1.08756e-05, 1.17042e-05, 1.2478e-05, 1.32032e-05, 1.38854e-05, 1.45292e-05, 1.51362e-05, 1.57082e-05, 1.62484e-05, 1.67558e-05, 1.72345e-05, 1.76827e-05, 
			7.6847e-06, 8.8684e-06, 9.9492e-06, 1.0943e-05, 1.18655e-05, 1.27318e-05, 1.35446e-05, 1.43115e-05, 1.50364e-05, 1.57225e-05, 1.637e-05, 1.69826e-05, 1.75594e-05, 1.81047e-05, 1.86169e-05, 1.90999e-05, 
			8.681e-06, 9.8427e-06, 1.09235e-05, 1.19343e-05, 1.28827e-05, 1.37756e-05, 1.46217e-05, 1.54228e-05, 1.61809e-05, 1.69001e-05, 1.75795e-05, 1.82236e-05, 1.88302e-05, 1.94045e-05, 1.99452e-05, 2.04525e-05, 
			9.6955e-06, 1.08404e-05, 1.19285e-05, 1.29526e-05, 1.3922e-05, 1.48415e-05, 1.57142e-05, 1.65426e-05, 1.7329e-05, 1.80736e-05, 1.87807e-05, 1.94483e-05, 2.00809e-05, 2.06758e-05, 2.12391e-05, 2.1769e-05
		)
}

CapTable	"metal5_C_TOP_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.01027e-05, 1.24741e-05, 1.44278e-05, 1.61169e-05, 1.76245e-05, 1.8998e-05, 2.02668e-05, 2.14493e-05, 2.25527e-05, 2.35912e-05, 2.45671e-05, 2.54842e-05, 2.63465e-05, 2.7158e-05, 2.79197e-05, 2.86351e-05, 
			1.2002e-05, 1.4194e-05, 1.6119e-05, 1.7848e-05, 1.94307e-05, 2.08967e-05, 2.22653e-05, 2.35507e-05, 2.47615e-05, 2.59022e-05, 2.69775e-05, 2.79922e-05, 2.89479e-05, 2.98486e-05, 3.06949e-05, 3.14909e-05, 
			1.38253e-05, 1.5932e-05, 1.78474e-05, 1.96104e-05, 2.12495e-05, 2.27813e-05, 2.42254e-05, 2.55877e-05, 2.68741e-05, 2.80897e-05, 2.92393e-05, 3.03245e-05, 3.13494e-05, 3.23139e-05, 3.32225e-05, 3.40764e-05, 
			1.5639e-05, 1.77106e-05, 1.96317e-05, 2.14245e-05, 2.31095e-05, 2.46996e-05, 2.62022e-05, 2.76238e-05, 2.89713e-05, 3.02467e-05, 3.14548e-05, 3.25951e-05, 3.36726e-05, 3.46881e-05, 3.56446e-05, 3.6545e-05, 
			1.74815e-05, 1.9535e-05, 2.14669e-05, 2.32922e-05, 2.50188e-05, 2.66529e-05, 2.82034e-05, 2.96756e-05, 3.1072e-05, 3.23967e-05, 3.36496e-05, 3.48352e-05, 3.59548e-05, 3.7012e-05, 3.80057e-05, 3.89416e-05
		)
}

CapTable	"metal5_C_LATERAL_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183762, 0.000109082, 8.10864e-05, 6.56082e-05, 5.54192e-05, 4.80082e-05, 4.2265e-05, 3.7619e-05, 3.37442e-05, 3.04406e-05, 2.7577e-05, 2.50644e-05, 2.28374e-05, 2.08496e-05, 1.90644e-05, 1.74544e-05, 
			0.000198289, 0.000120431, 9.04006e-05, 7.3516e-05, 6.22598e-05, 5.40092e-05, 4.7583e-05, 4.23674e-05, 3.80086e-05, 3.42876e-05, 3.10606e-05, 2.82274e-05, 2.57162e-05, 2.3475e-05, 2.14624e-05, 1.9648e-05, 
			0.000207242, 0.000127947, 9.67784e-05, 7.90116e-05, 6.7076e-05, 5.82658e-05, 5.13738e-05, 4.57636e-05, 4.10664e-05, 3.7051e-05, 3.35654e-05, 3.05032e-05, 2.77892e-05, 2.53658e-05, 2.31906e-05, 2.1228e-05, 
			0.000213554, 0.000133428, 0.000101525, 8.31572e-05, 7.07248e-05, 6.15072e-05, 5.42704e-05, 4.83654e-05, 4.34124e-05, 3.91732e-05, 3.54904e-05, 3.22538e-05, 2.93846e-05, 2.68214e-05, 2.452e-05, 2.24448e-05, 
			0.000217832, 0.000137478, 0.000105114, 8.63282e-05, 7.35372e-05, 6.40196e-05, 5.65244e-05, 5.0393e-05, 4.52424e-05, 4.08304e-05, 3.69946e-05, 3.36228e-05, 3.0631e-05, 2.796e-05, 2.55606e-05, 2.33958e-05
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

CapTable	"metal4_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000166985, 8.80946e-05, 5.79374e-05, 4.15014e-05, 3.11388e-05, 2.40766e-05, 1.90264e-05, 1.5294e-05, 1.24666e-05, 1.02825e-05, 8.56754e-06, 7.20184e-06, 6.10086e-06, 5.20344e-06, 4.46464e-06, 3.85106e-06, 
			0.000173551, 9.3011e-05, 6.18738e-05, 4.47958e-05, 3.39386e-05, 2.6482e-05, 2.1107e-05, 1.71015e-05, 1.40424e-05, 1.16602e-05, 9.77504e-06, 8.26264e-06, 7.0348e-06, 6.02732e-06, 5.19292e-06, 4.49606e-06, 
			0.000176751, 9.59306e-05, 6.4434e-05, 4.70336e-05, 3.59214e-05, 2.82326e-05, 2.26542e-05, 1.84699e-05, 1.52534e-05, 1.27327e-05, 1.07258e-05, 9.10612e-06, 7.78388e-06, 6.69344e-06, 5.78592e-06, 5.02436e-06, 
			0.000178837, 9.80168e-05, 6.63572e-05, 4.87728e-05, 3.74784e-05, 2.96306e-05, 2.39062e-05, 1.95897e-05, 1.62538e-05, 1.36261e-05, 1.15235e-05, 9.81862e-06, 8.42066e-06, 7.26254e-06, 6.29508e-06, 5.48032e-06, 
			0.000179998, 9.95578e-05, 6.78572e-05, 5.0164e-05, 3.87462e-05, 3.07854e-05, 2.49526e-05, 2.05318e-05, 1.71006e-05, 1.43864e-05, 1.22059e-05, 1.04311e-05, 8.96998e-06, 7.75586e-06, 6.73806e-06, 5.8788e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.87756e-05, 3.7806e-05, 4.48226e-05, 5.02092e-05, 5.4344e-05, 5.7541e-05, 6.0038e-05, 6.20127e-05, 6.35963e-05, 6.48858e-05, 6.59528e-05, 6.68502e-05, 6.7618e-05, 6.82857e-05, 6.88754e-05, 6.94041e-05, 
			3.92232e-05, 4.76934e-05, 5.43378e-05, 5.9492e-05, 6.34996e-05, 6.66384e-05, 6.91224e-05, 7.11148e-05, 7.27364e-05, 7.40772e-05, 7.52054e-05, 7.61692e-05, 7.70072e-05, 7.77482e-05, 7.84128e-05, 7.90172e-05, 
			4.90116e-05, 5.69078e-05, 6.31568e-05, 6.80546e-05, 7.18992e-05, 7.49462e-05, 7.73868e-05, 7.93696e-05, 8.10052e-05, 8.23764e-05, 8.35454e-05, 8.45604e-05, 8.5456e-05, 8.62584e-05, 8.6988e-05, 8.76602e-05, 
			5.80986e-05, 6.5504e-05, 7.13972e-05, 7.60554e-05, 7.97486e-05, 8.27022e-05, 8.50946e-05, 8.70604e-05, 8.87028e-05, 9.00978e-05, 9.13046e-05, 9.23654e-05, 9.33132e-05, 9.41732e-05, 9.49644e-05, 9.5701e-05, 
			6.65652e-05, 7.35124e-05, 7.90898e-05, 8.3533e-05, 8.70882e-05, 8.99562e-05, 9.23032e-05, 9.42554e-05, 9.59048e-05, 9.73238e-05, 9.85648e-05, 9.967e-05, 0.000100669, 0.000101586, 0.000102437, 0.000103238
		)
}

CapTable	"metal4_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000170958, 9.3831e-05, 6.52444e-05, 5.01398e-05, 4.08688e-05, 3.46798e-05, 3.03144e-05, 2.71078e-05, 2.46744e-05, 2.27754e-05, 2.12558e-05, 2.00118e-05, 1.8971e-05, 1.80828e-05, 1.73108e-05, 1.66284e-05, 
			0.000180331, 0.000101887, 7.25842e-05, 5.7046e-05, 4.74454e-05, 4.09906e-05, 3.63976e-05, 3.29892e-05, 3.03726e-05, 2.83048e-05, 2.66276e-05, 2.52348e-05, 2.40528e-05, 2.30298e-05, 2.21282e-05, 2.13208e-05, 
			0.000186859, 0.0001084, 7.89452e-05, 6.32454e-05, 5.35108e-05, 4.69148e-05, 4.21832e-05, 3.86384e-05, 3.58878e-05, 3.36886e-05, 3.18826e-05, 3.03636e-05, 2.9058e-05, 2.79136e-05, 2.6893e-05, 2.59688e-05, 
			0.000192716, 0.00011448, 8.50308e-05, 6.92736e-05, 5.94494e-05, 5.27578e-05, 4.79204e-05, 4.42636e-05, 4.13972e-05, 3.90802e-05, 3.71554e-05, 3.55176e-05, 3.40938e-05, 3.28318e-05, 3.16946e-05, 3.0655e-05, 
			0.000198017, 0.000120337, 9.09792e-05, 7.5208e-05, 6.53258e-05, 5.85598e-05, 5.36318e-05, 4.98716e-05, 4.68962e-05, 4.44662e-05, 4.24262e-05, 4.0672e-05, 3.9131e-05, 3.77522e-05, 3.64986e-05, 3.53434e-05
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
			2.93592e-05, 3.94378e-05, 4.75032e-05, 5.38349e-05, 5.87825e-05, 6.26504e-05, 6.56863e-05, 6.80829e-05, 6.99875e-05, 7.15128e-05, 7.2743e-05, 7.37437e-05, 7.45636e-05, 7.52409e-05, 7.58049e-05, 7.62764e-05, 
			4.20726e-05, 5.21744e-05, 6.03128e-05, 6.67558e-05, 7.18414e-05, 7.58592e-05, 7.90443e-05, 8.15832e-05, 8.36197e-05, 8.52644e-05, 8.66031e-05, 8.77016e-05, 8.8608e-05, 8.93623e-05, 8.99949e-05, 9.05268e-05, 
			5.49389e-05, 6.49606e-05, 7.30795e-05, 7.95597e-05, 8.47078e-05, 8.88082e-05, 9.20848e-05, 9.47156e-05, 9.68404e-05, 9.85702e-05, 9.9986e-05, 0.000101155, 0.000102126, 0.00010294, 0.000103623, 0.000104202, 
			6.78135e-05, 7.77746e-05, 8.58685e-05, 9.23645e-05, 9.75582e-05, 0.000101716, 0.000105057, 0.000107756, 0.000109949, 0.000111743, 0.000113219, 0.000114446, 0.000115469, 0.000116328, 0.000117054, 0.000117673, 
			8.06792e-05, 9.05488e-05, 9.86128e-05, 0.000105113, 0.000110338, 0.000114537, 0.000117927, 0.00012068, 0.000122929, 0.000124775, 0.000126304, 0.000127576, 0.000128642, 0.000129539, 0.000130302, 0.000130952
		)
}

CapTable	"metal4_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.50214e-06, 6.0726e-06, 7.45636e-06, 8.62975e-06, 9.59622e-06, 1.03807e-05, 1.10136e-05, 1.15231e-05, 1.19343e-05, 1.2267e-05, 1.25386e-05, 1.27612e-05, 1.29451e-05, 1.30979e-05, 1.32252e-05, 1.33332e-05, 
			6.07682e-06, 7.64657e-06, 9.05137e-06, 1.02584e-05, 1.1265e-05, 1.20918e-05, 1.27657e-05, 1.33143e-05, 1.37619e-05, 1.41284e-05, 1.44299e-05, 1.46788e-05, 1.48862e-05, 1.50604e-05, 1.52052e-05, 1.53291e-05, 
			7.66247e-06, 9.22577e-06, 1.06395e-05, 1.18637e-05, 1.28928e-05, 1.37452e-05, 1.4446e-05, 1.50215e-05, 1.54942e-05, 1.58841e-05, 1.62072e-05, 1.64757e-05, 1.67014e-05, 1.68889e-05, 1.70496e-05, 1.71858e-05, 
			9.2473e-06, 1.08076e-05, 1.22263e-05, 1.34617e-05, 1.45074e-05, 1.53787e-05, 1.60999e-05, 1.66955e-05, 1.71873e-05, 1.75955e-05, 1.79361e-05, 1.82191e-05, 1.84584e-05, 1.86602e-05, 1.88328e-05, 1.89791e-05, 
			1.0834e-05, 1.23884e-05, 1.3811e-05, 1.50558e-05, 1.61142e-05, 1.69997e-05, 1.77364e-05, 1.83481e-05, 1.88556e-05, 1.92785e-05, 1.96306e-05, 1.99283e-05, 2.01792e-05, 2.03927e-05, 2.05739e-05, 2.07296e-05
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

CapTable	"metal4_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179912, 0.000104169, 7.58748e-05, 6.04232e-05, 5.0462e-05, 4.34224e-05, 3.8156e-05, 3.40624e-05, 3.07924e-05, 2.81256e-05, 2.5915e-05, 2.4058e-05, 2.248e-05, 2.11256e-05, 1.99529e-05, 1.89292e-05, 
			0.000191225, 0.000112991, 8.31726e-05, 6.67372e-05, 5.60746e-05, 4.8517e-05, 4.2852e-05, 3.84416e-05, 3.49126e-05, 3.20294e-05, 2.96346e-05, 2.76178e-05, 2.58998e-05, 2.44212e-05, 2.3137e-05, 2.20124e-05, 
			0.000197997, 0.000118878, 8.83452e-05, 7.13854e-05, 6.03516e-05, 5.25024e-05, 4.6606e-05, 4.20062e-05, 3.8318e-05, 3.52982e-05, 3.2784e-05, 3.06612e-05, 2.8848e-05, 2.72828e-05, 2.59194e-05, 2.47218e-05, 
			0.000202854, 0.000123375, 9.24762e-05, 7.52244e-05, 6.39584e-05, 5.59292e-05, 4.98844e-05, 4.5159e-05, 4.13618e-05, 3.82458e-05, 3.5645e-05, 3.34438e-05, 3.15582e-05, 2.99262e-05, 2.85004e-05, 2.7244e-05, 
			0.0002063, 0.000126992, 9.59438e-05, 7.85368e-05, 6.71352e-05, 5.89954e-05, 5.2854e-05, 4.8041e-05, 4.41656e-05, 4.0978e-05, 3.83112e-05, 3.60486e-05, 3.41054e-05, 3.24188e-05, 3.09414e-05, 2.96358e-05
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

CapTable	"metal4_C_TOP_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.4293e-06, 7.02822e-06, 8.4417e-06, 9.70772e-06, 1.0847e-05, 1.18706e-05, 1.27888e-05, 1.36106e-05, 1.43443e-05, 1.49975e-05, 1.55784e-05, 1.60942e-05, 1.65509e-05, 1.6957e-05, 1.73173e-05, 1.76363e-05, 
			6.86459e-06, 8.4336e-06, 9.87251e-06, 1.1186e-05, 1.23817e-05, 1.34648e-05, 1.44423e-05, 1.53213e-05, 1.61091e-05, 1.68135e-05, 1.74418e-05, 1.80018e-05, 1.85004e-05, 1.89444e-05, 1.93389e-05, 1.96903e-05, 
			8.33321e-06, 9.89358e-06, 1.13479e-05, 1.26904e-05, 1.39201e-05, 1.50404e-05, 1.60555e-05, 1.69712e-05, 1.77947e-05, 1.85325e-05, 1.91936e-05, 1.97846e-05, 2.03117e-05, 2.07824e-05, 2.12011e-05, 2.15752e-05, 
			9.82815e-06, 1.13896e-05, 1.28561e-05, 1.42184e-05, 1.54722e-05, 1.66184e-05, 1.76598e-05, 1.86014e-05, 1.94507e-05, 2.02143e-05, 2.09e-05, 2.15132e-05, 2.20624e-05, 2.25525e-05, 2.29905e-05, 2.33812e-05, 
			1.13515e-05, 1.29097e-05, 1.43856e-05, 1.57626e-05, 1.70342e-05, 1.81984e-05, 1.92589e-05, 2.02213e-05, 2.10911e-05, 2.18743e-05, 2.25787e-05, 2.32095e-05, 2.37754e-05, 2.4281e-05, 2.47335e-05, 2.51394e-05
		)
}

CapTable	"metal4_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177522, 0.000100898, 7.1759e-05, 5.55054e-05, 4.4794e-05, 3.70628e-05, 3.1167e-05, 2.65076e-05, 2.27342e-05, 1.96246e-05, 1.70285e-05, 1.48393e-05, 1.29785e-05, 1.13864e-05, 1.00168e-05, 8.83298e-06, 
			0.000187745, 0.000108527, 7.77544e-05, 6.04118e-05, 4.89006e-05, 4.05608e-05, 3.41844e-05, 2.91346e-05, 2.50368e-05, 2.16536e-05, 1.88234e-05, 1.64321e-05, 1.43951e-05, 1.26489e-05, 1.11436e-05, 9.8401e-06, 
			0.000193288, 0.000113091, 8.15136e-05, 6.35624e-05, 5.16036e-05, 4.29034e-05, 3.62342e-05, 3.09408e-05, 2.6637e-05, 2.30764e-05, 2.00922e-05, 1.7566e-05, 1.541e-05, 1.35585e-05, 1.19596e-05, 1.05727e-05, 
			0.000196785, 0.000116145, 8.41248e-05, 6.58118e-05, 5.35584e-05, 4.46228e-05, 3.7757e-05, 3.22964e-05, 2.78478e-05, 2.41606e-05, 2.1065e-05, 1.84398e-05, 1.6196e-05, 1.42656e-05, 1.25965e-05, 1.11461e-05, 
			0.000198756, 0.000118216, 8.59822e-05, 6.74564e-05, 5.50162e-05, 4.59262e-05, 3.89258e-05, 3.33452e-05, 2.8791e-05, 2.50102e-05, 2.18312e-05, 1.91311e-05, 1.68202e-05, 1.48292e-05, 1.31051e-05, 1.16055e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.49264e-05, 1.89464e-05, 2.23408e-05, 2.52692e-05, 2.78197e-05, 3.00512e-05, 3.20082e-05, 3.37273e-05, 3.52394e-05, 3.65719e-05, 3.77488e-05, 3.87906e-05, 3.97158e-05, 4.05402e-05, 4.12772e-05, 4.19385e-05, 
			1.84166e-05, 2.22068e-05, 2.55344e-05, 2.84607e-05, 3.10378e-05, 3.33077e-05, 3.53083e-05, 3.70728e-05, 3.86312e-05, 4.00097e-05, 4.12319e-05, 4.23186e-05, 4.32873e-05, 4.41541e-05, 4.49324e-05, 4.56339e-05, 
			2.18338e-05, 2.54646e-05, 2.87078e-05, 3.15886e-05, 3.41402e-05, 3.63995e-05, 3.83989e-05, 4.01691e-05, 4.17384e-05, 4.31316e-05, 4.43715e-05, 4.54781e-05, 4.64685e-05, 4.73583e-05, 4.81603e-05, 4.88861e-05, 
			2.5174e-05, 2.86778e-05, 3.18278e-05, 3.46426e-05, 3.71486e-05, 3.93759e-05, 4.1354e-05, 4.31116e-05, 4.46753e-05, 4.60686e-05, 4.73131e-05, 4.84277e-05, 4.94293e-05, 5.03322e-05, 5.11492e-05, 5.18916e-05, 
			2.8442e-05, 3.18112e-05, 3.48642e-05, 3.76042e-05, 4.00538e-05, 4.22376e-05, 4.41848e-05, 4.59209e-05, 4.74704e-05, 4.88561e-05, 5.0098e-05, 5.12141e-05, 5.22206e-05, 5.31313e-05, 5.39581e-05, 5.47121e-05
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
			1.24565e-05, 1.613e-05, 1.93517e-05, 2.22234e-05, 2.4792e-05, 2.70899e-05, 2.9141e-05, 3.09668e-05, 3.25883e-05, 3.4026e-05, 3.52986e-05, 3.64241e-05, 3.74198e-05, 3.82988e-05, 3.90757e-05, 3.97632e-05, 
			1.593e-05, 1.95724e-05, 2.28831e-05, 2.58841e-05, 2.85944e-05, 3.10328e-05, 3.32182e-05, 3.51704e-05, 3.69104e-05, 3.84573e-05, 3.98311e-05, 4.10492e-05, 4.21292e-05, 4.30857e-05, 4.39339e-05, 4.46852e-05, 
			1.9513e-05, 2.31692e-05, 2.65405e-05, 2.96202e-05, 3.24136e-05, 3.49359e-05, 3.72035e-05, 3.9235e-05, 4.10496e-05, 4.26678e-05, 4.41071e-05, 4.53862e-05, 4.65232e-05, 4.75321e-05, 4.84291e-05, 4.92249e-05, 
			2.3201e-05, 2.68846e-05, 3.02961e-05, 3.34258e-05, 3.62744e-05, 3.88518e-05, 4.1175e-05, 4.3261e-05, 4.51283e-05, 4.67963e-05, 4.82827e-05, 4.96075e-05, 5.07858e-05, 5.18349e-05, 5.27676e-05, 5.35981e-05, 
			2.69827e-05, 3.06733e-05, 3.41102e-05, 3.727e-05, 4.01546e-05, 4.27704e-05, 4.51323e-05, 4.72565e-05, 4.91615e-05, 5.08665e-05, 5.23884e-05, 5.37474e-05, 5.49578e-05, 5.60376e-05, 5.69991e-05, 5.78543e-05
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

CapTable	"metal4_C_BOTTOM_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.16222e-05, 1.43954e-05, 1.66508e-05, 1.85607e-05, 2.02194e-05, 2.16855e-05, 2.29972e-05, 2.41814e-05, 2.52579e-05, 2.62425e-05, 2.71474e-05, 2.79832e-05, 2.87582e-05, 2.94797e-05, 3.01538e-05, 3.07862e-05, 
			1.37218e-05, 1.6207e-05, 1.83424e-05, 2.02095e-05, 2.18649e-05, 2.33482e-05, 2.46885e-05, 2.59079e-05, 2.70237e-05, 2.805e-05, 2.8998e-05, 2.98776e-05, 3.0697e-05, 3.14631e-05, 3.21819e-05, 3.28588e-05, 
			1.5679e-05, 1.798e-05, 2.00182e-05, 2.18358e-05, 2.34688e-05, 2.49471e-05, 2.62934e-05, 2.75264e-05, 2.86608e-05, 2.97094e-05, 3.06826e-05, 3.15897e-05, 3.2438e-05, 3.32344e-05, 3.39845e-05, 3.46933e-05, 
			1.7532e-05, 1.97084e-05, 2.16656e-05, 2.34344e-05, 2.50401e-05, 2.65045e-05, 2.78472e-05, 2.90837e-05, 3.02271e-05, 3.12891e-05, 3.22791e-05, 3.32052e-05, 3.4075e-05, 3.48945e-05, 3.56688e-05, 3.64032e-05, 
			1.9322e-05, 2.13884e-05, 2.32768e-05, 2.49998e-05, 2.65758e-05, 2.80234e-05, 2.93577e-05, 3.05928e-05, 3.17405e-05, 3.28106e-05, 3.38124e-05, 3.47531e-05, 3.56395e-05, 3.64776e-05, 3.72723e-05, 3.8028e-05
		)
}

CapTable	"metal4_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182499, 0.000107524, 7.985e-05, 6.48804e-05, 5.52744e-05, 4.84778e-05, 4.3358e-05, 3.93302e-05, 3.60592e-05, 3.33374e-05, 3.10286e-05, 2.9039e-05, 2.7302e-05, 2.57684e-05, 2.44014e-05, 2.31722e-05, 
			0.000194738, 0.00011721, 8.79436e-05, 7.19158e-05, 6.15322e-05, 5.4143e-05, 4.85538e-05, 4.41428e-05, 4.05514e-05, 3.7556e-05, 3.501e-05, 3.28116e-05, 3.08884e-05, 2.91872e-05, 2.76678e-05, 2.6299e-05, 
			0.000202356, 0.000123846, 9.37648e-05, 7.71158e-05, 6.62698e-05, 5.8506e-05, 5.26104e-05, 4.79424e-05, 4.4131e-05, 4.09442e-05, 3.82288e-05, 3.58786e-05, 3.38182e-05, 3.19916e-05, 3.03566e-05, 2.88808e-05, 
			0.000207938, 0.00012895, 9.83894e-05, 8.13446e-05, 7.01738e-05, 6.21476e-05, 5.60306e-05, 5.11724e-05, 4.71948e-05, 4.38602e-05, 4.10118e-05, 3.85412e-05, 3.637e-05, 3.4441e-05, 3.2711e-05, 3.1146e-05, 
			0.000211962, 0.000133016, 0.000102192, 8.48912e-05, 7.34962e-05, 6.52818e-05, 5.90004e-05, 5.39952e-05, 4.9886e-05, 4.6433e-05, 4.34764e-05, 4.0906e-05, 3.86424e-05, 3.6627e-05, 3.48156e-05, 3.3174e-05
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

CapTable	"metal4_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.8088e-06, 1.11721e-05, 1.31979e-05, 1.49941e-05, 1.66145e-05, 1.80922e-05, 1.94478e-05, 2.06944e-05, 2.18414e-05, 2.28942e-05, 2.38656e-05, 2.47539e-05, 2.55713e-05, 2.63226e-05, 2.70112e-05, 2.76425e-05, 
			1.08341e-05, 1.30865e-05, 1.51169e-05, 1.69686e-05, 1.86696e-05, 2.02389e-05, 2.1689e-05, 2.30307e-05, 2.42671e-05, 2.54078e-05, 2.64641e-05, 2.74318e-05, 2.83248e-05, 2.91473e-05, 2.99012e-05, 3.05942e-05, 
			1.28521e-05, 1.50605e-05, 1.71034e-05, 1.89983e-05, 2.0756e-05, 2.23894e-05, 2.39026e-05, 2.53098e-05, 2.66085e-05, 2.78119e-05, 2.89252e-05, 2.99523e-05, 3.08996e-05, 3.17703e-05, 3.25728e-05, 3.33084e-05, 
			1.48924e-05, 1.70926e-05, 1.9154e-05, 2.10836e-05, 2.28862e-05, 2.45647e-05, 2.61269e-05, 2.75843e-05, 2.89312e-05, 3.01825e-05, 3.13417e-05, 3.24114e-05, 3.33996e-05, 3.43089e-05, 3.51466e-05, 3.59158e-05, 
			1.69807e-05, 1.91764e-05, 2.12576e-05, 2.3213e-05, 2.50502e-05, 2.67642e-05, 2.83655e-05, 2.98591e-05, 3.12475e-05, 3.25363e-05, 3.37288e-05, 3.48336e-05, 3.58524e-05, 3.67922e-05, 3.76573e-05, 3.84541e-05
		)
}

CapTable	"metal4_C_TOP_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.1804e-06, 7.85548e-06, 9.29608e-06, 1.05713e-05, 1.17214e-05, 1.27686e-05, 1.37269e-05, 1.46071e-05, 1.54171e-05, 1.61657e-05, 1.68516e-05, 1.74875e-05, 1.80707e-05, 1.86056e-05, 1.90968e-05, 1.95473e-05, 
			7.58987e-06, 9.18273e-06, 1.06205e-05, 1.19295e-05, 1.31311e-05, 1.42378e-05, 1.52595e-05, 1.62028e-05, 1.70786e-05, 1.78892e-05, 1.86337e-05, 1.93266e-05, 1.99626e-05, 2.0547e-05, 2.10863e-05, 2.15807e-05, 
			8.99427e-06, 1.05495e-05, 1.19896e-05, 1.33213e-05, 1.4556e-05, 1.57024e-05, 1.67708e-05, 1.77592e-05, 1.86819e-05, 1.95354e-05, 2.03245e-05, 2.10542e-05, 2.17278e-05, 2.23503e-05, 2.2922e-05, 2.34494e-05, 
			1.04086e-05, 1.19506e-05, 1.33956e-05, 1.47466e-05, 1.60076e-05, 1.71883e-05, 1.82909e-05, 1.93134e-05, 2.02709e-05, 2.11571e-05, 2.1978e-05, 2.27395e-05, 2.34424e-05, 2.40924e-05, 2.46914e-05, 2.52436e-05, 
			1.18473e-05, 1.33782e-05, 1.48288e-05, 1.61998e-05, 1.74832e-05, 1.86916e-05, 1.98205e-05, 2.08732e-05, 2.18541e-05, 2.27666e-05, 2.36149e-05, 2.43995e-05, 2.51269e-05, 2.5799e-05, 2.64188e-05, 2.69895e-05
		)
}

CapTable	"metal4_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179773, 0.000103909, 7.54114e-05, 5.96704e-05, 4.9343e-05, 4.18752e-05, 3.61356e-05, 3.15402e-05, 2.77544e-05, 2.45704e-05, 2.18514e-05, 1.95023e-05, 1.74545e-05, 1.56567e-05, 1.40699e-05, 1.26627e-05, 
			0.000190981, 0.000112511, 8.23486e-05, 6.54736e-05, 5.42944e-05, 4.6164e-05, 3.98908e-05, 3.48546e-05, 3.06972e-05, 2.71952e-05, 2.42008e-05, 2.16108e-05, 1.93512e-05, 1.73659e-05, 1.56119e-05, 1.40555e-05, 
			0.00019749, 0.000117983, 8.6947e-05, 6.93924e-05, 5.76968e-05, 4.91426e-05, 4.25192e-05, 3.71884e-05, 3.2779e-05, 2.90592e-05, 2.58744e-05, 2.31172e-05, 2.0709e-05, 1.85915e-05, 1.67194e-05, 1.50573e-05, 
			0.000201882, 0.000121847, 9.02834e-05, 7.22878e-05, 6.02268e-05, 5.13752e-05, 4.45012e-05, 3.8956e-05, 3.43614e-05, 3.048e-05, 2.7153e-05, 2.42696e-05, 2.17494e-05, 1.9532e-05, 1.757e-05, 1.58272e-05, 
			0.000204642, 0.00012461, 9.27456e-05, 7.44602e-05, 6.21466e-05, 5.30838e-05, 4.60274e-05, 4.03218e-05, 3.55876e-05, 3.1583e-05, 2.81474e-05, 2.51674e-05, 2.25608e-05, 2.02656e-05, 1.82346e-05, 1.64289e-05
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

CapTable	"metal4_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180445, 0.000104808, 7.65124e-05, 6.095e-05, 5.07754e-05, 4.34338e-05, 3.77942e-05, 3.32734e-05, 2.95384e-05, 2.6384e-05, 2.36754e-05, 2.132e-05, 1.92518e-05, 1.7422e-05, 1.57934e-05, 1.43366e-05, 
			0.000191931, 0.000113695, 8.37418e-05, 6.70486e-05, 5.6022e-05, 4.80146e-05, 4.18352e-05, 3.68656e-05, 3.275e-05, 2.9268e-05, 2.62736e-05, 2.36672e-05, 2.13766e-05, 1.93486e-05, 1.75423e-05, 1.59265e-05, 
			0.000198729, 0.000119456, 8.86262e-05, 7.12472e-05, 5.96952e-05, 5.12532e-05, 4.47124e-05, 3.94364e-05, 3.5057e-05, 3.13448e-05, 2.81488e-05, 2.53638e-05, 2.2914e-05, 2.0744e-05, 1.88101e-05, 1.70792e-05, 
			0.000203412, 0.000123603, 9.2236e-05, 7.44036e-05, 6.24724e-05, 5.37188e-05, 4.6913e-05, 4.14088e-05, 3.6831e-05, 3.29448e-05, 2.9595e-05, 2.6673e-05, 2.41016e-05, 2.18218e-05, 1.97897e-05, 1.79698e-05, 
			0.000206456, 0.000126636, 9.49514e-05, 7.6813e-05, 6.46128e-05, 5.5632e-05, 4.86286e-05, 4.295e-05, 3.82194e-05, 3.41982e-05, 3.0729e-05, 2.77002e-05, 2.50332e-05, 2.26676e-05, 2.0558e-05, 1.86689e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.26794e-05, 1.58208e-05, 1.84238e-05, 2.06666e-05, 2.26496e-05, 2.44334e-05, 2.60571e-05, 2.75473e-05, 2.89233e-05, 3.01992e-05, 3.13862e-05, 3.24932e-05, 3.35272e-05, 3.44945e-05, 3.54001e-05, 3.62489e-05, 
			1.51496e-05, 1.80204e-05, 2.05338e-05, 2.27724e-05, 2.47955e-05, 2.66431e-05, 2.8343e-05, 2.99161e-05, 3.13783e-05, 3.2741e-05, 3.40144e-05, 3.52062e-05, 3.63229e-05, 3.73703e-05, 3.83532e-05, 3.92763e-05, 
			1.7504e-05, 2.0217e-05, 2.26674e-05, 2.4896e-05, 2.69385e-05, 2.88236e-05, 3.05721e-05, 3.22003e-05, 3.37208e-05, 3.51438e-05, 3.64777e-05, 3.77295e-05, 3.89051e-05, 4.001e-05, 4.10486e-05, 4.20251e-05, 
			1.9794e-05, 2.24141e-05, 2.48212e-05, 2.70396e-05, 2.90953e-05, 3.10068e-05, 3.27905e-05, 3.44592e-05, 3.60236e-05, 3.74922e-05, 3.88723e-05, 4.017e-05, 4.13909e-05, 4.25401e-05, 4.36219e-05, 4.46401e-05, 
			2.2066e-05, 2.46116e-05, 2.69872e-05, 2.91992e-05, 3.1264e-05, 3.3195e-05, 3.50053e-05, 3.67053e-05, 3.83036e-05, 3.98077e-05, 4.12238e-05, 4.25576e-05, 4.38142e-05, 4.49983e-05, 4.61139e-05, 4.7165e-05
		)
}

CapTable	"metal4_C_LATERAL_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181631, 0.000106385, 7.84564e-05, 6.32392e-05, 5.33894e-05, 4.63516e-05, 4.09938e-05, 3.67326e-05, 3.32342e-05, 3.02932e-05, 2.7775e-05, 2.55876e-05, 2.36658e-05, 2.19614e-05, 2.04386e-05, 1.90691e-05, 
			0.000193566, 0.000115748, 8.61942e-05, 6.98806e-05, 5.92126e-05, 5.15406e-05, 4.56728e-05, 4.09896e-05, 3.71344e-05, 3.38868e-05, 3.11014e-05, 2.86788e-05, 2.6548e-05, 2.46566e-05, 2.29654e-05, 2.14436e-05, 
			0.000200852, 0.000122021, 9.16176e-05, 7.4645e-05, 6.34762e-05, 5.53926e-05, 4.91834e-05, 4.42112e-05, 4.01076e-05, 3.66432e-05, 3.3667e-05, 3.10748e-05, 2.87922e-05, 2.67642e-05, 2.49494e-05, 2.33156e-05, 
			0.000206058, 0.000126715, 9.57958e-05, 7.83904e-05, 6.68614e-05, 5.84824e-05, 5.20222e-05, 4.68338e-05, 4.25416e-05, 3.8911e-05, 3.57872e-05, 3.30632e-05, 3.0662e-05, 2.85268e-05, 2.66146e-05, 2.4892e-05, 
			0.000209658, 0.000130322, 9.91038e-05, 8.14078e-05, 6.9623e-05, 6.1028e-05, 5.43796e-05, 4.90242e-05, 4.45848e-05, 4.08236e-05, 3.7583e-05, 3.4754e-05, 3.2258e-05, 3.00368e-05, 2.80464e-05, 2.62524e-05
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
			7.57078e-06, 9.53916e-06, 1.12076e-05, 1.26758e-05, 1.39973e-05, 1.52032e-05, 1.63121e-05, 1.73374e-05, 1.82883e-05, 1.91715e-05, 1.99925e-05, 2.07558e-05, 2.14648e-05, 2.21232e-05, 2.27347e-05, 2.33026e-05, 
			9.20272e-06, 1.10475e-05, 1.26992e-05, 1.42002e-05, 1.55782e-05, 1.68521e-05, 1.80353e-05, 1.9137e-05, 2.01641e-05, 2.1122e-05, 2.20153e-05, 2.28472e-05, 2.36236e-05, 2.43451e-05, 2.50169e-05, 2.56407e-05, 
			1.08004e-05, 1.25885e-05, 1.42363e-05, 1.57623e-05, 1.71798e-05, 1.85028e-05, 1.97392e-05, 2.0896e-05, 2.19782e-05, 2.29903e-05, 2.39354e-05, 2.48187e-05, 2.56434e-05, 2.64113e-05, 2.7127e-05, 2.77909e-05, 
			1.23963e-05, 1.41652e-05, 1.58176e-05, 1.7366e-05, 1.88167e-05, 2.01787e-05, 2.14572e-05, 2.2657e-05, 2.37816e-05, 2.48366e-05, 2.58233e-05, 2.6747e-05, 2.76089e-05, 2.84136e-05, 2.91619e-05, 2.986e-05, 
			1.40195e-05, 1.57737e-05, 1.74356e-05, 1.90051e-05, 2.04843e-05, 2.18787e-05, 2.3191e-05, 2.44248e-05, 2.55849e-05, 2.66742e-05, 2.76941e-05, 2.86497e-05, 2.95409e-05, 3.03745e-05, 3.11517e-05, 3.18731e-05
		)
}

CapTable	"metal4_C_TOP_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.57082e-06, 8.29984e-06, 9.76963e-06, 1.10613e-05, 1.22207e-05, 1.3276e-05, 1.42455e-05, 1.51411e-05, 1.59712e-05, 1.6742e-05, 1.74586e-05, 1.81251e-05, 1.87454e-05, 1.93222e-05, 1.98578e-05, 2.03547e-05, 
			7.98948e-06, 9.6139e-06, 1.1066e-05, 1.23813e-05, 1.35863e-05, 1.46986e-05, 1.57304e-05, 1.66904e-05, 1.75853e-05, 1.84198e-05, 1.9199e-05, 1.99264e-05, 2.06034e-05, 2.12351e-05, 2.18226e-05, 2.23686e-05, 
			9.38701e-06, 1.09567e-05, 1.24005e-05, 1.37335e-05, 1.49703e-05, 1.61224e-05, 1.71983e-05, 1.82043e-05, 1.91459e-05, 2.00275e-05, 2.08527e-05, 2.16233e-05, 2.23428e-05, 2.30141e-05, 2.36393e-05, 2.42226e-05, 
			1.07807e-05, 1.23265e-05, 1.37694e-05, 1.51184e-05, 1.63813e-05, 1.7565e-05, 1.86759e-05, 1.97188e-05, 2.06983e-05, 2.16162e-05, 2.24768e-05, 2.32816e-05, 2.40343e-05, 2.47369e-05, 2.53933e-05, 2.6003e-05, 
			1.21925e-05, 1.37215e-05, 1.5169e-05, 1.65329e-05, 1.78179e-05, 1.9028e-05, 2.01682e-05, 2.12421e-05, 2.22511e-05, 2.31986e-05, 2.40876e-05, 2.49203e-05, 2.57007e-05, 2.64286e-05, 2.71074e-05, 2.77414e-05
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

CapTable	"metal4_C_LATERAL_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182276, 0.000107227, 7.94734e-05, 6.44138e-05, 5.47056e-05, 4.7794e-05, 4.25478e-05, 3.83842e-05, 3.49702e-05, 3.21008e-05, 2.96428e-05, 2.75048e-05, 2.56222e-05, 2.39478e-05, 2.24466e-05, 2.10914e-05, 
			0.000194437, 0.000116818, 8.74462e-05, 7.1297e-05, 6.07764e-05, 5.32358e-05, 4.74834e-05, 4.29006e-05, 3.9132e-05, 3.59576e-05, 3.3233e-05, 3.08598e-05, 2.87678e-05, 2.69056e-05, 2.52346e-05, 2.37254e-05, 
			0.000201954, 0.000123325, 9.3105e-05, 7.62984e-05, 6.52784e-05, 5.73264e-05, 5.12326e-05, 4.63604e-05, 4.23422e-05, 3.89494e-05, 3.60322e-05, 3.34872e-05, 3.1241e-05, 2.92398e-05, 2.74424e-05, 2.5818e-05, 
			0.000207396, 0.000128254, 9.75176e-05, 8.02768e-05, 6.88944e-05, 6.0645e-05, 5.42976e-05, 4.92064e-05, 4.49966e-05, 4.14346e-05, 3.83664e-05, 3.56862e-05, 3.3318e-05, 3.1206e-05, 2.93078e-05, 2.75912e-05, 
			0.000211234, 0.000132095, 0.000101055, 8.35204e-05, 7.18786e-05, 6.3409e-05, 5.68692e-05, 5.16066e-05, 4.72452e-05, 4.35484e-05, 4.03594e-05, 3.75702e-05, 3.5103e-05, 3.2901e-05, 3.09208e-05, 2.9129e-05
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

CapTable	"metal4_C_TOP_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.90855e-06, 8.69262e-06, 1.01953e-05, 1.15084e-05, 1.26816e-05, 1.37476e-05, 1.47264e-05, 1.56312e-05, 1.64726e-05, 1.72568e-05, 1.79894e-05, 1.86747e-05, 1.93156e-05, 1.99155e-05, 2.04767e-05, 2.10018e-05, 
			8.34754e-06, 1.00067e-05, 1.1481e-05, 1.28101e-05, 1.40237e-05, 1.51422e-05, 1.61803e-05, 1.71485e-05, 1.80537e-05, 1.89017e-05, 1.96973e-05, 2.04434e-05, 2.1144e-05, 2.1801e-05, 2.24169e-05, 2.29935e-05, 
			9.75064e-06, 1.13424e-05, 1.27994e-05, 1.41391e-05, 1.53793e-05, 1.65351e-05, 1.76162e-05, 1.86301e-05, 1.95826e-05, 2.04777e-05, 2.13198e-05, 2.21118e-05, 2.28561e-05, 2.3555e-05, 2.42111e-05, 2.48264e-05, 
			1.114e-05, 1.26986e-05, 1.41473e-05, 1.54983e-05, 1.67619e-05, 1.79478e-05, 1.90628e-05, 2.0113e-05, 2.11025e-05, 2.2036e-05, 2.29155e-05, 2.37433e-05, 2.45225e-05, 2.5255e-05, 2.59431e-05, 2.65901e-05, 
			1.25386e-05, 1.40729e-05, 1.55208e-05, 1.68841e-05, 1.81689e-05, 1.93803e-05, 2.05241e-05, 2.16047e-05, 2.26257e-05, 2.359e-05, 2.44995e-05, 2.53571e-05, 2.61648e-05, 2.69261e-05, 2.76404e-05, 2.83105e-05
		)
}

CapTable	"metal4_C_LATERAL_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180879, 0.000105384, 7.72192e-05, 6.1775e-05, 5.17066e-05, 4.44582e-05, 3.88984e-05, 3.44444e-05, 3.0763e-05, 2.765e-05, 2.4971e-05, 2.26346e-05, 2.0576e-05, 1.87468e-05, 1.71108e-05, 1.56404e-05, 
			0.000192536, 0.000114449, 8.46344e-05, 6.80662e-05, 5.71508e-05, 4.924e-05, 4.31424e-05, 3.824e-05, 3.41774e-05, 3.07346e-05, 2.77676e-05, 2.51766e-05, 2.28916e-05, 2.08596e-05, 1.90416e-05, 1.74065e-05, 
			0.000199515, 0.000120395, 8.97072e-05, 7.24552e-05, 6.10148e-05, 5.26684e-05, 4.62072e-05, 4.09952e-05, 3.66648e-05, 3.29882e-05, 2.98146e-05, 2.704e-05, 2.4591e-05, 2.24116e-05, 2.04608e-05, 1.87052e-05, 
			0.000204384, 0.000124732, 9.35052e-05, 7.57982e-05, 6.39756e-05, 5.53138e-05, 4.8583e-05, 4.3138e-05, 3.8604e-05, 3.47476e-05, 3.14142e-05, 2.84976e-05, 2.59206e-05, 2.36266e-05, 2.15714e-05, 1.97221e-05, 
			0.000207618, 0.000127952, 9.64052e-05, 7.83876e-05, 6.62906e-05, 5.73956e-05, 5.04614e-05, 4.48356e-05, 4.01422e-05, 3.61448e-05, 3.26858e-05, 2.96566e-05, 2.6978e-05, 2.45926e-05, 2.24548e-05, 2.05302e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.18784e-05, 1.47312e-05, 1.70639e-05, 1.90536e-05, 2.07988e-05, 2.23606e-05, 2.37776e-05, 2.50767e-05, 2.6277e-05, 2.73925e-05, 2.84337e-05, 2.94089e-05, 3.03248e-05, 3.1187e-05, 3.19996e-05, 3.27665e-05, 
			1.40456e-05, 1.66138e-05, 1.88378e-05, 2.08008e-05, 2.2564e-05, 2.41675e-05, 2.56401e-05, 2.70028e-05, 2.8271e-05, 2.94563e-05, 3.05684e-05, 3.16142e-05, 3.25998e-05, 3.35302e-05, 3.44095e-05, 3.5241e-05, 
			1.6078e-05, 1.84734e-05, 2.0617e-05, 2.25528e-05, 2.43183e-05, 2.59436e-05, 2.74499e-05, 2.88535e-05, 3.01672e-05, 3.14011e-05, 3.25628e-05, 3.36589e-05, 3.46946e-05, 3.56741e-05, 3.6602e-05, 3.74808e-05, 
			1.8025e-05, 2.03132e-05, 2.23984e-05, 2.43112e-05, 2.60762e-05, 2.77154e-05, 2.92454e-05, 3.06791e-05, 3.2027e-05, 3.32976e-05, 3.44977e-05, 3.56325e-05, 3.6707e-05, 3.77252e-05, 3.86909e-05, 3.96067e-05, 
			1.9935e-05, 2.21362e-05, 2.41786e-05, 2.60726e-05, 2.78371e-05, 2.94865e-05, 3.10343e-05, 3.24915e-05, 3.38664e-05, 3.51659e-05, 3.6396e-05, 3.75615e-05, 3.86671e-05, 3.97161e-05, 4.07119e-05, 4.16573e-05
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
			6.69145e-06, 8.39398e-06, 9.8268e-06, 1.10798e-05, 1.22036e-05, 1.32269e-05, 1.41682e-05, 1.50403e-05, 1.58512e-05, 1.66073e-05, 1.73138e-05, 1.79744e-05, 1.85922e-05, 1.91703e-05, 1.97112e-05, 2.02164e-05, 
			8.07166e-06, 9.6521e-06, 1.10576e-05, 1.23281e-05, 1.34926e-05, 1.45689e-05, 1.55696e-05, 1.65034e-05, 1.73774e-05, 1.81967e-05, 1.89645e-05, 1.96856e-05, 2.03609e-05, 2.09946e-05, 2.15882e-05, 2.21446e-05, 
			9.40776e-06, 1.09262e-05, 1.23184e-05, 1.36037e-05, 1.47968e-05, 1.59108e-05, 1.69538e-05, 1.79327e-05, 1.88529e-05, 1.97182e-05, 2.05317e-05, 2.12968e-05, 2.2015e-05, 2.26902e-05, 2.33232e-05, 2.39171e-05, 
			1.0732e-05, 1.22208e-05, 1.36095e-05, 1.49085e-05, 1.6126e-05, 1.72703e-05, 1.8348e-05, 1.93631e-05, 2.03207e-05, 2.12224e-05, 2.20724e-05, 2.28727e-05, 2.36257e-05, 2.43332e-05, 2.49981e-05, 2.56201e-05, 
			1.20684e-05, 1.35381e-05, 1.4929e-05, 1.62403e-05, 1.74795e-05, 1.86501e-05, 1.97559e-05, 2.08012e-05, 2.1789e-05, 2.27209e-05, 2.36008e-05, 2.44297e-05, 2.52108e-05, 2.59436e-05, 2.66337e-05, 2.72817e-05
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

CapTable	"metal3_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.91431e-05, 3.83674e-05, 4.55626e-05, 5.11148e-05, 5.54073e-05, 5.8752e-05, 6.13867e-05, 6.34873e-05, 6.51837e-05, 6.65723e-05, 6.77249e-05, 6.86951e-05, 6.95235e-05, 7.02407e-05, 7.08703e-05, 7.14304e-05, 
			3.9941e-05, 4.86732e-05, 5.55564e-05, 6.09266e-05, 6.51334e-05, 6.84534e-05, 7.11034e-05, 7.32442e-05, 7.4997e-05, 7.64506e-05, 7.7674e-05, 7.8719e-05, 7.9624e-05, 8.04178e-05, 8.11255e-05, 8.17634e-05, 
			5.01806e-05, 5.84024e-05, 6.49394e-05, 7.00962e-05, 7.4174e-05, 7.74298e-05, 8.00566e-05, 8.2203e-05, 8.39808e-05, 8.54744e-05, 8.67464e-05, 8.78466e-05, 8.88118e-05, 8.967e-05, 9.04436e-05, 9.11496e-05, 
			5.981e-05, 6.75952e-05, 7.38206e-05, 7.87722e-05, 8.27238e-05, 8.5907e-05, 8.85008e-05, 9.06428e-05, 9.24356e-05, 9.39588e-05, 9.52714e-05, 9.6419e-05, 9.74392e-05, 9.83556e-05, 9.91918e-05, 9.99636e-05, 
			6.88948e-05, 7.62652e-05, 8.22088e-05, 8.69718e-05, 9.08054e-05, 9.3918e-05, 9.64778e-05, 9.86114e-05, 0.000100417, 0.000101966, 0.000103316, 0.000104511, 0.000105582, 0.000106557, 0.000107454, 0.00010829
		)
}

CapTable	"metal3_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000170648, 9.33566e-05, 6.46074e-05, 4.93432e-05, 3.99178e-05, 3.3583e-05, 2.90828e-05, 2.57548e-05, 2.32148e-05, 2.12244e-05, 1.96283e-05, 1.83216e-05, 1.72311e-05, 1.63049e-05, 1.5505e-05, 1.48034e-05, 
			0.000179716, 0.000101039, 7.15136e-05, 5.57654e-05, 4.59696e-05, 3.93366e-05, 3.45846e-05, 3.10368e-05, 2.8301e-05, 2.61334e-05, 2.4375e-05, 2.2918e-05, 2.1687e-05, 2.06282e-05, 1.97025e-05, 1.88806e-05, 
			0.000185837, 0.000107083, 7.73536e-05, 6.14038e-05, 5.1444e-05, 4.46482e-05, 3.97424e-05, 3.6049e-05, 3.31742e-05, 3.08736e-05, 2.89876e-05, 2.74074e-05, 2.60572e-05, 2.4883e-05, 2.38444e-05, 2.29124e-05, 
			0.000191194, 0.000112609, 8.28454e-05, 6.68088e-05, 5.67392e-05, 4.9835e-05, 4.48162e-05, 4.10082e-05, 3.80184e-05, 3.56032e-05, 3.36036e-05, 3.1911e-05, 3.04498e-05, 2.91654e-05, 2.80182e-05, 2.69784e-05, 
			0.000195918, 0.00011785, 8.81502e-05, 7.20812e-05, 6.19426e-05, 5.4959e-05, 4.98492e-05, 4.59406e-05, 4.28468e-05, 4.03256e-05, 3.82186e-05, 3.64182e-05, 3.48486e-05, 3.3456e-05, 3.22006e-05, 3.1053e-05
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

CapTable	"metal3_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.98387e-05, 4.00506e-05, 4.82267e-05, 5.46643e-05, 5.97179e-05, 6.36944e-05, 6.68381e-05, 6.93373e-05, 7.13366e-05, 7.29457e-05, 7.42483e-05, 7.53088e-05, 7.61773e-05, 7.68919e-05, 7.7483e-05, 7.79745e-05, 
			4.26921e-05, 5.2929e-05, 6.11912e-05, 6.77554e-05, 7.29643e-05, 7.71047e-05, 8.04087e-05, 8.30583e-05, 8.5194e-05, 8.6926e-05, 8.83365e-05, 8.94913e-05, 9.04429e-05, 9.1229e-05, 9.18814e-05, 9.24269e-05, 
			5.57196e-05, 6.58927e-05, 7.41523e-05, 8.07686e-05, 8.60511e-05, 9.02831e-05, 9.3682e-05, 9.64253e-05, 9.86486e-05, 0.00010046, 0.000101941, 0.00010316, 0.000104168, 0.000105003, 0.000105698, 0.000106281, 
			6.87938e-05, 7.89253e-05, 8.71741e-05, 9.38173e-05, 9.91508e-05, 0.000103441, 0.000106904, 0.00010971, 0.000111994, 0.000113861, 0.000115395, 0.000116659, 0.000117707, 0.000118578, 0.000119307, 0.000119916, 
			8.18969e-05, 9.19512e-05, 0.000100179, 0.000106831, 0.000112197, 0.000116524, 0.000120031, 0.000122881, 0.000125209, 0.000127117, 0.000128687, 0.000129986, 0.000131064, 0.000131963, 0.000132714, 0.000133346
		)
}

CapTable	"metal3_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.63871e-06, 4.89516e-06, 6.00647e-06, 6.95212e-06, 7.73531e-06, 8.37578e-06, 8.89648e-06, 9.31923e-06, 9.66231e-06, 9.94179e-06, 1.01705e-05, 1.03585e-05, 1.05136e-05, 1.06424e-05, 1.07496e-05, 1.0839e-05, 
			4.88629e-06, 6.14505e-06, 7.27384e-06, 8.24763e-06, 9.06567e-06, 9.74231e-06, 1.02979e-05, 1.07538e-05, 1.11273e-05, 1.14343e-05, 1.16876e-05, 1.18971e-05, 1.20709e-05, 1.22161e-05, 1.23377e-05, 1.24396e-05, 
			6.15017e-06, 7.40295e-06, 8.54067e-06, 9.53083e-06, 1.03691e-05, 1.10679e-05, 1.16462e-05, 1.21234e-05, 1.25174e-05, 1.28428e-05, 1.31129e-05, 1.33375e-05, 1.35246e-05, 1.36817e-05, 1.3814e-05, 1.39249e-05, 
			7.41282e-06, 8.6653e-06, 9.80974e-06, 1.08111e-05, 1.16644e-05, 1.23789e-05, 1.29734e-05, 1.34667e-05, 1.38757e-05, 1.42152e-05, 1.44978e-05, 1.47339e-05, 1.49314e-05, 1.50981e-05, 1.52368e-05, 1.5356e-05, 
			8.68254e-06, 9.93303e-06, 1.10823e-05, 1.20924e-05, 1.29555e-05, 1.36817e-05, 1.42876e-05, 1.47928e-05, 1.52131e-05, 1.55632e-05, 1.58557e-05, 1.6101e-05, 1.63061e-05, 1.64789e-05, 1.66259e-05, 1.67504e-05
		)
}

CapTable	"metal3_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167261, 8.84562e-05, 5.83538e-05, 4.19366e-05, 3.15608e-05, 2.44618e-05, 1.93609e-05, 1.5572e-05, 1.26887e-05, 1.04535e-05, 8.69482e-06, 7.2941e-06, 6.1669e-06, 5.25184e-06, 4.50322e-06, 3.88648e-06, 
			0.000173914, 9.3425e-05, 6.2308e-05, 4.5219e-05, 3.4325e-05, 2.6815e-05, 2.13784e-05, 1.73109e-05, 1.41947e-05, 1.17637e-05, 9.83986e-06, 8.2996e-06, 7.05422e-06, 6.03886e-06, 5.20494e-06, 4.51548e-06, 
			0.000177143, 9.63324e-05, 6.4822e-05, 4.73856e-05, 3.62208e-05, 2.847e-05, 2.28278e-05, 1.85843e-05, 1.5317e-05, 1.27564e-05, 1.07216e-05, 9.08616e-06, 7.75922e-06, 6.6739e-06, 5.77974e-06, 5.03858e-06, 
			0.000179194, 9.83454e-05, 6.66462e-05, 4.90106e-05, 3.76568e-05, 2.97478e-05, 2.39654e-05, 1.95989e-05, 1.62245e-05, 1.35707e-05, 1.14553e-05, 9.75e-06, 8.3626e-06, 7.2249e-06, 6.28546e-06, 5.50474e-06, 
			0.000180263, 9.97668e-05, 6.80116e-05, 5.02622e-05, 3.8788e-05, 3.07742e-05, 2.48956e-05, 2.044e-05, 1.69869e-05, 1.42642e-05, 1.20885e-05, 1.03305e-05, 8.89726e-06, 7.71934e-06, 6.74466e-06, 5.93276e-06
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

CapTable	"metal3_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178047, 0.000101586, 7.25732e-05, 5.64086e-05, 4.57532e-05, 3.80506e-05, 3.2162e-05, 2.74932e-05, 2.36982e-05, 2.05586e-05, 1.79267e-05, 1.5698e-05, 1.37957e-05, 1.21614e-05, 1.07499e-05, 9.52502e-06, 
			0.000188469, 0.00010939, 7.8718e-05, 6.1442e-05, 4.99688e-05, 4.1644e-05, 3.52646e-05, 3.0198e-05, 2.60738e-05, 2.2657e-05, 1.97881e-05, 1.73553e-05, 1.52754e-05, 1.34855e-05, 1.1937e-05, 1.0591e-05, 
			0.000194176, 0.000114086, 8.25828e-05, 6.46776e-05, 5.27414e-05, 4.40456e-05, 3.73666e-05, 3.20522e-05, 2.77192e-05, 2.41236e-05, 2.11002e-05, 1.8532e-05, 1.6333e-05, 1.44377e-05, 1.27954e-05, 1.13656e-05, 
			0.000197795, 0.000117232, 8.52634e-05, 6.69804e-05, 5.47392e-05, 4.58016e-05, 3.89222e-05, 3.34384e-05, 2.89602e-05, 2.5238e-05, 2.21036e-05, 1.94375e-05, 1.71511e-05, 1.51778e-05, 1.34654e-05, 1.19727e-05, 
			0.000199849, 0.000119362, 8.71632e-05, 6.86568e-05, 5.62226e-05, 4.7127e-05, 4.01118e-05, 3.45082e-05, 2.99252e-05, 2.61106e-05, 2.2894e-05, 2.0154e-05, 1.78014e-05, 1.57684e-05, 1.40019e-05, 1.24603e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.52664e-05, 1.94252e-05, 2.29716e-05, 2.6065e-05, 2.8793e-05, 3.12108e-05, 3.33584e-05, 3.52689e-05, 3.69698e-05, 3.84864e-05, 3.98405e-05, 4.10517e-05, 4.21376e-05, 4.31138e-05, 4.39935e-05, 4.47888e-05, 
			1.89182e-05, 2.2885e-05, 2.6408e-05, 2.95437e-05, 3.23412e-05, 3.48379e-05, 3.7067e-05, 3.90583e-05, 4.08381e-05, 4.24308e-05, 4.38585e-05, 4.51407e-05, 4.62948e-05, 4.73364e-05, 4.8279e-05, 4.9135e-05, 
			2.25498e-05, 2.64014e-05, 2.98826e-05, 3.3015e-05, 3.58254e-05, 3.83465e-05, 4.06063e-05, 4.26323e-05, 4.44498e-05, 4.60822e-05, 4.75506e-05, 4.88742e-05, 5.00702e-05, 5.11538e-05, 5.21383e-05, 5.30356e-05, 
			2.6165e-05, 2.99334e-05, 3.33632e-05, 3.64666e-05, 3.92654e-05, 4.17843e-05, 4.40507e-05, 4.60896e-05, 4.7925e-05, 4.95791e-05, 5.10721e-05, 5.2423e-05, 5.36477e-05, 5.47614e-05, 5.57767e-05, 5.67058e-05, 
			2.9765e-05, 3.34396e-05, 3.68082e-05, 3.98706e-05, 4.2643e-05, 4.51462e-05, 4.74061e-05, 4.94459e-05, 5.12879e-05, 5.29537e-05, 5.44623e-05, 5.58314e-05, 5.70773e-05, 5.82138e-05, 5.92538e-05, 6.02084e-05
		)
}

CapTable	"metal3_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179604, 0.000103719, 7.5263e-05, 5.96334e-05, 4.9484e-05, 4.22522e-05, 3.67948e-05, 3.25148e-05, 2.90656e-05, 2.62282e-05, 2.38568e-05, 2.1849e-05, 2.01302e-05, 1.86449e-05, 1.73507e-05, 1.62144e-05, 
			0.000190732, 0.0001123, 8.2263e-05, 6.55976e-05, 5.47008e-05, 4.69106e-05, 4.1019e-05, 3.63908e-05, 3.26548e-05, 2.95764e-05, 2.69982e-05, 2.48104e-05, 2.2933e-05, 2.13064e-05, 1.98851e-05, 1.86333e-05, 
			0.000197242, 0.000117869, 8.70664e-05, 6.9833e-05, 5.85274e-05, 5.04136e-05, 4.42632e-05, 3.94218e-05, 3.55056e-05, 3.22716e-05, 2.95572e-05, 2.7248e-05, 2.52612e-05, 2.3535e-05, 2.20222e-05, 2.0686e-05, 
			0.00020176, 0.000121976, 9.07648e-05, 7.32034e-05, 6.16356e-05, 5.33164e-05, 4.69956e-05, 4.20094e-05, 3.79672e-05, 3.46218e-05, 3.18072e-05, 2.94066e-05, 2.7336e-05, 2.5532e-05, 2.39468e-05, 2.25424e-05, 
			0.0002048, 0.000125143, 9.37488e-05, 7.60034e-05, 6.4276e-05, 5.58258e-05, 4.93906e-05, 4.43012e-05, 4.01668e-05, 3.67372e-05, 3.3845e-05, 3.13726e-05, 2.92342e-05, 2.73666e-05, 2.57208e-05, 2.4259e-05
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
			1.27833e-05, 1.64854e-05, 1.97241e-05, 2.26099e-05, 2.52007e-05, 2.75306e-05, 2.96238e-05, 3.15008e-05, 3.31808e-05, 3.46804e-05, 3.60182e-05, 3.72117e-05, 3.82731e-05, 3.92167e-05, 4.00578e-05, 4.08015e-05, 
			1.62342e-05, 1.98891e-05, 2.32118e-05, 2.62277e-05, 2.89633e-05, 3.14378e-05, 3.36692e-05, 3.5677e-05, 3.74803e-05, 3.90958e-05, 4.05354e-05, 4.18259e-05, 4.29755e-05, 4.40002e-05, 4.49128e-05, 4.57289e-05, 
			1.9793e-05, 2.34562e-05, 2.68368e-05, 2.99332e-05, 3.27555e-05, 3.53179e-05, 3.76347e-05, 3.97242e-05, 4.16053e-05, 4.32925e-05, 4.48028e-05, 4.61567e-05, 4.73617e-05, 4.84434e-05, 4.94056e-05, 5.02677e-05, 
			2.34563e-05, 2.71479e-05, 3.05716e-05, 3.37206e-05, 3.65987e-05, 3.92203e-05, 4.1597e-05, 4.37391e-05, 4.56748e-05, 4.74126e-05, 4.8972e-05, 5.03686e-05, 5.16219e-05, 5.27397e-05, 5.37439e-05, 5.46379e-05, 
			2.72215e-05, 3.09211e-05, 3.43706e-05, 3.75526e-05, 4.04686e-05, 4.31296e-05, 4.55439e-05, 4.77287e-05, 4.97025e-05, 5.14742e-05, 5.3072e-05, 5.45019e-05, 5.57867e-05, 5.69369e-05, 5.79687e-05, 5.88943e-05
		)
}

CapTable	"metal3_C_TOP_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.40849e-06, 5.68123e-06, 6.80151e-06, 7.80939e-06, 8.72083e-06, 9.54539e-06, 1.02905e-05, 1.09624e-05, 1.15666e-05, 1.21094e-05, 1.25951e-05, 1.30276e-05, 1.34147e-05, 1.3761e-05, 1.4068e-05, 1.43465e-05, 
			5.52463e-06, 6.76515e-06, 7.90325e-06, 8.94848e-06, 9.90562e-06, 1.07788e-05, 1.15732e-05, 1.22922e-05, 1.29398e-05, 1.3522e-05, 1.40503e-05, 1.45187e-05, 1.49403e-05, 1.53182e-05, 1.56572e-05, 1.5958e-05, 
			6.66019e-06, 7.89137e-06, 9.04442e-06, 1.01142e-05, 1.11e-05, 1.20036e-05, 1.28287e-05, 1.3578e-05, 1.42543e-05, 1.48656e-05, 1.54175e-05, 1.59113e-05, 1.636e-05, 1.67575e-05, 1.71178e-05, 1.74383e-05, 
			7.82012e-06, 9.05232e-06, 1.0215e-05, 1.1302e-05, 1.23081e-05, 1.32319e-05, 1.40759e-05, 1.485e-05, 1.55463e-05, 1.6179e-05, 1.67502e-05, 1.72657e-05, 1.77269e-05, 1.81452e-05, 1.85169e-05, 1.88548e-05, 
			9.00493e-06, 1.02361e-05, 1.14072e-05, 1.25066e-05, 1.35268e-05, 1.44654e-05, 1.53263e-05, 1.61135e-05, 1.68264e-05, 1.74782e-05, 1.8062e-05, 1.85933e-05, 1.90695e-05, 1.94993e-05, 1.98847e-05, 2.02296e-05
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

CapTable	"metal3_C_LATERAL_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182389, 0.000107359, 7.9625e-05, 6.45938e-05, 5.49296e-05, 4.80822e-05, 4.29212e-05, 3.8863e-05, 3.55722e-05, 3.28408e-05, 3.05316e-05, 2.85498e-05, 2.68278e-05, 2.53154e-05, 2.39744e-05, 2.2776e-05, 
			0.00019455, 0.000116945, 8.76008e-05, 7.15006e-05, 6.10546e-05, 5.36158e-05, 4.79904e-05, 4.35568e-05, 3.9955e-05, 3.69606e-05, 3.4425e-05, 3.22458e-05, 3.03488e-05, 2.868e-05, 2.71978e-05, 2.58706e-05, 
			0.000202062, 0.000123457, 9.32894e-05, 7.65668e-05, 6.5663e-05, 5.78574e-05, 5.19358e-05, 4.72568e-05, 4.34472e-05, 4.02734e-05, 3.75808e-05, 3.52618e-05, 3.32392e-05, 3.14562e-05, 2.98694e-05, 2.84454e-05, 
			0.000207512, 0.000128423, 9.77784e-05, 8.0667e-05, 6.94486e-05, 6.13928e-05, 5.52634e-05, 5.04076e-05, 4.6445e-05, 4.31366e-05, 4.03238e-05, 3.78962e-05, 3.57746e-05, 3.39002e-05, 3.22286e-05, 3.07254e-05, 
			0.000211396, 0.000132354, 0.000101454, 8.4099e-05, 7.26704e-05, 6.44414e-05, 5.8162e-05, 5.31736e-05, 4.90936e-05, 4.56798e-05, 4.27712e-05, 4.02558e-05, 3.80526e-05, 3.61022e-05, 3.43592e-05, 3.27886e-05
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

CapTable	"metal3_C_TOP_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.84585e-06, 6.15389e-06, 7.28616e-06, 8.29432e-06, 9.20852e-06, 1.00449e-05, 1.08136e-05, 1.15215e-05, 1.21732e-05, 1.27727e-05, 1.3324e-05, 1.38302e-05, 1.42944e-05, 1.47193e-05, 1.51083e-05, 1.54638e-05, 
			5.93515e-06, 7.18245e-06, 8.31575e-06, 9.35471e-06, 1.03136e-05, 1.12002e-05, 1.20208e-05, 1.278e-05, 1.34823e-05, 1.41304e-05, 1.47277e-05, 1.52773e-05, 1.57826e-05, 1.62463e-05, 1.66708e-05, 1.70605e-05, 
			7.02687e-06, 8.24958e-06, 9.38846e-06, 1.04493e-05, 1.14376e-05, 1.23582e-05, 1.3214e-05, 1.40088e-05, 1.47456e-05, 1.54274e-05, 1.60566e-05, 1.66371e-05, 1.71708e-05, 1.76615e-05, 1.8112e-05, 1.85261e-05, 
			8.13195e-06, 9.34903e-06, 1.04964e-05, 1.15749e-05, 1.25857e-05, 1.35315e-05, 1.44137e-05, 1.5235e-05, 1.59975e-05, 1.67044e-05, 1.7358e-05, 1.79607e-05, 1.85168e-05, 1.90279e-05, 1.94987e-05, 1.99301e-05, 
			9.26278e-06, 1.0475e-05, 1.16312e-05, 1.27243e-05, 1.37533e-05, 1.47186e-05, 1.56214e-05, 1.64627e-05, 1.72455e-05, 1.79712e-05, 1.86434e-05, 1.92645e-05, 1.98386e-05, 2.03656e-05, 2.08524e-05, 2.12983e-05
		)
}

CapTable	"metal3_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179763, 0.000103872, 7.53324e-05, 5.95404e-05, 4.91588e-05, 4.16394e-05, 3.58542e-05, 3.12218e-05, 2.74082e-05, 2.42056e-05, 2.14764e-05, 1.91247e-05, 1.70805e-05, 1.52919e-05, 1.37181e-05, 1.2327e-05, 
			0.000190923, 0.000112397, 8.21682e-05, 6.52244e-05, 5.39808e-05, 4.57948e-05, 3.9477e-05, 3.4408e-05, 3.02292e-05, 2.67166e-05, 2.37206e-05, 2.1137e-05, 1.88895e-05, 1.69215e-05, 1.51886e-05, 1.36559e-05, 
			0.000197346, 0.000117757, 8.66382e-05, 6.90068e-05, 5.72454e-05, 4.86392e-05, 4.19784e-05, 3.66234e-05, 3.22024e-05, 2.84816e-05, 2.53052e-05, 2.25632e-05, 2.0176e-05, 1.8084e-05, 1.62402e-05, 1.46083e-05, 
			0.000201616, 0.000121484, 8.98314e-05, 7.17602e-05, 5.96394e-05, 5.07446e-05, 4.38434e-05, 3.8285e-05, 3.36898e-05, 2.98178e-05, 2.65086e-05, 2.36498e-05, 2.11588e-05, 1.89739e-05, 1.7047e-05, 1.53402e-05, 
			0.000204236, 0.000124101, 9.21498e-05, 7.37966e-05, 6.14336e-05, 5.23394e-05, 4.52676e-05, 3.95608e-05, 3.48368e-05, 3.0852e-05, 2.74432e-05, 2.44956e-05, 2.19254e-05, 1.96695e-05, 1.76786e-05, 1.59139e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.17394e-05, 1.4559e-05, 1.6864e-05, 1.88256e-05, 2.05374e-05, 2.20553e-05, 2.34154e-05, 2.46427e-05, 2.57563e-05, 2.67712e-05, 2.76997e-05, 2.85524e-05, 2.9338e-05, 3.00643e-05, 3.07382e-05, 3.13651e-05, 
			1.38982e-05, 1.64438e-05, 1.86422e-05, 2.0573e-05, 2.22905e-05, 2.38314e-05, 2.52235e-05, 2.64873e-05, 2.76399e-05, 2.86949e-05, 2.96643e-05, 3.05578e-05, 3.13845e-05, 3.21514e-05, 3.28656e-05, 3.35326e-05, 
			1.5932e-05, 1.83082e-05, 2.04206e-05, 2.23089e-05, 2.40079e-05, 2.55455e-05, 2.69433e-05, 2.82188e-05, 2.93872e-05, 3.04613e-05, 3.14519e-05, 3.23685e-05, 3.32196e-05, 3.40121e-05, 3.47527e-05, 3.54469e-05, 
			1.7883e-05, 2.01426e-05, 2.21806e-05, 2.4023e-05, 2.56947e-05, 2.72172e-05, 2.86081e-05, 2.98836e-05, 3.10569e-05, 3.21398e-05, 3.31421e-05, 3.40731e-05, 3.49403e-05, 3.57509e-05, 3.65109e-05, 3.72255e-05, 
			1.9782e-05, 2.19374e-05, 2.39066e-05, 2.5703e-05, 2.73436e-05, 2.8845e-05, 3.02235e-05, 3.14926e-05, 3.26647e-05, 3.37506e-05, 3.47593e-05, 3.56993e-05, 3.65782e-05, 3.74023e-05, 3.81773e-05, 3.89084e-05
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
			1.01335e-05, 1.28652e-05, 1.52114e-05, 1.72979e-05, 1.91861e-05, 2.09113e-05, 2.24944e-05, 2.39489e-05, 2.52857e-05, 2.65134e-05, 2.76394e-05, 2.8671e-05, 2.96154e-05, 3.04791e-05, 3.12679e-05, 3.19885e-05, 
			1.24929e-05, 1.51085e-05, 1.7475e-05, 1.96367e-05, 2.16252e-05, 2.346e-05, 2.51543e-05, 2.67182e-05, 2.81596e-05, 2.94868e-05, 3.07072e-05, 3.18277e-05, 3.28553e-05, 3.37964e-05, 3.46583e-05, 3.54453e-05, 
			1.48613e-05, 1.74412e-05, 1.98333e-05, 2.20509e-05, 2.41082e-05, 2.6017e-05, 2.77863e-05, 2.94238e-05, 3.09368e-05, 3.23322e-05, 3.36173e-05, 3.47988e-05, 3.58846e-05, 3.68799e-05, 3.77921e-05, 3.86261e-05, 
			1.7278e-05, 1.98588e-05, 2.22772e-05, 2.45379e-05, 2.66471e-05, 2.861e-05, 3.0434e-05, 3.21256e-05, 3.36911e-05, 3.51371e-05, 3.64706e-05, 3.76986e-05, 3.88271e-05, 3.98638e-05, 4.08134e-05, 4.16843e-05, 
			1.97602e-05, 2.23438e-05, 2.4786e-05, 2.70801e-05, 2.92271e-05, 3.12304e-05, 3.30952e-05, 3.48277e-05, 3.64328e-05, 3.79178e-05, 3.92883e-05, 4.05514e-05, 4.17125e-05, 4.27809e-05, 4.37596e-05, 4.46583e-05
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

CapTable	"metal3_C_BOTTOM_GP_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.22008e-05, 1.51728e-05, 1.76233e-05, 1.97321e-05, 2.15967e-05, 2.3275e-05, 2.48038e-05, 2.62077e-05, 2.75044e-05, 2.87067e-05, 2.98254e-05, 3.08686e-05, 3.1843e-05, 3.27547e-05, 3.36087e-05, 3.44094e-05, 
			1.45004e-05, 1.7204e-05, 1.95662e-05, 2.16695e-05, 2.35698e-05, 2.53049e-05, 2.69016e-05, 2.83787e-05, 2.97509e-05, 3.10296e-05, 3.22237e-05, 3.33407e-05, 3.43874e-05, 3.53691e-05, 3.6291e-05, 3.71572e-05, 
			1.669e-05, 1.92398e-05, 2.1541e-05, 2.36312e-05, 2.55461e-05, 2.73122e-05, 2.89493e-05, 3.04723e-05, 3.18937e-05, 3.32228e-05, 3.44679e-05, 3.56358e-05, 3.67328e-05, 3.77637e-05, 3.87334e-05, 3.9646e-05, 
			1.8819e-05, 2.12806e-05, 2.3536e-05, 2.56144e-05, 2.7536e-05, 2.93211e-05, 3.0985e-05, 3.254e-05, 3.39963e-05, 3.53621e-05, 3.66451e-05, 3.7851e-05, 3.89857e-05, 4.00538e-05, 4.10602e-05, 4.20086e-05, 
			2.0935e-05, 2.33224e-05, 2.55438e-05, 2.76094e-05, 2.95335e-05, 3.13306e-05, 3.3013e-05, 3.4591e-05, 3.60729e-05, 3.74663e-05, 3.87779e-05, 4.00127e-05, 4.11766e-05, 4.22739e-05, 4.33087e-05, 4.42853e-05
		)
}

CapTable	"metal3_C_LATERAL_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181996, 0.00010684, 7.89758e-05, 6.3805e-05, 5.39898e-05, 4.69802e-05, 4.16472e-05, 3.74092e-05, 3.39338e-05, 3.1016e-05, 2.8521e-05, 2.63566e-05, 2.44576e-05, 2.27752e-05, 2.12732e-05, 1.99234e-05, 
			0.000194022, 0.000116268, 8.67608e-05, 7.04826e-05, 5.9844e-05, 5.21998e-05, 4.63594e-05, 4.17046e-05, 3.7879e-05, 3.46616e-05, 3.1907e-05, 2.95152e-05, 2.74144e-05, 2.5552e-05, 2.3888e-05, 2.23916e-05, 
			0.000201364, 0.000122578, 9.2209e-05, 7.52662e-05, 6.41266e-05, 5.6074e-05, 4.98978e-05, 4.4961e-05, 4.08942e-05, 3.74678e-05, 3.45298e-05, 3.19754e-05, 2.97292e-05, 2.77362e-05, 2.5954e-05, 2.43502e-05, 
			0.000206602, 0.00012729, 9.64e-05, 7.90246e-05, 6.75286e-05, 5.91866e-05, 5.27668e-05, 4.76214e-05, 4.33738e-05, 3.97888e-05, 3.671e-05, 3.403e-05, 3.1671e-05, 2.95758e-05, 2.77006e-05, 2.60118e-05, 
			0.000210218, 0.000130908, 9.97182e-05, 8.20566e-05, 7.03116e-05, 6.17612e-05, 5.5161e-05, 4.98564e-05, 4.54692e-05, 4.17602e-05, 3.85708e-05, 3.57914e-05, 3.33422e-05, 3.1165e-05, 2.9215e-05, 2.74574e-05
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

CapTable	"metal3_C_BOTTOM_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.60637e-06, 1.08288e-05, 1.27105e-05, 1.4369e-05, 1.58658e-05, 1.72355e-05, 1.84992e-05, 1.96711e-05, 2.07598e-05, 2.17725e-05, 2.27144e-05, 2.35906e-05, 2.44051e-05, 2.51616e-05, 2.58638e-05, 2.65147e-05, 
			1.04403e-05, 1.25263e-05, 1.43938e-05, 1.60932e-05, 1.76577e-05, 1.9108e-05, 2.04576e-05, 2.17162e-05, 2.2891e-05, 2.39874e-05, 2.50101e-05, 2.59634e-05, 2.68515e-05, 2.76778e-05, 2.84461e-05, 2.91591e-05, 
			1.2245e-05, 1.42706e-05, 1.61395e-05, 1.78706e-05, 1.94838e-05, 2.09907e-05, 2.24008e-05, 2.3721e-05, 2.49569e-05, 2.61128e-05, 2.71934e-05, 2.82019e-05, 2.91424e-05, 3.00197e-05, 3.0835e-05, 3.15938e-05, 
			1.406e-05, 1.60658e-05, 1.79427e-05, 1.97035e-05, 2.13548e-05, 2.29057e-05, 2.43624e-05, 2.573e-05, 2.70128e-05, 2.82144e-05, 2.93395e-05, 3.0391e-05, 3.13721e-05, 3.2288e-05, 3.31413e-05, 3.39336e-05, 
			1.59107e-05, 1.7906e-05, 1.97954e-05, 2.15799e-05, 2.32636e-05, 2.48495e-05, 2.63429e-05, 2.77477e-05, 2.90673e-05, 3.03051e-05, 3.14659e-05, 3.25508e-05, 3.35652e-05, 3.45107e-05, 3.53925e-05, 3.62136e-05
		)
}

CapTable	"metal3_C_TOP_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.23923e-06, 6.60024e-06, 7.75962e-06, 8.782e-06, 9.70443e-06, 1.05489e-05, 1.13282e-05, 1.20506e-05, 1.27223e-05, 1.33474e-05, 1.39295e-05, 1.44711e-05, 1.49752e-05, 1.54438e-05, 1.58793e-05, 1.62839e-05, 
			6.33532e-06, 7.6109e-06, 8.75696e-06, 9.80095e-06, 1.07623e-05, 1.16538e-05, 1.24839e-05, 1.32585e-05, 1.3982e-05, 1.46578e-05, 1.52891e-05, 1.58784e-05, 1.64277e-05, 1.69395e-05, 1.74155e-05, 1.78588e-05, 
			7.41537e-06, 8.65e-06, 9.7919e-06, 1.0852e-05, 1.18403e-05, 1.27646e-05, 1.36304e-05, 1.44419e-05, 1.52024e-05, 1.59148e-05, 1.65813e-05, 1.72049e-05, 1.77872e-05, 1.83294e-05, 1.88353e-05, 1.93058e-05, 
			8.49705e-06, 9.716e-06, 1.08601e-05, 1.19345e-05, 1.29444e-05, 1.3894e-05, 1.47873e-05, 1.56273e-05, 1.64166e-05, 1.71572e-05, 1.78513e-05, 1.85009e-05, 1.91086e-05, 1.96751e-05, 2.02032e-05, 2.06965e-05, 
			9.59825e-06, 1.08058e-05, 1.1955e-05, 1.30425e-05, 1.40704e-05, 1.5041e-05, 1.59566e-05, 1.68194e-05, 1.76318e-05, 1.83952e-05, 1.91105e-05, 1.97813e-05, 2.04086e-05, 2.09951e-05, 2.1542e-05, 2.20514e-05
		)
}

CapTable	"metal3_C_LATERAL_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00018066, 0.00010507, 7.67972e-05, 6.12378e-05, 5.1053e-05, 4.36938e-05, 3.80334e-05, 3.34916e-05, 2.97376e-05, 2.65668e-05, 2.38452e-05, 2.148e-05, 1.94049e-05, 1.75707e-05, 1.59397e-05, 1.44824e-05, 
			0.000192192, 0.000113975, 8.40192e-05, 6.73096e-05, 5.62596e-05, 4.82266e-05, 4.20232e-05, 3.7033e-05, 3.29008e-05, 2.94064e-05, 2.6404e-05, 2.3793e-05, 2.1501e-05, 1.9474e-05, 1.7671e-05, 1.60592e-05, 
			0.000198999, 0.000119716, 8.88636e-05, 7.14554e-05, 5.98732e-05, 5.14042e-05, 4.4841e-05, 3.9548e-05, 3.51572e-05, 3.1439e-05, 2.8241e-05, 2.54576e-05, 2.30126e-05, 2.0849e-05, 1.89236e-05, 1.72014e-05, 
			0.000203652, 0.000123814, 9.24112e-05, 7.4544e-05, 6.25822e-05, 5.38046e-05, 4.69816e-05, 4.14668e-05, 3.68844e-05, 3.29992e-05, 2.9654e-05, 2.67404e-05, 2.41794e-05, 2.19118e-05, 1.98924e-05, 1.80858e-05, 
			0.000206642, 0.000126779, 9.50546e-05, 7.68816e-05, 6.4655e-05, 5.5656e-05, 4.86426e-05, 4.29612e-05, 3.82334e-05, 3.42202e-05, 3.0762e-05, 2.77478e-05, 2.50964e-05, 2.2748e-05, 2.06556e-05, 1.87828e-05
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

CapTable	"metal2_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167581, 8.89204e-05, 5.89476e-05, 4.26366e-05, 3.23402e-05, 2.5294e-05, 2.02222e-05, 1.64417e-05, 1.35498e-05, 1.12921e-05, 9.50018e-06, 8.05794e-06, 6.88318e-06, 5.91626e-06, 5.11308e-06, 4.44044e-06, 
			0.000174447, 9.4125e-05, 6.31522e-05, 4.6177e-05, 3.53644e-05, 2.7904e-05, 2.2489e-05, 1.84191e-05, 1.52806e-05, 1.28114e-05, 1.08372e-05, 9.2373e-06, 7.92576e-06, 6.83974e-06, 5.93264e-06, 5.16896e-06, 
			0.000177924, 9.72926e-05, 6.59328e-05, 4.86104e-05, 3.75212e-05, 2.98104e-05, 2.41764e-05, 1.99146e-05, 1.66073e-05, 1.39897e-05, 1.18848e-05, 1.01697e-05, 8.75666e-06, 7.58092e-06, 6.59454e-06, 5.7606e-06, 
			0.000180245, 9.95816e-05, 6.80318e-05, 5.05032e-05, 3.92136e-05, 3.13292e-05, 2.55374e-05, 2.11328e-05, 1.76976e-05, 1.49654e-05, 1.27582e-05, 1.09518e-05, 9.45724e-06, 8.2089e-06, 7.15772e-06, 6.26596e-06, 
			0.000181596, 0.000101283, 6.96694e-05, 5.20138e-05, 4.0587e-05, 3.2578e-05, 2.66684e-05, 2.21522e-05, 1.86151e-05, 1.57909e-05, 1.35005e-05, 1.16194e-05, 1.00574e-05, 8.74878e-06, 7.64326e-06, 6.70292e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.15114e-05, 4.19328e-05, 5.02152e-05, 5.66996e-05, 6.17684e-05, 6.57516e-05, 6.89059e-05, 7.1426e-05, 7.34584e-05, 7.51136e-05, 7.64743e-05, 7.76033e-05, 7.85485e-05, 7.93466e-05, 8.00262e-05, 8.06094e-05, 
			4.41232e-05, 5.43169e-05, 6.2489e-05, 6.89524e-05, 7.40676e-05, 7.81338e-05, 8.13906e-05, 8.40208e-05, 8.61648e-05, 8.7929e-05, 8.93924e-05, 9.06182e-05, 9.16533e-05, 9.25351e-05, 9.32918e-05, 9.39449e-05, 
			5.65648e-05, 6.64624e-05, 7.44558e-05, 8.08362e-05, 8.59262e-05, 9.00116e-05, 9.33126e-05, 9.60014e-05, 9.82118e-05, 0.000100044, 0.000101576, 0.00010287, 0.000103968, 0.000104912, 0.000105725, 0.000106433, 
			6.87246e-05, 7.83715e-05, 8.61944e-05, 9.24802e-05, 9.7532e-05, 0.000101612, 0.000104932, 0.000107655, 0.000109909, 0.00011179, 0.000113373, 0.000114716, 0.000115867, 0.000116858, 0.000117719, 0.000118472, 
			8.0618e-05, 9.00032e-05, 9.76624e-05, 0.00010385, 0.000108855, 0.000112916, 0.000116241, 0.000118986, 0.00012127, 0.000123186, 0.000124808, 0.000126193, 0.000127384, 0.000128416, 0.000129316, 0.000130108
		)
}

CapTable	"metal2_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.0001688, 9.07012e-05, 6.12478e-05, 4.53924e-05, 3.54818e-05, 2.8754e-05, 2.39398e-05, 2.03648e-05, 1.76344e-05, 1.55014e-05, 1.38039e-05, 1.24312e-05, 1.13056e-05, 1.03711e-05, 9.5865e-06, 8.92114e-06, 
			0.000176542, 9.6906e-05, 6.6558e-05, 5.01256e-05, 3.97704e-05, 3.26872e-05, 2.75774e-05, 2.37512e-05, 2.08042e-05, 1.8483e-05, 1.66206e-05, 1.51028e-05, 1.38487e-05, 1.27999e-05, 1.19132e-05, 1.11561e-05, 
			0.000181089, 0.000101255, 7.06102e-05, 5.39048e-05, 4.33328e-05, 3.60474e-05, 3.07574e-05, 2.67696e-05, 2.36772e-05, 2.12252e-05, 1.92448e-05, 1.76203e-05, 1.62696e-05, 1.51331e-05, 1.41666e-05, 1.33366e-05, 
			0.000184661, 0.000104895, 7.41426e-05, 5.72968e-05, 4.6577e-05, 3.91594e-05, 3.3744e-05, 2.96386e-05, 2.64372e-05, 2.38844e-05, 2.1811e-05, 2.01008e-05, 1.86711e-05, 1.74618e-05, 1.6428e-05, 1.55357e-05, 
			0.000187428, 0.000108102, 7.73576e-05, 6.04426e-05, 4.96314e-05, 4.2125e-05, 3.66194e-05, 3.2423e-05, 2.91352e-05, 2.65006e-05, 2.43508e-05, 2.2569e-05, 2.10724e-05, 1.98004e-05, 1.8708e-05, 1.77609e-05
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
			3.0028e-05, 4.02332e-05, 4.83903e-05, 5.48059e-05, 5.98425e-05, 6.3813e-05, 6.69623e-05, 6.94793e-05, 7.15055e-05, 7.31506e-05, 7.44963e-05, 7.56044e-05, 7.65244e-05, 7.72932e-05, 7.79401e-05, 7.84891e-05, 
			4.28027e-05, 5.29923e-05, 6.1204e-05, 6.77261e-05, 7.2907e-05, 7.70365e-05, 8.03473e-05, 8.30196e-05, 8.51915e-05, 8.69714e-05, 8.84393e-05, 8.96575e-05, 9.06773e-05, 9.15332e-05, 9.22596e-05, 9.28775e-05, 
			5.56976e-05, 6.57877e-05, 7.39724e-05, 8.0533e-05, 8.57823e-05, 9.00039e-05, 9.34165e-05, 9.61921e-05, 9.84636e-05, 0.000100337, 0.000101891, 0.000103191, 0.000104285, 0.000105206, 0.000105993, 0.000106663, 
			6.85914e-05, 7.86127e-05, 8.67708e-05, 9.33491e-05, 9.86504e-05, 0.000102936, 0.00010642, 0.000109272, 0.00011162, 0.000113567, 0.000115189, 0.000116554, 0.000117706, 0.000118682, 0.000119516, 0.000120231, 
			8.14753e-05, 9.14018e-05, 9.95294e-05, 0.000106117, 0.000111454, 0.000115786, 0.000119327, 0.00012224, 0.000124649, 0.000126657, 0.000128334, 0.000129751, 0.000130948, 0.000131972, 0.000132845, 0.000133599
		)
}

CapTable	"metal2_C_TOP_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.03748e-06, 4.08044e-06, 4.99812e-06, 5.77852e-06, 6.42616e-06, 6.95617e-06, 7.38816e-06, 7.73988e-06, 8.02802e-06, 8.26402e-06, 8.4586e-06, 8.62105e-06, 8.7564e-06, 8.87019e-06, 8.96606e-06, 9.04568e-06, 
			4.06305e-06, 5.10071e-06, 6.02983e-06, 6.83085e-06, 7.50464e-06, 8.06353e-06, 8.52468e-06, 8.90434e-06, 9.21893e-06, 9.47918e-06, 9.69548e-06, 9.87718e-06, 1.00289e-05, 1.01591e-05, 1.02678e-05, 1.03605e-05, 
			5.09443e-06, 6.12366e-06, 7.05675e-06, 7.86955e-06, 8.55847e-06, 9.13572e-06, 9.61509e-06, 1.00133e-05, 1.03461e-05, 1.06233e-05, 1.08559e-05, 1.10515e-05, 1.12147e-05, 1.1358e-05, 1.14756e-05, 1.15807e-05, 
			6.12041e-06, 7.14472e-06, 8.0814e-06, 8.90267e-06, 9.60302e-06, 1.0194e-05, 1.06883e-05, 1.11008e-05, 1.14471e-05, 1.17364e-05, 1.19823e-05, 1.21883e-05, 1.23629e-05, 1.25144e-05, 1.26423e-05, 1.27538e-05, 
			7.1489e-06, 8.16799e-06, 9.10723e-06, 9.93387e-06, 1.06432e-05, 1.12446e-05, 1.17498e-05, 1.21742e-05, 1.25311e-05, 1.28294e-05, 1.3087e-05, 1.33003e-05, 1.34872e-05, 1.36436e-05, 1.37813e-05, 1.3898e-05
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

CapTable	"metal2_C_LATERAL_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177982, 0.000101698, 7.29924e-05, 5.72302e-05, 4.70356e-05, 3.9821e-05, 3.44238e-05, 3.02326e-05, 2.68898e-05, 2.4169e-05, 2.19188e-05, 2.00326e-05, 1.84336e-05, 1.70644e-05, 1.58813e-05, 1.48506e-05, 
			0.000188603, 0.000109895, 7.97128e-05, 6.29982e-05, 5.21204e-05, 4.43966e-05, 3.86024e-05, 3.40916e-05, 3.04842e-05, 2.75396e-05, 2.50964e-05, 2.30414e-05, 2.1293e-05, 1.97901e-05, 1.84864e-05, 1.73461e-05, 
			0.000194776, 0.000115248, 8.43926e-05, 6.71794e-05, 5.59444e-05, 4.79342e-05, 4.19086e-05, 3.72044e-05, 3.34316e-05, 3.03426e-05, 2.77712e-05, 2.56014e-05, 2.37486e-05, 2.215e-05, 2.07582e-05, 1.95361e-05, 
			0.000199116, 0.000119277, 8.80876e-05, 7.05996e-05, 5.914e-05, 5.09516e-05, 4.47748e-05, 3.99396e-05, 3.60506e-05, 3.28572e-05, 3.01906e-05, 2.7933e-05, 2.59988e-05, 2.43244e-05, 2.28612e-05, 2.15718e-05, 
			0.00020211, 0.000122477, 9.1159e-05, 7.35258e-05, 6.19336e-05, 5.3633e-05, 4.73552e-05, 4.2426e-05, 3.84506e-05, 3.51772e-05, 3.24358e-05, 3.01076e-05, 2.81068e-05, 2.63688e-05, 2.48452e-05, 2.3498e-05
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

CapTable	"metal2_C_TOP_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.51023e-06, 4.56793e-06, 5.5038e-06, 6.33984e-06, 7.08539e-06, 7.7485e-06, 8.33638e-06, 8.8559e-06, 9.31393e-06, 9.71747e-06, 1.0073e-05, 1.03857e-05, 1.06603e-05, 1.09029e-05, 1.11163e-05, 1.13045e-05, 
			4.46741e-06, 5.50236e-06, 6.45061e-06, 7.31492e-06, 8.09496e-06, 8.79406e-06, 9.41809e-06, 9.97285e-06, 1.04651e-05, 1.09006e-05, 1.12862e-05, 1.16267e-05, 1.19269e-05, 1.21931e-05, 1.24286e-05, 1.26369e-05, 
			5.43426e-06, 6.46148e-06, 7.41929e-06, 8.29961e-06, 9.09948e-06, 9.82069e-06, 1.04673e-05, 1.10453e-05, 1.15598e-05, 1.20163e-05, 1.24222e-05, 1.27819e-05, 1.31006e-05, 1.33836e-05, 1.36346e-05, 1.38578e-05, 
			6.41415e-06, 7.43992e-06, 8.4029e-06, 9.29343e-06, 1.01068e-05, 1.08437e-05, 1.15066e-05, 1.21013e-05, 1.2632e-05, 1.31044e-05, 1.35254e-05, 1.39e-05, 1.42326e-05, 1.45289e-05, 1.47922e-05, 1.50268e-05, 
			7.40759e-06, 8.42976e-06, 9.39651e-06, 1.02944e-05, 1.1118e-05, 1.18659e-05, 1.25404e-05, 1.31473e-05, 1.36907e-05, 1.41758e-05, 1.4609e-05, 1.49949e-05, 1.53391e-05, 1.56455e-05, 1.59189e-05, 1.61625e-05
		)
}

CapTable	"metal2_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176472, 9.95952e-05, 7.03172e-05, 5.4012e-05, 4.33128e-05, 3.5638e-05, 2.98276e-05, 2.52708e-05, 2.1609e-05, 1.86137e-05, 1.61303e-05, 1.40493e-05, 1.22903e-05, 1.07927e-05, 9.50966e-06, 8.40444e-06, 
			0.000186331, 0.000106945, 7.61028e-05, 5.87642e-05, 4.73078e-05, 3.9057e-05, 3.27908e-05, 2.78626e-05, 2.38916e-05, 2.06346e-05, 1.79266e-05, 1.56511e-05, 1.37224e-05, 1.20758e-05, 1.06613e-05, 9.43966e-06, 
			0.000191624, 0.000111339, 7.97518e-05, 6.18482e-05, 4.9976e-05, 4.13874e-05, 3.4845e-05, 2.96854e-05, 2.5517e-05, 2.2089e-05, 1.92317e-05, 1.68248e-05, 1.47795e-05, 1.30293e-05, 1.15223e-05, 1.02178e-05, 
			0.000194974, 0.000114307, 8.23228e-05, 6.4089e-05, 5.19438e-05, 4.31352e-05, 3.64064e-05, 3.10864e-05, 2.67778e-05, 2.32264e-05, 2.02596e-05, 1.77548e-05, 1.56218e-05, 1.37927e-05, 1.22146e-05, 1.0846e-05, 
			0.000196877, 0.000116357, 8.41908e-05, 6.57652e-05, 5.34472e-05, 4.44932e-05, 3.76358e-05, 3.21994e-05, 2.77872e-05, 2.41428e-05, 2.10922e-05, 1.85118e-05, 1.63105e-05, 1.44192e-05, 1.27848e-05, 1.13649e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.75258e-05, 2.25732e-05, 2.6876e-05, 3.05854e-05, 3.37975e-05, 3.6585e-05, 3.90069e-05, 4.11143e-05, 4.29511e-05, 4.45558e-05, 4.59613e-05, 4.71964e-05, 4.82853e-05, 4.92493e-05, 5.01061e-05, 5.08709e-05, 
			2.22754e-05, 2.71466e-05, 3.14292e-05, 3.51777e-05, 3.84556e-05, 4.1319e-05, 4.38213e-05, 4.60096e-05, 4.79265e-05, 4.96093e-05, 5.10908e-05, 5.23993e-05, 5.3559e-05, 5.4591e-05, 5.5513e-05, 5.63402e-05, 
			2.70062e-05, 3.17464e-05, 3.59664e-05, 3.96926e-05, 4.29683e-05, 4.58461e-05, 4.83725e-05, 5.05923e-05, 5.25455e-05, 5.42681e-05, 5.57917e-05, 5.71434e-05, 5.83471e-05, 5.94233e-05, 6.03893e-05, 6.12601e-05, 
			3.1691e-05, 3.6319e-05, 4.04594e-05, 4.41344e-05, 4.7383e-05, 5.02474e-05, 5.27737e-05, 5.50024e-05, 5.69719e-05, 5.8716e-05, 6.02652e-05, 6.16456e-05, 6.28803e-05, 6.39887e-05, 6.49882e-05, 6.58932e-05, 
			3.6315e-05, 4.08142e-05, 4.4866e-05, 4.84792e-05, 5.16854e-05, 5.4524e-05, 5.70368e-05, 5.9262e-05, 6.12371e-05, 6.29927e-05, 6.45583e-05, 6.5959e-05, 6.72166e-05, 6.83506e-05, 6.93769e-05, 7.03099e-05
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
			1.58926e-05, 2.07249e-05, 2.4934e-05, 2.86287e-05, 3.18759e-05, 3.47279e-05, 3.72292e-05, 3.94204e-05, 4.13383e-05, 4.30157e-05, 4.4483e-05, 4.57672e-05, 4.68929e-05, 4.78793e-05, 4.8746e-05, 4.95086e-05, 
			2.06796e-05, 2.54988e-05, 2.98176e-05, 3.36594e-05, 3.7066e-05, 4.00767e-05, 4.27302e-05, 4.50651e-05, 4.71166e-05, 4.89184e-05, 5.05004e-05, 5.18905e-05, 5.31134e-05, 5.41888e-05, 5.51365e-05, 5.59729e-05, 
			2.56183e-05, 3.04477e-05, 3.48219e-05, 3.87432e-05, 4.22365e-05, 4.53379e-05, 4.80818e-05, 5.0504e-05, 5.26398e-05, 5.45224e-05, 5.61802e-05, 5.76413e-05, 5.89301e-05, 6.00669e-05, 6.10716e-05, 6.19602e-05, 
			3.0669e-05, 3.55157e-05, 3.99213e-05, 4.38886e-05, 4.74364e-05, 5.05951e-05, 5.3399e-05, 5.58809e-05, 5.80764e-05, 6.00167e-05, 6.17301e-05, 6.32436e-05, 6.4582e-05, 6.57653e-05, 6.68135e-05, 6.77425e-05, 
			3.58092e-05, 4.06438e-05, 4.50637e-05, 4.90564e-05, 5.26378e-05, 5.58349e-05, 5.86798e-05, 6.12063e-05, 6.34461e-05, 6.54294e-05, 6.71848e-05, 6.87393e-05, 7.01154e-05, 7.13363e-05, 7.24193e-05, 7.33806e-05
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

CapTable	"metal2_C_BOTTOM_GP_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.15628e-05, 1.43096e-05, 1.65111e-05, 1.83412e-05, 1.98987e-05, 2.12464e-05, 2.24266e-05, 2.34701e-05, 2.44e-05, 2.52349e-05, 2.5989e-05, 2.66745e-05, 2.73015e-05, 2.78777e-05, 2.84102e-05, 2.89046e-05, 
			1.36754e-05, 1.61126e-05, 1.81688e-05, 1.99292e-05, 2.14557e-05, 2.27932e-05, 2.39755e-05, 2.50292e-05, 2.59743e-05, 2.6828e-05, 2.76037e-05, 2.83127e-05, 2.89643e-05, 2.95665e-05, 3.01254e-05, 3.06469e-05, 
			1.5608e-05, 1.78358e-05, 1.97666e-05, 2.14502e-05, 2.29277e-05, 2.42355e-05, 2.54012e-05, 2.64468e-05, 2.73908e-05, 2.82484e-05, 2.90319e-05, 2.97516e-05, 3.04164e-05, 3.10334e-05, 3.16089e-05, 3.21481e-05, 
			1.7399e-05, 1.94725e-05, 2.12948e-05, 2.29026e-05, 2.43292e-05, 2.56014e-05, 2.67432e-05, 2.7774e-05, 2.87103e-05, 2.95652e-05, 3.03502e-05, 3.1075e-05, 3.17474e-05, 3.23741e-05, 3.29612e-05, 3.35134e-05, 
			1.9086e-05, 2.1022e-05, 2.27486e-05, 2.42868e-05, 2.56616e-05, 2.68976e-05, 2.80135e-05, 2.9027e-05, 2.99524e-05, 3.08017e-05, 3.15854e-05, 3.2312e-05, 3.29891e-05, 3.3623e-05, 3.42188e-05, 3.47811e-05
		)
}

CapTable	"metal2_C_LATERAL_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182668, 0.000107835, 8.03362e-05, 6.5559e-05, 5.61548e-05, 4.9564e-05, 4.465e-05, 4.0825e-05, 3.77516e-05, 3.52204e-05, 3.30944e-05, 3.1279e-05, 2.9707e-05, 2.83296e-05, 2.71098e-05, 2.60196e-05, 
			0.000195089, 0.000117777, 8.87472e-05, 7.29644e-05, 6.28284e-05, 5.5685e-05, 5.03368e-05, 4.61592e-05, 4.27924e-05, 4.00116e-05, 3.76692e-05, 3.56636e-05, 3.39224e-05, 3.23924e-05, 3.10342e-05, 2.9817e-05, 
			0.000202992, 0.000124758, 9.49634e-05, 7.86018e-05, 6.80398e-05, 6.05526e-05, 5.49238e-05, 5.05118e-05, 4.6944e-05, 4.3988e-05, 4.14904e-05, 3.93458e-05, 3.74784e-05, 3.58332e-05, 3.43686e-05, 3.30528e-05, 
			0.00020894, 0.000130277, 0.000100045, 8.33224e-05, 7.2464e-05, 6.4738e-05, 5.89076e-05, 5.43216e-05, 5.0601e-05, 4.7509e-05, 4.48888e-05, 4.26322e-05, 4.0662e-05, 3.89216e-05, 3.73682e-05, 3.59692e-05, 
			0.000213396, 0.000134816, 0.000104353, 8.74012e-05, 7.63404e-05, 6.84438e-05, 6.24632e-05, 5.77418e-05, 5.38996e-05, 5.06972e-05, 4.79756e-05, 4.56254e-05, 4.3568e-05, 4.17458e-05, 4.01156e-05, 3.86442e-05
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

CapTable	"metal2_C_BOTTOM_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.20859e-05, 1.54223e-05, 1.82768e-05, 2.07854e-05, 2.3026e-05, 2.50467e-05, 2.68789e-05, 2.85451e-05, 3.00629e-05, 3.14459e-05, 3.27075e-05, 3.38577e-05, 3.49059e-05, 3.58618e-05, 3.67333e-05, 3.75268e-05, 
			1.50784e-05, 1.82803e-05, 2.11451e-05, 2.37298e-05, 2.60775e-05, 2.82178e-05, 3.01738e-05, 3.19636e-05, 3.36016e-05, 3.51003e-05, 3.64715e-05, 3.77262e-05, 3.88723e-05, 3.99197e-05, 4.08765e-05, 4.17494e-05, 
			1.80653e-05, 2.12102e-05, 2.40896e-05, 2.67269e-05, 2.91447e-05, 3.13661e-05, 3.34064e-05, 3.52814e-05, 3.70031e-05, 3.85829e-05, 4.0032e-05, 4.13602e-05, 4.25761e-05, 4.36898e-05, 4.47072e-05, 4.56384e-05, 
			2.10765e-05, 2.42077e-05, 2.71053e-05, 2.97832e-05, 3.22563e-05, 3.45384e-05, 3.66425e-05, 3.85817e-05, 4.03673e-05, 4.20087e-05, 4.3517e-05, 4.49021e-05, 4.61715e-05, 4.73358e-05, 4.84e-05, 4.93754e-05, 
			2.41422e-05, 2.72592e-05, 3.01753e-05, 3.28864e-05, 3.54017e-05, 3.77307e-05, 3.98844e-05, 4.1874e-05, 4.37093e-05, 4.53989e-05, 4.6955e-05, 4.83833e-05, 4.96959e-05, 5.08982e-05, 5.20013e-05, 5.301e-05
		)
}

CapTable	"metal2_C_TOP_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.92907e-06, 5.01512e-06, 5.95171e-06, 6.78189e-06, 7.52773e-06, 8.20325e-06, 8.81772e-06, 9.37812e-06, 9.89005e-06, 1.03582e-05, 1.07856e-05, 1.11763e-05, 1.15335e-05, 1.18594e-05, 1.21565e-05, 1.24282e-05, 
			4.84881e-06, 5.88147e-06, 6.81568e-06, 7.66569e-06, 8.44329e-06, 9.15633e-06, 9.81087e-06, 1.04117e-05, 1.09636e-05, 1.14707e-05, 1.19355e-05, 1.23613e-05, 1.2752e-05, 1.31095e-05, 1.34363e-05, 1.37355e-05, 
			5.75845e-06, 6.76562e-06, 7.70021e-06, 8.56467e-06, 9.3636e-06, 1.0102e-05, 1.07843e-05, 1.14134e-05, 1.19934e-05, 1.25278e-05, 1.30191e-05, 1.34703e-05, 1.38852e-05, 1.42645e-05, 1.46133e-05, 1.49317e-05, 
			6.67148e-06, 7.66834e-06, 8.60534e-06, 9.48118e-06, 1.02969e-05, 1.10547e-05, 1.1758e-05, 1.24087e-05, 1.301e-05, 1.35655e-05, 1.40772e-05, 1.45479e-05, 1.49813e-05, 1.53783e-05, 1.57444e-05, 1.60786e-05, 
			7.59575e-06, 8.58556e-06, 9.52648e-06, 1.04128e-05, 1.12419e-05, 1.20153e-05, 1.27352e-05, 1.34029e-05, 1.40211e-05, 1.45934e-05, 1.51203e-05, 1.56073e-05, 1.60545e-05, 1.64672e-05, 1.68451e-05, 1.71933e-05
		)
}

CapTable	"metal2_C_LATERAL_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179068, 0.000103059, 7.44748e-05, 5.8688e-05, 4.83434e-05, 4.0879e-05, 3.51584e-05, 3.05938e-05, 2.68468e-05, 2.37076e-05, 2.10372e-05, 1.87388e-05, 1.67429e-05, 1.4997e-05, 1.34611e-05, 1.21036e-05, 
			0.000190099, 0.000111539, 8.13282e-05, 6.4433e-05, 5.32542e-05, 4.51402e-05, 3.8895e-05, 3.38958e-05, 2.9782e-05, 2.63282e-05, 2.33852e-05, 2.08482e-05, 1.8642e-05, 1.67098e-05, 1.50081e-05, 1.35025e-05, 
			0.000196509, 0.000116953, 8.58952e-05, 6.83384e-05, 5.66558e-05, 4.81262e-05, 4.15368e-05, 3.62466e-05, 3.18834e-05, 2.82132e-05, 2.50804e-05, 2.23764e-05, 2.00216e-05, 1.79573e-05, 1.61373e-05, 1.45254e-05, 
			0.000200856, 0.000120799, 8.92324e-05, 7.12476e-05, 5.92078e-05, 5.03862e-05, 4.35492e-05, 3.80466e-05, 3.34988e-05, 2.96672e-05, 2.6392e-05, 2.35612e-05, 2.10938e-05, 1.89283e-05, 1.70175e-05, 1.53238e-05, 
			0.000203606, 0.000123572, 9.17172e-05, 7.34508e-05, 6.11634e-05, 5.2134e-05, 4.51162e-05, 3.94538e-05, 3.4766e-05, 3.08108e-05, 2.74256e-05, 2.44972e-05, 2.1942e-05, 1.96977e-05, 1.77158e-05, 1.59581e-05
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

CapTable	"metal1_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000172133, 9.106e-05, 5.95696e-05, 4.23848e-05, 3.16108e-05, 2.43314e-05, 1.91747e-05, 1.53972e-05, 1.25578e-05, 1.03785e-05, 8.67614e-06, 7.32596e-06, 6.2407e-06, 5.35802e-06, 4.6324e-06, 4.0302e-06, 
			0.000179923, 9.6812e-05, 6.41658e-05, 4.62126e-05, 3.48576e-05, 2.7116e-05, 2.15794e-05, 1.74838e-05, 1.43756e-05, 1.19675e-05, 1.00694e-05, 8.55108e-06, 7.32086e-06, 6.31274e-06, 5.47822e-06, 4.78112e-06, 
			0.000183672, 0.000100206, 6.71474e-05, 4.88356e-05, 3.7173e-05, 2.91602e-05, 2.33854e-05, 1.90808e-05, 1.5789e-05, 1.32199e-05, 1.11805e-05, 9.53828e-06, 8.19926e-06, 7.09548e-06, 6.17676e-06, 5.40542e-06, 
			0.000185764, 0.000102562, 6.93574e-05, 5.0843e-05, 3.8988e-05, 3.0797e-05, 2.4851e-05, 2.03914e-05, 1.69603e-05, 1.42665e-05, 1.2116e-05, 1.03749e-05, 8.94804e-06, 7.76622e-06, 6.77814e-06, 5.9451e-06, 
			0.000187499, 0.000104476, 7.11822e-05, 5.25268e-05, 4.05204e-05, 3.2178e-05, 2.60988e-05, 2.15156e-05, 1.79717e-05, 1.51758e-05, 1.29333e-05, 1.11097e-05, 9.60888e-06, 8.36092e-06, 7.31366e-06, 6.42766e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.3013e-05, 5.75822e-05, 6.90694e-05, 7.79456e-05, 8.47682e-05, 9.00238e-05, 9.40965e-05, 9.72807e-05, 9.97944e-05, 0.0001018, 0.000103416, 0.000104732, 0.000105812, 0.000106709, 0.000107458, 0.000108088, 
			6.11542e-05, 7.57392e-05, 8.73226e-05, 9.63664e-05, 0.000103402, 0.000108887, 0.00011319, 0.000116592, 0.000119307, 0.000121494, 0.000123273, 0.000124734, 0.000125945, 0.000126955, 0.000127806, 0.000128527, 
			7.95112e-05, 9.3933e-05, 0.000105462, 0.000114542, 0.000121668, 0.000127276, 0.000131713, 0.000135252, 0.0001381, 0.000140412, 0.000142307, 0.000143873, 0.00014518, 0.000146278, 0.000147207, 0.000147999, 
			9.7828e-05, 0.000112039, 0.000123471, 0.000132536, 0.000139698, 0.000145369, 0.000149893, 0.000153524, 0.000156465, 0.000158867, 0.000160848, 0.000162495, 0.000163876, 0.000165043, 0.000166036, 0.000166887, 
			0.000116152, 0.000130249, 0.000141627, 0.000150693, 0.000157896, 0.000163634, 0.000168233, 0.000171945, 0.000174967, 0.000177451, 0.000179508, 0.000181227, 0.000182675, 0.000183904, 0.000184955, 0.00018586
		)
}

CapTable	"metal1_C_LATERAL_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000171895, 9.06068e-05, 5.89326e-05, 4.15884e-05, 3.06758e-05, 2.32752e-05, 1.80115e-05, 1.41383e-05, 1.12126e-05, 8.95474e-06, 7.18066e-06, 5.76488e-06, 4.61968e-06, 3.68228e-06, 2.90694e-06, 2.25972e-06, 
			0.000179861, 9.66018e-05, 6.38084e-05, 4.57146e-05, 3.42296e-05, 2.63696e-05, 2.07264e-05, 1.65348e-05, 1.33394e-05, 1.08518e-05, 8.881e-06, 7.29592e-06, 6.00438e-06, 4.93986e-06, 4.05356e-06, 3.30898e-06, 
			0.000183832, 0.000100249, 6.70618e-05, 4.86208e-05, 3.6835e-05, 2.87084e-05, 2.283e-05, 1.84311e-05, 1.50533e-05, 1.24052e-05, 1.02932e-05, 8.58366e-06, 7.1822e-06, 6.02032e-06, 5.04752e-06, 4.2258e-06, 
			0.000186185, 0.000102896, 6.95858e-05, 5.09608e-05, 3.89972e-05, 3.07046e-05, 2.46644e-05, 2.01178e-05, 1.66063e-05, 1.38379e-05, 1.16176e-05, 9.81098e-06, 8.32222e-06, 7.0818e-06, 6.03812e-06, 5.1523e-06, 
			0.000188161, 0.000105058, 7.16672e-05, 5.2907e-05, 4.07972e-05, 3.23568e-05, 2.61854e-05, 2.15166e-05, 1.78925e-05, 1.50212e-05, 1.27074e-05, 1.08158e-05, 9.25004e-06, 7.93968e-06, 6.83246e-06, 5.8888e-06
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
			4.05857e-05, 5.40561e-05, 6.45636e-05, 7.26119e-05, 7.87588e-05, 8.3465e-05, 8.70916e-05, 8.99093e-05, 9.21224e-05, 9.38752e-05, 9.52782e-05, 9.64127e-05, 9.73384e-05, 9.80996e-05, 9.87322e-05, 9.92609e-05, 
			5.81758e-05, 7.17449e-05, 8.2395e-05, 9.06367e-05, 9.69964e-05, 0.000101926, 0.000105768, 0.000108788, 0.000111185, 0.000113105, 0.000114657, 0.000115922, 0.000116965, 0.000117829, 0.000118553, 0.000119161, 
			7.60131e-05, 8.94802e-05, 0.000100116, 0.000108414, 0.000114872, 0.000119924, 0.000123899, 0.00012705, 0.000129572, 0.000131608, 0.000133266, 0.000134628, 0.000135757, 0.0001367, 0.000137492, 0.000138163, 
			9.38739e-05, 0.00010719, 0.00011778, 0.000126096, 0.000132615, 0.000137746, 0.000141815, 0.000145063, 0.00014768, 0.000149806, 0.000151546, 0.000152987, 0.000154185, 0.000155192, 0.000156042, 0.000156765, 
			0.000111729, 0.000124958, 0.000135516, 0.000143848, 0.000150416, 0.000155617, 0.000159759, 0.000163085, 0.000165778, 0.000167977, 0.000169788, 0.000171292, 0.000172549, 0.00017361, 0.000174509, 0.000175277
		)
}

CapTable	"metal1_C_TOP_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.15571e-06, 2.90995e-06, 3.56282e-06, 4.10433e-06, 4.53536e-06, 4.87762e-06, 5.14865e-06, 5.36449e-06, 5.53372e-06, 5.6703e-06, 5.78067e-06, 5.87036e-06, 5.94386e-06, 6.00441e-06, 6.05543e-06, 6.09785e-06, 
			2.90463e-06, 3.66113e-06, 4.32824e-06, 4.88174e-06, 5.33597e-06, 5.6984e-06, 5.98971e-06, 6.2244e-06, 6.41117e-06, 6.5633e-06, 6.68742e-06, 6.78953e-06, 6.87373e-06, 6.9446e-06, 7.00326e-06, 7.05376e-06, 
			3.6645e-06, 4.41377e-06, 5.08133e-06, 5.64578e-06, 6.11222e-06, 6.48752e-06, 6.79187e-06, 7.03845e-06, 7.23837e-06, 7.40144e-06, 7.5354e-06, 7.64703e-06, 7.73938e-06, 7.81782e-06, 7.88351e-06, 7.93944e-06, 
			4.41585e-06, 5.16594e-06, 5.83377e-06, 6.4049e-06, 6.8784e-06, 7.26286e-06, 7.57685e-06, 7.8329e-06, 8.04221e-06, 8.21388e-06, 8.35668e-06, 8.47463e-06, 8.57462e-06, 8.65776e-06, 8.72971e-06, 8.79053e-06, 
			5.16734e-06, 5.91685e-06, 6.58695e-06, 7.1622e-06, 7.64087e-06, 8.03399e-06, 8.35566e-06, 8.61898e-06, 8.8363e-06, 9.01522e-06, 9.1648e-06, 9.28939e-06, 9.39468e-06, 9.48365e-06, 9.55967e-06, 9.6247e-06
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

CapTable	"metal1_C_LATERAL_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000187427, 0.000109557, 7.95236e-05, 6.26606e-05, 5.15138e-05, 4.34604e-05, 3.73192e-05, 3.24672e-05, 2.85386e-05, 2.53e-05, 2.25938e-05, 2.03076e-05, 1.83591e-05, 1.66861e-05, 1.52403e-05, 1.39835e-05, 
			0.000200534, 0.00011944, 8.74502e-05, 6.92932e-05, 5.72224e-05, 4.84798e-05, 4.18042e-05, 3.65258e-05, 3.22482e-05, 2.87182e-05, 2.57644e-05, 2.32654e-05, 2.11316e-05, 1.92956e-05, 1.77053e-05, 1.63196e-05, 
			0.000207648, 0.000125299, 9.2349e-05, 7.35032e-05, 6.09256e-05, 5.17944e-05, 4.48128e-05, 3.92862e-05, 3.48028e-05, 3.1099e-05, 2.7996e-05, 2.5367e-05, 2.31188e-05, 2.1181e-05, 1.94996e-05, 1.80318e-05, 
			0.000211638, 0.000128937, 9.54958e-05, 7.62594e-05, 6.3391e-05, 5.4036e-05, 4.68728e-05, 4.1199e-05, 3.65932e-05, 3.27858e-05, 2.95932e-05, 2.6886e-05, 2.45686e-05, 2.25688e-05, 2.08314e-05, 1.93128e-05, 
			0.000214134, 0.000131229, 9.75094e-05, 7.80518e-05, 6.50152e-05, 5.55334e-05, 4.8277e-05, 4.25292e-05, 3.78634e-05, 3.40056e-05, 3.07698e-05, 2.80242e-05, 2.56724e-05, 2.36414e-05, 2.18752e-05, 2.03296e-05
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

CapTable	"metal1_C_TOP_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.75348e-06, 3.54997e-06, 4.24414e-06, 4.85983e-06, 5.41091e-06, 5.90308e-06, 6.34734e-06, 6.74479e-06, 7.10053e-06, 7.41854e-06, 7.70254e-06, 7.95579e-06, 8.18144e-06, 8.38319e-06, 8.56255e-06, 8.72257e-06, 
			3.42397e-06, 4.2017e-06, 4.90262e-06, 5.54338e-06, 6.12346e-06, 6.64884e-06, 7.12367e-06, 7.55076e-06, 7.93514e-06, 8.28012e-06, 8.58912e-06, 8.86594e-06, 9.11319e-06, 9.33504e-06, 9.5332e-06, 9.71049e-06, 
			4.11118e-06, 4.88103e-06, 5.58847e-06, 6.24343e-06, 6.84087e-06, 7.38561e-06, 7.8794e-06, 8.32584e-06, 8.72906e-06, 9.0915e-06, 9.41774e-06, 9.71046e-06, 9.97283e-06, 1.02087e-05, 1.04202e-05, 1.06099e-05, 
			4.81241e-06, 5.57445e-06, 6.29086e-06, 6.95373e-06, 7.56277e-06, 8.1205e-06, 8.6278e-06, 9.08758e-06, 9.50428e-06, 9.87953e-06, 1.02182e-05, 1.05229e-05, 1.07969e-05, 1.10434e-05, 1.12652e-05, 1.14649e-05, 
			5.52341e-06, 6.28509e-06, 7.00555e-06, 7.67525e-06, 8.29315e-06, 8.8609e-06, 9.37822e-06, 9.84888e-06, 1.02759e-05, 1.06616e-05, 1.10104e-05, 1.1325e-05, 1.16083e-05, 1.18642e-05, 1.20941e-05, 1.23018e-05
		)
}

CapTable	"metal1_C_LATERAL_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000186567, 0.000108438, 7.81446e-05, 6.10326e-05, 4.96508e-05, 4.13786e-05, 3.5035e-05, 2.99976e-05, 2.59e-05, 2.25086e-05, 1.96648e-05, 1.72558e-05, 1.51984e-05, 1.34293e-05, 1.18994e-05, 1.05698e-05, 
			0.000199431, 0.000117992, 8.56646e-05, 6.71872e-05, 5.48152e-05, 4.57918e-05, 3.88568e-05, 3.33406e-05, 2.88466e-05, 2.51212e-05, 2.19924e-05, 1.93376e-05, 1.70663e-05, 1.51097e-05, 1.34146e-05, 1.19386e-05, 
			0.00020645, 0.000123707, 9.03678e-05, 7.11474e-05, 5.8214e-05, 4.8749e-05, 4.1457e-05, 3.5645e-05, 3.09014e-05, 2.6962e-05, 2.36476e-05, 2.083e-05, 1.84153e-05, 1.63314e-05, 1.45228e-05, 1.29452e-05, 
			0.000210548, 0.000127452, 9.3587e-05, 7.39304e-05, 6.06544e-05, 5.09124e-05, 4.33856e-05, 3.73744e-05, 3.24592e-05, 2.83702e-05, 2.4924e-05, 2.19894e-05, 1.94702e-05, 1.72926e-05, 1.53995e-05, 1.37458e-05, 
			0.000213462, 0.00013018, 9.60038e-05, 7.60664e-05, 6.25532e-05, 5.26092e-05, 4.4914e-05, 3.87568e-05, 3.37132e-05, 2.95106e-05, 2.59628e-05, 2.29372e-05, 2.03354e-05, 1.80833e-05, 1.61225e-05, 1.44071e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.9741e-05, 2.513e-05, 2.97564e-05, 3.38192e-05, 3.74215e-05, 4.06257e-05, 4.34765e-05, 4.60115e-05, 4.82635e-05, 5.0263e-05, 5.20374e-05, 5.36128e-05, 5.50119e-05, 5.62555e-05, 5.73621e-05, 5.83483e-05, 
			2.4869e-05, 3.00596e-05, 3.47078e-05, 3.88748e-05, 4.26097e-05, 4.59524e-05, 4.89391e-05, 5.16034e-05, 5.39776e-05, 5.6092e-05, 5.79746e-05, 5.96511e-05, 6.11451e-05, 6.24778e-05, 6.3668e-05, 6.47325e-05, 
			3.0386e-05, 3.55124e-05, 4.0164e-05, 4.43688e-05, 4.81534e-05, 5.15496e-05, 5.45908e-05, 5.73091e-05, 5.9736e-05, 6.19015e-05, 6.38336e-05, 6.5558e-05, 6.70983e-05, 6.84757e-05, 6.97088e-05, 7.08145e-05, 
			3.6379e-05, 4.15086e-05, 4.61622e-05, 5.03696e-05, 5.4156e-05, 5.7555e-05, 6.05992e-05, 6.3321e-05, 6.57518e-05, 6.79232e-05, 6.98633e-05, 7.15965e-05, 7.31467e-05, 7.45351e-05, 7.57801e-05, 7.68982e-05, 
			4.3001e-05, 4.817e-05, 5.28006e-05, 5.69602e-05, 6.06918e-05, 6.40316e-05, 6.7017e-05, 6.96858e-05, 7.20696e-05, 7.41994e-05, 7.61032e-05, 7.78058e-05, 7.93306e-05, 8.06986e-05, 8.19268e-05, 8.30314e-05
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
			1.79935e-05, 2.29992e-05, 2.73303e-05, 3.11633e-05, 3.45843e-05, 3.76457e-05, 4.03789e-05, 4.28184e-05, 4.49921e-05, 4.69264e-05, 4.86462e-05, 5.01749e-05, 5.15337e-05, 5.27412e-05, 5.38156e-05, 5.4772e-05, 
			2.26802e-05, 2.76557e-05, 3.21348e-05, 3.61684e-05, 3.98053e-05, 4.30763e-05, 4.60112e-05, 4.86396e-05, 5.09886e-05, 5.30851e-05, 5.49546e-05, 5.66206e-05, 5.81058e-05, 5.9429e-05, 6.06092e-05, 6.16625e-05, 
			2.75508e-05, 3.25486e-05, 3.71177e-05, 4.12672e-05, 4.50281e-05, 4.84224e-05, 5.14786e-05, 5.42224e-05, 5.66802e-05, 5.888e-05, 6.08458e-05, 6.26022e-05, 6.41713e-05, 6.55725e-05, 6.68249e-05, 6.79449e-05, 
			3.25966e-05, 3.76099e-05, 4.22291e-05, 4.64509e-05, 5.02878e-05, 5.37601e-05, 5.68936e-05, 5.9714e-05, 6.22465e-05, 6.45173e-05, 6.65508e-05, 6.83717e-05, 7.00019e-05, 7.14598e-05, 7.27654e-05, 7.39346e-05, 
			3.77556e-05, 4.27919e-05, 4.74446e-05, 5.17104e-05, 5.55977e-05, 5.91249e-05, 6.23138e-05, 6.51903e-05, 6.77779e-05, 7.01028e-05, 7.21888e-05, 7.40588e-05, 7.57363e-05, 7.72395e-05, 7.85884e-05, 7.97971e-05
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

CapTable	"poly_C_BOTTOM_GP_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.6481e-05, 3.3738e-05, 4.00588e-05, 4.55946e-05, 5.04534e-05, 5.47174e-05, 5.84577e-05, 6.17371e-05, 6.46122e-05, 6.71341e-05, 6.93478e-05, 7.12931e-05, 7.30048e-05, 7.45135e-05, 7.58453e-05, 7.70233e-05, 
			3.5322e-05, 4.2538e-05, 4.9004e-05, 5.47532e-05, 5.9846e-05, 6.43476e-05, 6.83206e-05, 7.18226e-05, 7.49092e-05, 7.76298e-05, 8.00294e-05, 8.21478e-05, 8.402e-05, 8.56778e-05, 8.71469e-05, 8.84507e-05, 
			4.4474e-05, 5.16604e-05, 5.817e-05, 6.40028e-05, 6.92e-05, 7.38186e-05, 7.79132e-05, 8.154e-05, 8.47492e-05, 8.75888e-05, 9.01042e-05, 9.23322e-05, 9.43084e-05, 9.60643e-05, 9.76255e-05, 9.90163e-05, 
			5.3801e-05, 6.09536e-05, 6.74644e-05, 7.33294e-05, 7.85806e-05, 8.3266e-05, 8.7435e-05, 9.11408e-05, 9.44318e-05, 9.73538e-05, 9.99494e-05, 0.000102256, 0.000104308, 0.000106136, 0.000107767, 0.000109224, 
			6.3205e-05, 7.02968e-05, 7.67864e-05, 8.26562e-05, 8.79304e-05, 9.26526e-05, 9.6866e-05, 0.000100621, 0.000103967, 0.000106945, 0.000109598, 0.000111961, 0.00011407, 0.000115952, 0.000117634, 0.000119141
		)
}

CapTable	"poly_C_LATERAL_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217468, 0.000124894, 8.92992e-05, 6.93124e-05, 5.61266e-05, 4.66366e-05, 3.9436e-05, 3.37788e-05, 2.92244e-05, 2.54908e-05, 2.23874e-05, 1.9779e-05, 1.75668e-05, 1.56761e-05, 1.40496e-05, 1.26422e-05, 
			0.00023117, 0.00013541, 9.7745e-05, 7.63688e-05, 6.2162e-05, 5.18924e-05, 4.40724e-05, 3.79084e-05, 3.29298e-05, 2.88352e-05, 2.54206e-05, 2.25412e-05, 2.0091e-05, 1.79902e-05, 1.61771e-05, 1.46033e-05, 
			0.000238238, 0.000141507, 0.000102954, 8.08902e-05, 6.6168e-05, 5.54754e-05, 4.73038e-05, 4.0842e-05, 3.56068e-05, 3.12882e-05, 2.76758e-05, 2.46208e-05, 2.20136e-05, 1.97717e-05, 1.78315e-05, 1.61427e-05, 
			0.000242872, 0.000145717, 0.000106704, 8.42496e-05, 6.92014e-05, 5.8236e-05, 4.9834e-05, 4.31712e-05, 3.77582e-05, 3.32812e-05, 2.95266e-05, 2.63432e-05, 2.36196e-05, 2.1272e-05, 1.92351e-05, 1.74582e-05, 
			0.000244882, 0.000148332, 0.00010927, 8.66718e-05, 7.14606e-05, 6.03444e-05, 5.1807e-05, 4.50196e-05, 3.94872e-05, 3.49008e-05, 3.10456e-05, 2.77696e-05, 2.49606e-05, 2.2534e-05, 2.04246e-05, 1.85803e-05
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

CapTable	"poly_C_BOTTOM_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.49521e-05, 3.18615e-05, 3.78797e-05, 4.31543e-05, 4.77943e-05, 5.18587e-05, 5.54298e-05, 5.85535e-05, 6.12927e-05, 6.36893e-05, 6.5786e-05, 6.76246e-05, 6.92352e-05, 7.06496e-05, 7.18937e-05, 7.29884e-05, 
			3.33374e-05, 4.02116e-05, 4.63784e-05, 5.18592e-05, 5.67249e-05, 6.10222e-05, 6.48144e-05, 6.81553e-05, 7.10933e-05, 7.36798e-05, 7.59536e-05, 7.79546e-05, 7.97189e-05, 8.12749e-05, 8.2649e-05, 8.38647e-05, 
			4.20321e-05, 4.88878e-05, 5.51034e-05, 6.06746e-05, 6.56404e-05, 7.00543e-05, 7.39636e-05, 7.74231e-05, 8.04795e-05, 8.31776e-05, 8.55629e-05, 8.76689e-05, 8.95325e-05, 9.11817e-05, 9.26447e-05, 9.39427e-05, 
			5.09145e-05, 5.77511e-05, 6.39731e-05, 6.95834e-05, 7.46048e-05, 7.90841e-05, 8.30679e-05, 8.6603e-05, 8.97394e-05, 9.25169e-05, 9.49787e-05, 9.71604e-05, 9.90965e-05, 0.000100816, 0.000102344, 0.000103705, 
			5.98689e-05, 6.66518e-05, 7.28617e-05, 7.84759e-05, 8.35244e-05, 8.80393e-05, 9.20664e-05, 9.56502e-05, 9.88386e-05, 0.000101673, 0.000104189, 0.000106427, 0.000108417, 0.00011019, 0.000111769, 0.000113179
		)
}

CapTable	"poly_C_TOP_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			1.75987e-06, 2.22655e-06, 2.64433e-06, 3.02034e-06, 3.34673e-06, 3.64448e-06, 3.90197e-06, 4.13369e-06, 4.33337e-06, 4.51016e-06, 4.66701e-06, 4.80322e-06, 4.92468e-06, 5.03128e-06, 5.12462e-06, 5.20805e-06, 
			2.30459e-06, 2.76803e-06, 3.19197e-06, 3.58256e-06, 3.92789e-06, 4.24036e-06, 4.5168e-06, 4.76189e-06, 4.98112e-06, 5.1732e-06, 5.34442e-06, 5.49565e-06, 5.62815e-06, 5.74655e-06, 5.8501e-06, 5.94267e-06, 
			2.86095e-06, 3.32199e-06, 3.75058e-06, 4.14476e-06, 4.50238e-06, 4.82195e-06, 5.11063e-06, 5.36635e-06, 5.59472e-06, 5.79821e-06, 5.97666e-06, 6.13666e-06, 6.27727e-06, 6.40291e-06, 6.51434e-06, 6.61342e-06, 
			3.42449e-06, 3.88252e-06, 4.31648e-06, 4.71297e-06, 5.07564e-06, 5.4033e-06, 5.69625e-06, 5.96042e-06, 6.19363e-06, 6.40329e-06, 6.58887e-06, 6.75438e-06, 6.90172e-06, 7.03263e-06, 7.1496e-06, 7.25357e-06, 
			3.9971e-06, 4.45498e-06, 4.88651e-06, 5.2877e-06, 5.65122e-06, 5.98328e-06, 6.27977e-06, 6.54744e-06, 6.78625e-06, 6.99947e-06, 7.19049e-06, 7.36013e-06, 7.51209e-06, 7.64727e-06, 7.76848e-06, 7.87669e-06
		)
}

CapTable	"poly_C_LATERAL_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217288, 0.000124634, 8.8964e-05, 6.89064e-05, 5.5656e-05, 4.61098e-05, 3.88624e-05, 3.31684e-05, 2.85868e-05, 2.48354e-05, 2.17226e-05, 1.91121e-05, 1.69039e-05, 1.50222e-05, 1.34089e-05, 1.20178e-05, 
			0.000230936, 0.000135095, 9.73506e-05, 7.58982e-05, 6.16222e-05, 5.12924e-05, 4.34228e-05, 3.72198e-05, 3.22126e-05, 2.8099e-05, 2.4674e-05, 2.17918e-05, 1.9345e-05, 1.72525e-05, 1.54519e-05, 1.38936e-05, 
			0.000237944, 0.000141126, 0.000102488, 8.03436e-05, 6.55492e-05, 5.47948e-05, 4.65728e-05, 4.00716e-05, 3.48078e-05, 3.04702e-05, 2.68474e-05, 2.37894e-05, 2.11852e-05, 1.89514e-05, 1.70229e-05, 1.53489e-05, 
			0.0002425, 0.000145253, 0.000106149, 8.36126e-05, 6.84916e-05, 5.74646e-05, 4.90128e-05, 4.23116e-05, 3.6871e-05, 3.23758e-05, 2.86114e-05, 2.54252e-05, 2.27048e-05, 2.03648e-05, 1.83394e-05, 1.65765e-05, 
			0.00024443, 0.000147786, 0.000108633, 8.59524e-05, 7.06694e-05, 5.94924e-05, 5.09058e-05, 4.40804e-05, 3.85202e-05, 3.3915e-05, 3.00492e-05, 2.6769e-05, 2.39616e-05, 2.15408e-05, 1.94404e-05, 1.76078e-05
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

CapModel	"metal6Config33" {
		refLayer				= "M6"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_51MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_51MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_51MAX"
		topCapDataNom			= "metal6_C_TOP_GP_51MAX"
		topCapDataMax			= "metal6_C_TOP_GP_51MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_51MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_51MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_51MAX"
}

CapModel	"metal6Config34" {
		refLayer				= "M6"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_52MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_52MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_52MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_52MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_52MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_52MAX"
}

CapModel	"metal6Config41" {
		refLayer				= "M6"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_61MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_61MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_61MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_61MAX"
		topCapDataNom			= "metal6_C_TOP_GP_61MAX"
		topCapDataMax			= "metal6_C_TOP_GP_61MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_61MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_61MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_61MAX"
}

CapModel	"metal6Config42" {
		refLayer				= "M6"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_62MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_62MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_62MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_62MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_62MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_62MAX"
}

CapModel	"metal6Config49" {
		refLayer				= "M6"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_71MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_71MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_71MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_71MAX"
		topCapDataNom			= "metal6_C_TOP_GP_71MAX"
		topCapDataMax			= "metal6_C_TOP_GP_71MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_71MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_71MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_71MAX"
}

CapModel	"metal6Config50" {
		refLayer				= "M6"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_72MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_72MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_72MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_72MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_72MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_72MAX"
}

CapModel	"metal7Config1" {
		refLayer				= "M7"
		groundPlaneBelow		= "M6"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERALMAX"
		lateralCapDataNom		= "metal7_C_LATERALMAX"
		lateralCapDataMax		= "metal7_C_LATERALMAX"
}

CapModel	"metal7Config9" {
		refLayer				= "M7"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_21MAX"
}

CapModel	"metal7Config17" {
		refLayer				= "M7"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_31MAX"
}

CapModel	"metal7Config25" {
		refLayer				= "M7"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_41MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_41MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_41MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_41MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_41MAX"
}

CapModel	"metal7Config33" {
		refLayer				= "M7"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_51MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_51MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_51MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_51MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_51MAX"
}

CapModel	"metal7Config41" {
		refLayer				= "M7"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_61MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_61MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_61MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_61MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_61MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_61MAX"
}

CapModel	"metal7Config49" {
		refLayer				= "M7"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_71MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_71MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_71MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_71MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_71MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_71MAX"
}

CapModel	"metal7Config57" {
		refLayer				= "M7"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_81MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_81MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_81MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_81MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_81MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_81MAX"
}

CapModel	"metal3Config20" {
		refLayer				= "M3"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_34MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_34MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_34MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_34MAX"
		topCapDataNom			= "metal3_C_TOP_GP_34MAX"
		topCapDataMax			= "metal3_C_TOP_GP_34MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_34MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_34MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_34MAX"
}

CapModel	"metal3Config21" {
		refLayer				= "M3"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_35MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_35MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_35MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_35MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_35MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_35MAX"
}

CapModel	"metal3Config25" {
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

CapModel	"metal3Config26" {
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

CapModel	"metal3Config27" {
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

CapModel	"metal3Config28" {
		refLayer				= "M3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_44MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_44MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_44MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_44MAX"
		topCapDataNom			= "metal3_C_TOP_GP_44MAX"
		topCapDataMax			= "metal3_C_TOP_GP_44MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_44MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_44MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_44MAX"
}

CapModel	"metal3Config29" {
		refLayer				= "M3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_45MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_45MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_45MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_45MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_45MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_45MAX"
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
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_13MAX"
		topCapDataNom			= "metal4_C_TOP_GP_13MAX"
		topCapDataMax			= "metal4_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_13MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_13MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_13MAX"
}

CapModel	"metal4Config4" {
		refLayer				= "M4"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_14MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_14MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_14MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_14MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_14MAX"
}

CapModel	"metal4Config9" {
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

CapModel	"metal4Config10" {
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

CapModel	"metal4Config11" {
		refLayer				= "M4"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_23MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_23MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_23MAX"
		topCapDataNom			= "metal4_C_TOP_GP_23MAX"
		topCapDataMax			= "metal4_C_TOP_GP_23MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_23MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_23MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_23MAX"
}

CapModel	"metal4Config12" {
		refLayer				= "M4"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_24MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_24MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_24MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_24MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_24MAX"
}

CapModel	"metal4Config17" {
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

CapModel	"metal4Config18" {
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

CapModel	"metal4Config19" {
		refLayer				= "M4"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_33MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_33MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_33MAX"
		topCapDataNom			= "metal4_C_TOP_GP_33MAX"
		topCapDataMax			= "metal4_C_TOP_GP_33MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_33MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_33MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_33MAX"
}

CapModel	"metal4Config20" {
		refLayer				= "M4"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_34MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_34MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_34MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_34MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_34MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_34MAX"
}

CapModel	"metal4Config25" {
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

CapModel	"metal4Config26" {
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

CapModel	"metal4Config27" {
		refLayer				= "M4"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_43MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_43MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_43MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_43MAX"
		topCapDataNom			= "metal4_C_TOP_GP_43MAX"
		topCapDataMax			= "metal4_C_TOP_GP_43MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_43MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_43MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_43MAX"
}

CapModel	"metal4Config28" {
		refLayer				= "M4"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_44MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_44MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_44MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_44MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_44MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_44MAX"
}

CapModel	"metal4Config33" {
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

CapModel	"metal4Config34" {
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

CapModel	"metal4Config35" {
		refLayer				= "M4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_53MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_53MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_53MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_53MAX"
		topCapDataNom			= "metal4_C_TOP_GP_53MAX"
		topCapDataMax			= "metal4_C_TOP_GP_53MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_53MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_53MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_53MAX"
}

CapModel	"metal4Config36" {
		refLayer				= "M4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_54MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_54MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_54MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_54MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_54MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_54MAX"
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
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_12MAX"
		topCapDataNom			= "metal5_C_TOP_GP_12MAX"
		topCapDataMax			= "metal5_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_12MAX"
}

CapModel	"metal5Config3" {
		refLayer				= "M5"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_13MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_13MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_13MAX"
}

CapModel	"metal5Config9" {
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

CapModel	"metal5Config10" {
		refLayer				= "M5"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_22MAX"
		topCapDataNom			= "metal5_C_TOP_GP_22MAX"
		topCapDataMax			= "metal5_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_22MAX"
}

CapModel	"metal5Config11" {
		refLayer				= "M5"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_23MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_23MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_23MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_23MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_23MAX"
}

CapModel	"metal5Config17" {
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

CapModel	"metal5Config18" {
		refLayer				= "M5"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_32MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_32MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_32MAX"
		topCapDataNom			= "metal5_C_TOP_GP_32MAX"
		topCapDataMax			= "metal5_C_TOP_GP_32MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_32MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_32MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_32MAX"
}

CapModel	"metal5Config19" {
		refLayer				= "M5"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_33MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_33MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_33MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_33MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_33MAX"
}

CapModel	"metal5Config25" {
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

CapModel	"metal5Config26" {
		refLayer				= "M5"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_42MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_42MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_42MAX"
		topCapDataNom			= "metal5_C_TOP_GP_42MAX"
		topCapDataMax			= "metal5_C_TOP_GP_42MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_42MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_42MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_42MAX"
}

CapModel	"metal5Config27" {
		refLayer				= "M5"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_43MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_43MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_43MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_43MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_43MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_43MAX"
}

CapModel	"metal5Config33" {
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

CapModel	"metal5Config34" {
		refLayer				= "M5"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_52MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_52MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_52MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_52MAX"
		topCapDataNom			= "metal5_C_TOP_GP_52MAX"
		topCapDataMax			= "metal5_C_TOP_GP_52MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_52MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_52MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_52MAX"
}

CapModel	"metal5Config35" {
		refLayer				= "M5"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_53MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_53MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_53MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_53MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_53MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_53MAX"
}

CapModel	"metal5Config41" {
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

CapModel	"metal5Config42" {
		refLayer				= "M5"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_62MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_62MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_62MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_62MAX"
		topCapDataNom			= "metal5_C_TOP_GP_62MAX"
		topCapDataMax			= "metal5_C_TOP_GP_62MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_62MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_62MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_62MAX"
}

CapModel	"metal5Config43" {
		refLayer				= "M5"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_63MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_63MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_63MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_63MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_63MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_63MAX"
}

CapModel	"metal6Config1" {
		refLayer				= "M6"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GPMAX"
		topCapDataNom			= "metal6_C_TOP_GPMAX"
		topCapDataMax			= "metal6_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERALMAX"
		lateralCapDataNom		= "metal6_C_LATERALMAX"
		lateralCapDataMax		= "metal6_C_LATERALMAX"
}

CapModel	"metal6Config2" {
		refLayer				= "M6"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_12MAX"
}

CapModel	"metal6Config9" {
		refLayer				= "M6"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_21MAX"
		topCapDataNom			= "metal6_C_TOP_GP_21MAX"
		topCapDataMax			= "metal6_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_21MAX"
}

CapModel	"metal6Config10" {
		refLayer				= "M6"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_22MAX"
}

CapModel	"metal6Config17" {
		refLayer				= "M6"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_31MAX"
		topCapDataNom			= "metal6_C_TOP_GP_31MAX"
		topCapDataMax			= "metal6_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_31MAX"
}

CapModel	"metal6Config18" {
		refLayer				= "M6"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_32MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_32MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_32MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_32MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_32MAX"
}

CapModel	"metal6Config25" {
		refLayer				= "M6"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_41MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_41MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_41MAX"
		topCapDataNom			= "metal6_C_TOP_GP_41MAX"
		topCapDataMax			= "metal6_C_TOP_GP_41MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_41MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_41MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_41MAX"
}

CapModel	"metal6Config26" {
		refLayer				= "M6"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_42MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_42MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_42MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_42MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_42MAX"
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
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_17MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_17MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_17MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_17MAX"
		topCapDataNom			= "poly_C_TOP_GP_17MAX"
		topCapDataMax			= "poly_C_TOP_GP_17MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_17MAX"
		lateralCapDataNom		= "poly_C_LATERAL_17MAX"
		lateralCapDataMax		= "poly_C_LATERAL_17MAX"
}

CapModel	"polyConfig8" {
		refLayer				= "POLY1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_18MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_18MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_18MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_18MAX"
		lateralCapDataNom		= "poly_C_LATERAL_18MAX"
		lateralCapDataMax		= "poly_C_LATERAL_18MAX"
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
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_16MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_16MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_16MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_16MAX"
		topCapDataNom			= "metal1_C_TOP_GP_16MAX"
		topCapDataMax			= "metal1_C_TOP_GP_16MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_16MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_16MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_16MAX"
}

CapModel	"metal1Config7" {
		refLayer				= "M1"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_17MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_17MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_17MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_17MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_17MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_17MAX"
}

CapModel	"metal1Config9" {
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

CapModel	"metal1Config10" {
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

CapModel	"metal1Config11" {
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

CapModel	"metal1Config12" {
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

CapModel	"metal1Config13" {
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

CapModel	"metal1Config14" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_26MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_26MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_26MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_26MAX"
		topCapDataNom			= "metal1_C_TOP_GP_26MAX"
		topCapDataMax			= "metal1_C_TOP_GP_26MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_26MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_26MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_26MAX"
}

CapModel	"metal1Config15" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_27MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_27MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_27MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_27MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_27MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_27MAX"
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
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_15MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_15MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_15MAX"
		topCapDataNom			= "metal2_C_TOP_GP_15MAX"
		topCapDataMax			= "metal2_C_TOP_GP_15MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_15MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_15MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_15MAX"
}

CapModel	"metal2Config6" {
		refLayer				= "M2"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_16MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_16MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_16MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_16MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_16MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_16MAX"
}

CapModel	"metal2Config9" {
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

CapModel	"metal2Config10" {
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

CapModel	"metal2Config11" {
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

CapModel	"metal2Config12" {
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

CapModel	"metal2Config13" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_25MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_25MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_25MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_25MAX"
		topCapDataNom			= "metal2_C_TOP_GP_25MAX"
		topCapDataMax			= "metal2_C_TOP_GP_25MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_25MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_25MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_25MAX"
}

CapModel	"metal2Config14" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_26MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_26MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_26MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_26MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_26MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_26MAX"
}

CapModel	"metal2Config17" {
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

CapModel	"metal2Config18" {
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

CapModel	"metal2Config19" {
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

CapModel	"metal2Config20" {
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

CapModel	"metal2Config21" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_35MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_35MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_35MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_35MAX"
		topCapDataNom			= "metal2_C_TOP_GP_35MAX"
		topCapDataMax			= "metal2_C_TOP_GP_35MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_35MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_35MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_35MAX"
}

CapModel	"metal2Config22" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_36MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_36MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_36MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_36MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_36MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_36MAX"
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
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_14MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_14MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_14MAX"
		topCapDataNom			= "metal3_C_TOP_GP_14MAX"
		topCapDataMax			= "metal3_C_TOP_GP_14MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_14MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_14MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_14MAX"
}

CapModel	"metal3Config5" {
		refLayer				= "M3"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_15MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_15MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_15MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_15MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_15MAX"
}

CapModel	"metal3Config9" {
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

CapModel	"metal3Config10" {
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

CapModel	"metal3Config11" {
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

CapModel	"metal3Config12" {
		refLayer				= "M3"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M7"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_24MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_24MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_24MAX"
		topCapDataNom			= "metal3_C_TOP_GP_24MAX"
		topCapDataMax			= "metal3_C_TOP_GP_24MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_24MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_24MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_24MAX"
}

CapModel	"metal3Config13" {
		refLayer				= "M3"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_25MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_25MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_25MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_25MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_25MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_25MAX"
}

CapModel	"metal3Config17" {
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

CapModel	"metal3Config18" {
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

CapModel	"metal3Config19" {
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

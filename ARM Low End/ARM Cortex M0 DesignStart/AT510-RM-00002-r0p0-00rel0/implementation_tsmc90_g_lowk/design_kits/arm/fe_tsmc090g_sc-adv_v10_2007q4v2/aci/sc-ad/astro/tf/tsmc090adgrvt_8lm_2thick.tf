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
   $Id: tsmc090_8lm_2thick.tf,v 1.1 2006/05/11 06:34:58 Exp $
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
		color				= "47"
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

Layer		"M7" {
		layerNumber			= 37
		maskName			= "metal7"
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

Layer		"M8" {
		layerNumber			= 38
		maskName			= "metal8"
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
		color				= "47"
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
		fatTblFatContactNumber		= (6,6,6,66,66,66)
		fatTblFatContactMinCuts		= (1,2,2,4,4,4)
		fatTblExtensionContactNumber	= (0,0,6,6,6,6)
		fatTblExtensionMinCuts		= (1,1,2,2,2,2)
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.19
}

Layer		"VIA6" {
		layerNumber			= 56
		maskName			= "via6"
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
		fatTblFatContactNumber		= (7,7,77)
		fatTblFatContactMinCuts		= (1,2,2)
		fatTblExtensionContactNumber	= (0,0,7)
		fatTblExtensionMinCuts		= (1,1,2)
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.56
}

Layer		"VIA7" {
		layerNumber			= 57
		maskName			= "via7"
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
		fatTblFatContactNumber		= (8,8,88)
		fatTblFatContactMinCuts		= (1,2,2)
		fatTblExtensionContactNumber	= (0,0,8)
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

Layer		"TEXT8" {
		layerNumber			= 138
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "dash"
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
		unitMinResistance		= 0.00067
		unitNomResistance		= 0.00067
		unitMaxResistance		= 0.00067
}

ContactCode	"via7" {
		contactCodeNumber		= 8
		cutLayer			= "VIA7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
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
		unitMinResistance		= 0.00067
		unitNomResistance		= 0.00067
		unitMaxResistance		= 0.00067
}

ContactCode	"via7_fat" {
		contactCodeNumber		= 88
		cutLayer			= "VIA7"
		lowerLayer			= "M7"
		upperLayer			= "M8"
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
		minSpacing			= 0.17
}

DesignRule	{
		layer1				= "via6Blockage"
		layer2				= "VIA6"
		minSpacing			= 0.54
}

DesignRule	{
		layer1				= "via7Blockage"
		layer2				= "VIA7"
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

CapTable	"metal8_C_LATERAL_21MAX" {
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

CapTable	"metal8_C_BOTTOM_GPMAX" {
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

CapTable	"metal8_C_LATERALMAX" {
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

CapTable	"metal8_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal8_C_LATERAL_31MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal8_C_LATERAL_51MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_41MAX" {
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

CapTable	"metal8_C_LATERAL_41MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_61MAX" {
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

CapTable	"metal8_C_LATERAL_61MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_51MAX" {
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

CapTable	"metal8_C_LATERAL_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000240062, 0.000145683, 0.000110815, 9.1767e-05, 7.93038e-05, 7.02346e-05, 6.31606e-05, 5.73744e-05, 5.24814e-05, 4.82446e-05, 4.45132e-05, 4.11864e-05, 3.8193e-05, 3.5481e-05, 3.30112e-05, 3.07526e-05, 
			0.000259656, 0.000161052, 0.000123485, 0.000102528, 8.85972e-05, 7.8355e-05, 7.0319e-05, 6.37298e-05, 5.81588e-05, 5.33444e-05, 4.91172e-05, 4.53618e-05, 4.1996e-05, 3.89582e-05, 3.62016e-05, 3.36894e-05, 
			0.000272094, 0.000171432, 0.000132243, 0.000110016, 9.50746e-05, 8.40046e-05, 7.52832e-05, 6.81214e-05, 6.20682e-05, 5.68454e-05, 5.22698e-05, 4.82156e-05, 4.45912e-05, 4.13288e-05, 3.83758e-05, 3.56904e-05, 
			0.00028055, 0.000178882, 0.000138612, 0.000115478, 9.97926e-05, 8.81154e-05, 7.88848e-05, 7.1299e-05, 6.4891e-05, 5.9369e-05, 5.454e-05, 5.02694e-05, 4.64592e-05, 4.30358e-05, 3.99424e-05, 3.71338e-05, 
			0.000287096, 0.000184574, 0.000143478, 0.000119642, 0.000103379, 9.1224e-05, 8.1603e-05, 7.36942e-05, 6.7017e-05, 6.12696e-05, 5.62504e-05, 5.1818e-05, 4.78692e-05, 4.43262e-05, 4.11286e-05, 3.82286e-05
		)
}

CapTable	"metal8_C_BOTTOM_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.3824e-05, 1.6597e-05, 1.872e-05, 2.04818e-05, 2.20436e-05, 2.34929e-05, 2.48815e-05, 2.62351e-05, 2.75664e-05, 2.88796e-05, 3.01741e-05, 3.14471e-05, 3.26951e-05, 3.39141e-05, 3.51002e-05, 3.62508e-05, 
			1.5509e-05, 1.78726e-05, 1.98608e-05, 2.16244e-05, 2.32606e-05, 2.4826e-05, 2.63503e-05, 2.78491e-05, 2.93275e-05, 3.07851e-05, 3.22191e-05, 3.36251e-05, 3.4999e-05, 3.63369e-05, 3.76353e-05, 3.88915e-05, 
			1.7011e-05, 1.918e-05, 2.11213e-05, 2.29234e-05, 2.46438e-05, 2.6317e-05, 2.79602e-05, 2.95785e-05, 3.11737e-05, 3.27428e-05, 3.42816e-05, 3.57857e-05, 3.72508e-05, 3.86735e-05, 4.00509e-05, 4.13806e-05, 
			1.8489e-05, 2.0578e-05, 2.25314e-05, 2.43954e-05, 2.62046e-05, 2.79776e-05, 2.97222e-05, 3.14398e-05, 3.31286e-05, 3.47847e-05, 3.64037e-05, 3.79815e-05, 3.95143e-05, 4.09992e-05, 4.24338e-05, 4.38166e-05, 
			2.0019e-05, 2.2107e-05, 2.41046e-05, 2.60416e-05, 2.79348e-05, 2.97954e-05, 3.16248e-05, 3.34224e-05, 3.51858e-05, 3.6909e-05, 3.85894e-05, 4.02229e-05, 4.18064e-05, 4.33374e-05, 4.48144e-05, 4.62361e-05
		)
}

CapTable	"metal8_C_LATERAL_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000239682, 0.000145205, 0.000110255, 9.11342e-05, 7.86064e-05, 6.94796e-05, 6.23546e-05, 5.65242e-05, 5.15936e-05, 4.7326e-05, 4.35706e-05, 4.02262e-05, 3.72212e-05, 3.45036e-05, 3.20336e-05, 2.97796e-05, 
			0.00025917, 0.000160472, 0.000122823, 0.000101793, 8.77954e-05, 7.7495e-05, 6.94082e-05, 6.27762e-05, 5.71696e-05, 5.23272e-05, 4.80792e-05, 4.431e-05, 4.09368e-05, 3.78976e-05, 3.51452e-05, 3.2642e-05, 
			0.000271506, 0.000170752, 0.000131481, 0.000109181, 9.41752e-05, 8.3049e-05, 7.42798e-05, 6.70788e-05, 6.09946e-05, 5.57484e-05, 5.1157e-05, 4.70938e-05, 4.34672e-05, 4.02084e-05, 3.72642e-05, 3.45926e-05, 
			0.00027986, 0.000178102, 0.000137752, 0.000114548, 9.88014e-05, 8.70724e-05, 7.77988e-05, 7.01792e-05, 6.37454e-05, 5.82058e-05, 5.33666e-05, 4.90926e-05, 4.52854e-05, 4.18708e-05, 3.87912e-05, 3.60008e-05, 
			0.000286302, 0.000183695, 0.000142524, 0.000118622, 0.000102304, 9.01026e-05, 8.04452e-05, 7.25086e-05, 6.58122e-05, 6.00534e-05, 5.503e-05, 5.06e-05, 4.66596e-05, 4.31304e-05, 3.99514e-05, 3.70742e-05
		)
}

CapTable	"metal8_C_BOTTOM_GP_91MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.2917e-05, 1.5417e-05, 1.72998e-05, 1.88404e-05, 2.01916e-05, 2.14393e-05, 2.26329e-05, 2.37983e-05, 2.49489e-05, 2.60895e-05, 2.7221e-05, 2.83408e-05, 2.94464e-05, 3.05339e-05, 3.16003e-05, 3.26421e-05, 
			1.4345e-05, 1.64384e-05, 1.81742e-05, 1.96978e-05, 2.11028e-05, 2.24436e-05, 2.37514e-05, 2.50407e-05, 2.63187e-05, 2.75855e-05, 2.88397e-05, 3.00777e-05, 3.12958e-05, 3.24906e-05, 3.36582e-05, 3.4796e-05, 
			1.5583e-05, 1.74757e-05, 1.91516e-05, 2.06966e-05, 2.21678e-05, 2.35994e-05, 2.50082e-05, 2.64026e-05, 2.77838e-05, 2.91503e-05, 3.04991e-05, 3.18261e-05, 3.31276e-05, 3.44002e-05, 3.56407e-05, 3.68466e-05, 
			1.6783e-05, 1.85844e-05, 2.02588e-05, 2.18512e-05, 2.3396e-05, 2.49126e-05, 2.6411e-05, 2.78944e-05, 2.93597e-05, 3.08058e-05, 3.22283e-05, 3.36237e-05, 3.49882e-05, 3.6319e-05, 3.76134e-05, 3.88693e-05, 
			1.8015e-05, 1.98044e-05, 2.15096e-05, 2.31614e-05, 2.47786e-05, 2.63732e-05, 2.79484e-05, 2.95046e-05, 3.10386e-05, 3.25474e-05, 3.40277e-05, 3.54756e-05, 3.68884e-05, 3.82634e-05, 3.95982e-05, 4.08916e-05
		)
}

CapTable	"metal8_C_LATERAL_91MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000240408, 0.000146114, 0.000111317, 9.23316e-05, 7.99254e-05, 7.09086e-05, 6.38836e-05, 5.8143e-05, 5.32918e-05, 4.90932e-05, 4.5396e-05, 4.20996e-05, 3.91326e-05, 3.64436e-05, 3.3993e-05, 3.17504e-05, 
			0.000260088, 0.000161565, 0.000124069, 0.000103176, 8.93042e-05, 7.91174e-05, 7.11328e-05, 6.45916e-05, 5.9064e-05, 5.4289e-05, 5.0097e-05, 4.63726e-05, 4.30336e-05, 4.00188e-05, 3.72818e-05, 3.47858e-05, 
			0.00027261, 0.000172025, 0.000132906, 0.000110744, 9.58642e-05, 8.48506e-05, 7.61818e-05, 6.90682e-05, 6.30588e-05, 5.7875e-05, 5.3334e-05, 4.931e-05, 4.5712e-05, 4.2472e-05, 3.9538e-05, 3.68686e-05, 
			0.000281148, 0.000179556, 0.000139355, 0.000116287, 0.000100663, 8.90424e-05, 7.9864e-05, 7.23256e-05, 6.59602e-05, 6.0476e-05, 5.56804e-05, 5.14388e-05, 4.76538e-05, 4.4252e-05, 4.1177e-05, 3.83838e-05, 
			0.000287774, 0.000185328, 0.000144302, 0.000120532, 0.000104329, 9.22298e-05, 8.26596e-05, 7.47964e-05, 6.816e-05, 6.24488e-05, 5.74612e-05, 5.30566e-05, 4.91318e-05, 4.56094e-05, 4.24296e-05, 3.95446e-05
		)
}

CapTable	"metal8_C_BOTTOM_GP_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.3349e-05, 1.59759e-05, 1.79688e-05, 1.9612e-05, 2.10592e-05, 2.24004e-05, 2.36845e-05, 2.49384e-05, 2.61749e-05, 2.73987e-05, 2.86101e-05, 2.98065e-05, 3.09846e-05, 3.21408e-05, 3.32713e-05, 3.4373e-05, 
			1.4892e-05, 1.71114e-05, 1.89628e-05, 2.05956e-05, 2.21068e-05, 2.3551e-05, 2.496e-05, 2.63486e-05, 2.77223e-05, 2.9082e-05, 3.04252e-05, 3.17482e-05, 3.30467e-05, 3.43171e-05, 3.5556e-05, 3.67601e-05, 
			1.625e-05, 1.82692e-05, 2.00654e-05, 2.17284e-05, 2.33144e-05, 2.48574e-05, 2.63768e-05, 2.78776e-05, 2.93625e-05, 3.08286e-05, 3.22728e-05, 3.36904e-05, 3.50779e-05, 3.64313e-05, 3.77476e-05, 3.90244e-05, 
			1.7575e-05, 1.95058e-05, 2.13074e-05, 2.30242e-05, 2.46914e-05, 2.63276e-05, 2.79432e-05, 2.9539e-05, 3.1114e-05, 3.26648e-05, 3.41874e-05, 3.56776e-05, 3.7132e-05, 3.85474e-05, 3.99211e-05, 4.12512e-05, 
			1.8937e-05, 2.08634e-05, 2.27026e-05, 2.4486e-05, 2.62326e-05, 2.7952e-05, 2.965e-05, 3.13228e-05, 3.29708e-05, 3.45883e-05, 3.61719e-05, 3.77181e-05, 3.92237e-05, 4.06861e-05, 4.21032e-05, 4.34735e-05
		)
}

CapTable	"metal7_C_LATERALMAX" {
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

CapTable	"metal7_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal7_C_LATERAL_12MAX" {
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

CapTable	"metal7_C_LATERAL_22MAX" {
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

CapTable	"metal7_C_BOTTOM_GPMAX" {
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

CapTable	"metal7_C_TOP_GPMAX" {
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

CapTable	"metal7_C_TOP_GP_21MAX" {
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

CapTable	"metal7_C_LATERAL_21MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_22MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_32MAX" {
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

CapTable	"metal7_C_LATERAL_32MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal7_C_TOP_GP_31MAX" {
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

CapTable	"metal7_C_LATERAL_31MAX" {
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

CapTable	"metal7_C_LATERAL_41MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_42MAX" {
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

CapTable	"metal7_C_LATERAL_42MAX" {
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

CapTable	"metal7_C_LATERAL_52MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_41MAX" {
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

CapTable	"metal7_C_TOP_GP_41MAX" {
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

CapTable	"metal7_C_TOP_GP_51MAX" {
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

CapTable	"metal7_C_LATERAL_51MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_52MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.5275e-05, 1.88576e-05, 2.18256e-05, 2.44088e-05, 2.67264e-05, 2.88466e-05, 3.08104e-05, 3.26446e-05, 3.43666e-05, 3.59895e-05, 3.75223e-05, 3.89721e-05, 4.03446e-05, 4.16443e-05, 4.28755e-05, 4.40415e-05, 
			1.7865e-05, 2.11544e-05, 2.40564e-05, 2.66724e-05, 2.90708e-05, 3.12946e-05, 3.33739e-05, 3.53282e-05, 3.71717e-05, 3.8915e-05, 4.05659e-05, 4.21308e-05, 4.3615e-05, 4.50222e-05, 4.63569e-05, 4.76226e-05, 
			2.0418e-05, 2.35592e-05, 2.64208e-05, 2.90548e-05, 3.15032e-05, 3.3795e-05, 3.59518e-05, 3.79882e-05, 3.99164e-05, 4.17442e-05, 4.34789e-05, 4.51256e-05, 4.66891e-05, 4.81737e-05, 4.9583e-05, 5.09203e-05, 
			2.2993e-05, 2.60426e-05, 2.88816e-05, 3.15302e-05, 3.4015e-05, 3.63566e-05, 3.85712e-05, 4.067e-05, 4.26611e-05, 4.45529e-05, 4.63511e-05, 4.80602e-05, 4.96847e-05, 5.12283e-05, 5.26949e-05, 5.40877e-05, 
			2.5586e-05, 2.85932e-05, 3.14212e-05, 3.40848e-05, 3.66004e-05, 3.89822e-05, 4.12426e-05, 4.3391e-05, 4.54328e-05, 4.7376e-05, 4.92251e-05, 5.09847e-05, 5.26584e-05, 5.42502e-05, 5.57635e-05, 5.72013e-05
		)
}

CapTable	"metal7_C_LATERAL_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000238342, 0.000140828, 0.000104565, 8.46712e-05, 7.16922e-05, 6.23462e-05, 5.51766e-05, 4.94314e-05, 4.46806e-05, 4.06584e-05, 3.71914e-05, 3.41608e-05, 3.1482e-05, 2.90932e-05, 2.69474e-05, 2.50084e-05, 
			0.000255078, 0.000153592, 0.000114913, 9.34026e-05, 7.92392e-05, 6.89834e-05, 6.10876e-05, 5.4746e-05, 4.94946e-05, 4.50452e-05, 4.12086e-05, 3.78546e-05, 3.48902e-05, 3.22474e-05, 2.9874e-05, 2.77298e-05, 
			0.000265172, 0.00016192, 0.000121939, 9.94652e-05, 8.45668e-05, 7.3722e-05, 6.53432e-05, 5.85976e-05, 5.30018e-05, 4.82554e-05, 4.41594e-05, 4.0577e-05, 3.741e-05, 3.45856e-05, 3.2049e-05, 2.97574e-05, 
			0.000271748, 0.00016783, 0.000127091, 0.000103996, 8.8596e-05, 7.73444e-05, 6.86188e-05, 6.1578e-05, 5.57284e-05, 5.07608e-05, 4.64704e-05, 4.27158e-05, 3.9395e-05, 3.64328e-05, 3.37716e-05, 3.13668e-05, 
			0.000276942, 0.000172466, 0.000131189, 0.000107633, 9.18536e-05, 8.02808e-05, 7.12864e-05, 6.4015e-05, 5.79652e-05, 5.2822e-05, 4.8377e-05, 4.44844e-05, 4.10402e-05, 3.79666e-05, 3.52046e-05, 3.27082e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_51MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			7.4136e-06, 1.0076e-05, 1.24151e-05, 1.43624e-05, 1.5954e-05, 1.72063e-05, 1.81902e-05, 1.89536e-05, 1.95439e-05, 2.00771e-05, 2.03968e-05, 2.06467e-05, 2.08242e-05, 2.09861e-05, 2.10627e-05, 2.1155e-05, 
			1.01506e-05, 1.29001e-05, 1.5337e-05, 1.73978e-05, 1.90832e-05, 2.04256e-05, 2.14802e-05, 2.23049e-05, 2.3002e-05, 2.34755e-05, 2.38434e-05, 2.41203e-05, 2.42984e-05, 2.44723e-05, 2.4653e-05, 2.47528e-05, 
			1.3e-05, 1.58034e-05, 1.83076e-05, 2.04328e-05, 2.2168e-05, 2.35564e-05, 2.47236e-05, 2.55563e-05, 2.62072e-05, 2.66995e-05, 2.71061e-05, 2.73593e-05, 2.75966e-05, 2.78341e-05, 2.79725e-05, 2.80822e-05, 
			1.5935e-05, 1.87692e-05, 2.13156e-05, 2.34748e-05, 2.52414e-05, 2.67098e-05, 2.78118e-05, 2.86771e-05, 2.9347e-05, 2.98223e-05, 3.02322e-05, 3.06097e-05, 3.08532e-05, 3.10446e-05, 3.11888e-05, 3.12997e-05, 
			1.8918e-05, 2.17826e-05, 2.4353e-05, 2.65976e-05, 2.83632e-05, 2.97828e-05, 3.08954e-05, 3.17916e-05, 3.24232e-05, 3.29625e-05, 3.34448e-05, 3.37684e-05, 3.40209e-05, 3.42089e-05, 3.43594e-05, 3.44683e-05
		)
}

CapTable	"metal7_C_TOP_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.55364e-05, 6.1153e-05, 7.33587e-05, 8.27672e-05, 9.00098e-05, 9.55503e-05, 9.97892e-05, 0.000103041, 0.000105527, 0.000107349, 0.000108851, 0.000110002, 0.000110902, 0.000111569, 0.000112131, 0.00011253, 
			6.61674e-05, 8.19681e-05, 9.4448e-05, 0.000104181, 0.000111718, 0.00011754, 0.00012203, 0.000125488, 0.000128092, 0.000130165, 0.000131764, 0.000133, 0.000133992, 0.000134719, 0.000135236, 0.000135675, 
			8.7216e-05, 0.00010307, 0.000115673, 0.000125556, 0.000133257, 0.000139237, 0.000143785, 0.000147393, 0.000150178, 0.000152342, 0.000153984, 0.000155312, 0.000156296, 0.000157006, 0.000157599, 0.000158041, 
			0.000108497, 0.000124322, 0.000136985, 0.00014696, 0.000154761, 0.00016078, 0.000165505, 0.000169173, 0.000172012, 0.000174257, 0.000175947, 0.000177198, 0.000178217, 0.000178984, 0.000179585, 0.000180048, 
			0.000129955, 0.000145816, 0.000158525, 0.000168494, 0.00017639, 0.000182535, 0.000187333, 0.000191019, 0.000193948, 0.000196168, 0.000197836, 0.000199162, 0.00020017, 0.000200973, 0.000201573, 0.000202061
		)
}

CapTable	"metal7_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000213224, 0.000109968, 7.02882e-05, 4.85764e-05, 3.48582e-05, 2.55854e-05, 1.90406e-05, 1.43054e-05, 1.08241e-05, 8.23986e-06, 6.28524e-06, 4.8063e-06, 3.67882e-06, 2.82194e-06, 2.1633e-06, 1.658e-06, 
			0.00022149, 0.000115713, 7.4535e-05, 5.18012e-05, 3.73578e-05, 2.75224e-05, 2.05508e-05, 1.54831e-05, 1.1743e-05, 8.94148e-06, 6.82756e-06, 5.22368e-06, 4.00058e-06, 3.06568e-06, 2.34904e-06, 1.79617e-06, 
			0.00022514, 0.000118618, 7.67934e-05, 5.35642e-05, 3.8753e-05, 2.86226e-05, 2.14244e-05, 1.61647e-05, 1.22668e-05, 9.34246e-06, 7.13994e-06, 5.46272e-06, 4.18338e-06, 3.20394e-06, 2.44948e-06, 1.87375e-06, 
			0.00022661, 0.000120153, 7.80604e-05, 5.45862e-05, 3.95686e-05, 2.92812e-05, 2.19362e-05, 1.65659e-05, 1.258e-05, 9.58668e-06, 7.32384e-06, 5.60328e-06, 4.28482e-06, 3.28144e-06, 2.50822e-06, 1.91332e-06, 
			0.000227614, 0.000121112, 7.8872e-05, 5.52484e-05, 4.00948e-05, 2.96912e-05, 2.22496e-05, 1.68174e-05, 1.27728e-05, 9.73546e-06, 7.43022e-06, 5.68062e-06, 4.34906e-06, 3.31906e-06, 2.53662e-06, 1.92668e-06
		)
}

CapTable	"metal7_C_LATERAL_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000213488, 0.000110356, 7.07878e-05, 4.91658e-05, 3.54918e-05, 2.62394e-05, 1.96873e-05, 1.49284e-05, 1.14122e-05, 8.77392e-06, 6.78918e-06, 5.2624e-06, 4.08914e-06, 3.1866e-06, 2.4848e-06, 1.94209e-06, 
			0.0002219, 0.000116286, 7.5229e-05, 5.2561e-05, 3.817e-05, 2.83416e-05, 2.13524e-05, 1.62491e-05, 1.2466e-05, 9.60824e-06, 7.43502e-06, 5.76944e-06, 4.48854e-06, 3.5015e-06, 2.73328e-06, 2.13434e-06, 
			0.000225768, 0.000119383, 7.76702e-05, 5.45082e-05, 3.97256e-05, 2.95904e-05, 2.23482e-05, 1.70577e-05, 1.30979e-05, 1.01057e-05, 7.8322e-06, 6.08254e-06, 4.73902e-06, 3.6967e-06, 2.88414e-06, 2.25578e-06, 
			0.000227412, 0.000121101, 7.91064e-05, 5.56884e-05, 4.06866e-05, 3.03862e-05, 2.2996e-05, 1.75629e-05, 1.34974e-05, 1.04264e-05, 8.08846e-06, 6.28876e-06, 4.89548e-06, 3.82242e-06, 2.98522e-06, 2.33214e-06, 
			0.000228606, 0.000122229, 8.0075e-05, 5.64768e-05, 4.13474e-05, 3.09112e-05, 2.34118e-05, 1.79047e-05, 1.37703e-05, 1.06512e-05, 8.25722e-06, 6.42166e-06, 5.00888e-06, 3.90334e-06, 3.0517e-06, 2.37946e-06
		)
}

CapTable	"metal7_C_BOTTOM_GP_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.4543e-05, 1.78651e-05, 2.0592e-05, 2.29504e-05, 2.50601e-05, 2.69901e-05, 2.87819e-05, 3.04618e-05, 3.20474e-05, 3.35505e-05, 3.49795e-05, 3.63404e-05, 3.76376e-05, 3.88746e-05, 4.00545e-05, 4.11796e-05, 
			1.6865e-05, 1.98828e-05, 2.25264e-05, 2.49008e-05, 2.7076e-05, 2.90965e-05, 3.09922e-05, 3.27825e-05, 3.44817e-05, 3.60985e-05, 3.76401e-05, 3.91116e-05, 4.05168e-05, 4.18589e-05, 4.31405e-05, 4.43641e-05, 
			1.9134e-05, 2.19898e-05, 2.45824e-05, 2.69652e-05, 2.91822e-05, 3.12644e-05, 3.32328e-05, 3.51018e-05, 3.68822e-05, 3.85814e-05, 4.0205e-05, 4.17572e-05, 4.32412e-05, 4.46602e-05, 4.60166e-05, 4.73122e-05, 
			2.1405e-05, 2.41636e-05, 2.67266e-05, 2.91198e-05, 3.13704e-05, 3.35004e-05, 3.55252e-05, 3.74558e-05, 3.92996e-05, 4.10629e-05, 4.27502e-05, 4.43655e-05, 4.59113e-05, 4.73906e-05, 4.88053e-05, 5.01578e-05, 
			2.3686e-05, 2.6397e-05, 2.89472e-05, 3.13544e-05, 3.3636e-05, 3.58068e-05, 3.78782e-05, 3.98592e-05, 4.17552e-05, 4.35712e-05, 4.53111e-05, 4.69783e-05, 4.85748e-05, 5.01036e-05, 5.15663e-05, 5.29654e-05
		)
}

CapTable	"metal7_C_LATERAL_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000238924, 0.000141579, 0.000105459, 8.56856e-05, 7.28066e-05, 6.35408e-05, 5.64332e-05, 5.07338e-05, 4.6014e-05, 4.20102e-05, 3.85504e-05, 3.55174e-05, 3.28282e-05, 3.04222e-05, 2.82534e-05, 2.62866e-05, 
			0.00025585, 0.000154525, 0.000115985, 9.45892e-05, 8.0518e-05, 7.03336e-05, 6.24904e-05, 5.6185e-05, 5.09548e-05, 4.65142e-05, 4.26756e-05, 3.93102e-05, 3.63268e-05, 3.36582e-05, 3.12536e-05, 2.90738e-05, 
			0.000266126, 0.000163027, 0.000123174, 0.000100802, 8.59828e-05, 7.51966e-05, 6.68582e-05, 6.01368e-05, 5.45516e-05, 4.98036e-05, 4.5696e-05, 4.20934e-05, 3.8899e-05, 3.60412e-05, 3.3466e-05, 3.1132e-05, 
			0.000272878, 0.000169096, 0.000128468, 0.000105459, 9.01236e-05, 7.89166e-05, 7.02178e-05, 6.31892e-05, 5.73388e-05, 5.23596e-05, 4.80486e-05, 4.42652e-05, 4.09094e-05, 3.79064e-05, 3.52002e-05, 3.27468e-05, 
			0.000278228, 0.00017387, 0.000132686, 0.0001092, 9.3468e-05, 8.19252e-05, 7.29448e-05, 6.56738e-05, 5.96128e-05, 5.44488e-05, 4.99744e-05, 4.60456e-05, 4.25596e-05, 3.94392e-05, 3.66268e-05, 3.40766e-05
		)
}

CapTable	"metal7_C_LATERAL_82MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.00023939, 0.00014218, 0.000106175, 8.65002e-05, 7.37046e-05, 6.45086e-05, 5.74582e-05, 5.18044e-05, 4.71204e-05, 4.31434e-05, 3.9703e-05, 3.6683e-05, 3.40016e-05, 3.15984e-05, 2.9429e-05, 2.74584e-05, 
			0.000256456, 0.000155262, 0.000116833, 9.55316e-05, 8.15392e-05, 7.14196e-05, 6.36284e-05, 5.73638e-05, 5.21652e-05, 4.7748e-05, 4.39258e-05, 4.05716e-05, 3.75944e-05, 3.49282e-05, 3.2523e-05, 3.03402e-05, 
			0.000266874, 0.000163895, 0.000124145, 0.00010186, 8.71124e-05, 7.63834e-05, 6.80904e-05, 6.14042e-05, 5.58458e-05, 5.11174e-05, 4.70238e-05, 4.34302e-05, 4.0241e-05, 3.73854e-05, 3.481e-05, 3.24736e-05, 
			0.000273758, 0.000170087, 0.000129553, 0.00010662, 9.13468e-05, 8.0189e-05, 7.1529e-05, 6.45302e-05, 5.87024e-05, 5.37396e-05, 4.94402e-05, 4.5665e-05, 4.2314e-05, 3.93136e-05, 3.66078e-05, 3.41536e-05, 
			0.000279232, 0.000174972, 0.00013387, 0.00011045, 9.4772e-05, 8.32712e-05, 7.43234e-05, 6.70776e-05, 6.10356e-05, 5.58858e-05, 5.1422e-05, 4.75008e-05, 4.40198e-05, 4.09028e-05, 3.8092e-05, 3.55426e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			6.7548e-06, 9.1726e-06, 1.12904e-05, 1.30515e-05, 1.44962e-05, 1.56349e-05, 1.65347e-05, 1.72376e-05, 1.77848e-05, 1.82081e-05, 1.86178e-05, 1.88456e-05, 1.90229e-05, 1.91644e-05, 1.92662e-05, 1.93199e-05, 
			9.2352e-06, 1.171e-05, 1.39103e-05, 1.5783e-05, 1.7305e-05, 1.85274e-05, 1.94936e-05, 2.02519e-05, 2.0943e-05, 2.13748e-05, 2.1712e-05, 2.19766e-05, 2.21715e-05, 2.23465e-05, 2.24327e-05, 2.25747e-05, 
			1.17818e-05, 1.43136e-05, 1.65758e-05, 1.84988e-05, 2.00744e-05, 2.13406e-05, 2.23448e-05, 2.32173e-05, 2.38121e-05, 2.42793e-05, 2.46478e-05, 2.49255e-05, 2.511e-05, 2.53373e-05, 2.54739e-05, 2.55832e-05, 
			1.4422e-05, 1.69734e-05, 1.92746e-05, 2.12276e-05, 2.28334e-05, 2.42188e-05, 2.5218e-05, 2.60091e-05, 2.66326e-05, 2.71096e-05, 2.75075e-05, 2.77602e-05, 2.80475e-05, 2.82346e-05, 2.83788e-05, 2.84899e-05, 
			1.7094e-05, 1.9675e-05, 2.1998e-05, 2.39732e-05, 2.56736e-05, 2.69608e-05, 2.79882e-05, 2.88033e-05, 2.94367e-05, 2.98918e-05, 3.03478e-05, 3.06573e-05, 3.09041e-05, 3.10917e-05, 3.12413e-05, 3.13525e-05
		)
}

CapTable	"metal7_C_TOP_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.58512e-05, 6.15164e-05, 7.37508e-05, 8.31787e-05, 9.0456e-05, 9.60337e-05, 0.00010032, 0.000103623, 0.000106162, 0.00010813, 0.000109557, 0.000110769, 0.000111713, 0.000112439, 0.000113014, 0.000113486, 
			6.65188e-05, 8.23314e-05, 9.48227e-05, 0.000104582, 0.000112146, 0.000118012, 0.000122555, 0.000126073, 0.000128696, 0.000130845, 0.000132517, 0.000133823, 0.00013484, 0.000135616, 0.000136269, 0.000136714, 
			8.75462e-05, 0.000103411, 0.00011602, 0.000125923, 0.000133658, 0.000139686, 0.000144382, 0.000147932, 0.000150801, 0.000153039, 0.000154768, 0.000156131, 0.000157222, 0.000157998, 0.000158647, 0.000159139, 
			0.000108815, 0.000124632, 0.000137297, 0.000147292, 0.000155129, 0.000161156, 0.000165962, 0.000169717, 0.000172653, 0.000174939, 0.000176701, 0.000178134, 0.000179179, 0.000180013, 0.000180674, 0.000181206, 
			0.000130238, 0.000146089, 0.000158796, 0.000168871, 0.000176684, 0.0001829, 0.000187776, 0.00019156, 0.000194539, 0.000196892, 0.000198655, 0.000200067, 0.000201152, 0.000202025, 0.000202705, 0.000203244
		)
}

CapTable	"metal7_C_TOP_GP_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.60927e-05, 6.18106e-05, 7.40717e-05, 8.35118e-05, 9.0817e-05, 9.6423e-05, 0.000100747, 0.000104093, 0.000106677, 0.00010869, 0.000110131, 0.000111394, 0.000112385, 0.000113154, 0.00011376, 0.000114241, 
			6.67421e-05, 8.262e-05, 9.51209e-05, 0.000104899, 0.000112485, 0.000118387, 0.000122972, 0.00012654, 0.000129321, 0.000131393, 0.000133126, 0.000134491, 0.00013555, 0.000136392, 0.000137047, 0.00013757, 
			8.77953e-05, 0.000103679, 0.000116296, 0.000126215, 0.000133978, 0.000140045, 0.000144791, 0.000148366, 0.000151305, 0.000153614, 0.00015541, 0.000156827, 0.000157944, 0.000158819, 0.000159518, 0.000160053, 
			0.000109055, 0.000124877, 0.00013755, 0.000147561, 0.00015543, 0.000161597, 0.000166336, 0.000170164, 0.000173176, 0.000175522, 0.000177377, 0.00017883, 0.000179987, 0.00018088, 0.000181598, 0.000182164, 
			0.000130458, 0.000146312, 0.000159026, 0.000169119, 0.000176935, 0.000183211, 0.000188159, 0.000192022, 0.000195065, 0.000197464, 0.000199347, 0.000200845, 0.000201999, 0.000202943, 0.000203665, 0.000204253
		)
}

CapTable	"metal7_C_LATERAL_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.0002137, 0.000110663, 7.11822e-05, 4.96342e-05, 3.5993e-05, 2.6756e-05, 2.01946e-05, 1.5413e-05, 1.18649e-05, 9.18888e-06, 7.16618e-06, 5.59716e-06, 4.38242e-06, 3.44036e-06, 2.70342e-06, 2.12536e-06, 
			0.000222264, 0.000116739, 7.57782e-05, 5.31662e-05, 3.88064e-05, 2.89784e-05, 2.19694e-05, 1.68316e-05, 1.29941e-05, 1.00987e-05, 7.8722e-06, 6.1534e-06, 4.82398e-06, 3.78568e-06, 2.97312e-06, 2.33342e-06, 
			0.00022627, 0.000119988, 7.83576e-05, 5.52426e-05, 4.04754e-05, 3.0329e-05, 2.30546e-05, 1.772e-05, 1.3703e-05, 1.06487e-05, 8.31192e-06, 6.50328e-06, 5.09776e-06, 3.99954e-06, 3.1364e-06, 2.4629e-06, 
			0.000228052, 0.00012184, 7.99144e-05, 5.65318e-05, 4.15328e-05, 3.12018e-05, 2.37752e-05, 1.82823e-05, 1.41487e-05, 1.10111e-05, 8.59738e-06, 6.72696e-06, 5.2675e-06, 4.13398e-06, 3.24198e-06, 2.54052e-06, 
			0.000229378, 0.000123086, 8.09886e-05, 5.74124e-05, 4.22754e-05, 3.1801e-05, 2.4244e-05, 1.86666e-05, 1.44617e-05, 1.12574e-05, 8.78936e-06, 6.87164e-06, 5.38846e-06, 4.2182e-06, 3.30922e-06, 2.5861e-06
		)
}

CapTable	"metal7_C_BOTTOM_GP_82MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.3961e-05, 1.70788e-05, 1.96168e-05, 2.17988e-05, 2.37457e-05, 2.55245e-05, 2.71773e-05, 2.87304e-05, 3.02004e-05, 3.15992e-05, 3.29343e-05, 3.4211e-05, 3.54329e-05, 3.66034e-05, 3.7724e-05, 3.87971e-05, 
			1.6089e-05, 1.88942e-05, 2.13394e-05, 2.35264e-05, 2.55278e-05, 2.73874e-05, 2.91351e-05, 3.07902e-05, 3.23658e-05, 3.38707e-05, 3.53111e-05, 3.6691e-05, 3.80142e-05, 3.92825e-05, 4.0498e-05, 4.16623e-05, 
			1.8144e-05, 2.07846e-05, 2.31706e-05, 2.53598e-05, 2.73976e-05, 2.93126e-05, 3.11278e-05, 3.28564e-05, 3.45084e-05, 3.60908e-05, 3.76079e-05, 3.90637e-05, 4.04604e-05, 4.18002e-05, 4.3085e-05, 4.43162e-05, 
			2.0194e-05, 2.27306e-05, 2.50832e-05, 2.72796e-05, 2.93472e-05, 3.1308e-05, 3.3176e-05, 3.49622e-05, 3.66742e-05, 3.8317e-05, 3.98942e-05, 4.14087e-05, 4.28628e-05, 4.42583e-05, 4.5597e-05, 4.688e-05, 
			2.2242e-05, 2.47308e-05, 2.7068e-05, 2.92756e-05, 3.1372e-05, 3.33708e-05, 3.52836e-05, 3.71174e-05, 3.88787e-05, 4.05709e-05, 4.21969e-05, 4.37594e-05, 4.52601e-05, 4.67009e-05, 4.80833e-05, 4.94086e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal6_C_LATERAL_13MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			6.2353e-06, 8.4493e-06, 1.03901e-05, 1.2002e-05, 1.3333e-05, 1.4383e-05, 1.52194e-05, 1.5874e-05, 1.63871e-05, 1.67881e-05, 1.72108e-05, 1.74218e-05, 1.75876e-05, 1.77226e-05, 1.78276e-05, 1.79016e-05, 
			8.5189e-06, 1.07644e-05, 1.27759e-05, 1.44968e-05, 1.58966e-05, 1.70276e-05, 1.79266e-05, 1.86374e-05, 1.91959e-05, 1.97273e-05, 2.00438e-05, 2.02926e-05, 2.0493e-05, 2.06363e-05, 2.07699e-05, 2.08726e-05, 
			1.08187e-05, 1.31334e-05, 1.52044e-05, 1.69714e-05, 1.84246e-05, 1.9598e-05, 2.05344e-05, 2.1389e-05, 2.1942e-05, 2.23803e-05, 2.27311e-05, 2.30057e-05, 2.32132e-05, 2.33955e-05, 2.35306e-05, 2.36401e-05, 
			1.3224e-05, 1.55554e-05, 1.76636e-05, 1.94602e-05, 2.09422e-05, 2.21432e-05, 2.31958e-05, 2.39327e-05, 2.45183e-05, 2.49829e-05, 2.53346e-05, 2.5638e-05, 2.58715e-05, 2.6055e-05, 2.6198e-05, 2.63095e-05, 
			1.5657e-05, 1.8017e-05, 2.01454e-05, 2.19646e-05, 2.35736e-05, 2.4763e-05, 2.5718e-05, 2.64814e-05, 2.70883e-05, 2.75576e-05, 2.79486e-05, 2.82504e-05, 2.84905e-05, 2.86738e-05, 2.88238e-05, 2.89349e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal6_C_TOP_GP_12MAX" {
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

CapTable	"metal6_C_LATERAL_12MAX" {
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

CapTable	"metal6_C_BOTTOM_GPMAX" {
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

CapTable	"metal6_C_TOP_GPMAX" {
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

CapTable	"metal6_C_LATERALMAX" {
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

CapTable	"metal6_C_LATERAL_22MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_23MAX" {
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

CapTable	"metal6_C_LATERAL_23MAX" {
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

CapTable	"metal6_C_LATERAL_21MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_22MAX" {
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

CapTable	"metal6_C_TOP_GP_22MAX" {
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

CapTable	"metal6_C_LATERAL_33MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal6_C_TOP_GP_21MAX" {
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

CapTable	"metal6_C_TOP_GP_32MAX" {
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

CapTable	"metal6_C_LATERAL_32MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_33MAX" {
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

CapTable	"metal6_C_TOP_GP_31MAX" {
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

CapTable	"metal6_C_LATERAL_31MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_32MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_43MAX" {
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

CapTable	"metal6_C_LATERAL_43MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_42MAX" {
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

CapTable	"metal6_C_TOP_GP_42MAX" {
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

CapTable	"metal6_C_LATERAL_42MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_41MAX" {
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

CapTable	"metal6_C_TOP_GP_41MAX" {
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

CapTable	"metal6_C_LATERAL_41MAX" {
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

CapTable	"metal6_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183654, 0.00010894, 8.09128e-05, 6.54054e-05, 5.51892e-05, 4.77534e-05, 4.1987e-05, 3.732e-05, 3.34264e-05, 3.0106e-05, 2.72282e-05, 2.47036e-05, 2.2467e-05, 2.04712e-05, 1.86808e-05, 1.70665e-05, 
			0.000198141, 0.000120246, 9.01818e-05, 7.3265e-05, 6.19784e-05, 5.36998e-05, 4.7248e-05, 4.20088e-05, 3.76294e-05, 3.38906e-05, 3.06476e-05, 2.78014e-05, 2.52798e-05, 2.30306e-05, 2.10122e-05, 1.9194e-05, 
			0.00020705, 0.000127717, 9.6512e-05, 7.87106e-05, 6.67428e-05, 5.79024e-05, 5.09828e-05, 4.5348e-05, 4.0629e-05, 3.65948e-05, 3.30928e-05, 3.00182e-05, 2.7293e-05, 2.48628e-05, 2.26818e-05, 2.0716e-05, 
			0.000213318, 0.00013315, 0.000101209, 8.28042e-05, 7.03378e-05, 6.10888e-05, 5.38244e-05, 4.78936e-05, 4.29182e-05, 3.86598e-05, 3.49612e-05, 3.1712e-05, 2.88328e-05, 2.62626e-05, 2.39576e-05, 2.18792e-05, 
			0.000217546, 0.00013715, 0.000104745, 8.5922e-05, 7.30962e-05, 6.35464e-05, 5.60228e-05, 4.98658e-05, 4.46934e-05, 4.02622e-05, 3.64118e-05, 3.30272e-05, 3.00264e-05, 2.73492e-05, 2.49462e-05, 2.27806e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.23466e-05, 1.49572e-05, 1.70042e-05, 1.86992e-05, 2.01596e-05, 2.14545e-05, 2.26264e-05, 2.3703e-05, 2.47026e-05, 2.56383e-05, 2.65194e-05, 2.73529e-05, 2.81437e-05, 2.88962e-05, 2.96135e-05, 3.02982e-05, 
			1.4156e-05, 1.6433e-05, 1.83474e-05, 2.00042e-05, 2.14743e-05, 2.2804e-05, 2.4025e-05, 2.51585e-05, 2.62193e-05, 2.72183e-05, 2.81637e-05, 2.90611e-05, 2.99158e-05, 3.07308e-05, 3.15097e-05, 3.22546e-05, 
			1.5782e-05, 1.78634e-05, 1.96858e-05, 2.13088e-05, 2.27768e-05, 2.41246e-05, 2.53752e-05, 2.65452e-05, 2.7647e-05, 2.86894e-05, 2.96795e-05, 3.06225e-05, 3.15223e-05, 3.23823e-05, 3.32054e-05, 3.39935e-05, 
			1.731e-05, 1.92696e-05, 2.10272e-05, 2.2622e-05, 2.40872e-05, 2.54455e-05, 2.67165e-05, 2.79132e-05, 2.90453e-05, 3.01206e-05, 3.11448e-05, 3.21224e-05, 3.30572e-05, 3.3952e-05, 3.48094e-05, 3.56315e-05, 
			1.8796e-05, 2.06612e-05, 2.23712e-05, 2.39448e-05, 2.54058e-05, 2.67726e-05, 2.80588e-05, 2.92756e-05, 3.04312e-05, 3.1532e-05, 3.25829e-05, 3.35879e-05, 3.45501e-05, 3.54726e-05, 3.63571e-05, 3.7206e-05
		)
}

CapTable	"metal6_C_LATERAL_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000186458, 0.000112543, 8.52298e-05, 7.03762e-05, 6.0764e-05, 5.38874e-05, 4.86382e-05, 4.44468e-05, 4.09884e-05, 3.8063e-05, 3.55404e-05, 3.33316e-05, 3.1374e-05, 2.96212e-05, 2.8039e-05, 2.6601e-05, 
			0.000201866, 0.000124791, 9.54866e-05, 7.9277e-05, 6.86502e-05, 6.09854e-05, 5.51016e-05, 5.03852e-05, 4.64834e-05, 4.31774e-05, 4.03232e-05, 3.78228e-05, 3.56056e-05, 3.36206e-05, 3.18286e-05, 3.02002e-05, 
			0.000211724, 0.000133236, 0.000102826, 8.57712e-05, 7.4501e-05, 6.631e-05, 5.99912e-05, 5.4908e-05, 5.06914e-05, 4.71116e-05, 4.40168e-05, 4.13026e-05, 3.88944e-05, 3.67372e-05, 3.47894e-05, 3.30192e-05, 
			0.000218976, 0.00013968, 0.000108563, 9.0933e-05, 7.91908e-05, 7.06146e-05, 6.39706e-05, 5.86084e-05, 5.41496e-05, 5.0357e-05, 4.70738e-05, 4.41914e-05, 4.1632e-05, 3.9338e-05, 3.7266e-05, 3.53822e-05, 
			0.000224232, 0.000144724, 0.000113164, 9.51342e-05, 8.30492e-05, 7.41854e-05, 6.7293e-05, 6.17128e-05, 5.70626e-05, 5.31008e-05, 4.96666e-05, 4.66488e-05, 4.39672e-05, 4.15622e-05, 3.93892e-05, 3.74128e-05
		)
}

CapTable	"metal6_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177233, 0.000100465, 7.07698e-05, 5.39812e-05, 4.2849e-05, 3.48158e-05, 2.87288e-05, 2.39696e-05, 2.0162e-05, 1.70799e-05, 1.45406e-05, 1.2449e-05, 1.06884e-05, 9.2096e-06, 7.96094e-06, 6.90038e-06, 
			0.000188921, 0.000109021, 7.73818e-05, 5.93072e-05, 4.72366e-05, 3.84996e-05, 3.18546e-05, 2.66526e-05, 2.24756e-05, 1.90773e-05, 1.62902e-05, 1.39626e-05, 1.20151e-05, 1.03738e-05, 8.98638e-06, 7.80146e-06, 
			0.000195128, 0.00011397, 8.13812e-05, 6.2608e-05, 5.00316e-05, 4.08844e-05, 3.39216e-05, 2.84396e-05, 2.40486e-05, 2.04544e-05, 1.74893e-05, 1.50194e-05, 1.2947e-05, 1.11995e-05, 9.71218e-06, 8.44448e-06, 
			0.000198925, 0.000117171, 8.4074e-05, 6.4896e-05, 5.20006e-05, 4.25958e-05, 3.54104e-05, 2.97592e-05, 2.5199e-05, 2.1473e-05, 1.83911e-05, 1.58221e-05, 1.36588e-05, 1.18274e-05, 1.02708e-05, 8.9407e-06, 
			0.000200986, 0.000119261, 8.59186e-05, 6.65208e-05, 5.34184e-05, 4.38628e-05, 3.65336e-05, 3.07452e-05, 2.60766e-05, 2.2254e-05, 1.90896e-05, 1.64398e-05, 1.42095e-05, 1.23194e-05, 1.07109e-05, 9.3334e-06
		)
}

CapTable	"metal6_C_BOTTOM_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.8694e-06, 7.2845e-06, 8.4538e-06, 9.4665e-06, 1.03688e-05, 1.11903e-05, 1.19487e-05, 1.26548e-05, 1.33138e-05, 1.39337e-05, 1.4515e-05, 1.50617e-05, 1.55749e-05, 1.60578e-05, 1.65095e-05, 1.69346e-05, 
			6.9843e-06, 8.2863e-06, 9.4344e-06, 1.04663e-05, 1.1411e-05, 1.22864e-05, 1.31039e-05, 1.38708e-05, 1.4592e-05, 1.52722e-05, 1.59136e-05, 1.65169e-05, 1.70862e-05, 1.76205e-05, 1.81239e-05, 1.85949e-05, 
			8.0507e-06, 9.298e-06, 1.04397e-05, 1.14901e-05, 1.24676e-05, 1.33812e-05, 1.42427e-05, 1.50545e-05, 1.58217e-05, 1.65461e-05, 1.72311e-05, 1.78762e-05, 1.8486e-05, 1.90585e-05, 1.95992e-05, 2.01062e-05, 
			9.1078e-06, 1.03343e-05, 1.14779e-05, 1.25468e-05, 1.35504e-05, 1.44973e-05, 1.53935e-05, 1.62422e-05, 1.70448e-05, 1.78054e-05, 1.85237e-05, 1.92036e-05, 1.98436e-05, 2.04485e-05, 2.10152e-05, 2.15498e-05, 
			1.01848e-05, 1.13989e-05, 1.25468e-05, 1.36338e-05, 1.4662e-05, 1.56371e-05, 1.65609e-05, 1.74392e-05, 1.82708e-05, 1.90603e-05, 1.98061e-05, 2.0513e-05, 2.11796e-05, 2.18068e-05, 2.23983e-05, 2.2954e-05
		)
}

CapTable	"metal6_C_TOP_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.9874e-06, 1.23423e-05, 1.42864e-05, 1.59691e-05, 1.7473e-05, 1.88445e-05, 2.01119e-05, 2.12918e-05, 2.2398e-05, 2.34346e-05, 2.44095e-05, 2.53246e-05, 2.61857e-05, 2.69937e-05, 2.77526e-05, 2.8463e-05, 
			1.18807e-05, 1.40629e-05, 1.59808e-05, 1.77067e-05, 1.92885e-05, 2.07547e-05, 2.21244e-05, 2.3411e-05, 2.46222e-05, 2.57628e-05, 2.68381e-05, 2.7852e-05, 2.8806e-05, 2.97039e-05, 3.05468e-05, 3.13383e-05, 
			1.37053e-05, 1.58052e-05, 1.77173e-05, 1.94793e-05, 2.11176e-05, 2.26544e-05, 2.40998e-05, 2.5464e-05, 2.67518e-05, 2.79694e-05, 2.9119e-05, 3.02043e-05, 3.1227e-05, 3.21897e-05, 3.30932e-05, 3.39429e-05, 
			1.55202e-05, 1.75899e-05, 1.95105e-05, 2.1306e-05, 2.29938e-05, 2.45869e-05, 2.60922e-05, 2.75174e-05, 2.88677e-05, 3.01452e-05, 3.13538e-05, 3.24935e-05, 3.35695e-05, 3.4582e-05, 3.55356e-05, 3.64304e-05, 
			1.73702e-05, 1.94215e-05, 2.13588e-05, 2.31872e-05, 2.49178e-05, 2.65565e-05, 2.81123e-05, 2.95882e-05, 3.09885e-05, 3.23145e-05, 3.35691e-05, 3.47532e-05, 3.58717e-05, 3.69253e-05, 3.79158e-05, 3.88466e-05
		)
}

CapTable	"metal6_C_LATERAL_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000186875, 0.000113068, 8.58488e-05, 7.1078e-05, 6.15404e-05, 5.47318e-05, 4.95446e-05, 4.54098e-05, 4.2003e-05, 3.91246e-05, 3.66448e-05, 3.44746e-05, 3.25514e-05, 3.0829e-05, 2.92736e-05, 2.78582e-05, 
			0.0002024, 0.000125432, 9.6222e-05, 8.00984e-05, 6.955e-05, 6.19568e-05, 5.61388e-05, 5.14828e-05, 4.7636e-05, 4.438e-05, 4.15714e-05, 3.91116e-05, 3.69308e-05, 3.49776e-05, 3.32134e-05, 3.16086e-05, 
			0.000212374, 0.00013399, 0.000103677, 8.67092e-05, 7.55192e-05, 6.7402e-05, 6.1151e-05, 5.61298e-05, 5.19698e-05, 4.84412e-05, 4.53928e-05, 4.272e-05, 4.03482e-05, 3.8223e-05, 3.63026e-05, 3.45554e-05, 
			0.000219742, 0.00014055, 0.000109528, 9.19862e-05, 8.03252e-05, 7.18236e-05, 6.5248e-05, 5.99484e-05, 5.55466e-05, 5.18054e-05, 4.85682e-05, 4.57268e-05, 4.32032e-05, 4.09402e-05, 3.88944e-05, 3.70324e-05, 
			0.000225112, 0.000145708, 0.000114243, 9.63016e-05, 8.42976e-05, 7.55084e-05, 6.86842e-05, 6.31662e-05, 5.85722e-05, 5.4661e-05, 5.12718e-05, 4.82934e-05, 4.56462e-05, 4.32706e-05, 4.11218e-05, 3.91654e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.2013e-06, 5.4521e-06, 6.5542e-06, 7.5313e-06, 8.3916e-06, 9.1543e-06, 9.8183e-06, 1.03958e-05, 1.0904e-05, 1.13379e-05, 1.17222e-05, 1.20446e-05, 1.23347e-05, 1.2586e-05, 1.2804e-05, 1.29928e-05, 
			5.3643e-06, 6.6012e-06, 7.733e-06, 8.7558e-06, 9.6709e-06, 1.04816e-05, 1.12022e-05, 1.18266e-05, 1.23821e-05, 1.28672e-05, 1.32793e-05, 1.36484e-05, 1.39693e-05, 1.42484e-05, 1.44876e-05, 1.46989e-05, 
			6.5487e-06, 7.7856e-06, 8.9407e-06, 9.9924e-06, 1.09385e-05, 1.17876e-05, 1.25339e-05, 1.3201e-05, 1.37748e-05, 1.42885e-05, 1.47378e-05, 1.51303e-05, 1.54716e-05, 1.5767e-05, 1.60267e-05, 1.62536e-05, 
			7.7555e-06, 9.0009e-06, 1.01666e-05, 1.12425e-05, 1.22083e-05, 1.30834e-05, 1.38626e-05, 1.45401e-05, 1.51483e-05, 1.56816e-05, 1.61489e-05, 1.65541e-05, 1.69127e-05, 1.72247e-05, 1.74986e-05, 1.77365e-05, 
			8.9858e-06, 1.02352e-05, 1.1418e-05, 1.25013e-05, 1.34945e-05, 1.43749e-05, 1.51711e-05, 1.5877e-05, 1.65003e-05, 1.70487e-05, 1.75266e-05, 1.79488e-05, 1.83181e-05, 1.8642e-05, 1.89251e-05, 1.91751e-05
		)
}

CapTable	"metal6_C_TOP_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.00453e-05, 2.59855e-05, 3.1145e-05, 3.56481e-05, 3.95717e-05, 4.29749e-05, 4.59199e-05, 4.84586e-05, 5.06417e-05, 5.2517e-05, 5.41299e-05, 5.55122e-05, 5.67057e-05, 5.77307e-05, 5.86131e-05, 5.93758e-05, 
			2.61725e-05, 3.2221e-05, 3.76202e-05, 4.2389e-05, 4.65745e-05, 5.02231e-05, 5.33885e-05, 5.61275e-05, 5.8495e-05, 6.05358e-05, 6.22948e-05, 6.38126e-05, 6.51199e-05, 6.62502e-05, 6.72284e-05, 6.80766e-05, 
			3.25791e-05, 3.87258e-05, 4.42581e-05, 4.91746e-05, 5.34999e-05, 5.7283e-05, 6.05765e-05, 6.34364e-05, 6.59136e-05, 6.80581e-05, 6.99089e-05, 7.15113e-05, 7.28974e-05, 7.40985e-05, 7.51411e-05, 7.60439e-05, 
			3.92095e-05, 4.54283e-05, 5.10384e-05, 5.60335e-05, 6.04431e-05, 6.43128e-05, 6.769e-05, 7.06287e-05, 7.31817e-05, 7.53924e-05, 7.7311e-05, 7.89748e-05, 8.04165e-05, 8.16699e-05, 8.27566e-05, 8.37028e-05, 
			4.60072e-05, 5.2243e-05, 5.78904e-05, 6.29339e-05, 6.73971e-05, 7.13203e-05, 7.47543e-05, 7.77458e-05, 8.03511e-05, 8.26153e-05, 8.45828e-05, 8.62934e-05, 8.77764e-05, 8.90666e-05, 9.0186e-05, 9.11625e-05
		)
}

CapTable	"metal6_C_TOP_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.02641e-05, 1.26637e-05, 1.46361e-05, 1.63393e-05, 1.78569e-05, 1.92384e-05, 2.05144e-05, 2.17023e-05, 2.2814e-05, 2.38591e-05, 2.48419e-05, 2.57666e-05, 2.66365e-05, 2.74563e-05, 2.82269e-05, 2.89516e-05, 
			1.21767e-05, 1.43878e-05, 1.63276e-05, 1.80685e-05, 1.96596e-05, 2.11329e-05, 2.25083e-05, 2.38005e-05, 2.50175e-05, 2.61646e-05, 2.72471e-05, 2.82692e-05, 2.92332e-05, 3.01428e-05, 3.09985e-05, 3.18044e-05, 
			1.40086e-05, 1.61311e-05, 1.80581e-05, 1.98297e-05, 2.14748e-05, 2.30144e-05, 2.44641e-05, 2.58319e-05, 2.71245e-05, 2.83466e-05, 2.95032e-05, 3.05962e-05, 3.16298e-05, 3.26035e-05, 3.35221e-05, 3.43853e-05, 
			1.58252e-05, 1.79098e-05, 1.98404e-05, 2.16409e-05, 2.33325e-05, 2.49276e-05, 2.64353e-05, 2.78624e-05, 2.92156e-05, 3.04977e-05, 3.17132e-05, 3.28616e-05, 3.3948e-05, 3.49713e-05, 3.59404e-05, 3.68516e-05, 
			1.76717e-05, 1.97337e-05, 2.16746e-05, 2.35056e-05, 2.52368e-05, 2.68756e-05, 2.8431e-05, 2.99083e-05, 3.13105e-05, 3.2642e-05, 3.39025e-05, 3.50956e-05, 3.62236e-05, 3.72926e-05, 3.82973e-05, 3.9245e-05
		)
}

CapTable	"metal6_C_LATERAL_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183875, 0.000109231, 8.12666e-05, 6.58174e-05, 5.56548e-05, 4.82678e-05, 4.25458e-05, 3.79182e-05, 3.40598e-05, 3.07698e-05, 2.79176e-05, 2.5414e-05, 2.3194e-05, 2.12112e-05, 1.9429e-05, 1.78204e-05, 
			0.000198444, 0.000120622, 9.06258e-05, 7.37726e-05, 6.2545e-05, 5.432e-05, 4.79166e-05, 4.2721e-05, 3.83794e-05, 3.46728e-05, 3.14576e-05, 2.8634e-05, 2.61298e-05, 2.38936e-05, 2.18838e-05, 2.00706e-05, 
			0.00020744, 0.000128182, 9.70496e-05, 7.93154e-05, 6.74092e-05, 5.86256e-05, 5.17572e-05, 4.61676e-05, 4.14876e-05, 3.74868e-05, 3.4013e-05, 3.09602e-05, 2.82528e-05, 2.5834e-05, 2.36612e-05, 2.16992e-05, 
			0.000213798, 0.00013371, 0.000101843, 8.35084e-05, 7.1106e-05, 6.1915e-05, 5.47018e-05, 4.88172e-05, 4.38816e-05, 3.96566e-05, 3.59852e-05, 3.27574e-05, 2.98944e-05, 2.73354e-05, 2.50348e-05, 2.29596e-05, 
			0.000218122, 0.000137806, 0.000105479, 8.67264e-05, 7.39654e-05, 6.44742e-05, 5.70022e-05, 5.08908e-05, 4.5757e-05, 4.13584e-05, 3.75334e-05, 3.41698e-05, 3.11836e-05, 2.85138e-05, 2.61166e-05, 2.39504e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.1827e-05, 1.42788e-05, 1.61832e-05, 1.77494e-05, 1.90908e-05, 2.02741e-05, 2.13414e-05, 2.23192e-05, 2.32257e-05, 2.40734e-05, 2.48713e-05, 2.56263e-05, 2.63435e-05, 2.70272e-05, 2.76799e-05, 2.83049e-05, 
			1.3482e-05, 1.56004e-05, 1.7369e-05, 1.8889e-05, 2.02304e-05, 2.14388e-05, 2.25446e-05, 2.35688e-05, 2.45262e-05, 2.54272e-05, 2.62796e-05, 2.70897e-05, 2.78618e-05, 2.85997e-05, 2.93064e-05, 2.99841e-05, 
			1.4953e-05, 1.68748e-05, 1.85464e-05, 2.00248e-05, 2.13573e-05, 2.25756e-05, 2.37031e-05, 2.47561e-05, 2.57466e-05, 2.66837e-05, 2.75739e-05, 2.84226e-05, 2.92339e-05, 3.00108e-05, 3.07562e-05, 3.14722e-05, 
			1.6321e-05, 1.81173e-05, 1.9719e-05, 2.11648e-05, 2.24878e-05, 2.37103e-05, 2.48518e-05, 2.5925e-05, 2.69397e-05, 2.79038e-05, 2.88227e-05, 2.97009e-05, 3.05423e-05, 3.13497e-05, 3.21254e-05, 3.28714e-05, 
			1.7643e-05, 1.93414e-05, 2.0889e-05, 2.23094e-05, 2.36224e-05, 2.48476e-05, 2.59992e-05, 2.70874e-05, 2.8121e-05, 2.91058e-05, 3.00473e-05, 3.09492e-05, 3.18144e-05, 3.2646e-05, 3.34462e-05, 3.42163e-05
		)
}

CapTable	"metal6_C_TOP_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.03334e-05, 2.63366e-05, 3.1543e-05, 3.6081e-05, 4.00319e-05, 4.34591e-05, 4.64249e-05, 4.89812e-05, 5.11866e-05, 5.30774e-05, 5.47099e-05, 5.61134e-05, 5.73223e-05, 5.83688e-05, 5.92726e-05, 6.00567e-05, 
			2.65037e-05, 3.26031e-05, 3.80388e-05, 4.28377e-05, 4.70465e-05, 5.07141e-05, 5.39021e-05, 5.66594e-05, 5.90422e-05, 6.1103e-05, 6.28817e-05, 6.44191e-05, 6.57499e-05, 6.69042e-05, 6.79059e-05, 6.87785e-05, 
			3.29417e-05, 3.91276e-05, 4.46913e-05, 4.96311e-05, 5.39755e-05, 5.77785e-05, 6.10852e-05, 6.39633e-05, 6.64595e-05, 6.86211e-05, 7.04951e-05, 7.2122e-05, 7.35336e-05, 7.47602e-05, 7.583e-05, 7.6761e-05, 
			3.95939e-05, 4.58436e-05, 5.14759e-05, 5.64919e-05, 6.09201e-05, 6.47995e-05, 6.8193e-05, 7.11471e-05, 7.37182e-05, 7.59516e-05, 7.78947e-05, 7.95836e-05, 8.10532e-05, 8.23361e-05, 8.34533e-05, 8.44308e-05, 
			4.64047e-05, 5.26621e-05, 5.83309e-05, 6.33846e-05, 6.7861e-05, 7.17971e-05, 7.52428e-05, 7.82529e-05, 8.08792e-05, 8.31671e-05, 8.51596e-05, 8.68988e-05, 8.84125e-05, 8.97351e-05, 9.0888e-05, 9.19001e-05
		)
}

CapTable	"metal6_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177366, 0.000100652, 7.1008e-05, 5.42676e-05, 4.31764e-05, 3.51822e-05, 2.91256e-05, 2.43908e-05, 2.05996e-05, 1.75313e-05, 1.49983e-05, 1.28966e-05, 1.11498e-05, 9.6644e-06, 8.40652e-06, 7.33456e-06, 
			0.000189124, 0.000109284, 7.77052e-05, 5.9685e-05, 4.76634e-05, 3.89628e-05, 3.23548e-05, 2.71696e-05, 2.30222e-05, 1.96353e-05, 1.68438e-05, 1.45301e-05, 1.2577e-05, 1.09266e-05, 9.52408e-06, 8.32882e-06, 
			0.00019541, 0.000114318, 8.17954e-05, 6.30818e-05, 5.05572e-05, 4.14522e-05, 3.45264e-05, 2.907e-05, 2.46848e-05, 2.11168e-05, 1.8154e-05, 1.56808e-05, 1.36002e-05, 1.18379e-05, 1.03388e-05, 9.05228e-06, 
			0.000199295, 0.000117614, 8.45812e-05, 6.54686e-05, 5.26164e-05, 4.32674e-05, 3.61158e-05, 3.04796e-05, 2.5949e-05, 2.22296e-05, 1.91475e-05, 1.65693e-05, 1.43991e-05, 1.25514e-05, 1.0975e-05, 9.62206e-06, 
			0.00020145, 0.000119801, 8.65288e-05, 6.71966e-05, 5.41472e-05, 4.4624e-05, 3.73428e-05, 3.15758e-05, 2.69194e-05, 2.31006e-05, 1.99303e-05, 1.72748e-05, 1.50288e-05, 1.31186e-05, 1.14863e-05, 1.0082e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.3157e-06, 6.5847e-06, 7.6303e-06, 8.5311e-06, 9.3329e-06, 1.00622e-05, 1.07341e-05, 1.13597e-05, 1.19451e-05, 1.2494e-05, 1.30107e-05, 1.34969e-05, 1.39559e-05, 1.43866e-05, 1.47927e-05, 1.51732e-05, 
			6.3033e-06, 7.4674e-06, 8.4876e-06, 9.4029e-06, 1.02392e-05, 1.10136e-05, 1.17366e-05, 1.2414e-05, 1.30521e-05, 1.3655e-05, 1.42237e-05, 1.476e-05, 1.52673e-05, 1.5744e-05, 1.61949e-05, 1.66172e-05, 
			7.2444e-06, 8.3535e-06, 9.3643e-06, 1.02929e-05, 1.1155e-05, 1.19631e-05, 1.27221e-05, 1.34386e-05, 1.41164e-05, 1.47584e-05, 1.53648e-05, 1.59391e-05, 1.64804e-05, 1.69931e-05, 1.7475e-05, 1.79314e-05, 
			8.1728e-06, 9.2584e-06, 1.02676e-05, 1.12107e-05, 1.20945e-05, 1.2928e-05, 1.37177e-05, 1.44657e-05, 1.51742e-05, 1.58469e-05, 1.64828e-05, 1.70865e-05, 1.76558e-05, 1.81971e-05, 1.87048e-05, 1.9183e-05, 
			9.1133e-06, 1.01841e-05, 1.11968e-05, 1.2152e-05, 1.30558e-05, 1.39132e-05, 1.47278e-05, 1.55003e-05, 1.62351e-05, 1.69315e-05, 1.75933e-05, 1.82197e-05, 1.88142e-05, 1.93737e-05, 1.99024e-05, 2.04021e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_73MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.13752e-05, 1.36931e-05, 1.54802e-05, 1.69393e-05, 1.81823e-05, 1.92741e-05, 2.02548e-05, 2.11507e-05, 2.19792e-05, 2.27529e-05, 2.34803e-05, 2.41683e-05, 2.48217e-05, 2.5445e-05, 2.60407e-05, 2.66116e-05, 
			1.2903e-05, 1.48924e-05, 1.65394e-05, 1.79472e-05, 1.91831e-05, 2.02918e-05, 2.13029e-05, 2.22368e-05, 2.31077e-05, 2.39264e-05, 2.47002e-05, 2.54354e-05, 2.61364e-05, 2.68067e-05, 2.74492e-05, 2.80664e-05, 
			1.425e-05, 1.60402e-05, 1.75874e-05, 1.89496e-05, 2.0171e-05, 2.12835e-05, 2.23095e-05, 2.32656e-05, 2.41635e-05, 2.50119e-05, 2.58175e-05, 2.65853e-05, 2.73197e-05, 2.80238e-05, 2.87002e-05, 2.9351e-05, 
			1.5489e-05, 1.71534e-05, 1.86272e-05, 1.99524e-05, 2.11584e-05, 2.22704e-05, 2.33052e-05, 2.42763e-05, 2.51932e-05, 2.60634e-05, 2.68927e-05, 2.76858e-05, 2.8446e-05, 2.91762e-05, 2.9879e-05, 3.05562e-05, 
			1.6679e-05, 1.82424e-05, 1.96608e-05, 2.09552e-05, 2.21484e-05, 2.32575e-05, 2.42978e-05, 2.52796e-05, 2.62107e-05, 2.7098e-05, 2.7946e-05, 2.87587e-05, 2.95396e-05, 3.02908e-05, 3.10149e-05, 3.17134e-05
		)
}

CapTable	"metal6_C_LATERAL_73MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000187239, 0.000113523, 8.63818e-05, 7.16808e-05, 6.22064e-05, 5.54554e-05, 5.03216e-05, 4.62362e-05, 4.28754e-05, 4.00394e-05, 3.75988e-05, 3.54648e-05, 3.35748e-05, 3.18826e-05, 3.03544e-05, 2.89638e-05, 
			0.000202862, 0.000125981, 9.68506e-05, 8.07994e-05, 7.03176e-05, 6.2786e-05, 5.7025e-05, 5.2422e-05, 4.86248e-05, 4.54144e-05, 4.2648e-05, 4.0227e-05, 3.80816e-05, 3.61606e-05, 3.44256e-05, 3.28468e-05, 
			0.000212928, 0.000134633, 0.0001044, 8.75064e-05, 7.6385e-05, 6.83316e-05, 6.21402e-05, 5.71744e-05, 5.30656e-05, 4.95846e-05, 4.65798e-05, 4.39472e-05, 4.1612e-05, 3.95196e-05, 3.76288e-05, 3.59078e-05, 
			0.000220392, 0.000141287, 0.000110346, 9.28796e-05, 8.12886e-05, 7.28522e-05, 6.63376e-05, 6.10944e-05, 5.67448e-05, 5.3052e-05, 4.98592e-05, 4.7058e-05, 4.4571e-05, 4.2341e-05, 4.03246e-05, 3.84884e-05, 
			0.000225858, 0.00014654, 0.000115156, 9.72908e-05, 8.53576e-05, 7.66344e-05, 6.98716e-05, 6.44104e-05, 5.98692e-05, 5.6006e-05, 5.2661e-05, 4.97228e-05, 4.71114e-05, 4.47682e-05, 4.2648e-05, 4.07164e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.7452e-06, 4.8546e-06, 5.83e-06, 6.6958e-06, 7.4593e-06, 8.1307e-06, 8.7174e-06, 9.2285e-06, 9.6765e-06, 1.00612e-05, 1.04026e-05, 1.06993e-05, 1.09466e-05, 1.11719e-05, 1.13682e-05, 1.15389e-05, 
			4.7725e-06, 5.8673e-06, 6.867e-06, 7.7693e-06, 8.5761e-06, 9.2969e-06, 9.9258e-06, 1.04858e-05, 1.09687e-05, 1.13985e-05, 1.17737e-05, 1.20911e-05, 1.23782e-05, 1.26286e-05, 1.28472e-05, 1.30346e-05, 
			5.8151e-06, 6.9088e-06, 7.9243e-06, 8.8501e-06, 9.6833e-06, 1.04303e-05, 1.10884e-05, 1.16767e-05, 1.21947e-05, 1.26371e-05, 1.30369e-05, 1.33862e-05, 1.36922e-05, 1.39599e-05, 1.41912e-05, 1.43967e-05, 
			6.8733e-06, 7.9698e-06, 8.9999e-06, 9.9405e-06, 1.07975e-05, 1.15601e-05, 1.22462e-05, 1.28533e-05, 1.33798e-05, 1.38528e-05, 1.42688e-05, 1.46331e-05, 1.49497e-05, 1.52315e-05, 1.54787e-05, 1.56951e-05, 
			7.9503e-06, 9.0495e-06, 1.00853e-05, 1.10378e-05, 1.19098e-05, 1.26939e-05, 1.33834e-05, 1.40063e-05, 1.45584e-05, 1.50443e-05, 1.54731e-05, 1.58454e-05, 1.61777e-05, 1.64693e-05, 1.67257e-05, 1.69519e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.8727e-06, 6.0293e-06, 6.9778e-06, 7.7963e-06, 8.5167e-06, 9.1749e-06, 9.7827e-06, 1.03466e-05, 1.08743e-05, 1.13705e-05, 1.18364e-05, 1.22766e-05, 1.26907e-05, 1.30809e-05, 1.34497e-05, 1.37951e-05, 
			5.7663e-06, 6.8196e-06, 7.7405e-06, 8.5688e-06, 9.3239e-06, 1.00211e-05, 1.06717e-05, 1.12828e-05, 1.18583e-05, 1.24001e-05, 1.29124e-05, 1.33976e-05, 1.3855e-05, 1.42881e-05, 1.4695e-05, 1.50806e-05, 
			6.6202e-06, 7.6137e-06, 8.5248e-06, 9.3622e-06, 1.01384e-05, 1.08642e-05, 1.15478e-05, 1.21911e-05, 1.28008e-05, 1.33776e-05, 1.39237e-05, 1.44418e-05, 1.49301e-05, 1.53936e-05, 1.58333e-05, 1.6244e-05, 
			7.441e-06, 8.4214e-06, 9.3292e-06, 1.01764e-05, 1.09718e-05, 1.17213e-05, 1.24287e-05, 1.30998e-05, 1.37373e-05, 1.43413e-05, 1.49153e-05, 1.54576e-05, 1.5973e-05, 1.64622e-05, 1.69206e-05, 1.7356e-05, 
			8.2833e-06, 9.2463e-06, 1.01563e-05, 1.10143e-05, 1.1824e-05, 1.25928e-05, 1.33219e-05, 1.40152e-05, 1.46751e-05, 1.53003e-05, 1.58957e-05, 1.6463e-05, 1.69971e-05, 1.75021e-05, 1.79806e-05, 1.84355e-05
		)
}

CapTable	"metal6_C_TOP_GP_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.05107e-05, 1.29531e-05, 1.4955e-05, 1.66761e-05, 1.82146e-05, 1.96092e-05, 2.0894e-05, 2.20913e-05, 2.32121e-05, 2.42639e-05, 2.52557e-05, 2.61888e-05, 2.70687e-05, 2.78975e-05, 2.8678e-05, 2.94141e-05, 
			1.24427e-05, 1.4689e-05, 1.66549e-05, 1.84104e-05, 2.00143e-05, 2.14984e-05, 2.2883e-05, 2.41813e-05, 2.54048e-05, 2.65602e-05, 2.7651e-05, 2.86808e-05, 2.96538e-05, 3.05721e-05, 3.14396e-05, 3.22561e-05, 
			1.42798e-05, 1.64377e-05, 1.83842e-05, 2.01682e-05, 2.1824e-05, 2.33726e-05, 2.48275e-05, 2.62025e-05, 2.75018e-05, 2.87312e-05, 2.98947e-05, 3.09956e-05, 3.20386e-05, 3.30227e-05, 3.39475e-05, 3.48286e-05, 
			1.6117e-05, 1.82204e-05, 2.01654e-05, 2.19772e-05, 2.36744e-05, 2.52749e-05, 2.67893e-05, 2.82225e-05, 2.95807e-05, 3.0869e-05, 3.20901e-05, 3.32482e-05, 3.43432e-05, 3.53751e-05, 3.63581e-05, 3.72823e-05, 
			1.79657e-05, 2.00423e-05, 2.19945e-05, 2.38319e-05, 2.55696e-05, 2.7214e-05, 2.87739e-05, 3.02553e-05, 3.16623e-05, 3.3e-05, 3.42677e-05, 3.54643e-05, 3.66057e-05, 3.76868e-05, 3.87042e-05, 3.9664e-05
		)
}

CapTable	"metal6_C_LATERAL_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000184034, 0.000109437, 8.15172e-05, 6.61096e-05, 5.59852e-05, 4.86336e-05, 4.29444e-05, 3.83466e-05, 3.45148e-05, 3.12488e-05, 2.84172e-05, 2.59306e-05, 2.37256e-05, 2.1755e-05, 1.99819e-05, 1.83798e-05, 
			0.000198659, 0.000120887, 9.09396e-05, 7.41318e-05, 6.29464e-05, 5.4761e-05, 4.83938e-05, 4.32312e-05, 3.8919e-05, 3.52388e-05, 3.2046e-05, 2.9241e-05, 2.67534e-05, 2.45292e-05, 2.25294e-05, 2.07216e-05, 
			0.000207716, 0.000128511, 9.7429e-05, 7.97436e-05, 6.78828e-05, 5.9141e-05, 5.23114e-05, 4.67566e-05, 4.21072e-05, 3.81338e-05, 3.46838e-05, 3.16506e-05, 2.89592e-05, 2.65526e-05, 2.43904e-05, 2.24326e-05, 
			0.000214136, 0.000134104, 0.000102291, 8.40074e-05, 7.16528e-05, 6.25054e-05, 5.53324e-05, 4.94834e-05, 4.4579e-05, 4.03822e-05, 3.6734e-05, 3.35258e-05, 3.06774e-05, 2.8132e-05, 2.5839e-05, 2.37672e-05, 
			0.000218528, 0.00013827, 0.000105998, 8.72988e-05, 7.45864e-05, 6.51392e-05, 5.77082e-05, 5.16332e-05, 4.6531e-05, 4.21598e-05, 3.83576e-05, 3.50142e-05, 3.20414e-05, 2.93818e-05, 2.69916e-05, 2.48292e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.3505e-06, 4.3365e-06, 5.2056e-06, 5.9752e-06, 6.6547e-06, 7.252e-06, 7.7743e-06, 8.2275e-06, 8.6287e-06, 8.97228e-06, 9.27646e-06, 9.54134e-06, 9.77156e-06, 9.9639e-06, 1.01404e-05, 1.02943e-05, 
			4.2586e-06, 5.2316e-06, 6.1203e-06, 6.9224e-06, 7.6399e-06, 8.2801e-06, 8.8387e-06, 9.3365e-06, 9.7671e-06, 1.01496e-05, 1.04842e-05, 1.07669e-05, 1.10239e-05, 1.12487e-05, 1.14455e-05, 1.16181e-05, 
			5.181e-06, 6.1514e-06, 7.0531e-06, 7.8756e-06, 8.6128e-06, 9.2782e-06, 9.8621e-06, 1.03844e-05, 1.08446e-05, 1.12488e-05, 1.15948e-05, 1.19066e-05, 1.21806e-05, 1.24213e-05, 1.26329e-05, 1.28161e-05, 
			6.1162e-06, 7.0874e-06, 8.0014e-06, 8.8336e-06, 9.5934e-06, 1.02709e-05, 1.08784e-05, 1.14183e-05, 1.18846e-05, 1.23058e-05, 1.26777e-05, 1.3004e-05, 1.32912e-05, 1.35405e-05, 1.37638e-05, 1.39604e-05, 
			7.0657e-06, 8.0357e-06, 8.9553e-06, 9.7986e-06, 1.05713e-05, 1.12655e-05, 1.18863e-05, 1.24294e-05, 1.29193e-05, 1.33534e-05, 1.3735e-05, 1.40725e-05, 1.43679e-05, 1.46307e-05, 1.48627e-05, 1.50686e-05
		)
}

CapTable	"metal6_C_TOP_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.06151e-05, 2.66907e-05, 3.1952e-05, 3.6534e-05, 4.05206e-05, 4.39789e-05, 4.69699e-05, 4.95536e-05, 5.17762e-05, 5.36848e-05, 5.53379e-05, 5.67612e-05, 5.79907e-05, 5.90503e-05, 5.99737e-05, 6.0777e-05, 
			2.68438e-05, 3.30039e-05, 3.84879e-05, 4.33276e-05, 4.75693e-05, 5.12658e-05, 5.44804e-05, 5.72617e-05, 5.96638e-05, 6.17472e-05, 6.3548e-05, 6.51016e-05, 6.64552e-05, 6.76321e-05, 6.86562e-05, 6.95492e-05, 
			3.33298e-05, 3.95686e-05, 4.51767e-05, 5.01526e-05, 5.45314e-05, 5.8358e-05, 6.16873e-05, 6.45902e-05, 6.71104e-05, 6.92968e-05, 7.11879e-05, 7.28396e-05, 7.42762e-05, 7.55277e-05, 7.66202e-05, 7.75769e-05, 
			4.00228e-05, 4.6319e-05, 5.19908e-05, 5.70426e-05, 6.14982e-05, 6.54007e-05, 6.88198e-05, 7.17989e-05, 7.43886e-05, 7.6648e-05, 7.86174e-05, 8.03331e-05, 8.18296e-05, 8.31382e-05, 8.42837e-05, 8.52897e-05, 
			4.68693e-05, 5.31737e-05, 5.88721e-05, 6.39534e-05, 6.84581e-05, 7.24205e-05, 7.58923e-05, 7.89214e-05, 8.15745e-05, 8.38898e-05, 8.59104e-05, 8.7675e-05, 8.92199e-05, 9.05732e-05, 9.17573e-05, 9.28011e-05
		)
}

CapTable	"metal6_C_LATERAL_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177457, 0.000100777, 7.11664e-05, 5.44588e-05, 4.3397e-05, 3.54276e-05, 2.93928e-05, 2.4673e-05, 2.08964e-05, 1.78381e-05, 1.53102e-05, 1.32105e-05, 1.14503e-05, 9.9777e-06, 8.71338e-06, 7.63326e-06, 
			0.00018926, 0.000109459, 7.79208e-05, 5.9937e-05, 4.79488e-05, 3.92772e-05, 3.26916e-05, 2.7525e-05, 2.33924e-05, 2.00142e-05, 1.7227e-05, 1.49188e-05, 1.29621e-05, 1.13052e-05, 9.8938e-06, 8.68478e-06, 
			0.000195597, 0.00011455, 8.20712e-05, 6.33978e-05, 5.09068e-05, 4.18338e-05, 3.49336e-05, 2.94954e-05, 2.5123e-05, 2.15494e-05, 1.86073e-05, 1.61318e-05, 1.40452e-05, 1.2274e-05, 1.07609e-05, 9.46434e-06, 
			0.00019954, 0.000117908, 8.49218e-05, 6.58498e-05, 5.30354e-05, 4.37184e-05, 3.65908e-05, 3.09718e-05, 2.64578e-05, 2.27432e-05, 1.96609e-05, 1.70779e-05, 1.48952e-05, 1.30413e-05, 1.14495e-05, 1.00789e-05, 
			0.000201758, 0.000120158, 8.69356e-05, 6.7648e-05, 5.46356e-05, 4.5142e-05, 3.78704e-05, 3.21372e-05, 2.74892e-05, 2.36728e-05, 2.04996e-05, 1.78345e-05, 1.55802e-05, 1.36541e-05, 1.2003e-05, 1.05773e-05
		)
}

CapTable	"metal5_C_LATERAL_13MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_14MAX" {
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

CapTable	"metal5_C_LATERAL_14MAX" {
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

CapTable	"metal5_C_LATERAL_12MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal5_C_TOP_GP_13MAX" {
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

CapTable	"metal5_C_LATERALMAX" {
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

CapTable	"metal5_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal5_C_TOP_GP_12MAX" {
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

CapTable	"metal5_C_LATERAL_24MAX" {
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

CapTable	"metal5_C_BOTTOM_GPMAX" {
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

CapTable	"metal5_C_TOP_GPMAX" {
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

CapTable	"metal5_C_TOP_GP_23MAX" {
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

CapTable	"metal5_C_LATERAL_23MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_24MAX" {
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

CapTable	"metal5_C_TOP_GP_22MAX" {
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

CapTable	"metal5_C_LATERAL_22MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_23MAX" {
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

CapTable	"metal5_C_TOP_GP_21MAX" {
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

CapTable	"metal5_C_LATERAL_21MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_22MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_34MAX" {
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

CapTable	"metal5_C_LATERAL_34MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_33MAX" {
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

CapTable	"metal5_C_TOP_GP_33MAX" {
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

CapTable	"metal5_C_LATERAL_33MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_32MAX" {
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

CapTable	"metal5_C_TOP_GP_32MAX" {
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

CapTable	"metal5_C_LATERAL_32MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal5_C_TOP_GP_31MAX" {
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

CapTable	"metal5_C_LATERAL_31MAX" {
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

CapTable	"metal5_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180722, 0.000105176, 7.69626e-05, 6.14742e-05, 5.1365e-05, 4.408e-05, 3.84876e-05, 3.40052e-05, 3.03e-05, 2.71672e-05, 2.44726e-05, 2.21248e-05, 2.0058e-05, 1.82243e-05, 1.65871e-05, 1.51181e-05, 
			0.000192317, 0.000114176, 8.4309e-05, 6.76932e-05, 5.6734e-05, 4.87838e-05, 4.26518e-05, 3.77196e-05, 3.36322e-05, 3.01696e-05, 2.7187e-05, 2.45852e-05, 2.22928e-05, 2.0258e-05, 1.84398e-05, 1.68083e-05, 
			0.00019923, 0.000120053, 8.93108e-05, 7.20088e-05, 6.0523e-05, 5.21366e-05, 4.56404e-05, 4.03988e-05, 3.60444e-05, 3.23484e-05, 2.91606e-05, 2.63762e-05, 2.39218e-05, 2.17412e-05, 1.97921e-05, 1.80415e-05, 
			0.00020403, 0.000124318, 9.30358e-05, 7.5278e-05, 6.34098e-05, 5.47078e-05, 4.7943e-05, 4.24692e-05, 3.79124e-05, 3.40382e-05, 3.06928e-05, 2.77682e-05, 2.5188e-05, 2.28942e-05, 2.08434e-05, 1.9001e-05, 
			0.000207192, 0.000127464, 9.58618e-05, 7.77936e-05, 6.5652e-05, 5.67184e-05, 4.97512e-05, 4.40984e-05, 3.9384e-05, 3.53712e-05, 3.19022e-05, 2.88672e-05, 2.61874e-05, 2.38046e-05, 2.16732e-05, 1.97585e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.21868e-05, 1.51492e-05, 1.75846e-05, 1.96701e-05, 2.1506e-05, 2.31531e-05, 2.46504e-05, 2.60246e-05, 2.72947e-05, 2.84749e-05, 2.95761e-05, 3.06062e-05, 3.15721e-05, 3.24795e-05, 3.33328e-05, 3.41362e-05, 
			1.44678e-05, 1.715e-05, 1.9483e-05, 2.15511e-05, 2.34137e-05, 2.51113e-05, 2.66727e-05, 2.81188e-05, 2.94646e-05, 3.0722e-05, 3.19006e-05, 3.30077e-05, 3.4049e-05, 3.50299e-05, 3.59549e-05, 3.68273e-05, 
			1.6621e-05, 1.91356e-05, 2.13952e-05, 2.34422e-05, 2.53144e-05, 2.70405e-05, 2.86421e-05, 3.01352e-05, 3.15323e-05, 3.28437e-05, 3.40767e-05, 3.52385e-05, 3.63339e-05, 3.73679e-05, 3.83446e-05, 3.92671e-05, 
			1.8694e-05, 2.1109e-05, 2.33162e-05, 2.53462e-05, 2.72237e-05, 2.89695e-05, 3.05999e-05, 3.21278e-05, 3.35637e-05, 3.49159e-05, 3.61909e-05, 3.73948e-05, 3.85322e-05, 3.96073e-05, 4.06242e-05, 4.1586e-05, 
			2.074e-05, 2.30728e-05, 2.52424e-05, 2.72586e-05, 2.91408e-05, 3.09009e-05, 3.25535e-05, 3.41087e-05, 3.55748e-05, 3.69589e-05, 3.8267e-05, 3.95041e-05, 4.06746e-05, 4.17824e-05, 4.28311e-05, 4.38241e-05
		)
}

CapTable	"metal5_C_LATERAL_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182026, 0.000106902, 7.90806e-05, 6.39596e-05, 5.4195e-05, 4.72322e-05, 4.19396e-05, 3.77342e-05, 3.42832e-05, 3.13812e-05, 2.88944e-05, 2.67318e-05, 2.48286e-05, 2.31372e-05, 2.16224e-05, 2.02566e-05, 
			0.000194102, 0.000116406, 8.6963e-05, 7.07486e-05, 6.01682e-05, 5.25732e-05, 4.67716e-05, 4.21446e-05, 3.83368e-05, 3.5128e-05, 3.23736e-05, 2.99748e-05, 2.78616e-05, 2.5982e-05, 2.42972e-05, 2.27776e-05, 
			0.00020153, 0.000122822, 9.25298e-05, 7.5656e-05, 6.45742e-05, 5.65664e-05, 5.0422e-05, 4.55046e-05, 4.14466e-05, 3.8019e-05, 3.5072e-05, 3.25016e-05, 3.02346e-05, 2.82164e-05, 2.6406e-05, 2.47722e-05, 
			0.000206882, 0.000127659, 9.68488e-05, 7.95398e-05, 6.8095e-05, 5.9789e-05, 5.3391e-05, 4.82548e-05, 4.40054e-05, 4.0409e-05, 3.73118e-05, 3.4607e-05, 3.22188e-05, 3.00912e-05, 2.81812e-05, 2.64564e-05, 
			0.000210626, 0.000131406, 0.000100293, 8.26894e-05, 7.09852e-05, 6.24596e-05, 5.58696e-05, 5.05628e-05, 4.6163e-05, 4.2433e-05, 3.9216e-05, 3.64036e-05, 3.3918e-05, 3.17018e-05, 2.97114e-05, 2.79128e-05
		)
}

CapTable	"metal5_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178751, 0.000102521, 7.36864e-05, 5.76434e-05, 4.70528e-05, 3.93628e-05, 3.34424e-05, 2.87072e-05, 2.48198e-05, 2.157e-05, 1.88178e-05, 1.64642e-05, 1.44359e-05, 1.26787e-05, 1.11516e-05, 9.81744e-06, 
			0.000189507, 0.000110645, 8.01236e-05, 6.29304e-05, 5.14778e-05, 4.31206e-05, 3.66672e-05, 3.14948e-05, 2.72444e-05, 2.36864e-05, 2.06716e-05, 1.80905e-05, 1.58673e-05, 1.39391e-05, 1.22616e-05, 1.07974e-05, 
			0.000195527, 0.000115615, 8.42136e-05, 6.6339e-05, 5.43734e-05, 4.55994e-05, 3.88056e-05, 3.3352e-05, 2.88634e-05, 2.51038e-05, 2.19142e-05, 1.91838e-05, 1.68288e-05, 1.47868e-05, 1.30093e-05, 1.14557e-05, 
			0.000199408, 0.000118967, 8.7042e-05, 6.8735e-05, 5.64152e-05, 4.73586e-05, 4.033e-05, 3.46796e-05, 3.00228e-05, 2.6121e-05, 2.28078e-05, 1.99693e-05, 1.75211e-05, 1.53965e-05, 1.35458e-05, 1.19284e-05, 
			0.000201652, 0.000121223, 8.90084e-05, 7.04264e-05, 5.78718e-05, 4.86228e-05, 4.1432e-05, 3.56402e-05, 3.08646e-05, 2.68586e-05, 2.3456e-05, 2.05402e-05, 1.80226e-05, 1.58377e-05, 1.39349e-05, 1.22715e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.03083e-06, 8.8354e-06, 1.03569e-05, 1.16912e-05, 1.28897e-05, 1.39822e-05, 1.49877e-05, 1.59186e-05, 1.6784e-05, 1.75904e-05, 1.83427e-05, 1.90447e-05, 1.97002e-05, 2.03111e-05, 2.08824e-05, 2.14138e-05, 
			8.50574e-06, 1.01853e-05, 1.16835e-05, 1.30406e-05, 1.42861e-05, 1.54377e-05, 1.65082e-05, 1.75072e-05, 1.84408e-05, 1.93151e-05, 2.01336e-05, 2.08991e-05, 2.16163e-05, 2.22861e-05, 2.29129e-05, 2.34979e-05, 
			9.93893e-06, 1.15577e-05, 1.30455e-05, 1.44218e-05, 1.56997e-05, 1.68932e-05, 1.80111e-05, 1.90597e-05, 2.00437e-05, 2.09676e-05, 2.18337e-05, 2.26479e-05, 2.34093e-05, 2.41231e-05, 2.47912e-05, 2.54157e-05, 
			1.13629e-05, 1.29561e-05, 1.44442e-05, 1.58369e-05, 1.71434e-05, 1.83714e-05, 1.9527e-05, 2.06149e-05, 2.1638e-05, 2.26013e-05, 2.35064e-05, 2.43572e-05, 2.51553e-05, 2.59036e-05, 2.66028e-05, 2.72587e-05, 
			1.28037e-05, 1.43809e-05, 1.5874e-05, 1.72832e-05, 1.86146e-05, 1.98717e-05, 2.10583e-05, 2.21776e-05, 2.32343e-05, 2.42289e-05, 2.51655e-05, 2.60466e-05, 2.68737e-05, 2.76483e-05, 2.83757e-05, 2.9054e-05
		)
}

CapTable	"metal5_C_TOP_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.76417e-06, 8.521e-06, 1.0008e-05, 1.13095e-05, 1.24751e-05, 1.35351e-05, 1.45089e-05, 1.54097e-05, 1.62464e-05, 1.70254e-05, 1.77522e-05, 1.84306e-05, 1.90642e-05, 1.96566e-05, 2.02082e-05, 2.07238e-05, 
			8.19026e-06, 9.83211e-06, 1.12945e-05, 1.26152e-05, 1.38229e-05, 1.49374e-05, 1.59723e-05, 1.69368e-05, 1.78384e-05, 1.86814e-05, 1.9471e-05, 2.02112e-05, 2.09036e-05, 2.15519e-05, 2.2158e-05, 2.27236e-05, 
			9.58727e-06, 1.11673e-05, 1.26157e-05, 1.39504e-05, 1.51877e-05, 1.6341e-05, 1.74193e-05, 1.84297e-05, 1.9378e-05, 2.02686e-05, 2.11055e-05, 2.18897e-05, 2.2626e-05, 2.33154e-05, 2.39607e-05, 2.45645e-05, 
			1.09751e-05, 1.25253e-05, 1.3969e-05, 1.53171e-05, 1.65792e-05, 1.77636e-05, 1.88764e-05, 1.99238e-05, 2.09105e-05, 2.18388e-05, 2.27119e-05, 2.35322e-05, 2.43022e-05, 2.50245e-05, 2.57024e-05, 2.63351e-05, 
			1.23763e-05, 1.39057e-05, 1.53512e-05, 1.67132e-05, 1.79964e-05, 1.92066e-05, 2.0349e-05, 2.14279e-05, 2.24448e-05, 2.34039e-05, 2.43067e-05, 2.51558e-05, 2.59542e-05, 2.67042e-05, 2.74055e-05, 2.80637e-05
		)
}

CapTable	"metal5_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167176, 8.83536e-05, 5.82058e-05, 4.1767e-05, 3.13572e-05, 2.42862e-05, 1.91707e-05, 1.53786e-05, 1.25096e-05, 1.02789e-05, 8.52582e-06, 7.1316e-06, 6.01116e-06, 5.10266e-06, 4.36066e-06, 3.75336e-06, 
			0.0001741, 9.35984e-05, 6.24332e-05, 4.53184e-05, 3.43538e-05, 2.67938e-05, 2.13392e-05, 1.72497e-05, 1.41222e-05, 1.16833e-05, 9.7532e-06, 8.21e-06, 6.96478e-06, 5.9524e-06, 5.11748e-06, 4.42866e-06, 
			0.000177642, 9.6788e-05, 6.52236e-05, 4.76772e-05, 3.64222e-05, 2.86164e-05, 2.29252e-05, 1.865e-05, 1.53583e-05, 1.27793e-05, 1.07299e-05, 9.08304e-06, 7.74916e-06, 6.65542e-06, 5.75368e-06, 5.01068e-06, 
			0.000180001, 9.90766e-05, 6.72472e-05, 4.94976e-05, 3.80334e-05, 3.00464e-05, 2.4204e-05, 1.97889e-05, 1.63792e-05, 1.3701e-05, 1.1565e-05, 9.83612e-06, 8.43196e-06, 7.28078e-06, 6.3311e-06, 5.54354e-06, 
			0.000181284, 0.000100692, 6.8799e-05, 5.09084e-05, 3.93218e-05, 3.12174e-05, 2.5269e-05, 2.07584e-05, 1.7261e-05, 1.45034e-05, 1.22958e-05, 1.05075e-05, 9.05594e-06, 7.86026e-06, 6.87212e-06, 6.05074e-06
		)
}

CapTable	"metal5_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.8204e-06, 7.4361e-06, 8.8453e-06, 1.01101e-05, 1.12615e-05, 1.23142e-05, 1.32788e-05, 1.41609e-05, 1.49659e-05, 1.57014e-05, 1.63673e-05, 1.69699e-05, 1.75182e-05, 1.80124e-05, 1.84546e-05, 1.88554e-05, 
			7.2366e-06, 8.7973e-06, 1.02265e-05, 1.15445e-05, 1.27618e-05, 1.38869e-05, 1.49229e-05, 1.58752e-05, 1.67475e-05, 1.75455e-05, 1.82706e-05, 1.89309e-05, 1.95256e-05, 2.00668e-05, 2.05552e-05, 2.09913e-05, 
			8.6622e-06, 1.02113e-05, 1.16638e-05, 1.30221e-05, 1.42863e-05, 1.54603e-05, 1.65477e-05, 1.75481e-05, 1.84654e-05, 1.9308e-05, 2.00756e-05, 2.07704e-05, 2.1404e-05, 2.19768e-05, 2.2491e-05, 2.29567e-05, 
			1.01192e-05, 1.16777e-05, 1.31545e-05, 1.45441e-05, 1.58457e-05, 1.70571e-05, 1.81812e-05, 1.92176e-05, 2.01718e-05, 2.10426e-05, 2.18406e-05, 2.25666e-05, 2.32225e-05, 2.38188e-05, 2.43572e-05, 2.48425e-05, 
			1.16199e-05, 1.31867e-05, 1.46838e-05, 1.61024e-05, 1.7432e-05, 1.86715e-05, 1.9825e-05, 2.08901e-05, 2.1867e-05, 2.27658e-05, 2.35861e-05, 2.43299e-05, 2.50078e-05, 2.56206e-05, 2.61755e-05, 2.66743e-05
		)
}

CapTable	"metal5_C_TOP_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.04492e-05, 1.34205e-05, 1.60169e-05, 1.83387e-05, 2.04384e-05, 2.23493e-05, 2.40902e-05, 2.56764e-05, 2.71202e-05, 2.84288e-05, 2.9616e-05, 3.06901e-05, 3.16566e-05, 3.2528e-05, 3.33121e-05, 3.40143e-05, 
			1.30906e-05, 1.59941e-05, 1.86419e-05, 2.10641e-05, 2.32872e-05, 2.53258e-05, 2.71945e-05, 2.8904e-05, 3.04623e-05, 3.18807e-05, 3.31682e-05, 3.43337e-05, 3.53882e-05, 3.63368e-05, 3.71892e-05, 3.79579e-05, 
			1.58002e-05, 1.86943e-05, 2.13876e-05, 2.38829e-05, 2.61883e-05, 2.83146e-05, 3.02681e-05, 3.20593e-05, 3.36977e-05, 3.51871e-05, 3.65417e-05, 3.77716e-05, 3.88802e-05, 3.98805e-05, 4.07837e-05, 4.15935e-05, 
			1.85884e-05, 2.15031e-05, 2.42375e-05, 2.67889e-05, 2.91571e-05, 3.13459e-05, 3.33623e-05, 3.52129e-05, 3.69061e-05, 3.84508e-05, 3.98538e-05, 4.1126e-05, 4.22788e-05, 4.33166e-05, 4.42524e-05, 4.50945e-05, 
			2.14681e-05, 2.43973e-05, 2.71688e-05, 2.97632e-05, 3.21782e-05, 3.44157e-05, 3.64761e-05, 3.83708e-05, 4.01075e-05, 4.16884e-05, 4.31268e-05, 4.44341e-05, 4.5615e-05, 4.66833e-05, 4.76431e-05, 4.85089e-05
		)
}

CapTable	"metal5_C_LATERAL_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182594, 0.000107639, 7.99674e-05, 6.4981e-05, 5.53378e-05, 4.8484e-05, 4.32888e-05, 3.91698e-05, 3.57946e-05, 3.29586e-05, 3.05288e-05, 2.84144e-05, 2.65514e-05, 2.48926e-05, 2.34034e-05, 2.2057e-05, 
			0.000194861, 0.000117335, 8.80464e-05, 7.19722e-05, 6.15182e-05, 5.4037e-05, 4.83368e-05, 4.37996e-05, 4.00704e-05, 3.69298e-05, 3.4234e-05, 3.18846e-05, 2.9812e-05, 2.79652e-05, 2.6306e-05, 2.4805e-05, 
			0.000202484, 0.000123946, 9.38096e-05, 7.70778e-05, 6.61242e-05, 5.8231e-05, 5.2189e-05, 4.73618e-05, 4.33824e-05, 4.00228e-05, 3.71336e-05, 3.46116e-05, 3.2384e-05, 3.03972e-05, 2.86108e-05, 2.69938e-05, 
			0.000208032, 0.000128979, 9.83244e-05, 8.11568e-05, 6.98394e-05, 6.16474e-05, 5.53504e-05, 5.03028e-05, 4.61304e-05, 4.26004e-05, 3.9559e-05, 3.69006e-05, 3.45498e-05, 3.2451e-05, 3.05626e-05, 2.8852e-05, 
			0.000211974, 0.000132922, 0.000101961, 8.4497e-05, 7.29178e-05, 6.45036e-05, 5.80122e-05, 5.27914e-05, 4.8466e-05, 4.47994e-05, 4.16354e-05, 3.88664e-05, 3.64152e-05, 3.4225e-05, 3.2253e-05, 3.0466e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.7431e-06, 6.3508e-06, 7.7592e-06, 8.9479e-06, 9.9414e-06, 1.07338e-05, 1.13954e-05, 1.19315e-05, 1.23599e-05, 1.27159e-05, 1.30066e-05, 1.32449e-05, 1.3441e-05, 1.36029e-05, 1.37372e-05, 1.38861e-05, 
			6.378e-06, 7.9798e-06, 9.4113e-06, 1.0632e-05, 1.16783e-05, 1.2543e-05, 1.32449e-05, 1.38284e-05, 1.43064e-05, 1.46988e-05, 1.50209e-05, 1.52864e-05, 1.55075e-05, 1.57348e-05, 1.58683e-05, 1.59826e-05, 
			8.0007e-06, 9.6088e-06, 1.10496e-05, 1.23215e-05, 1.33968e-05, 1.42866e-05, 1.50304e-05, 1.56428e-05, 1.61479e-05, 1.6565e-05, 1.69099e-05, 1.7196e-05, 1.74648e-05, 1.76456e-05, 1.77983e-05, 1.79313e-05, 
			9.6251e-06, 1.12411e-05, 1.27164e-05, 1.39984e-05, 1.50977e-05, 1.60186e-05, 1.6785e-05, 1.74191e-05, 1.79438e-05, 1.8379e-05, 1.8777e-05, 1.90579e-05, 1.9296e-05, 1.94962e-05, 1.96649e-05, 1.98105e-05, 
			1.12838e-05, 1.29004e-05, 1.43787e-05, 1.56846e-05, 1.67992e-05, 1.77356e-05, 1.8518e-05, 1.91686e-05, 1.9709e-05, 2.01786e-05, 2.05372e-05, 2.08365e-05, 2.10921e-05, 2.13067e-05, 2.14889e-05, 2.16443e-05
		)
}

CapTable	"metal5_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.89929e-05, 3.90646e-05, 4.7178e-05, 5.35481e-05, 5.85458e-05, 6.24222e-05, 6.54993e-05, 6.79282e-05, 6.98573e-05, 7.14045e-05, 7.26538e-05, 7.36674e-05, 7.44952e-05, 7.51753e-05, 7.57363e-05, 7.61625e-05, 
			4.13114e-05, 5.13978e-05, 5.95745e-05, 6.60536e-05, 7.12089e-05, 7.52862e-05, 7.85159e-05, 8.10979e-05, 8.31664e-05, 8.48399e-05, 8.62029e-05, 8.73146e-05, 8.82237e-05, 8.89308e-05, 8.95772e-05, 9.01117e-05, 
			5.37463e-05, 6.37542e-05, 7.19008e-05, 7.84653e-05, 8.369e-05, 8.7855e-05, 9.11874e-05, 9.38592e-05, 9.60208e-05, 9.77767e-05, 9.92122e-05, 0.000100391, 0.000101333, 0.000102158, 0.000102845, 0.000103408, 
			6.61839e-05, 7.61273e-05, 8.42854e-05, 9.086e-05, 9.61399e-05, 0.00010036, 0.000103756, 0.000106505, 0.000108732, 0.000110543, 0.000111996, 0.000113253, 0.000114284, 0.000115139, 0.00011585, 0.000116444, 
			7.86572e-05, 8.85146e-05, 9.66433e-05, 0.00010323, 0.000108528, 0.000112792, 0.000116234, 0.000119026, 0.000121302, 0.000123144, 0.000124695, 0.00012598, 0.000127031, 0.00012791, 0.000128647, 0.00012926
		)
}

CapTable	"metal5_C_TOP_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.0747e-06, 8.88426e-06, 1.04022e-05, 1.17247e-05, 1.2904e-05, 1.39746e-05, 1.49574e-05, 1.58665e-05, 1.67128e-05, 1.75032e-05, 1.82431e-05, 1.8937e-05, 1.95878e-05, 2.01987e-05, 2.0772e-05, 2.13102e-05, 
			8.52137e-06, 1.01971e-05, 1.16808e-05, 1.30155e-05, 1.42327e-05, 1.53539e-05, 1.63946e-05, 1.73663e-05, 1.82763e-05, 1.91304e-05, 1.99337e-05, 2.06887e-05, 2.13999e-05, 2.20689e-05, 2.26981e-05, 2.3289e-05, 
			9.92554e-06, 1.15275e-05, 1.29899e-05, 1.43323e-05, 1.55741e-05, 1.67311e-05, 1.78143e-05, 1.88311e-05, 1.97885e-05, 2.069e-05, 2.154e-05, 2.23417e-05, 2.30975e-05, 2.38093e-05, 2.44798e-05, 2.51103e-05, 
			1.13109e-05, 1.28755e-05, 1.43264e-05, 1.56779e-05, 1.69416e-05, 1.81281e-05, 1.92446e-05, 2.0298e-05, 2.12922e-05, 2.22325e-05, 2.31207e-05, 2.39591e-05, 2.47504e-05, 2.54969e-05, 2.62001e-05, 2.68635e-05, 
			1.27035e-05, 1.42394e-05, 1.56871e-05, 1.70494e-05, 1.83332e-05, 1.9545e-05, 2.06903e-05, 2.17742e-05, 2.28004e-05, 2.3772e-05, 2.46909e-05, 2.55598e-05, 2.63807e-05, 2.7155e-05, 2.7887e-05, 2.85746e-05
		)
}

CapTable	"metal5_C_LATERAL_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181087, 0.000105659, 7.75538e-05, 6.2164e-05, 5.21438e-05, 4.49374e-05, 3.94136e-05, 3.49892e-05, 3.13322e-05, 2.82376e-05, 2.55722e-05, 2.32446e-05, 2.11906e-05, 1.93624e-05, 1.7724e-05, 1.62483e-05, 
			0.000192822, 0.000114805, 8.50528e-05, 6.85412e-05, 5.76756e-05, 4.98076e-05, 4.37464e-05, 3.88736e-05, 3.48346e-05, 3.14096e-05, 2.84548e-05, 2.58714e-05, 2.35894e-05, 2.15566e-05, 1.97344e-05, 1.8092e-05, 
			0.000199883, 0.000120834, 9.02092e-05, 7.30138e-05, 6.16226e-05, 5.33184e-05, 4.6892e-05, 4.17082e-05, 3.73996e-05, 3.3739e-05, 3.05758e-05, 2.78066e-05, 2.53586e-05, 2.31764e-05, 2.12192e-05, 1.94543e-05, 
			0.000204838, 0.000125254, 9.40896e-05, 7.64374e-05, 6.46624e-05, 5.60404e-05, 4.93426e-05, 4.39234e-05, 3.94088e-05, 3.5566e-05, 3.22408e-05, 2.93276e-05, 2.67492e-05, 2.44502e-05, 2.23866e-05, 2.05258e-05, 
			0.000208156, 0.000128556, 9.70688e-05, 7.91036e-05, 6.70514e-05, 5.81936e-05, 5.12894e-05, 4.56868e-05, 4.10102e-05, 3.7024e-05, 3.35706e-05, 3.05424e-05, 2.78604e-05, 2.54674e-05, 2.33192e-05, 2.13812e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.14822e-05, 1.41974e-05, 1.64032e-05, 1.82742e-05, 1.99088e-05, 2.13674e-05, 2.26886e-05, 2.3899e-05, 2.50174e-05, 2.60577e-05, 2.703e-05, 2.79425e-05, 2.88012e-05, 2.96118e-05, 3.0378e-05, 3.11034e-05, 
			1.3509e-05, 1.59342e-05, 1.80236e-05, 1.98592e-05, 2.15028e-05, 2.2994e-05, 2.43621e-05, 2.56277e-05, 2.68061e-05, 2.79087e-05, 2.89447e-05, 2.99211e-05, 3.08436e-05, 3.17167e-05, 3.25442e-05, 3.33296e-05, 
			1.5392e-05, 1.7641e-05, 1.96434e-05, 2.14447e-05, 2.30839e-05, 2.45906e-05, 2.59859e-05, 2.72865e-05, 2.85048e-05, 2.96506e-05, 3.07313e-05, 3.17534e-05, 3.27216e-05, 3.36401e-05, 3.45124e-05, 3.53414e-05, 
			1.7183e-05, 1.93198e-05, 2.12586e-05, 2.30312e-05, 2.46654e-05, 2.61809e-05, 2.75952e-05, 2.89213e-05, 3.01697e-05, 3.13481e-05, 3.24633e-05, 3.35206e-05, 3.45243e-05, 3.54784e-05, 3.63857e-05, 3.72495e-05, 
			1.893e-05, 2.09764e-05, 2.28676e-05, 2.4619e-05, 2.62473e-05, 2.77691e-05, 2.91976e-05, 3.05437e-05, 3.18153e-05, 3.30196e-05, 3.41622e-05, 3.52476e-05, 3.62799e-05, 3.72624e-05, 3.81979e-05, 3.90891e-05
		)
}

CapTable	"metal5_C_TOP_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.07925e-05, 1.3826e-05, 1.64636e-05, 1.88141e-05, 2.09353e-05, 2.28624e-05, 2.46208e-05, 2.62239e-05, 2.76851e-05, 2.90165e-05, 3.02271e-05, 3.13271e-05, 3.2325e-05, 3.32258e-05, 3.40425e-05, 3.47789e-05, 
			1.3465e-05, 1.6412e-05, 1.90888e-05, 2.15311e-05, 2.3768e-05, 2.5822e-05, 2.77041e-05, 2.94297e-05, 3.10059e-05, 3.24477e-05, 3.37622e-05, 3.49554e-05, 3.60387e-05, 3.70237e-05, 3.79133e-05, 3.87175e-05, 
			1.61903e-05, 1.91137e-05, 2.18254e-05, 2.43353e-05, 2.66514e-05, 2.87877e-05, 3.07542e-05, 3.25608e-05, 3.42184e-05, 3.57334e-05, 3.71137e-05, 3.83746e-05, 3.95183e-05, 4.05566e-05, 4.14979e-05, 4.23504e-05, 
			1.89807e-05, 2.19148e-05, 2.46633e-05, 2.7222e-05, 2.95977e-05, 3.17942e-05, 3.38238e-05, 3.56917e-05, 3.74039e-05, 3.89705e-05, 4.04053e-05, 4.17117e-05, 4.29001e-05, 4.39797e-05, 4.49589e-05, 4.58471e-05, 
			2.18557e-05, 2.47972e-05, 2.75743e-05, 3.01734e-05, 3.25933e-05, 3.48388e-05, 3.69128e-05, 3.8822e-05, 4.05801e-05, 4.21884e-05, 4.36589e-05, 4.50005e-05, 4.62229e-05, 4.73348e-05, 4.83418e-05, 4.92554e-05
		)
}

CapTable	"metal5_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179041, 0.000102915, 7.41784e-05, 5.82262e-05, 4.7717e-05, 4.0099e-05, 3.42388e-05, 2.95528e-05, 2.57028e-05, 2.248e-05, 1.97446e-05, 1.73975e-05, 1.53696e-05, 1.3605e-05, 1.20649e-05, 1.07114e-05, 
			0.000189926, 0.000111177, 8.07632e-05, 6.36686e-05, 5.2304e-05, 4.40224e-05, 3.7632e-05, 3.25096e-05, 2.82954e-05, 2.47636e-05, 2.17628e-05, 1.91861e-05, 1.69572e-05, 1.50185e-05, 1.33215e-05, 1.18316e-05, 
			0.000196087, 0.000116296, 8.5007e-05, 6.72346e-05, 5.53588e-05, 4.66604e-05, 3.99292e-05, 3.45234e-05, 3.0068e-05, 2.6331e-05, 2.31518e-05, 2.04216e-05, 1.80565e-05, 1.59963e-05, 1.41933e-05, 1.26114e-05, 
			0.00020012, 0.000119803, 8.79918e-05, 6.9788e-05, 5.75572e-05, 4.85738e-05, 4.16048e-05, 3.59982e-05, 3.13718e-05, 2.7486e-05, 2.4179e-05, 2.13342e-05, 1.88692e-05, 1.67235e-05, 1.48424e-05, 1.31887e-05, 
			0.00020252, 0.000122215, 9.01146e-05, 7.1634e-05, 5.91654e-05, 4.99852e-05, 4.28494e-05, 3.70972e-05, 3.2347e-05, 2.83518e-05, 2.4948e-05, 2.20194e-05, 1.94826e-05, 1.72683e-05, 1.53294e-05, 1.36243e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.2657e-06, 7.84414e-06, 9.1668e-06, 1.03202e-05, 1.1353e-05, 1.22926e-05, 1.31569e-05, 1.39585e-05, 1.47046e-05, 1.54019e-05, 1.60548e-05, 1.6667e-05, 1.72412e-05, 1.77801e-05, 1.82862e-05, 1.87603e-05, 
			7.53123e-06, 8.9881e-06, 1.02804e-05, 1.14458e-05, 1.25127e-05, 1.34989e-05, 1.44162e-05, 1.52733e-05, 1.60768e-05, 1.68316e-05, 1.75409e-05, 1.8209e-05, 1.88366e-05, 1.94273e-05, 1.99824e-05, 2.05046e-05, 
			8.74906e-06, 1.01435e-05, 1.14179e-05, 1.25938e-05, 1.36852e-05, 1.47043e-05, 1.56595e-05, 1.65576e-05, 1.74032e-05, 1.82002e-05, 1.89519e-05, 1.9661e-05, 2.03285e-05, 2.09581e-05, 2.15502e-05, 2.21079e-05, 
			9.9491e-06, 1.13129e-05, 1.2581e-05, 1.37677e-05, 1.48795e-05, 1.59255e-05, 1.69119e-05, 1.78429e-05, 1.87233e-05, 1.95541e-05, 2.03395e-05, 2.10811e-05, 2.17817e-05, 2.24415e-05, 2.30641e-05, 2.36484e-05, 
			1.11565e-05, 1.25e-05, 1.37681e-05, 1.4965e-05, 1.60954e-05, 1.71651e-05, 1.81772e-05, 1.9136e-05, 2.00444e-05, 2.09033e-05, 2.17169e-05, 2.24855e-05, 2.32122e-05, 2.38982e-05, 2.45431e-05, 2.51521e-05
		)
}

CapTable	"metal5_C_TOP_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.94179e-05, 3.96006e-05, 4.7799e-05, 5.4229e-05, 5.928e-05, 6.31807e-05, 6.63045e-05, 6.8777e-05, 7.074e-05, 7.23291e-05, 7.36186e-05, 7.4671e-05, 7.55361e-05, 7.62522e-05, 7.68478e-05, 7.73465e-05, 
			4.18355e-05, 5.20176e-05, 6.02622e-05, 6.67767e-05, 7.19862e-05, 7.61133e-05, 7.93931e-05, 8.20107e-05, 8.41261e-05, 8.58459e-05, 8.72545e-05, 8.84111e-05, 8.93643e-05, 9.01615e-05, 9.0828e-05, 9.1316e-05, 
			5.4348e-05, 6.44387e-05, 7.26307e-05, 7.92521e-05, 8.45283e-05, 8.87336e-05, 9.21159e-05, 9.48377e-05, 9.70499e-05, 9.88569e-05, 0.000100344, 0.000101574, 0.000102599, 0.000103368, 0.000104117, 0.00010474, 
			6.68369e-05, 7.68576e-05, 8.50766e-05, 9.1715e-05, 9.70264e-05, 0.000101297, 0.000104744, 0.000107547, 0.000109829, 0.000111696, 0.000113245, 0.000114531, 0.00011554, 0.000116465, 0.000117243, 0.000117902, 
			7.93815e-05, 8.93055e-05, 9.74835e-05, 0.000104122, 0.00010947, 0.000113785, 0.000117282, 0.000120132, 0.000122468, 0.000124394, 0.000125906, 0.000127271, 0.000128399, 0.000129354, 0.000130162, 0.000130844
		)
}

CapTable	"metal5_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167344, 8.85982e-05, 5.8522e-05, 4.21464e-05, 3.17846e-05, 2.47672e-05, 1.96679e-05, 1.58807e-05, 1.30162e-05, 1.07723e-05, 9.00078e-06, 7.58422e-06, 6.43862e-06, 5.503e-06, 4.73272e-06, 4.09384e-06, 
			0.000174367, 9.39502e-05, 6.28672e-05, 4.58408e-05, 3.49232e-05, 2.73928e-05, 2.19406e-05, 1.78737e-05, 1.47359e-05, 1.22787e-05, 1.03239e-05, 8.75152e-06, 7.47378e-06, 6.42332e-06, 5.55404e-06, 4.83448e-06, 
			0.000178021, 9.72574e-05, 6.5795e-05, 4.83134e-05, 3.71036e-05, 2.93348e-05, 2.36528e-05, 1.93729e-05, 1.60652e-05, 1.34613e-05, 1.13802e-05, 9.69662e-06, 8.32038e-06, 7.19156e-06, 6.24506e-06, 5.45728e-06, 
			0.000180515, 9.96794e-05, 6.79306e-05, 5.02266e-05, 3.88298e-05, 3.08642e-05, 2.50254e-05, 2.05994e-05, 1.71667e-05, 1.44561e-05, 1.22781e-05, 1.05093e-05, 9.05988e-06, 7.8575e-06, 6.85582e-06, 6.01634e-06, 
			0.000181907, 0.000101406, 6.95982e-05, 5.17644e-05, 4.02136e-05, 3.21244e-05, 2.61728e-05, 2.16438e-05, 1.81154e-05, 1.53163e-05, 1.30682e-05, 1.12259e-05, 9.71752e-06, 8.4633e-06, 7.41614e-06, 6.53626e-06
		)
}

CapTable	"metal5_C_BOTTOM_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.1143e-06, 6.5147e-06, 7.7307e-06, 8.8187e-06, 9.808e-06, 1.07125e-05, 1.15405e-05, 1.22994e-05, 1.29954e-05, 1.36301e-05, 1.42089e-05, 1.47364e-05, 1.5214e-05, 1.56513e-05, 1.6043e-05, 1.64016e-05, 
			6.3242e-06, 7.669e-06, 8.896e-06, 1.00245e-05, 1.10672e-05, 1.20286e-05, 1.29167e-05, 1.3734e-05, 1.44874e-05, 1.51748e-05, 1.5803e-05, 1.63802e-05, 1.6906e-05, 1.73799e-05, 1.78141e-05, 1.82076e-05, 
			7.5357e-06, 8.8637e-06, 1.01056e-05, 1.12631e-05, 1.23415e-05, 1.33452e-05, 1.42743e-05, 1.51325e-05, 1.59233e-05, 1.66484e-05, 1.73165e-05, 1.79226e-05, 1.84795e-05, 1.89864e-05, 1.94468e-05, 1.98624e-05, 
			8.7673e-06, 1.00965e-05, 1.13529e-05, 1.2536e-05, 1.36431e-05, 1.46785e-05, 1.56368e-05, 1.65241e-05, 1.73464e-05, 1.81033e-05, 1.87934e-05, 1.94285e-05, 2.00083e-05, 2.05343e-05, 2.10151e-05, 2.14515e-05, 
			1.00293e-05, 1.13606e-05, 1.26331e-05, 1.38366e-05, 1.49673e-05, 1.6024e-05, 1.7007e-05, 1.79218e-05, 1.87624e-05, 1.95405e-05, 2.02549e-05, 2.09091e-05, 2.15043e-05, 2.20491e-05, 2.25454e-05, 2.29957e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_64MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.09366e-05, 1.34666e-05, 1.55031e-05, 1.72164e-05, 1.87033e-05, 2.00231e-05, 2.12138e-05, 2.23016e-05, 2.33048e-05, 2.42371e-05, 2.51085e-05, 2.59271e-05, 2.66989e-05, 2.74288e-05, 2.81207e-05, 2.87779e-05, 
			1.2778e-05, 1.50154e-05, 1.69258e-05, 1.85935e-05, 2.0077e-05, 2.14168e-05, 2.26417e-05, 2.3772e-05, 2.48231e-05, 2.58064e-05, 2.67306e-05, 2.76027e-05, 2.8428e-05, 2.92113e-05, 2.9956e-05, 3.06649e-05, 
			1.447e-05, 1.65246e-05, 1.83404e-05, 1.99644e-05, 2.14341e-05, 2.27794e-05, 2.4022e-05, 2.51779e-05, 2.62599e-05, 2.72775e-05, 2.82382e-05, 2.91482e-05, 3.00119e-05, 3.08339e-05, 3.1617e-05, 3.2364e-05, 
			1.606e-05, 1.79962e-05, 1.97416e-05, 2.13286e-05, 2.27849e-05, 2.41312e-05, 2.53847e-05, 2.65586e-05, 2.76633e-05, 2.87068e-05, 2.96954e-05, 3.06347e-05, 3.15286e-05, 3.23809e-05, 3.31943e-05, 3.39716e-05, 
			1.7597e-05, 1.94366e-05, 2.11286e-05, 2.26862e-05, 2.41304e-05, 2.54763e-05, 2.67376e-05, 2.79251e-05, 2.90474e-05, 3.01111e-05, 3.11222e-05, 3.20848e-05, 3.30029e-05, 3.38797e-05, 3.47177e-05, 3.55194e-05
		)
}

CapTable	"metal5_C_LATERAL_64MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183035, 0.000108207, 8.06486e-05, 6.57638e-05, 5.6213e-05, 4.94434e-05, 4.4325e-05, 4.02756e-05, 3.69636e-05, 3.41846e-05, 3.18058e-05, 2.97366e-05, 2.79132e-05, 2.6289e-05, 2.48294e-05, 2.35078e-05, 
			0.000195443, 0.000118044, 8.88712e-05, 7.29028e-05, 6.25462e-05, 5.51538e-05, 4.95348e-05, 4.50716e-05, 4.14094e-05, 3.83288e-05, 3.56866e-05, 3.33848e-05, 3.1354e-05, 2.95432e-05, 2.79146e-05, 2.64394e-05, 
			0.000203208, 0.000124797, 9.47786e-05, 7.8155e-05, 6.7301e-05, 5.94994e-05, 5.35406e-05, 4.87894e-05, 4.48784e-05, 4.15804e-05, 3.87458e-05, 3.6272e-05, 3.40866e-05, 3.21358e-05, 3.03798e-05, 2.8788e-05, 
			0.0002089, 0.000129975, 9.94384e-05, 8.23804e-05, 7.11638e-05, 6.3064e-05, 5.68512e-05, 5.188e-05, 4.77764e-05, 4.43078e-05, 4.1321e-05, 3.87102e-05, 3.64006e-05, 3.4337e-05, 3.2478e-05, 3.07914e-05, 
			0.000212988, 0.000134062, 0.00010322, 8.58658e-05, 7.43874e-05, 6.60652e-05, 5.96576e-05, 5.45128e-05, 5.02554e-05, 4.66494e-05, 4.35386e-05, 4.0816e-05, 3.84046e-05, 3.6248e-05, 3.43036e-05, 3.25386e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.1027e-06, 5.4842e-06, 6.692e-06, 7.7126e-06, 8.5635e-06, 9.2392e-06, 9.8076e-06, 1.02697e-05, 1.06379e-05, 1.0948e-05, 1.12027e-05, 1.14132e-05, 1.15879e-05, 1.17334e-05, 1.18553e-05, 1.19577e-05, 
			5.4993e-06, 6.8712e-06, 8.0966e-06, 9.1365e-06, 1.00316e-05, 1.07719e-05, 1.13823e-05, 1.18756e-05, 1.229e-05, 1.26324e-05, 1.29156e-05, 1.31514e-05, 1.33489e-05, 1.35142e-05, 1.3653e-05, 1.38395e-05, 
			6.882e-06, 8.2549e-06, 9.4803e-06, 1.05665e-05, 1.14861e-05, 1.22446e-05, 1.28843e-05, 1.34134e-05, 1.38529e-05, 1.42178e-05, 1.45208e-05, 1.47754e-05, 1.49886e-05, 1.52504e-05, 1.53769e-05, 1.54867e-05, 
			8.2563e-06, 9.633e-06, 1.08898e-05, 1.19904e-05, 1.29208e-05, 1.37098e-05, 1.43696e-05, 1.49176e-05, 1.53753e-05, 1.57569e-05, 1.60769e-05, 1.63447e-05, 1.66381e-05, 1.68065e-05, 1.69512e-05, 1.70747e-05, 
			9.6601e-06, 1.10359e-05, 1.22923e-05, 1.34056e-05, 1.43584e-05, 1.51626e-05, 1.58362e-05, 1.63992e-05, 1.68716e-05, 1.72657e-05, 1.76768e-05, 1.79301e-05, 1.81475e-05, 1.83307e-05, 1.84899e-05, 1.86257e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.67836e-06, 7.0931e-06, 8.271e-06, 9.2948e-06, 1.02087e-05, 1.10386e-05, 1.18007e-05, 1.25074e-05, 1.31662e-05, 1.37828e-05, 1.43608e-05, 1.49038e-05, 1.5415e-05, 1.58968e-05, 1.635e-05, 1.67773e-05, 
			6.79744e-06, 8.0943e-06, 9.2383e-06, 1.02683e-05, 1.12082e-05, 1.20757e-05, 1.28823e-05, 1.36365e-05, 1.43442e-05, 1.50091e-05, 1.56372e-05, 1.62283e-05, 1.67866e-05, 1.73142e-05, 1.78111e-05, 1.8281e-05, 
			7.8646e-06, 9.0987e-06, 1.0224e-05, 1.12576e-05, 1.22154e-05, 1.31096e-05, 1.39482e-05, 1.47369e-05, 1.54798e-05, 1.61824e-05, 1.68468e-05, 1.74747e-05, 1.80691e-05, 1.86301e-05, 1.91613e-05, 1.96622e-05, 
			8.9126e-06, 1.01132e-05, 1.12274e-05, 1.22674e-05, 1.3241e-05, 1.41569e-05, 1.502e-05, 1.58372e-05, 1.66099e-05, 1.73418e-05, 1.80362e-05, 1.86931e-05, 1.93159e-05, 1.99048e-05, 2.0463e-05, 2.09909e-05, 
			9.9594e-06, 1.11367e-05, 1.22479e-05, 1.32948e-05, 1.42827e-05, 1.52166e-05, 1.61027e-05, 1.69436e-05, 1.7741e-05, 1.84984e-05, 1.92164e-05, 1.98984e-05, 2.05441e-05, 2.11571e-05, 2.17358e-05, 2.22849e-05
		)
}

CapTable	"metal5_C_TOP_GP_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.35084e-06, 9.2077e-06, 1.07588e-05, 1.21039e-05, 1.33002e-05, 1.43834e-05, 1.53776e-05, 1.62968e-05, 1.71525e-05, 1.79521e-05, 1.87026e-05, 1.94082e-05, 2.00715e-05, 2.06958e-05, 2.1284e-05, 2.1838e-05, 
			8.81976e-06, 1.05305e-05, 1.20389e-05, 1.33906e-05, 1.46207e-05, 1.57521e-05, 1.68018e-05, 1.77812e-05, 1.86995e-05, 1.95636e-05, 2.03767e-05, 2.11441e-05, 2.18679e-05, 2.25509e-05, 2.31965e-05, 2.38048e-05, 
			1.02374e-05, 1.18653e-05, 1.3345e-05, 1.4701e-05, 1.59528e-05, 1.71173e-05, 1.82068e-05, 1.92308e-05, 2.01962e-05, 2.11065e-05, 2.19666e-05, 2.27803e-05, 2.35494e-05, 2.42773e-05, 2.49647e-05, 2.56148e-05, 
			1.16284e-05, 1.32118e-05, 1.46762e-05, 1.60364e-05, 1.73066e-05, 1.84985e-05, 1.96216e-05, 2.06811e-05, 2.16832e-05, 2.2632e-05, 2.35304e-05, 2.43818e-05, 2.51879e-05, 2.59513e-05, 2.66729e-05, 2.73551e-05, 
			1.30216e-05, 1.45721e-05, 1.60287e-05, 1.73964e-05, 1.86845e-05, 1.99013e-05, 2.10509e-05, 2.21403e-05, 2.3174e-05, 2.41542e-05, 2.5085e-05, 2.59673e-05, 2.68044e-05, 2.75962e-05, 2.83475e-05, 2.90567e-05
		)
}

CapTable	"metal5_C_LATERAL_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181337, 0.000105989, 7.7958e-05, 6.26362e-05, 5.2678e-05, 4.55284e-05, 4.0055e-05, 3.56752e-05, 3.20566e-05, 2.89948e-05, 2.63562e-05, 2.405e-05, 2.2012e-05, 2.01946e-05, 1.8563e-05, 1.70892e-05, 
			0.000193167, 0.000115233, 8.55598e-05, 6.9121e-05, 5.83222e-05, 5.05146e-05, 4.4507e-05, 3.96814e-05, 3.56826e-05, 3.22914e-05, 2.93636e-05, 2.68018e-05, 2.45354e-05, 2.25128e-05, 2.06956e-05, 1.90536e-05, 
			0.000200328, 0.000121365, 9.0822e-05, 7.37022e-05, 6.238e-05, 5.41378e-05, 4.77662e-05, 4.26296e-05, 3.83616e-05, 3.4734e-05, 3.15972e-05, 2.88484e-05, 2.64138e-05, 2.424e-05, 2.22854e-05, 2.05188e-05, 
			0.000205386, 0.000125891, 9.48104e-05, 7.72352e-05, 6.553e-05, 5.69702e-05, 5.03266e-05, 4.49536e-05, 4.04784e-05, 3.66674e-05, 3.33666e-05, 3.04712e-05, 2.79044e-05, 2.5611e-05, 2.35478e-05, 2.1682e-05, 
			0.000208812, 0.000129301, 9.78984e-05, 8.00098e-05, 6.80268e-05, 5.92302e-05, 5.23788e-05, 4.68208e-05, 4.21814e-05, 3.82242e-05, 3.4793e-05, 3.17794e-05, 2.91066e-05, 2.67166e-05, 2.4566e-05, 2.26204e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.5578e-06, 5.7939e-06, 6.8657e-06, 7.8248e-06, 8.692e-06, 9.4832e-06, 1.02091e-05, 1.08741e-05, 1.14846e-05, 1.20481e-05, 1.2555e-05, 1.30154e-05, 1.34412e-05, 1.38267e-05, 1.41799e-05, 1.44978e-05, 
			5.6174e-06, 6.7994e-06, 7.877e-06, 8.863e-06, 9.7747e-06, 1.06154e-05, 1.13914e-05, 1.21111e-05, 1.2768e-05, 1.33681e-05, 1.3924e-05, 1.44303e-05, 1.48956e-05, 1.53208e-05, 1.5705e-05, 1.60579e-05, 
			6.6754e-06, 7.8378e-06, 8.9207e-06, 9.9327e-06, 1.08726e-05, 1.17479e-05, 1.25655e-05, 1.33106e-05, 1.39979e-05, 1.46366e-05, 1.52212e-05, 1.57596e-05, 1.62498e-05, 1.67007e-05, 1.71122e-05, 1.74874e-05, 
			7.7405e-06, 8.9001e-06, 9.9951e-06, 1.1025e-05, 1.19939e-05, 1.28917e-05, 1.37241e-05, 1.45016e-05, 1.52181e-05, 1.58815e-05, 1.64923e-05, 1.70501e-05, 1.75643e-05, 1.80348e-05, 1.84624e-05, 1.88551e-05, 
			8.8322e-06, 9.9905e-06, 1.10971e-05, 1.21496e-05, 1.31267e-05, 1.40415e-05, 1.49004e-05, 1.56958e-05, 1.64347e-05, 1.71144e-05, 1.77434e-05, 1.83213e-05, 1.88517e-05, 1.93354e-05, 1.97803e-05, 2.01862e-05
		)
}

CapTable	"metal5_C_TOP_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.11076e-05, 1.42051e-05, 1.68872e-05, 1.9269e-05, 2.1418e-05, 2.33707e-05, 2.51482e-05, 2.6771e-05, 2.82503e-05, 2.95929e-05, 3.08288e-05, 3.19545e-05, 3.29721e-05, 3.38979e-05, 3.47364e-05, 3.54974e-05, 
			1.38186e-05, 1.68134e-05, 1.9526e-05, 2.19997e-05, 2.42597e-05, 2.63328e-05, 2.82336e-05, 2.99704e-05, 3.1569e-05, 3.30339e-05, 3.43664e-05, 3.55834e-05, 3.66908e-05, 3.76975e-05, 3.86145e-05, 3.94463e-05, 
			1.65676e-05, 1.95302e-05, 2.22751e-05, 2.48063e-05, 2.7143e-05, 2.92957e-05, 3.12693e-05, 3.31005e-05, 3.47803e-05, 3.63129e-05, 3.7717e-05, 3.89986e-05, 4.01681e-05, 4.12338e-05, 4.22042e-05, 4.30859e-05, 
			1.93815e-05, 2.23457e-05, 2.51171e-05, 2.76954e-05, 3.00805e-05, 3.22968e-05, 3.43452e-05, 3.62268e-05, 3.7959e-05, 3.95467e-05, 4.1002e-05, 4.2333e-05, 4.35487e-05, 4.4657e-05, 4.56675e-05, 4.65887e-05, 
			2.22658e-05, 2.52325e-05, 2.80281e-05, 3.06322e-05, 3.30747e-05, 3.53371e-05, 3.74237e-05, 3.93515e-05, 4.11251e-05, 4.2755e-05, 4.42498e-05, 4.56188e-05, 4.68693e-05, 4.80128e-05, 4.90537e-05, 5.00028e-05
		)
}

CapTable	"metal5_C_LATERAL_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179235, 0.000103178, 7.45068e-05, 5.86162e-05, 4.81642e-05, 4.05966e-05, 3.4782e-05, 3.0134e-05, 2.63164e-05, 2.31202e-05, 2.0401e-05, 1.80664e-05, 1.60444e-05, 1.42824e-05, 1.27374e-05, 1.138e-05, 
			0.000190204, 0.000111531, 8.119e-05, 6.41634e-05, 5.28616e-05, 4.4636e-05, 3.8294e-05, 3.3214e-05, 2.9032e-05, 2.55248e-05, 2.25414e-05, 1.99773e-05, 1.77532e-05, 1.58128e-05, 1.41124e-05, 1.26122e-05, 
			0.000196459, 0.000116749, 8.55372e-05, 6.7838e-05, 5.60274e-05, 4.7388e-05, 4.07086e-05, 3.53414e-05, 3.0919e-05, 2.72056e-05, 2.40436e-05, 2.13212e-05, 1.89611e-05, 1.6897e-05, 1.50845e-05, 1.34872e-05, 
			0.000200592, 0.000120361, 8.86318e-05, 7.05026e-05, 5.83406e-05, 4.94148e-05, 4.24944e-05, 3.69274e-05, 3.23328e-05, 2.84688e-05, 2.51742e-05, 2.23382e-05, 1.9872e-05, 1.7717e-05, 1.58258e-05, 1.41539e-05, 
			0.0002031, 0.000122883, 9.08658e-05, 7.24632e-05, 6.00586e-05, 5.09364e-05, 4.3848e-05, 3.81342e-05, 3.34112e-05, 2.94376e-05, 2.60438e-05, 2.31172e-05, 2.05742e-05, 1.83509e-05, 1.63947e-05, 1.46674e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.6285e-06, 4.8495e-06, 5.9077e-06, 6.8066e-06, 7.5523e-06, 8.1439e-06, 8.6421e-06, 9.04776e-06, 9.37918e-06, 9.6436e-06, 9.8694e-06, 1.00569e-05, 1.02132e-05, 1.03443e-05, 1.04548e-05, 1.05484e-05, 
			4.854e-06, 6.0598e-06, 7.1356e-06, 8.0657e-06, 8.8287e-06, 9.4771e-06, 1.00119e-05, 1.04435e-05, 1.08088e-05, 1.11119e-05, 1.13632e-05, 1.15733e-05, 1.17505e-05, 1.19002e-05, 1.20267e-05, 1.21335e-05, 
			6.065e-06, 7.2679e-06, 8.3386e-06, 9.2886e-06, 1.0092e-05, 1.07653e-05, 1.13157e-05, 1.17806e-05, 1.21683e-05, 1.24909e-05, 1.27613e-05, 1.29894e-05, 1.31805e-05, 1.33436e-05, 1.34806e-05, 1.36977e-05, 
			7.2804e-06, 8.4654e-06, 9.5635e-06, 1.05249e-05, 1.13356e-05, 1.20268e-05, 1.26054e-05, 1.3088e-05, 1.34917e-05, 1.38307e-05, 1.41159e-05, 1.43566e-05, 1.45604e-05, 1.48462e-05, 1.49666e-05, 1.50698e-05, 
			8.4827e-06, 9.6838e-06, 1.07874e-05, 1.17492e-05, 1.25834e-05, 1.3287e-05, 1.3879e-05, 1.43744e-05, 1.47917e-05, 1.51434e-05, 1.54379e-05, 1.5688e-05, 1.60031e-05, 1.6159e-05, 1.62936e-05, 1.64098e-05
		)
}

CapTable	"metal5_C_TOP_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.97435e-05, 4.00145e-05, 4.82725e-05, 5.4749e-05, 5.98391e-05, 6.37481e-05, 6.69036e-05, 6.9405e-05, 7.14074e-05, 7.3002e-05, 7.43176e-05, 7.53947e-05, 7.62835e-05, 7.70223e-05, 7.76399e-05, 7.81597e-05, 
			4.2234e-05, 5.2487e-05, 6.07838e-05, 6.73937e-05, 7.25633e-05, 7.67237e-05, 8.00339e-05, 8.26708e-05, 8.48161e-05, 8.65647e-05, 8.80013e-05, 8.91854e-05, 9.01656e-05, 9.09893e-05, 9.16817e-05, 9.22706e-05, 
			5.4802e-05, 6.49533e-05, 7.3168e-05, 7.98308e-05, 8.514e-05, 8.93891e-05, 9.27791e-05, 9.55314e-05, 9.77737e-05, 9.9611e-05, 0.000101128, 0.000102389, 0.000103444, 0.000104329, 0.000105083, 0.000105612, 
			6.73818e-05, 7.73892e-05, 8.56515e-05, 9.23233e-05, 9.76552e-05, 0.000101956, 0.000105433, 0.000108266, 0.00011058, 0.000112479, 0.00011406, 0.00011538, 0.000116488, 0.00011731, 0.000118134, 0.000118836, 
			7.99039e-05, 8.9873e-05, 9.8096e-05, 0.000104745, 0.000110121, 0.000114465, 0.000117991, 0.000120872, 0.000123241, 0.000125201, 0.000126833, 0.000128209, 0.000129248, 0.000130252, 0.000131109, 0.000131838
		)
}

CapTable	"metal5_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167461, 8.8761e-05, 5.87468e-05, 4.24164e-05, 3.20932e-05, 2.51244e-05, 2.00434e-05, 1.62667e-05, 1.3386e-05, 1.11691e-05, 9.3907e-06, 7.96434e-06, 6.80662e-06, 5.8571e-06, 5.0716e-06, 4.41654e-06, 
			0.000174556, 9.42022e-05, 6.31786e-05, 4.61356e-05, 3.5349e-05, 2.78482e-05, 2.24152e-05, 1.83687e-05, 1.52321e-05, 1.27704e-05, 1.08065e-05, 9.22128e-06, 7.92786e-06, 6.85946e-06, 5.9706e-06, 5.22394e-06, 
			0.000178292, 9.75978e-05, 6.62214e-05, 4.87926e-05, 3.7626e-05, 2.98656e-05, 2.42332e-05, 1.9961e-05, 1.6653e-05, 1.40421e-05, 1.19487e-05, 1.02486e-05, 8.85248e-06, 7.69538e-06, 6.72636e-06, 5.92132e-06, 
			0.000180817, 0.000100133, 6.845e-05, 5.08028e-05, 3.94592e-05, 3.15212e-05, 2.56986e-05, 2.1278e-05, 1.78423e-05, 1.51213e-05, 1.29271e-05, 1.11374e-05, 9.6616e-06, 8.4388e-06, 7.40742e-06, 6.53718e-06, 
			0.00018238, 0.000101953, 7.01956e-05, 5.24468e-05, 4.09366e-05, 3.2874e-05, 2.6936e-05, 2.24096e-05, 1.88743e-05, 1.60606e-05, 1.37861e-05, 1.192e-05, 1.03909e-05, 9.10398e-06, 8.02244e-06, 7.10716e-06
		)
}

CapTable	"metal4_C_LATERAL_14MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_15MAX" {
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

CapTable	"metal4_C_LATERAL_15MAX" {
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

CapTable	"metal4_C_LATERAL_13MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_14MAX" {
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

CapTable	"metal4_C_TOP_GP_14MAX" {
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

CapTable	"metal4_C_LATERAL_12MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal4_C_TOP_GP_13MAX" {
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
			2.70117e-05, 3.66015e-05, 4.43494e-05, 5.04484e-05, 5.5182e-05, 5.88169e-05, 6.15885e-05, 6.36919e-05, 6.52811e-05, 6.64802e-05, 6.73821e-05, 6.80593e-05, 6.85685e-05, 6.89501e-05, 6.92567e-05, 6.94726e-05, 
			3.94301e-05, 4.92216e-05, 5.71575e-05, 6.34348e-05, 6.83309e-05, 7.21084e-05, 7.49988e-05, 7.72004e-05, 7.88675e-05, 8.01273e-05, 8.10783e-05, 8.17917e-05, 8.23527e-05, 8.27572e-05, 8.30612e-05, 8.32891e-05, 
			5.21884e-05, 6.20351e-05, 7.00389e-05, 7.63935e-05, 8.13599e-05, 8.52025e-05, 8.81503e-05, 9.03975e-05, 9.21008e-05, 9.33919e-05, 9.43648e-05, 9.51271e-05, 9.56793e-05, 9.60939e-05, 9.64059e-05, 9.66401e-05, 
			6.50998e-05, 7.49795e-05, 8.30182e-05, 8.94102e-05, 9.44167e-05, 9.82918e-05, 0.000101268, 0.000103541, 0.000105262, 0.0001066, 0.000107587, 0.000108329, 0.00010889, 0.00010931, 0.000109626, 0.000109864, 
			7.80976e-05, 8.79543e-05, 9.59971e-05, 0.000102403, 0.000107426, 0.000111311, 0.000114302, 0.000116583, 0.000118356, 0.000119671, 0.000120662, 0.00012141, 0.000121973, 0.000122396, 0.000122716, 0.000122955
		)
}

CapTable	"metal4_C_TOP_GP_12MAX" {
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

CapTable	"metal4_C_LATERAL_25MAX" {
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

CapTable	"metal4_C_TOP_GP_24MAX" {
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

CapTable	"metal4_C_LATERAL_24MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_25MAX" {
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

CapTable	"metal4_C_TOP_GP_23MAX" {
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

CapTable	"metal4_C_LATERAL_23MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_24MAX" {
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

CapTable	"metal4_C_TOP_GP_22MAX" {
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

CapTable	"metal4_C_LATERAL_22MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_23MAX" {
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
			1.05266e-05, 1.38839e-05, 1.69145e-05, 1.96572e-05, 2.21148e-05, 2.42915e-05, 2.61964e-05, 2.78441e-05, 2.92556e-05, 3.04561e-05, 3.14671e-05, 3.23161e-05, 3.30235e-05, 3.36116e-05, 3.40983e-05, 3.44995e-05, 
			1.38853e-05, 1.73324e-05, 2.05299e-05, 2.34482e-05, 2.60738e-05, 2.84002e-05, 3.04376e-05, 3.21993e-05, 3.37074e-05, 3.49902e-05, 3.60714e-05, 3.6978e-05, 3.77345e-05, 3.83631e-05, 3.88803e-05, 3.93106e-05, 
			1.7454e-05, 2.10016e-05, 2.43127e-05, 2.7342e-05, 3.00654e-05, 3.24779e-05, 3.45887e-05, 3.64121e-05, 3.79744e-05, 3.9301e-05, 4.04199e-05, 4.13579e-05, 4.21397e-05, 4.27986e-05, 4.33264e-05, 4.37709e-05, 
			2.12003e-05, 2.48345e-05, 2.82231e-05, 3.13234e-05, 3.41066e-05, 3.657e-05, 3.87226e-05, 4.05839e-05, 4.2176e-05, 4.35284e-05, 4.46692e-05, 4.56214e-05, 4.64189e-05, 4.70819e-05, 4.75878e-05, 4.80367e-05, 
			2.50872e-05, 2.87696e-05, 3.22073e-05, 3.53496e-05, 3.81678e-05, 4.06606e-05, 4.28369e-05, 4.47172e-05, 4.63271e-05, 4.76919e-05, 4.88523e-05, 4.98081e-05, 5.0613e-05, 5.12359e-05, 5.17869e-05, 5.22417e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.26264e-05, 1.57536e-05, 1.83517e-05, 2.06e-05, 2.25962e-05, 2.4397e-05, 2.60385e-05, 2.75447e-05, 2.89328e-05, 3.02157e-05, 3.14045e-05, 3.25078e-05, 3.35331e-05, 3.44869e-05, 3.5375e-05, 3.6203e-05, 
			1.50918e-05, 1.7962e-05, 2.0486e-05, 2.27427e-05, 2.47875e-05, 2.66567e-05, 2.83758e-05, 2.99635e-05, 3.1434e-05, 3.27989e-05, 3.40677e-05, 3.52488e-05, 3.63492e-05, 3.73755e-05, 3.83334e-05, 3.92282e-05, 
			1.7462e-05, 2.01916e-05, 2.2664e-05, 2.49185e-05, 2.69861e-05, 2.88931e-05, 3.06581e-05, 3.22959e-05, 3.38188e-05, 3.52366e-05, 3.65583e-05, 3.77916e-05, 3.89432e-05, 4.00194e-05, 4.10255e-05, 4.19672e-05, 
			1.979e-05, 2.24388e-05, 2.4875e-05, 2.71228e-05, 2.92024e-05, 3.1132e-05, 3.29265e-05, 3.4598e-05, 3.61567e-05, 3.7612e-05, 3.89716e-05, 4.02429e-05, 4.14321e-05, 4.25455e-05, 4.3588e-05, 4.4565e-05, 
			2.2114e-05, 2.46958e-05, 2.71028e-05, 2.93414e-05, 3.14262e-05, 3.33698e-05, 3.51832e-05, 3.68776e-05, 3.84618e-05, 3.99441e-05, 4.13317e-05, 4.26312e-05, 4.3849e-05, 4.49905e-05, 4.60611e-05, 4.70656e-05
		)
}

CapTable	"metal4_C_LATERAL_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181655, 0.00010639, 7.84284e-05, 6.31696e-05, 5.32758e-05, 4.61978e-05, 4.08066e-05, 3.6521e-05, 3.30082e-05, 3.00626e-05, 2.75486e-05, 2.53732e-05, 2.347e-05, 2.17898e-05, 2.02952e-05, 1.8957e-05, 
			0.000193553, 0.000115687, 8.6077e-05, 6.97064e-05, 5.8987e-05, 5.1274e-05, 4.5377e-05, 4.06772e-05, 3.6818e-05, 3.35772e-05, 3.08086e-05, 2.84106e-05, 2.6311e-05, 2.44558e-05, 2.28042e-05, 2.13244e-05, 
			0.000200762, 0.00012186, 9.1387e-05, 7.43524e-05, 6.31346e-05, 5.5017e-05, 4.87892e-05, 4.38132e-05, 3.97188e-05, 3.62752e-05, 3.33292e-05, 3.07746e-05, 2.85354e-05, 2.65548e-05, 2.47902e-05, 2.32076e-05, 
			0.00020586, 0.000126434, 9.5442e-05, 7.79792e-05, 6.64106e-05, 5.80104e-05, 5.1546e-05, 4.63686e-05, 4.21008e-05, 3.85054e-05, 3.54254e-05, 3.27514e-05, 3.0405e-05, 2.83274e-05, 2.64746e-05, 2.48116e-05, 
			0.000209338, 0.000129916, 9.86312e-05, 8.08896e-05, 6.90798e-05, 6.04794e-05, 5.3843e-05, 4.85146e-05, 4.41146e-05, 4.04024e-05, 3.72182e-05, 3.44508e-05, 3.20196e-05, 2.98652e-05, 2.79418e-05, 2.6214e-05
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

CapTable	"metal4_C_BOTTOM_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.15994e-06, 1.15598e-05, 1.36048e-05, 1.5415e-05, 1.70531e-05, 1.85541e-05, 1.99386e-05, 2.12198e-05, 2.2407e-05, 2.35075e-05, 2.45264e-05, 2.54687e-05, 2.63406e-05, 2.71455e-05, 2.78884e-05, 2.8573e-05, 
			1.11718e-05, 1.34414e-05, 1.54847e-05, 1.73494e-05, 1.90695e-05, 2.06638e-05, 2.21456e-05, 2.35241e-05, 2.48059e-05, 2.59971e-05, 2.71026e-05, 2.81278e-05, 2.90776e-05, 2.99557e-05, 3.07674e-05, 3.15165e-05, 
			1.3168e-05, 1.53878e-05, 1.74414e-05, 1.93498e-05, 2.11277e-05, 2.27874e-05, 2.4337e-05, 2.57827e-05, 2.71301e-05, 2.83853e-05, 2.95521e-05, 3.06354e-05, 3.16401e-05, 3.25701e-05, 3.3431e-05, 3.42249e-05, 
			1.51889e-05, 1.73988e-05, 1.94714e-05, 2.14161e-05, 2.3239e-05, 2.4948e-05, 2.65484e-05, 2.8045e-05, 2.94424e-05, 3.07458e-05, 3.19586e-05, 3.30864e-05, 3.41329e-05, 3.51029e-05, 3.59997e-05, 3.68307e-05, 
			1.72599e-05, 1.94671e-05, 2.15584e-05, 2.35334e-05, 2.5392e-05, 2.71392e-05, 2.87787e-05, 3.03149e-05, 3.17509e-05, 3.30916e-05, 3.43403e-05, 3.55026e-05, 3.65804e-05, 3.75819e-05, 3.85092e-05, 3.93654e-05
		)
}

CapTable	"metal4_C_TOP_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.06426e-06, 6.39841e-06, 7.54038e-06, 8.55277e-06, 9.46941e-06, 1.03096e-05, 1.1085e-05, 1.18032e-05, 1.24691e-05, 1.30866e-05, 1.36595e-05, 1.41907e-05, 1.46819e-05, 1.51362e-05, 1.55559e-05, 1.59432e-05, 
			6.14999e-06, 7.40903e-06, 8.54509e-06, 9.58351e-06, 1.0542e-05, 1.14313e-05, 1.22587e-05, 1.30293e-05, 1.37471e-05, 1.44153e-05, 1.50368e-05, 1.5614e-05, 1.61489e-05, 1.66447e-05, 1.71033e-05, 1.75271e-05, 
			7.22838e-06, 8.45316e-06, 9.59044e-06, 1.06488e-05, 1.16363e-05, 1.25597e-05, 1.34232e-05, 1.42308e-05, 1.49857e-05, 1.56893e-05, 1.63447e-05, 1.69546e-05, 1.75208e-05, 1.80461e-05, 1.85323e-05, 1.89835e-05, 
			8.3151e-06, 9.5288e-06, 1.06716e-05, 1.17465e-05, 1.27571e-05, 1.37066e-05, 1.45979e-05, 1.54337e-05, 1.62163e-05, 1.69468e-05, 1.76287e-05, 1.82631e-05, 1.88531e-05, 1.9401e-05, 1.99098e-05, 2.03792e-05, 
			9.42506e-06, 1.06315e-05, 1.17814e-05, 1.2871e-05, 1.39004e-05, 1.48711e-05, 1.57844e-05, 1.6642e-05, 1.74461e-05, 1.81979e-05, 1.89002e-05, 1.95543e-05, 2.01644e-05, 2.07294e-05, 2.12538e-05, 2.17411e-05
		)
}

CapTable	"metal4_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180357, 0.000104662, 7.62918e-05, 6.06428e-05, 5.0377e-05, 4.29468e-05, 3.72262e-05, 3.26358e-05, 2.88444e-05, 2.56468e-05, 2.29082e-05, 2.05352e-05, 1.84601e-05, 1.66329e-05, 1.50146e-05, 1.3575e-05, 
			0.000191761, 0.000113431, 8.33692e-05, 6.6563e-05, 5.54272e-05, 4.73212e-05, 4.10576e-05, 3.602e-05, 3.18532e-05, 2.83356e-05, 2.53208e-05, 2.27066e-05, 2.04198e-05, 1.84052e-05, 1.66201e-05, 1.50315e-05, 
			0.000198428, 0.000119026, 8.80632e-05, 7.05564e-05, 5.88892e-05, 5.03492e-05, 4.37296e-05, 3.83942e-05, 3.3974e-05, 3.02382e-05, 2.70336e-05, 2.42528e-05, 2.18186e-05, 1.9673e-05, 1.77707e-05, 1.60768e-05, 
			0.000202932, 0.000122972, 9.1459e-05, 7.34954e-05, 6.14528e-05, 5.26096e-05, 4.57362e-05, 4.01854e-05, 3.55802e-05, 3.16838e-05, 2.83384e-05, 2.54334e-05, 2.28888e-05, 2.06442e-05, 1.86535e-05, 1.68799e-05, 
			0.000205768, 0.000125785, 9.39542e-05, 7.56906e-05, 6.33896e-05, 5.43324e-05, 4.7276e-05, 4.15656e-05, 3.68222e-05, 3.28048e-05, 2.93526e-05, 2.63526e-05, 2.37234e-05, 2.14028e-05, 1.93437e-05, 1.75085e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.19278e-06, 1.04183e-05, 1.23459e-05, 1.40736e-05, 1.56506e-05, 1.71023e-05, 1.8443e-05, 1.96815e-05, 2.08231e-05, 2.18732e-05, 2.28368e-05, 2.37187e-05, 2.45215e-05, 2.52549e-05, 2.59178e-05, 2.65207e-05, 
			1.01223e-05, 1.22659e-05, 1.42229e-05, 1.60272e-05, 1.77014e-05, 1.92579e-05, 2.07041e-05, 2.20441e-05, 2.32824e-05, 2.44238e-05, 2.54728e-05, 2.6433e-05, 2.73103e-05, 2.81074e-05, 2.88337e-05, 2.94896e-05, 
			1.20703e-05, 1.42006e-05, 1.61934e-05, 1.80598e-05, 1.98051e-05, 2.14359e-05, 2.29547e-05, 2.43658e-05, 2.56718e-05, 2.68751e-05, 2.79833e-05, 2.89959e-05, 2.99231e-05, 3.07669e-05, 3.15322e-05, 3.2228e-05, 
			1.40739e-05, 1.62215e-05, 1.82536e-05, 2.01702e-05, 2.19717e-05, 2.36582e-05, 2.52326e-05, 2.66965e-05, 2.80519e-05, 2.93024e-05, 3.045e-05, 3.15042e-05, 3.24649e-05, 3.33424e-05, 3.41387e-05, 3.48595e-05, 
			1.615e-05, 1.83161e-05, 2.03838e-05, 2.23417e-05, 2.41863e-05, 2.59173e-05, 2.75323e-05, 2.90368e-05, 3.04271e-05, 3.17125e-05, 3.28931e-05, 3.3974e-05, 3.49631e-05, 3.58633e-05, 3.66806e-05, 3.74221e-05
		)
}

CapTable	"metal4_C_TOP_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.14202e-06, 9.10438e-06, 1.08124e-05, 1.23444e-05, 1.37418e-05, 1.5028e-05, 1.62151e-05, 1.73113e-05, 1.83225e-05, 1.92535e-05, 2.01076e-05, 2.08886e-05, 2.1603e-05, 2.22505e-05, 2.2841e-05, 2.33738e-05, 
			8.8097e-06, 1.07025e-05, 1.24327e-05, 1.40285e-05, 1.55098e-05, 1.68859e-05, 1.81641e-05, 1.93499e-05, 2.04466e-05, 2.14572e-05, 2.23855e-05, 2.32359e-05, 2.40125e-05, 2.47212e-05, 2.53631e-05, 2.59463e-05, 
			1.05051e-05, 1.23798e-05, 1.41384e-05, 1.57854e-05, 1.73261e-05, 1.87666e-05, 2.01098e-05, 2.13573e-05, 2.25117e-05, 2.3578e-05, 2.45561e-05, 2.54551e-05, 2.62743e-05, 2.70216e-05, 2.77015e-05, 2.8316e-05, 
			1.22441e-05, 1.41311e-05, 1.59198e-05, 1.76086e-05, 1.91982e-05, 2.06882e-05, 2.20785e-05, 2.33714e-05, 2.45689e-05, 2.56743e-05, 2.66928e-05, 2.76238e-05, 2.84759e-05, 2.92508e-05, 2.99562e-05, 3.05964e-05, 
			1.4048e-05, 1.59459e-05, 1.77638e-05, 1.94891e-05, 2.11169e-05, 2.26432e-05, 2.40708e-05, 2.53968e-05, 2.66283e-05, 2.7763e-05, 2.88074e-05, 2.97654e-05, 3.06392e-05, 3.14369e-05, 3.21611e-05, 3.28179e-05
		)
}

CapTable	"metal4_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179465, 0.000103458, 7.47954e-05, 5.88736e-05, 4.8358e-05, 4.07038e-05, 3.47876e-05, 3.00312e-05, 2.6104e-05, 2.28e-05, 1.99834e-05, 1.75592e-05, 1.54577e-05, 1.36261e-05, 1.20236e-05, 1.06168e-05, 
			0.000190495, 0.000111828, 8.14464e-05, 6.43428e-05, 5.29364e-05, 4.45904e-05, 3.81196e-05, 3.29088e-05, 2.86028e-05, 2.49794e-05, 2.189e-05, 1.92313e-05, 1.69263e-05, 1.4918e-05, 1.31606e-05, 1.1619e-05, 
			0.000196752, 0.000116994, 8.56932e-05, 6.78748e-05, 5.59276e-05, 4.71422e-05, 4.03138e-05, 3.48068e-05, 3.02526e-05, 2.64184e-05, 2.31488e-05, 2.03344e-05, 1.78946e-05, 1.57684e-05, 1.39086e-05, 1.22761e-05, 
			0.000200818, 0.000120487, 8.86266e-05, 7.03462e-05, 5.80216e-05, 4.8935e-05, 4.18584e-05, 3.61442e-05, 3.1415e-05, 2.74318e-05, 2.40344e-05, 2.11094e-05, 1.85745e-05, 1.63648e-05, 1.44313e-05, 1.27348e-05, 
			0.000203194, 0.000122835, 9.06544e-05, 7.20752e-05, 5.94968e-05, 5.02046e-05, 4.29554e-05, 3.70942e-05, 3.22404e-05, 2.81504e-05, 2.46614e-05, 2.16576e-05, 1.90533e-05, 1.67833e-05, 1.4798e-05, 1.30551e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.166e-06, 9.2974e-06, 1.11994e-05, 1.29271e-05, 1.44977e-05, 1.59212e-05, 1.72033e-05, 1.83492e-05, 1.93705e-05, 2.02702e-05, 2.10632e-05, 2.17544e-05, 2.23587e-05, 2.28831e-05, 2.33368e-05, 2.37275e-05, 
			9.1513e-06, 1.12761e-05, 1.32511e-05, 1.50763e-05, 1.67529e-05, 1.82804e-05, 1.96592e-05, 2.08978e-05, 2.19973e-05, 2.29723e-05, 2.38276e-05, 2.45784e-05, 2.52327e-05, 2.58e-05, 2.62917e-05, 2.67156e-05, 
			1.12095e-05, 1.33654e-05, 1.53979e-05, 1.72938e-05, 1.90395e-05, 2.06356e-05, 2.20768e-05, 2.33717e-05, 2.45223e-05, 2.55426e-05, 2.64401e-05, 2.72256e-05, 2.79101e-05, 2.85048e-05, 2.90193e-05, 2.94639e-05, 
			1.33505e-05, 1.5547e-05, 1.76294e-05, 1.95761e-05, 2.1374e-05, 2.3014e-05, 2.44996e-05, 2.58302e-05, 2.70166e-05, 2.80664e-05, 2.89894e-05, 2.97981e-05, 3.05027e-05, 3.11148e-05, 3.16453e-05, 3.21138e-05, 
			1.55723e-05, 1.77981e-05, 1.99191e-05, 2.19016e-05, 2.37351e-05, 2.54065e-05, 2.69208e-05, 2.82781e-05, 2.94865e-05, 3.05554e-05, 3.14958e-05, 3.23188e-05, 3.30369e-05, 3.36609e-05, 3.42098e-05, 3.4674e-05
		)
}

CapTable	"metal4_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.14182e-05, 1.49082e-05, 1.80239e-05, 2.08339e-05, 2.33705e-05, 2.56532e-05, 2.76952e-05, 2.95118e-05, 3.11169e-05, 3.25287e-05, 3.37651e-05, 3.48412e-05, 3.57772e-05, 3.65868e-05, 3.72852e-05, 3.78881e-05, 
			1.47209e-05, 1.82397e-05, 2.14837e-05, 2.44551e-05, 2.7159e-05, 2.95993e-05, 3.17888e-05, 3.37363e-05, 3.5462e-05, 3.69788e-05, 3.83081e-05, 3.94673e-05, 4.04737e-05, 4.13469e-05, 4.21009e-05, 4.27516e-05, 
			1.82039e-05, 2.17812e-05, 2.51217e-05, 2.8199e-05, 3.10061e-05, 3.35439e-05, 3.58206e-05, 3.78486e-05, 3.96449e-05, 4.12256e-05, 4.26095e-05, 4.38181e-05, 4.48695e-05, 4.57794e-05, 4.65673e-05, 4.72459e-05, 
			2.18445e-05, 2.54884e-05, 2.88978e-05, 3.20479e-05, 3.4923e-05, 3.75246e-05, 3.9857e-05, 4.19369e-05, 4.37781e-05, 4.53984e-05, 4.682e-05, 4.80601e-05, 4.91378e-05, 5.0074e-05, 5.08818e-05, 5.15681e-05, 
			2.56263e-05, 2.93097e-05, 3.27681e-05, 3.5965e-05, 3.88843e-05, 4.15263e-05, 4.38964e-05, 4.60075e-05, 4.78785e-05, 4.95268e-05, 5.09703e-05, 5.2232e-05, 5.33282e-05, 5.42784e-05, 5.50901e-05, 5.5802e-05
		)
}

CapTable	"metal4_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176933, 0.000100035, 7.06046e-05, 5.40542e-05, 4.3058e-05, 3.50656e-05, 2.8943e-05, 2.40972e-05, 2.01782e-05, 1.69669e-05, 1.43057e-05, 1.20904e-05, 1.02319e-05, 8.6704e-06, 7.3551e-06, 6.24462e-06, 
			0.000186827, 0.000107264, 7.61332e-05, 5.84382e-05, 4.65988e-05, 3.79696e-05, 3.13496e-05, 2.61062e-05, 2.18668e-05, 1.8389e-05, 1.55109e-05, 1.31097e-05, 1.1099e-05, 9.40868e-06, 7.9837e-06, 6.7799e-06, 
			0.000191941, 0.000111337, 7.93504e-05, 6.10112e-05, 4.87036e-05, 3.9704e-05, 3.27942e-05, 2.73162e-05, 2.28864e-05, 1.92508e-05, 1.62408e-05, 1.37307e-05, 1.16278e-05, 9.85952e-06, 8.3683e-06, 7.1093e-06, 
			0.000194922, 0.000113827, 8.13658e-05, 6.2648e-05, 5.0041e-05, 4.08144e-05, 3.37208e-05, 2.80966e-05, 2.35442e-05, 1.98099e-05, 1.67164e-05, 1.41363e-05, 1.19742e-05, 1.01553e-05, 8.62248e-06, 7.3285e-06, 
			0.00019631, 0.000115287, 8.25988e-05, 6.36694e-05, 5.08866e-05, 4.15232e-05, 3.43178e-05, 2.86004e-05, 2.3972e-05, 2.01738e-05, 1.70269e-05, 1.44014e-05, 1.22017e-05, 1.03517e-05, 8.79306e-06, 7.47478e-06
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

CapTable	"metal4_C_LATERAL_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181068, 0.000105607, 7.7445e-05, 6.19798e-05, 5.18724e-05, 4.45748e-05, 3.89606e-05, 3.4452e-05, 3.07192e-05, 2.75592e-05, 2.4839e-05, 2.2468e-05, 2.03806e-05, 1.85288e-05, 1.68761e-05, 1.53937e-05, 
			0.000192756, 0.000114665, 8.48182e-05, 6.81986e-05, 5.7221e-05, 4.92438e-05, 4.30812e-05, 3.81182e-05, 3.40016e-05, 3.05124e-05, 2.75068e-05, 2.48852e-05, 2.25766e-05, 2.0528e-05, 1.86991e-05, 1.70584e-05, 
			0.000199715, 0.000120553, 8.98012e-05, 7.2475e-05, 6.09568e-05, 5.25356e-05, 4.60056e-05, 4.0733e-05, 3.63516e-05, 3.26332e-05, 2.9427e-05, 2.66286e-05, 2.4163e-05, 2.1974e-05, 2.00192e-05, 1.8265e-05, 
			0.000204516, 0.000124786, 9.34732e-05, 7.56776e-05, 6.37704e-05, 5.50318e-05, 4.82344e-05, 4.27334e-05, 3.81544e-05, 3.42638e-05, 3.0906e-05, 2.79732e-05, 2.53878e-05, 2.30918e-05, 2.10404e-05, 1.91991e-05, 
			0.000207636, 0.000127871, 9.6225e-05, 7.8113e-05, 6.59312e-05, 5.6963e-05, 4.99678e-05, 4.42938e-05, 3.95642e-05, 3.55412e-05, 3.20664e-05, 2.90296e-05, 2.6351e-05, 2.39714e-05, 2.18446e-05, 1.99349e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.15912e-05, 1.43443e-05, 1.65939e-05, 1.85175e-05, 2.0213e-05, 2.17381e-05, 2.31294e-05, 2.44107e-05, 2.5599e-05, 2.67064e-05, 2.77424e-05, 2.87139e-05, 2.9627e-05, 3.04867e-05, 3.12969e-05, 3.2061e-05, 
			1.36584e-05, 1.61354e-05, 1.82858e-05, 2.01922e-05, 2.19127e-05, 2.34851e-05, 2.49353e-05, 2.62822e-05, 2.7539e-05, 2.87161e-05, 2.98215e-05, 3.08618e-05, 3.18423e-05, 3.27676e-05, 3.36415e-05, 3.44672e-05, 
			1.5603e-05, 1.79214e-05, 2.00018e-05, 2.189e-05, 2.36195e-05, 2.52179e-05, 2.67042e-05, 2.80929e-05, 2.93951e-05, 3.06192e-05, 3.17725e-05, 3.28608e-05, 3.38886e-05, 3.48602e-05, 3.57794e-05, 3.66495e-05, 
			1.748e-05, 1.97036e-05, 2.17368e-05, 2.36084e-05, 2.53425e-05, 2.69574e-05, 2.84686e-05, 2.98871e-05, 3.12222e-05, 3.24812e-05, 3.36701e-05, 3.47944e-05, 3.58579e-05, 3.68652e-05, 3.78192e-05, 3.87233e-05, 
			1.9339e-05, 2.14848e-05, 2.34822e-05, 2.5341e-05, 2.70767e-05, 2.87029e-05, 3.02316e-05, 3.16722e-05, 3.30321e-05, 3.43176e-05, 3.55339e-05, 3.66859e-05, 3.77775e-05, 3.88124e-05, 3.97937e-05, 4.07244e-05
		)
}

CapTable	"metal4_C_LATERAL_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182481, 0.000107466, 7.97204e-05, 6.46496e-05, 5.4917e-05, 4.7974e-05, 4.26932e-05, 3.8495e-05, 3.50482e-05, 3.21494e-05, 2.96652e-05, 2.7505e-05, 2.5604e-05, 2.39148e-05, 2.2402e-05, 2.10382e-05, 
			0.000194669, 0.00011705, 8.76562e-05, 7.1472e-05, 6.09096e-05, 5.33254e-05, 4.7531e-05, 4.29094e-05, 3.91066e-05, 3.5903e-05, 3.31544e-05, 3.0762e-05, 2.86552e-05, 2.67822e-05, 2.5104e-05, 2.35906e-05, 
			0.000202168, 0.000123506, 9.32402e-05, 7.63816e-05, 6.53088e-05, 5.73072e-05, 5.11688e-05, 4.6258e-05, 4.22076e-05, 3.87892e-05, 3.5852e-05, 3.32924e-05, 3.10364e-05, 2.90294e-05, 2.723e-05, 2.56062e-05, 
			0.00020755, 0.000128349, 9.75502e-05, 8.02476e-05, 6.88076e-05, 6.05074e-05, 5.41168e-05, 4.89902e-05, 4.47526e-05, 4.117e-05, 3.80876e-05, 3.53984e-05, 3.30262e-05, 3.09138e-05, 2.90188e-05, 2.73078e-05, 
			0.000211294, 0.000132081, 0.00010097, 8.3369e-05, 7.16694e-05, 6.31516e-05, 5.65728e-05, 5.12802e-05, 4.6897e-05, 4.31856e-05, 3.99884e-05, 3.71962e-05, 3.47308e-05, 3.2534e-05, 3.0562e-05, 2.87806e-05
		)
}

CapTable	"metal4_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180105, 0.000104318, 7.5854e-05, 6.01084e-05, 4.97446e-05, 4.22158e-05, 3.63982e-05, 3.17142e-05, 2.7835e-05, 2.4557e-05, 2.17466e-05, 1.93113e-05, 1.71838e-05, 1.53148e-05, 1.36647e-05, 1.22034e-05, 
			0.000191407, 0.00011297, 8.27966e-05, 6.58742e-05, 5.46204e-05, 4.63966e-05, 4.00188e-05, 3.4873e-05, 3.0606e-05, 2.69982e-05, 2.39046e-05, 2.12236e-05, 1.88822e-05, 1.68247e-05, 1.50096e-05, 1.34011e-05, 
			0.000197951, 0.000118426, 8.73316e-05, 6.96896e-05, 5.78862e-05, 4.92132e-05, 4.24666e-05, 3.70128e-05, 3.24852e-05, 2.86546e-05, 2.53688e-05, 2.25208e-05, 2.00338e-05, 1.78482e-05, 1.59192e-05, 1.42117e-05, 
			0.00020231, 0.000122206, 9.05426e-05, 7.24266e-05, 6.02336e-05, 5.12452e-05, 4.42358e-05, 3.8561e-05, 3.38452e-05, 2.98534e-05, 2.64278e-05, 2.34588e-05, 2.0865e-05, 1.85869e-05, 1.65755e-05, 1.47942e-05, 
			0.000204972, 0.000124827, 9.28294e-05, 7.43994e-05, 6.19366e-05, 5.27268e-05, 4.55298e-05, 3.96936e-05, 3.48402e-05, 3.07302e-05, 2.72016e-05, 2.41424e-05, 2.14712e-05, 1.9123e-05, 1.7051e-05, 1.52167e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.90795e-06, 9.90983e-06, 1.15918e-05, 1.3069e-05, 1.44016e-05, 1.56223e-05, 1.67523e-05, 1.78041e-05, 1.87862e-05, 1.97049e-05, 2.05646e-05, 2.13693e-05, 2.21219e-05, 2.28255e-05, 2.34828e-05, 2.40956e-05, 
			9.52192e-06, 1.13823e-05, 1.3041e-05, 1.45486e-05, 1.59372e-05, 1.7228e-05, 1.84337e-05, 1.95636e-05, 2.06238e-05, 2.1619e-05, 2.2553e-05, 2.34288e-05, 2.42496e-05, 2.50182e-05, 2.57372e-05, 2.64093e-05, 
			1.10951e-05, 1.28901e-05, 1.45429e-05, 1.60756e-05, 1.75061e-05, 1.8847e-05, 2.01075e-05, 2.12935e-05, 2.24099e-05, 2.34602e-05, 2.44476e-05, 2.53751e-05, 2.62449e-05, 2.70616e-05, 2.7825e-05, 2.85397e-05, 
			1.26666e-05, 1.44387e-05, 1.60967e-05, 1.76523e-05, 1.91172e-05, 2.04983e-05, 2.18017e-05, 2.30316e-05, 2.41918e-05, 2.5285e-05, 2.63141e-05, 2.72818e-05, 2.81909e-05, 2.90433e-05, 2.98428e-05, 3.05893e-05, 
			1.42704e-05, 1.6027e-05, 1.76935e-05, 1.92717e-05, 2.0766e-05, 2.21793e-05, 2.3517e-05, 2.47821e-05, 2.5977e-05, 2.71038e-05, 2.81672e-05, 2.91665e-05, 3.0106e-05, 3.09876e-05, 3.18142e-05, 3.25881e-05
		)
}

CapTable	"metal4_C_TOP_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.42165e-06, 6.80357e-06, 7.97252e-06, 8.99931e-06, 9.92351e-06, 1.07702e-05, 1.15534e-05, 1.22821e-05, 1.29627e-05, 1.35993e-05, 1.41957e-05, 1.47536e-05, 1.52761e-05, 1.57649e-05, 1.62215e-05, 1.66486e-05, 
			6.51548e-06, 7.80073e-06, 8.94975e-06, 9.99384e-06, 1.09554e-05, 1.18483e-05, 1.26823e-05, 1.34635e-05, 1.41967e-05, 1.48853e-05, 1.55319e-05, 1.61391e-05, 1.67085e-05, 1.72422e-05, 1.77415e-05, 1.82083e-05, 
			7.58574e-06, 8.82287e-06, 9.96388e-06, 1.10221e-05, 1.20094e-05, 1.29352e-05, 1.38053e-05, 1.46245e-05, 1.53958e-05, 1.61221e-05, 1.68056e-05, 1.74483e-05, 1.80522e-05, 1.86176e-05, 1.91485e-05, 1.96448e-05, 
			8.65239e-06, 9.87013e-06, 1.10111e-05, 1.20831e-05, 1.3092e-05, 1.40436e-05, 1.4942e-05, 1.57905e-05, 1.65917e-05, 1.73474e-05, 1.80597e-05, 1.87301e-05, 1.936e-05, 1.99516e-05, 2.05056e-05, 2.1026e-05, 
			9.73758e-06, 1.09416e-05, 1.20865e-05, 1.31713e-05, 1.41988e-05, 1.5172e-05, 1.60937e-05, 1.69662e-05, 1.77914e-05, 1.85714e-05, 1.93056e-05, 1.99984e-05, 2.06499e-05, 2.12617e-05, 2.18357e-05, 2.23735e-05
		)
}

CapTable	"metal4_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177505, 0.000100826, 7.15982e-05, 5.5231e-05, 4.43906e-05, 3.65254e-05, 3.04962e-05, 2.57134e-05, 2.18306e-05, 1.86256e-05, 1.59543e-05, 1.37044e-05, 1.18029e-05, 1.01822e-05, 8.7995e-06, 7.61564e-06, 
			0.00018768, 0.000108356, 7.74464e-05, 5.99452e-05, 4.82676e-05, 3.97636e-05, 3.32344e-05, 2.80452e-05, 2.38308e-05, 2.03482e-05, 1.74409e-05, 1.49953e-05, 1.29216e-05, 1.11565e-05, 9.6489e-06, 8.35732e-06, 
			0.000193102, 0.000112749, 8.09888e-05, 6.28424e-05, 5.06906e-05, 4.18088e-05, 3.49744e-05, 2.95408e-05, 2.51178e-05, 2.14656e-05, 1.84115e-05, 1.58384e-05, 1.36575e-05, 1.18007e-05, 1.02125e-05, 8.8516e-06, 
			0.000196408, 0.000115565, 8.33258e-05, 6.47942e-05, 5.23302e-05, 4.32074e-05, 3.61746e-05, 3.05746e-05, 2.60166e-05, 2.2246e-05, 1.90929e-05, 1.64351e-05, 1.41812e-05, 1.22597e-05, 1.0617e-05, 9.20816e-06, 
			0.000198123, 0.000117345, 8.48682e-05, 6.61076e-05, 5.34548e-05, 4.41748e-05, 3.70162e-05, 3.1306e-05, 2.6653e-05, 2.2803e-05, 1.95824e-05, 1.6865e-05, 1.45599e-05, 1.25949e-05, 1.09145e-05, 9.47188e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.97758e-06, 8.81636e-06, 1.03933e-05, 1.17976e-05, 1.30773e-05, 1.42567e-05, 1.53501e-05, 1.63669e-05, 1.73122e-05, 1.81904e-05, 1.90042e-05, 1.97568e-05, 2.0452e-05, 2.10926e-05, 2.16823e-05, 2.2222e-05, 
			8.52164e-06, 1.02668e-05, 1.18488e-05, 1.33029e-05, 1.46545e-05, 1.59139e-05, 1.70909e-05, 1.81911e-05, 1.92171e-05, 2.01721e-05, 2.10586e-05, 2.18812e-05, 2.26404e-05, 2.33413e-05, 2.39856e-05, 2.45778e-05, 
			1.00572e-05, 1.17724e-05, 1.33714e-05, 1.48678e-05, 1.62719e-05, 1.75909e-05, 1.88286e-05, 1.99878e-05, 2.10704e-05, 2.20801e-05, 2.30188e-05, 2.38899e-05, 2.46945e-05, 2.54372e-05, 2.61207e-05, 2.67476e-05, 
			1.16194e-05, 1.33367e-05, 1.49591e-05, 1.64927e-05, 1.79407e-05, 1.93059e-05, 2.05898e-05, 2.17942e-05, 2.29221e-05, 2.39727e-05, 2.49507e-05, 2.58572e-05, 2.66961e-05, 2.74691e-05, 2.81817e-05, 2.88359e-05, 
			1.32313e-05, 1.49534e-05, 1.66013e-05, 1.81672e-05, 1.96518e-05, 2.1053e-05, 2.23738e-05, 2.36141e-05, 2.47755e-05, 2.58583e-05, 2.6866e-05, 2.78003e-05, 2.8664e-05, 2.94615e-05, 3.01951e-05, 3.08682e-05
		)
}

CapTable	"metal4_C_TOP_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.55042e-06, 9.56884e-06, 1.13057e-05, 1.28536e-05, 1.42604e-05, 1.55557e-05, 1.67556e-05, 1.78696e-05, 1.89044e-05, 1.98647e-05, 2.0755e-05, 2.15789e-05, 2.23392e-05, 2.30387e-05, 2.3681e-05, 2.42707e-05, 
			9.22736e-06, 1.11492e-05, 1.28936e-05, 1.44956e-05, 1.59792e-05, 1.73626e-05, 1.8653e-05, 1.98563e-05, 2.09785e-05, 2.20227e-05, 2.29921e-05, 2.38889e-05, 2.47182e-05, 2.54822e-05, 2.6184e-05, 2.68284e-05, 
			1.09106e-05, 1.2799e-05, 1.456e-05, 1.62066e-05, 1.77489e-05, 1.91946e-05, 2.05493e-05, 2.18172e-05, 2.30019e-05, 2.41048e-05, 2.51289e-05, 2.60773e-05, 2.69541e-05, 2.77625e-05, 2.85063e-05, 2.91885e-05, 
			1.26266e-05, 1.45142e-05, 1.63003e-05, 1.79857e-05, 1.9574e-05, 2.10698e-05, 2.24752e-05, 2.3792e-05, 2.50219e-05, 2.6169e-05, 2.72344e-05, 2.82218e-05, 2.91343e-05, 2.99757e-05, 3.07496e-05, 3.14602e-05, 
			1.43977e-05, 1.62924e-05, 1.81023e-05, 1.98214e-05, 2.14486e-05, 2.29846e-05, 2.44287e-05, 2.57829e-05, 2.70486e-05, 2.82285e-05, 2.93255e-05, 3.03426e-05, 3.12818e-05, 3.21487e-05, 3.2946e-05, 3.36774e-05
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
			6.0127e-06, 7.7591e-06, 9.3065e-06, 1.07054e-05, 1.19785e-05, 1.3132e-05, 1.41786e-05, 1.51189e-05, 1.59611e-05, 1.67154e-05, 1.73827e-05, 1.79776e-05, 1.84988e-05, 1.89622e-05, 1.93696e-05, 1.97266e-05, 
			7.6012e-06, 9.322e-06, 1.0913e-05, 1.23814e-05, 1.37318e-05, 1.4966e-05, 1.6087e-05, 1.71027e-05, 1.8012e-05, 1.88291e-05, 1.95569e-05, 2.01993e-05, 2.07712e-05, 2.12754e-05, 2.17189e-05, 2.21076e-05, 
			9.2291e-06, 1.09602e-05, 1.25865e-05, 1.41049e-05, 1.55078e-05, 1.67945e-05, 1.79688e-05, 1.9029e-05, 1.99863e-05, 2.084e-05, 2.16052e-05, 2.22844e-05, 2.28857e-05, 2.34158e-05, 2.38832e-05, 2.42942e-05, 
			1.09081e-05, 1.26586e-05, 1.4318e-05, 1.58723e-05, 1.73148e-05, 1.86388e-05, 1.98493e-05, 2.09462e-05, 2.19312e-05, 2.2817e-05, 2.36073e-05, 2.43092e-05, 2.49308e-05, 2.54801e-05, 2.59647e-05, 2.63909e-05, 
			1.26415e-05, 1.44077e-05, 1.60919e-05, 1.76757e-05, 1.9145e-05, 2.04986e-05, 2.17321e-05, 2.28524e-05, 2.38624e-05, 2.47677e-05, 2.5575e-05, 2.62932e-05, 2.69301e-05, 2.74931e-05, 2.79901e-05, 2.84271e-05
		)
}

CapTable	"metal4_C_TOP_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.18477e-05, 1.53943e-05, 1.85361e-05, 2.1358e-05, 2.38992e-05, 2.61889e-05, 2.82435e-05, 3.0082e-05, 3.17199e-05, 3.31733e-05, 3.44594e-05, 3.55922e-05, 3.65913e-05, 3.74678e-05, 3.82353e-05, 3.89078e-05, 
			1.5156e-05, 1.86988e-05, 2.19466e-05, 2.49134e-05, 2.76118e-05, 3.00544e-05, 3.22538e-05, 3.42253e-05, 3.59854e-05, 3.75491e-05, 3.89337e-05, 4.01594e-05, 4.12374e-05, 4.21862e-05, 4.30185e-05, 4.37503e-05, 
			1.86155e-05, 2.21916e-05, 2.55197e-05, 2.85807e-05, 3.13759e-05, 3.39129e-05, 3.62016e-05, 3.82551e-05, 4.00897e-05, 4.17247e-05, 4.31725e-05, 4.44539e-05, 4.5584e-05, 4.65792e-05, 4.74543e-05, 4.82212e-05, 
			2.22095e-05, 2.58354e-05, 2.92212e-05, 3.23465e-05, 3.5208e-05, 3.78068e-05, 4.01541e-05, 4.22618e-05, 4.41497e-05, 4.58292e-05, 4.7321e-05, 4.86405e-05, 4.98065e-05, 5.08345e-05, 5.1737e-05, 5.25295e-05, 
			2.59291e-05, 2.95815e-05, 3.30079e-05, 3.61777e-05, 3.90812e-05, 4.17216e-05, 4.41107e-05, 4.62566e-05, 4.81785e-05, 4.98912e-05, 5.14131e-05, 5.27616e-05, 5.39516e-05, 5.50003e-05, 5.5921e-05, 5.67315e-05
		)
}

CapTable	"metal4_C_LATERAL_55MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183054, 0.000108205, 8.06052e-05, 6.56632e-05, 5.6045e-05, 4.9203e-05, 4.40104e-05, 3.98884e-05, 3.65068e-05, 3.36628e-05, 3.1224e-05, 2.91e-05, 2.72274e-05, 2.55592e-05, 2.40606e-05, 2.2705e-05, 
			0.000195428, 0.000117974, 8.87276e-05, 7.26746e-05, 6.22284e-05, 5.47462e-05, 4.90404e-05, 4.4495e-05, 4.07566e-05, 3.76064e-05, 3.49014e-05, 3.25434e-05, 3.04628e-05, 2.86084e-05, 2.6942e-05, 2.5434e-05, 
			0.000203114, 0.000124614, 9.44942e-05, 7.77652e-05, 6.68064e-05, 5.89042e-05, 5.28516e-05, 4.80138e-05, 4.40244e-05, 4.06562e-05, 3.77592e-05, 3.52306e-05, 3.29972e-05, 3.10054e-05, 2.92142e-05, 2.75924e-05, 
			0.000208682, 0.00012964, 9.8982e-05, 8.18044e-05, 7.0474e-05, 6.22682e-05, 5.59588e-05, 5.09004e-05, 4.67192e-05, 4.31822e-05, 4.01356e-05, 3.74732e-05, 3.51192e-05, 3.30182e-05, 3.11276e-05, 2.9415e-05, 
			0.00021261, 0.000133547, 0.000102571, 8.50892e-05, 7.34928e-05, 6.50636e-05, 5.85598e-05, 5.33298e-05, 4.89978e-05, 4.53268e-05, 4.21604e-05, 3.93904e-05, 3.6939e-05, 3.47492e-05, 3.27776e-05, 3.09906e-05
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

CapTable	"metal4_C_TOP_GP_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.73499e-06, 7.16723e-06, 8.36552e-06, 9.41051e-06, 1.03476e-05, 1.12034e-05, 1.19944e-05, 1.27314e-05, 1.34219e-05, 1.40698e-05, 1.4679e-05, 1.52526e-05, 1.57929e-05, 1.63013e-05, 1.67804e-05, 1.72303e-05, 
			6.84484e-06, 8.16283e-06, 9.33185e-06, 1.03877e-05, 1.13567e-05, 1.22552e-05, 1.30946e-05, 1.38829e-05, 1.46251e-05, 1.53253e-05, 1.59856e-05, 1.66088e-05, 1.71971e-05, 1.77524e-05, 1.82762e-05, 1.87693e-05, 
			7.91925e-06, 9.17733e-06, 1.03304e-05, 1.13948e-05, 1.2386e-05, 1.3316e-05, 1.41905e-05, 1.50156e-05, 1.57956e-05, 1.65335e-05, 1.72312e-05, 1.78919e-05, 1.85155e-05, 1.91054e-05, 1.96618e-05, 2.01865e-05, 
			8.98222e-06, 1.02119e-05, 1.13584e-05, 1.24325e-05, 1.34431e-05, 1.43967e-05, 1.52997e-05, 1.61541e-05, 1.6964e-05, 1.77318e-05, 1.84596e-05, 1.91494e-05, 1.98017e-05, 2.04184e-05, 2.10007e-05, 2.155e-05, 
			1.00556e-05, 1.12657e-05, 1.24128e-05, 1.34975e-05, 1.45248e-05, 1.54991e-05, 1.64242e-05, 1.73029e-05, 1.81382e-05, 1.89303e-05, 1.96829e-05, 2.03959e-05, 2.1071e-05, 2.17091e-05, 2.23127e-05, 2.28823e-05
		)
}

CapTable	"metal4_C_LATERAL_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181524, 0.000106208, 7.81784e-05, 6.28328e-05, 5.2833e-05, 4.56306e-05, 4.00992e-05, 3.56604e-05, 3.19848e-05, 2.88702e-05, 2.61842e-05, 2.38368e-05, 2.17634e-05, 1.99168e-05, 1.82615e-05, 1.67695e-05, 
			0.000193384, 0.000115444, 8.57358e-05, 6.92424e-05, 5.83772e-05, 5.04986e-05, 4.44202e-05, 3.95276e-05, 3.54678e-05, 3.20224e-05, 2.90484e-05, 2.64474e-05, 2.41492e-05, 2.21018e-05, 2.0266e-05, 1.8611e-05, 
			0.000200524, 0.000121515, 9.09052e-05, 7.37064e-05, 6.23012e-05, 5.39772e-05, 4.75294e-05, 4.23244e-05, 3.79962e-05, 3.43174e-05, 3.11386e-05, 2.83562e-05, 2.58958e-05, 2.37032e-05, 2.17364e-05, 1.9963e-05, 
			0.00020551, 0.000125935, 9.47632e-05, 7.70934e-05, 6.5296e-05, 5.6651e-05, 4.9931e-05, 4.44924e-05, 3.99616e-05, 3.61052e-05, 3.27692e-05, 2.9847e-05, 2.72616e-05, 2.49564e-05, 2.28878e-05, 2.1022e-05, 
			0.00020882, 0.000129206, 9.76968e-05, 7.97058e-05, 6.76284e-05, 5.8748e-05, 5.18244e-05, 4.62066e-05, 4.1519e-05, 3.7524e-05, 3.4065e-05, 3.10328e-05, 2.83488e-05, 2.59546e-05, 2.38058e-05, 2.18668e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_55MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.08786e-05, 1.33868e-05, 1.54107e-05, 1.71242e-05, 1.86233e-05, 1.99651e-05, 2.11861e-05, 2.23098e-05, 2.3353e-05, 2.43273e-05, 2.52417e-05, 2.61034e-05, 2.69172e-05, 2.76878e-05, 2.84187e-05, 2.91127e-05, 
			1.26956e-05, 1.49202e-05, 1.68324e-05, 1.85127e-05, 2.0021e-05, 2.13946e-05, 2.26597e-05, 2.3835e-05, 2.49337e-05, 2.59658e-05, 2.69388e-05, 2.7859e-05, 2.87308e-05, 2.95586e-05, 3.03454e-05, 3.10941e-05, 
			1.4378e-05, 1.6435e-05, 1.82658e-05, 1.99165e-05, 2.14226e-05, 2.28116e-05, 2.41027e-05, 2.53105e-05, 2.6446e-05, 2.75171e-05, 2.85308e-05, 2.94922e-05, 3.04055e-05, 3.12741e-05, 3.21014e-05, 3.289e-05, 
			1.5979e-05, 1.79324e-05, 1.9707e-05, 2.13326e-05, 2.28346e-05, 2.42327e-05, 2.55414e-05, 2.67725e-05, 2.7935e-05, 2.90356e-05, 3.00799e-05, 3.10728e-05, 3.2018e-05, 3.29184e-05, 3.37772e-05, 3.45966e-05, 
			1.7548e-05, 1.94196e-05, 2.11508e-05, 2.27568e-05, 2.42548e-05, 2.56585e-05, 2.69801e-05, 2.82288e-05, 2.94118e-05, 3.05353e-05, 3.16037e-05, 3.26213e-05, 3.35916e-05, 3.45174e-05, 3.54012e-05, 3.62456e-05
		)
}

CapTable	"metal4_C_TOP_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.91785e-06, 9.99607e-06, 1.17737e-05, 1.33449e-05, 1.47747e-05, 1.60858e-05, 1.72989e-05, 1.84283e-05, 1.94803e-05, 2.04604e-05, 2.13717e-05, 2.22239e-05, 2.30126e-05, 2.37433e-05, 2.44198e-05, 2.50446e-05, 
			9.61781e-06, 1.15817e-05, 1.33547e-05, 1.49754e-05, 1.64738e-05, 1.78671e-05, 1.91681e-05, 2.03891e-05, 2.15279e-05, 2.2594e-05, 2.35878e-05, 2.45129e-05, 2.5373e-05, 2.61716e-05, 2.69107e-05, 2.75941e-05, 
			1.13106e-05, 1.32308e-05, 1.50108e-05, 1.66679e-05, 1.82193e-05, 1.96752e-05, 2.10412e-05, 2.23218e-05, 2.35265e-05, 2.46518e-05, 2.57022e-05, 2.66815e-05, 2.7593e-05, 2.8438e-05, 2.92222e-05, 2.99484e-05, 
			1.30288e-05, 1.49364e-05, 1.67319e-05, 1.84233e-05, 2.00218e-05, 2.15249e-05, 2.2942e-05, 2.42738e-05, 2.55236e-05, 2.66938e-05, 2.77881e-05, 2.88084e-05, 2.97576e-05, 3.06399e-05, 3.14587e-05, 3.22143e-05, 
			1.47925e-05, 1.66978e-05, 1.85155e-05, 2.02389e-05, 2.18698e-05, 2.3415e-05, 2.48709e-05, 2.6241e-05, 2.75278e-05, 2.87345e-05, 2.98613e-05, 3.09136e-05, 3.1894e-05, 3.28038e-05, 3.36471e-05, 3.44272e-05
		)
}

CapTable	"metal4_C_LATERAL_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180501, 0.000104848, 7.65072e-05, 6.08748e-05, 5.06124e-05, 4.3173e-05, 3.74318e-05, 3.2811e-05, 2.89814e-05, 2.57408e-05, 2.29558e-05, 2.0534e-05, 1.84111e-05, 1.6537e-05, 1.48746e-05, 1.33935e-05, 
			0.000191966, 0.00011367, 8.36292e-05, 6.6827e-05, 5.56806e-05, 4.75502e-05, 4.12508e-05, 3.6168e-05, 3.195e-05, 2.83772e-05, 2.53052e-05, 2.26346e-05, 2.02928e-05, 1.82254e-05, 1.63915e-05, 1.47585e-05, 
			0.000198683, 0.000119305, 8.83472e-05, 7.08286e-05, 5.91336e-05, 5.05528e-05, 4.38824e-05, 3.8489e-05, 3.40058e-05, 3.02056e-05, 2.69364e-05, 2.40934e-05, 2.15992e-05, 1.93987e-05, 1.74453e-05, 1.57052e-05, 
			0.000203224, 0.000123269, 9.17434e-05, 7.37496e-05, 6.16616e-05, 5.27622e-05, 4.58244e-05, 4.02042e-05, 3.55278e-05, 3.15604e-05, 2.81452e-05, 2.5174e-05, 2.25682e-05, 2.0267e-05, 1.82248e-05, 1.6407e-05, 
			0.000206072, 0.000126076, 9.42118e-05, 7.58998e-05, 6.3538e-05, 5.44106e-05, 4.7279e-05, 4.1491e-05, 3.66702e-05, 3.25766e-05, 2.9053e-05, 2.59856e-05, 2.3294e-05, 2.09184e-05, 1.88097e-05, 1.69315e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.02561e-06, 8.76257e-06, 1.02105e-05, 1.14737e-05, 1.26076e-05, 1.36442e-05, 1.46036e-05, 1.54979e-05, 1.63351e-05, 1.71215e-05, 1.78615e-05, 1.85578e-05, 1.92133e-05, 1.98307e-05, 2.04109e-05, 2.09575e-05, 
			8.39156e-06, 9.98837e-06, 1.14014e-05, 1.26796e-05, 1.38541e-05, 1.49448e-05, 1.59648e-05, 1.69223e-05, 1.7824e-05, 1.86743e-05, 1.94771e-05, 2.0235e-05, 2.09498e-05, 2.16237e-05, 2.22585e-05, 2.28569e-05, 
			9.70575e-06, 1.12323e-05, 1.26304e-05, 1.39222e-05, 1.5126e-05, 1.62546e-05, 1.73181e-05, 1.8322e-05, 1.9271e-05, 2.01686e-05, 2.10177e-05, 2.18196e-05, 2.25788e-05, 2.32944e-05, 2.397e-05, 2.46068e-05, 
			1.10058e-05, 1.25019e-05, 1.38954e-05, 1.52011e-05, 1.64301e-05, 1.75906e-05, 1.86884e-05, 1.97292e-05, 2.07156e-05, 2.16506e-05, 2.25362e-05, 2.33738e-05, 2.41668e-05, 2.49161e-05, 2.56239e-05, 2.62918e-05, 
			1.23234e-05, 1.37975e-05, 1.51924e-05, 1.65127e-05, 1.77639e-05, 1.89507e-05, 2.00778e-05, 2.11486e-05, 2.21646e-05, 2.31304e-05, 2.40451e-05, 2.49123e-05, 2.57332e-05, 2.651e-05, 2.72429e-05, 2.79352e-05
		)
}

CapTable	"metal4_C_TOP_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.2239e-05, 1.58582e-05, 1.90496e-05, 2.19071e-05, 2.44753e-05, 2.6788e-05, 2.88654e-05, 3.07281e-05, 3.23923e-05, 3.38753e-05, 3.51945e-05, 3.63642e-05, 3.74014e-05, 3.83203e-05, 3.91314e-05, 3.98485e-05, 
			1.55859e-05, 1.91805e-05, 2.24661e-05, 2.54576e-05, 2.81757e-05, 3.06374e-05, 3.28562e-05, 3.48512e-05, 3.66381e-05, 3.82349e-05, 3.96567e-05, 4.09219e-05, 4.20456e-05, 4.30421e-05, 4.39238e-05, 4.47045e-05, 
			1.90677e-05, 2.26803e-05, 2.60326e-05, 2.91108e-05, 3.19215e-05, 3.44735e-05, 3.67809e-05, 3.88582e-05, 4.07226e-05, 4.23917e-05, 4.38813e-05, 4.52085e-05, 4.63883e-05, 4.74354e-05, 4.83644e-05, 4.91897e-05, 
			2.26698e-05, 2.63188e-05, 2.97199e-05, 3.28567e-05, 3.57287e-05, 3.83408e-05, 4.07079e-05, 4.28413e-05, 4.47601e-05, 4.64797e-05, 4.80166e-05, 4.93863e-05, 5.06059e-05, 5.16926e-05, 5.26552e-05, 5.35091e-05, 
			2.63847e-05, 3.00524e-05, 3.34864e-05, 3.66628e-05, 3.95754e-05, 4.22293e-05, 4.46377e-05, 4.68125e-05, 4.87699e-05, 5.05253e-05, 5.20952e-05, 5.3497e-05, 5.47487e-05, 5.58599e-05, 5.68455e-05, 5.77221e-05
		)
}

CapTable	"metal4_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177821, 0.000101262, 7.21488e-05, 5.58874e-05, 4.51418e-05, 3.73568e-05, 3.1395e-05, 2.6663e-05, 2.28166e-05, 1.96326e-05, 1.69713e-05, 1.47174e-05, 1.27992e-05, 1.11623e-05, 9.7502e-06, 8.53178e-06, 
			0.000188149, 0.000108958, 7.8174e-05, 6.07898e-05, 4.92146e-05, 4.07964e-05, 3.43328e-05, 2.91962e-05, 2.50114e-05, 2.155e-05, 1.86443e-05, 1.61858e-05, 1.40952e-05, 1.22993e-05, 1.07539e-05, 9.41914e-06, 
			0.00019374, 0.00011353, 8.1903e-05, 6.38786e-05, 5.18304e-05, 4.30344e-05, 3.62646e-05, 3.0878e-05, 2.64808e-05, 2.2835e-05, 1.97803e-05, 1.71875e-05, 1.49762e-05, 1.30796e-05, 1.14459e-05, 1.00336e-05, 
			0.000197229, 0.000116535, 8.4433e-05, 6.602e-05, 5.366e-05, 4.46144e-05, 3.76444e-05, 3.20818e-05, 2.754e-05, 2.37742e-05, 2.06058e-05, 1.79197e-05, 1.56265e-05, 1.36582e-05, 1.19607e-05, 1.0492e-05, 
			0.000199135, 0.000118506, 8.61662e-05, 6.75226e-05, 5.4967e-05, 4.57594e-05, 3.86486e-05, 3.29718e-05, 2.8327e-05, 2.4468e-05, 2.12228e-05, 1.84695e-05, 1.61167e-05, 1.40955e-05, 1.23525e-05, 1.08424e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.11375e-06, 7.69573e-06, 9.0403e-06, 1.02355e-05, 1.13154e-05, 1.23129e-05, 1.32398e-05, 1.41024e-05, 1.49076e-05, 1.56584e-05, 1.63595e-05, 1.70084e-05, 1.76132e-05, 1.81752e-05, 1.86951e-05, 1.91764e-05, 
			7.41539e-06, 8.9019e-06, 1.02381e-05, 1.14653e-05, 1.2603e-05, 1.36656e-05, 1.46608e-05, 1.55897e-05, 1.64622e-05, 1.72768e-05, 1.8039e-05, 1.87497e-05, 1.94111e-05, 2.00257e-05, 2.05958e-05, 2.11229e-05, 
			8.6972e-06, 1.01412e-05, 1.1486e-05, 1.27435e-05, 1.39225e-05, 1.50308e-05, 1.60738e-05, 1.70557e-05, 1.79741e-05, 1.88364e-05, 1.96439e-05, 2.03969e-05, 2.10988e-05, 2.1751e-05, 2.23563e-05, 2.29162e-05, 
			9.9842e-06, 1.14262e-05, 1.27847e-05, 1.40701e-05, 1.52806e-05, 1.6427e-05, 1.75075e-05, 1.85264e-05, 1.94844e-05, 2.03834e-05, 2.12251e-05, 2.20113e-05, 2.27434e-05, 2.34243e-05, 2.40557e-05, 2.46407e-05, 
			1.13105e-05, 1.27496e-05, 1.41237e-05, 1.54323e-05, 1.66752e-05, 1.78494e-05, 1.89613e-05, 2.00111e-05, 2.09989e-05, 2.19265e-05, 2.27949e-05, 2.36063e-05, 2.4362e-05, 2.50643e-05, 2.57171e-05, 2.63216e-05
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
			5.2238e-06, 6.7208e-06, 8.0413e-06, 9.231e-06, 1.03123e-05, 1.12928e-05, 1.21809e-05, 1.29816e-05, 1.37007e-05, 1.43494e-05, 1.49238e-05, 1.54418e-05, 1.59024e-05, 1.63062e-05, 1.66702e-05, 1.69923e-05, 
			6.5675e-06, 8.0321e-06, 9.3809e-06, 1.06231e-05, 1.1765e-05, 1.28086e-05, 1.37621e-05, 1.4623e-05, 1.54033e-05, 1.61003e-05, 1.67301e-05, 1.72928e-05, 1.77904e-05, 1.82378e-05, 1.86353e-05, 1.89879e-05, 
			7.9341e-06, 9.3977e-06, 1.07714e-05, 1.20506e-05, 1.32324e-05, 1.43182e-05, 1.53135e-05, 1.62129e-05, 1.70319e-05, 1.77695e-05, 1.84271e-05, 1.90211e-05, 1.95514e-05, 2.00238e-05, 2.04441e-05, 2.08164e-05, 
			9.3346e-06, 1.08084e-05, 1.22021e-05, 1.35103e-05, 1.47223e-05, 1.58425e-05, 1.68632e-05, 1.7797e-05, 1.86426e-05, 1.94015e-05, 2.00884e-05, 2.07037e-05, 2.12539e-05, 2.17433e-05, 2.21808e-05, 2.25699e-05, 
			1.07743e-05, 1.22544e-05, 1.36654e-05, 1.49956e-05, 1.62286e-05, 1.73713e-05, 1.84187e-05, 1.93689e-05, 2.02356e-05, 2.1018e-05, 2.17216e-05, 2.23528e-05, 2.29168e-05, 2.34216e-05, 2.38717e-05, 2.42723e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_16MAX" {
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

CapTable	"metal3_C_LATERAL_16MAX" {
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

CapTable	"metal3_C_BOTTOM_GP_15MAX" {
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

CapTable	"metal3_C_TOP_GP_15MAX" {
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

CapTable	"metal3_C_LATERAL_15MAX" {
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

CapTable	"metal3_C_BOTTOM_GP_14MAX" {
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

CapTable	"metal3_C_TOP_GP_14MAX" {
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

CapTable	"metal3_C_LATERAL_14MAX" {
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

CapTable	"metal3_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal3_C_TOP_GP_13MAX" {
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

CapTable	"metal3_C_LATERAL_13MAX" {
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

CapTable	"metal3_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178305, 0.000101938, 7.30112e-05, 5.69244e-05, 4.63362e-05, 3.86898e-05, 3.28456e-05, 2.82106e-05, 2.44394e-05, 2.1314e-05, 1.86882e-05, 1.64586e-05, 1.45494e-05, 1.29033e-05, 1.14759e-05, 1.0232e-05, 
			0.000188842, 0.000109862, 7.92814e-05, 6.20866e-05, 5.06828e-05, 4.24148e-05, 3.608e-05, 3.10464e-05, 2.69442e-05, 2.35394e-05, 2.06744e-05, 1.82375e-05, 1.61473e-05, 1.43421e-05, 1.2774e-05, 1.1405e-05, 
			0.000194671, 0.000114683, 8.32716e-05, 6.54474e-05, 5.35798e-05, 4.49392e-05, 3.83026e-05, 3.30186e-05, 2.87046e-05, 2.51178e-05, 2.20946e-05, 1.9519e-05, 1.73061e-05, 1.53919e-05, 1.37261e-05, 1.22698e-05, 
			0.000198415, 0.000117953, 8.60754e-05, 6.78716e-05, 5.56958e-05, 4.68106e-05, 3.99702e-05, 3.45132e-05, 3.00502e-05, 2.63336e-05, 2.31958e-05, 2.05184e-05, 1.82146e-05, 1.62186e-05, 1.44792e-05, 1.29562e-05, 
			0.000200594, 0.000120205, 8.80944e-05, 6.96636e-05, 5.72914e-05, 4.8244e-05, 4.12636e-05, 3.5683e-05, 3.11114e-05, 2.72984e-05, 2.40746e-05, 2.132e-05, 1.89463e-05, 1.68871e-05, 1.50904e-05, 1.35151e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.51946e-05, 1.93256e-05, 2.28451e-05, 2.59175e-05, 2.86301e-05, 3.10384e-05, 3.31827e-05, 3.50944e-05, 3.68005e-05, 3.83253e-05, 3.969e-05, 4.09129e-05, 4.20112e-05, 4.29998e-05, 4.38917e-05, 4.46986e-05, 
			1.88154e-05, 2.27532e-05, 2.6252e-05, 2.93698e-05, 3.21555e-05, 3.4647e-05, 3.68764e-05, 3.88723e-05, 4.06607e-05, 4.22644e-05, 4.3705e-05, 4.50009e-05, 4.61689e-05, 4.72244e-05, 4.81803e-05, 4.90485e-05, 
			2.24168e-05, 2.6243e-05, 2.97046e-05, 3.28228e-05, 3.56263e-05, 3.81463e-05, 4.04102e-05, 4.24443e-05, 4.4273e-05, 4.59186e-05, 4.74018e-05, 4.87405e-05, 4.99515e-05, 5.10496e-05, 5.20477e-05, 5.29573e-05, 
			2.6007e-05, 2.9755e-05, 3.31702e-05, 3.62648e-05, 3.90604e-05, 4.15832e-05, 4.38569e-05, 4.59068e-05, 4.77554e-05, 4.94245e-05, 5.09336e-05, 5.23002e-05, 5.35405e-05, 5.46686e-05, 5.56977e-05, 5.66386e-05, 
			2.9591e-05, 3.3249e-05, 3.66088e-05, 3.96674e-05, 4.24414e-05, 4.49512e-05, 4.72208e-05, 4.92737e-05, 5.1131e-05, 5.28127e-05, 5.43377e-05, 5.57232e-05, 5.69846e-05, 5.81354e-05, 5.91883e-05, 6.01542e-05
		)
}

CapTable	"metal3_C_LATERAL_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179657, 0.000103787, 7.53406e-05, 5.9713e-05, 4.95592e-05, 4.23174e-05, 3.68452e-05, 3.25476e-05, 2.90788e-05, 2.6221e-05, 2.38288e-05, 2.18008e-05, 2.0063e-05, 1.85599e-05, 1.72494e-05, 1.60985e-05, 
			0.000190803, 0.00011238, 8.2344e-05, 6.56722e-05, 5.47626e-05, 4.69544e-05, 4.10414e-05, 3.63898e-05, 3.26292e-05, 2.95264e-05, 2.69244e-05, 2.4714e-05, 2.28158e-05, 2.117e-05, 1.97315e-05, 1.84647e-05, 
			0.000197322, 0.000117948, 8.71374e-05, 6.98882e-05, 5.85618e-05, 5.04232e-05, 4.42458e-05, 3.93764e-05, 3.54322e-05, 3.21712e-05, 2.94308e-05, 2.70978e-05, 2.50894e-05, 2.33438e-05, 2.1814e-05, 2.04634e-05, 
			0.000201836, 0.000122041, 9.08118e-05, 7.32262e-05, 6.16306e-05, 5.32808e-05, 4.69288e-05, 4.19112e-05, 3.7839e-05, 3.4465e-05, 3.16236e-05, 2.9199e-05, 2.71068e-05, 2.52842e-05, 2.36826e-05, 2.2265e-05, 
			0.000204858, 0.000125181, 9.37592e-05, 7.59826e-05, 6.42216e-05, 5.57368e-05, 4.92674e-05, 4.41448e-05, 3.99788e-05, 3.65202e-05, 3.36016e-05, 3.11054e-05, 2.89464e-05, 2.70612e-05, 2.54008e-05, 2.39272e-05
		)
}

CapTable	"metal3_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177884, 0.000101356, 7.22746e-05, 5.604e-05, 4.53146e-05, 3.75438e-05, 3.15902e-05, 2.68616e-05, 2.3013e-05, 1.98263e-05, 1.71546e-05, 1.48935e-05, 1.29659e-05, 1.13135e-05, 9.89032e-06, 8.66004e-06, 
			0.000188224, 0.000109065, 7.83092e-05, 6.09482e-05, 4.93908e-05, 4.0985e-05, 3.45298e-05, 2.93944e-05, 2.52094e-05, 2.17402e-05, 1.88283e-05, 1.63611e-05, 1.42555e-05, 1.24484e-05, 1.08903e-05, 9.54204e-06, 
			0.000193831, 0.000113647, 8.20452e-05, 6.40414e-05, 5.20096e-05, 4.3223e-05, 3.64604e-05, 3.10714e-05, 2.66738e-05, 2.30236e-05, 1.99562e-05, 1.73545e-05, 1.51317e-05, 1.32223e-05, 1.15742e-05, 1.01464e-05, 
			0.00019733, 0.000116658, 8.45786e-05, 6.6186e-05, 5.38396e-05, 4.4804e-05, 3.78362e-05, 3.22748e-05, 2.77304e-05, 2.3954e-05, 2.07772e-05, 1.80799e-05, 1.57737e-05, 1.37903e-05, 1.20772e-05, 1.05918e-05, 
			0.000199245, 0.000118637, 8.63158e-05, 6.76906e-05, 5.51446e-05, 4.59468e-05, 3.88404e-05, 3.31584e-05, 2.851e-05, 2.46432e-05, 2.13878e-05, 1.8621e-05, 1.62531e-05, 1.42155e-05, 1.2454e-05, 1.09259e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.31285e-05, 1.68895e-05, 2.0171e-05, 2.30891e-05, 2.57063e-05, 2.80596e-05, 3.01758e-05, 3.20766e-05, 3.37818e-05, 3.53097e-05, 3.66766e-05, 3.78998e-05, 3.89933e-05, 3.99708e-05, 4.08448e-05, 4.16273e-05, 
			1.66036e-05, 2.0307e-05, 2.36623e-05, 2.67024e-05, 2.9459e-05, 3.1954e-05, 3.42075e-05, 3.62384e-05, 3.80665e-05, 3.97085e-05, 4.11822e-05, 4.25041e-05, 4.36895e-05, 4.47514e-05, 4.57038e-05, 4.65573e-05, 
			2.01795e-05, 2.38772e-05, 2.72832e-05, 3.03992e-05, 3.32384e-05, 3.58189e-05, 3.81569e-05, 4.02692e-05, 4.21751e-05, 4.38916e-05, 4.54355e-05, 4.68234e-05, 4.80706e-05, 4.91901e-05, 5.01961e-05, 5.10992e-05, 
			2.38523e-05, 2.75681e-05, 3.10089e-05, 3.41732e-05, 3.70665e-05, 3.97033e-05, 4.20975e-05, 4.42664e-05, 4.62269e-05, 4.79963e-05, 4.95908e-05, 5.10273e-05, 5.23195e-05, 5.34818e-05, 5.45284e-05, 5.54698e-05, 
			2.76174e-05, 3.13337e-05, 3.4797e-05, 3.79907e-05, 4.092e-05, 4.35937e-05, 4.60273e-05, 4.82361e-05, 5.02365e-05, 5.20451e-05, 5.36776e-05, 5.51503e-05, 5.64774e-05, 5.76737e-05, 5.87512e-05, 5.97226e-05
		)
}

CapTable	"metal3_C_TOP_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.7385e-06, 4.80971e-06, 5.74782e-06, 6.58852e-06, 7.34777e-06, 8.0352e-06, 8.65752e-06, 9.21963e-06, 9.72661e-06, 1.0183e-05, 1.05939e-05, 1.09624e-05, 1.12932e-05, 1.159e-05, 1.18561e-05, 1.20941e-05, 
			4.67061e-06, 5.7032e-06, 6.65026e-06, 7.51993e-06, 8.3159e-06, 9.04256e-06, 9.70416e-06, 1.03053e-05, 1.08492e-05, 1.13412e-05, 1.1785e-05, 1.21849e-05, 1.25445e-05, 1.28684e-05, 1.31592e-05, 1.34212e-05, 
			5.60687e-06, 6.62922e-06, 7.58522e-06, 8.47239e-06, 9.29068e-06, 1.00418e-05, 1.07283e-05, 1.13546e-05, 1.19231e-05, 1.24384e-05, 1.29046e-05, 1.33257e-05, 1.37053e-05, 1.40482e-05, 1.4357e-05, 1.46359e-05, 
			6.55813e-06, 7.57894e-06, 8.54173e-06, 9.44117e-06, 1.02757e-05, 1.10439e-05, 1.17486e-05, 1.23924e-05, 1.29787e-05, 1.3511e-05, 1.3994e-05, 1.44307e-05, 1.48262e-05, 1.51839e-05, 1.55063e-05, 1.57978e-05, 
			7.52964e-06, 8.54687e-06, 9.51464e-06, 1.04227e-05, 1.12686e-05, 1.20493e-05, 1.27671e-05, 1.34243e-05, 1.40241e-05, 1.45697e-05, 1.50656e-05, 1.55151e-05, 1.59229e-05, 1.62914e-05, 1.66252e-05, 1.69267e-05
		)
}

CapTable	"metal3_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176964, 0.000100086, 7.06742e-05, 5.4141e-05, 4.31572e-05, 3.5174e-05, 2.90562e-05, 2.42108e-05, 2.02906e-05, 1.70732e-05, 1.44059e-05, 1.21801e-05, 1.03134e-05, 8.7409e-06, 7.41352e-06, 6.2909e-06, 
			0.000186862, 0.000107319, 7.62062e-05, 5.85274e-05, 4.67008e-05, 3.80792e-05, 3.14636e-05, 2.62204e-05, 2.19772e-05, 1.8494e-05, 1.56061e-05, 1.31958e-05, 1.11726e-05, 9.46956e-06, 8.0309e-06, 6.81358e-06, 
			0.000191983, 0.000111397, 7.94276e-05, 6.11034e-05, 4.88066e-05, 3.9815e-05, 3.29066e-05, 2.7428e-05, 2.29922e-05, 1.93504e-05, 1.63294e-05, 1.38067e-05, 1.16903e-05, 9.90702e-06, 8.40074e-06, 7.12588e-06, 
			0.00019497, 0.000113892, 8.14468e-05, 6.27434e-05, 5.01468e-05, 4.09248e-05, 3.38322e-05, 2.82038e-05, 2.36454e-05, 1.99002e-05, 1.67941e-05, 1.41993e-05, 1.20213e-05, 1.0186e-05, 8.6357e-06, 7.3232e-06, 
			0.000196365, 0.000115357, 8.2685e-05, 6.3767e-05, 5.09924e-05, 4.16314e-05, 3.4426e-05, 2.87018e-05, 2.40634e-05, 2.02528e-05, 1.70906e-05, 1.44488e-05, 1.22308e-05, 1.03618e-05, 8.7825e-06, 7.4467e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.23485e-05, 1.59475e-05, 1.91039e-05, 2.19249e-05, 2.44647e-05, 2.67542e-05, 2.88156e-05, 3.06665e-05, 3.23234e-05, 3.38047e-05, 3.51251e-05, 3.63004e-05, 3.73446e-05, 3.82705e-05, 3.9092e-05, 3.98191e-05, 
			1.57235e-05, 1.92897e-05, 2.25397e-05, 2.54997e-05, 2.81917e-05, 3.06314e-05, 3.2837e-05, 3.4823e-05, 3.66063e-05, 3.82035e-05, 3.96304e-05, 4.09019e-05, 4.20345e-05, 4.30402e-05, 4.39342e-05, 4.47267e-05, 
			1.92137e-05, 2.28025e-05, 2.6124e-05, 2.91744e-05, 3.19614e-05, 3.44954e-05, 3.67919e-05, 3.88644e-05, 4.07285e-05, 4.24008e-05, 4.38964e-05, 4.5232e-05, 4.64218e-05, 4.74808e-05, 4.84235e-05, 4.92605e-05, 
			2.28262e-05, 2.6455e-05, 2.98294e-05, 3.29416e-05, 3.57934e-05, 3.83926e-05, 4.07517e-05, 4.28839e-05, 4.48037e-05, 4.65288e-05, 4.8073e-05, 4.94541e-05, 5.06859e-05, 5.17845e-05, 5.27603e-05, 5.36293e-05, 
			2.65518e-05, 3.02016e-05, 3.3612e-05, 3.67668e-05, 3.96639e-05, 4.23075e-05, 4.47109e-05, 4.68848e-05, 4.88457e-05, 5.06078e-05, 5.21876e-05, 5.36024e-05, 5.48656e-05, 5.59907e-05, 5.6994e-05, 5.78867e-05
		)
}

CapTable	"metal3_C_TOP_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.04293e-06, 6.5071e-06, 7.8028e-06, 8.97145e-06, 1.00308e-05, 1.09921e-05, 1.18627e-05, 1.26493e-05, 1.33586e-05, 1.39945e-05, 1.45639e-05, 1.50721e-05, 1.55253e-05, 1.59291e-05, 1.62875e-05, 1.66062e-05, 
			6.33452e-06, 7.76945e-06, 9.09215e-06, 1.03095e-05, 1.14276e-05, 1.24512e-05, 1.33828e-05, 1.42282e-05, 1.49919e-05, 1.56791e-05, 1.6296e-05, 1.68489e-05, 1.73423e-05, 1.77833e-05, 1.8175e-05, 1.85241e-05, 
			7.65946e-06, 9.08974e-06, 1.04338e-05, 1.16852e-05, 1.28418e-05, 1.39062e-05, 1.48777e-05, 1.57612e-05, 1.6561e-05, 1.72825e-05, 1.79319e-05, 1.8514e-05, 1.90357e-05, 1.95012e-05, 1.99156e-05, 2.02852e-05, 
			9.01676e-06, 1.04556e-05, 1.1819e-05, 1.30954e-05, 1.4281e-05, 1.53734e-05, 1.6373e-05, 1.7284e-05, 1.81109e-05, 1.88572e-05, 1.95303e-05, 2.0134e-05, 2.06752e-05, 2.11583e-05, 2.15913e-05, 2.19763e-05, 
			1.0412e-05, 1.18556e-05, 1.32352e-05, 1.45316e-05, 1.57375e-05, 1.68507e-05, 1.78717e-05, 1.88039e-05, 1.96499e-05, 2.04161e-05, 2.11062e-05, 2.17258e-05, 2.22819e-05, 2.27806e-05, 2.32252e-05, 2.36218e-05
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
			1.1452e-05, 1.4899e-05, 1.79593e-05, 2.0717e-05, 2.32089e-05, 2.54542e-05, 2.7465e-05, 2.92573e-05, 3.08452e-05, 3.22438e-05, 3.34715e-05, 3.45431e-05, 3.54759e-05, 3.62863e-05, 3.69877e-05, 3.75927e-05, 
			1.47664e-05, 1.82343e-05, 2.14239e-05, 2.43456e-05, 2.7005e-05, 2.94099e-05, 3.15701e-05, 3.34973e-05, 3.52056e-05, 3.67118e-05, 3.80349e-05, 3.91908e-05, 4.0198e-05, 4.1072e-05, 4.18298e-05, 4.24843e-05, 
			1.82401e-05, 2.177e-05, 2.50596e-05, 2.80902e-05, 3.08557e-05, 3.33615e-05, 3.56124e-05, 3.76221e-05, 3.9404e-05, 4.09765e-05, 4.23578e-05, 4.35652e-05, 4.46169e-05, 4.55309e-05, 4.63222e-05, 4.70066e-05, 
			2.18706e-05, 2.54704e-05, 2.88327e-05, 3.19396e-05, 3.47789e-05, 3.73491e-05, 3.96608e-05, 4.17244e-05, 4.35551e-05, 4.51708e-05, 4.6589e-05, 4.78302e-05, 4.89116e-05, 4.98508e-05, 5.0665e-05, 5.1368e-05, 
			2.56389e-05, 2.92817e-05, 3.2698e-05, 3.58547e-05, 3.87413e-05, 4.13551e-05, 4.37062e-05, 4.5806e-05, 4.76685e-05, 4.93109e-05, 5.07553e-05, 5.20177e-05, 5.31184e-05, 5.40746e-05, 5.49005e-05, 5.56301e-05
		)
}

CapTable	"metal3_C_TOP_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.09835e-06, 9.24042e-06, 1.11604e-05, 1.29042e-05, 1.44887e-05, 1.59232e-05, 1.72165e-05, 1.8373e-05, 1.94011e-05, 2.03106e-05, 2.11102e-05, 2.18106e-05, 2.24212e-05, 2.29522e-05, 2.34125e-05, 2.38109e-05, 
			9.0608e-06, 1.12019e-05, 1.31929e-05, 1.50318e-05, 1.67207e-05, 1.82584e-05, 1.96463e-05, 2.08913e-05, 2.19999e-05, 2.29817e-05, 2.38453e-05, 2.46023e-05, 2.5264e-05, 2.58392e-05, 2.63382e-05, 2.67702e-05, 
			1.11127e-05, 1.3281e-05, 1.53268e-05, 1.72344e-05, 1.89911e-05, 2.0593e-05, 2.20428e-05, 2.33431e-05, 2.45024e-05, 2.55277e-05, 2.64318e-05, 2.72252e-05, 2.79174e-05, 2.85203e-05, 2.90442e-05, 2.94973e-05, 
			1.3248e-05, 1.54539e-05, 1.75465e-05, 1.9501e-05, 2.13053e-05, 2.29531e-05, 2.44437e-05, 2.57816e-05, 2.69733e-05, 2.80297e-05, 2.89608e-05, 2.97773e-05, 3.04908e-05, 3.11128e-05, 3.16522e-05, 3.21203e-05, 
			1.54651e-05, 1.76971e-05, 1.9823e-05, 2.18143e-05, 2.36523e-05, 2.53315e-05, 2.68488e-05, 2.82122e-05, 2.94281e-05, 3.05043e-05, 3.14533e-05, 3.22866e-05, 3.30143e-05, 3.36482e-05, 3.42013e-05, 3.46634e-05
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

CapTable	"metal3_C_LATERAL_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182482, 0.000107477, 7.9761e-05, 6.474e-05, 5.50794e-05, 4.823e-05, 4.30626e-05, 3.89946e-05, 3.5692e-05, 3.29474e-05, 3.06244e-05, 2.86288e-05, 2.68934e-05, 2.53682e-05, 2.40154e-05, 2.28062e-05, 
			0.000194671, 0.000117085, 8.77514e-05, 7.16538e-05, 6.12042e-05, 5.37564e-05, 4.81188e-05, 4.36704e-05, 4.00526e-05, 3.70418e-05, 3.449e-05, 3.2295e-05, 3.03834e-05, 2.87008e-05, 2.72064e-05, 2.58682e-05, 
			0.000202202, 0.000123608, 9.34424e-05, 7.67142e-05, 6.57992e-05, 5.79788e-05, 5.204e-05, 4.73424e-05, 4.35138e-05, 4.03216e-05, 3.76112e-05, 3.52756e-05, 3.32378e-05, 3.1441e-05, 2.98422e-05, 2.84078e-05, 
			0.000207662, 0.000128574, 9.79212e-05, 8.07966e-05, 6.95608e-05, 6.14854e-05, 5.53348e-05, 5.04578e-05, 4.64744e-05, 4.31464e-05, 4.03152e-05, 3.7871e-05, 3.57344e-05, 3.38468e-05, 3.2164e-05, 3.06516e-05, 
			0.000211542, 0.00013249, 0.000101576, 8.42008e-05, 7.275e-05, 6.44976e-05, 5.81948e-05, 5.31834e-05, 4.90816e-05, 4.56478e-05, 4.27212e-05, 4.01894e-05, 3.79722e-05, 3.60098e-05, 3.4257e-05, 3.26786e-05
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

CapTable	"metal3_C_TOP_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.1393e-06, 5.24382e-06, 6.19185e-06, 7.03458e-06, 7.7977e-06, 8.49607e-06, 9.13815e-06, 9.73051e-06, 1.02775e-05, 1.07823e-05, 1.12482e-05, 1.16777e-05, 1.20731e-05, 1.2437e-05, 1.27719e-05, 1.30794e-05, 
			5.04527e-06, 6.08974e-06, 7.03498e-06, 7.89935e-06, 8.69646e-06, 9.43463e-06, 1.01187e-05, 1.07533e-05, 1.13419e-05, 1.18871e-05, 1.23914e-05, 1.28578e-05, 1.32882e-05, 1.36852e-05, 1.40511e-05, 1.43879e-05, 
			5.94448e-06, 6.96235e-06, 7.90908e-06, 8.78959e-06, 9.61002e-06, 1.03752e-05, 1.10882e-05, 1.17521e-05, 1.23694e-05, 1.29425e-05, 1.34737e-05, 1.3966e-05, 1.44213e-05, 1.48417e-05, 1.52295e-05, 1.5587e-05, 
			6.85135e-06, 7.85977e-06, 8.81089e-06, 9.70437e-06, 1.05426e-05, 1.13279e-05, 1.20625e-05, 1.27478e-05, 1.33871e-05, 1.39813e-05, 1.45335e-05, 1.50454e-05, 1.55194e-05, 1.59576e-05, 1.63631e-05, 1.67371e-05, 
			7.77628e-06, 8.77849e-06, 9.7343e-06, 1.06388e-05, 1.1491e-05, 1.22921e-05, 1.30431e-05, 1.37455e-05, 1.44016e-05, 1.50126e-05, 1.55806e-05, 1.61081e-05, 1.65968e-05, 1.70501e-05, 1.74685e-05, 1.78562e-05
		)
}

CapTable	"metal3_C_LATERAL_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180057, 0.000104266, 7.58168e-05, 6.0106e-05, 4.97958e-05, 4.23372e-05, 3.66026e-05, 3.20106e-05, 2.82282e-05, 2.50478e-05, 2.23328e-05, 1.99879e-05, 1.79445e-05, 1.61509e-05, 1.45673e-05, 1.31627e-05, 
			0.000191336, 0.000112913, 8.27782e-05, 6.59186e-05, 5.4748e-05, 4.66238e-05, 4.03568e-05, 3.53278e-05, 3.11792e-05, 2.76872e-05, 2.47036e-05, 2.21246e-05, 1.98755e-05, 1.78997e-05, 1.61541e-05, 1.46045e-05, 
			0.000197882, 0.000118397, 8.73728e-05, 6.9825e-05, 5.81356e-05, 4.95896e-05, 4.29776e-05, 3.76604e-05, 3.3267e-05, 2.95644e-05, 2.63974e-05, 2.36572e-05, 2.12652e-05, 1.91622e-05, 1.73028e-05, 1.56507e-05, 
			0.000202278, 0.000122248, 9.06878e-05, 7.26976e-05, 6.0646e-05, 5.18086e-05, 4.4953e-05, 3.94294e-05, 3.48584e-05, 3.10014e-05, 2.76984e-05, 2.48382e-05, 2.23392e-05, 2.01402e-05, 1.81943e-05, 1.64642e-05, 
			0.000205022, 0.000124986, 9.31234e-05, 7.48474e-05, 6.25498e-05, 5.35092e-05, 4.64794e-05, 4.08036e-05, 3.61002e-05, 3.21266e-05, 2.87208e-05, 2.57688e-05, 2.31872e-05, 2.0914e-05, 1.8901e-05, 1.71101e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.16202e-05, 1.43958e-05, 1.66617e-05, 1.85896e-05, 2.02733e-05, 2.17684e-05, 2.31108e-05, 2.43251e-05, 2.54294e-05, 2.64383e-05, 2.73634e-05, 2.82147e-05, 2.90003e-05, 2.97277e-05, 3.04033e-05, 3.10323e-05, 
			1.37332e-05, 1.62347e-05, 1.83956e-05, 2.02937e-05, 2.19844e-05, 2.35045e-05, 2.48805e-05, 2.61328e-05, 2.72775e-05, 2.83276e-05, 2.92943e-05, 3.0187e-05, 3.10139e-05, 3.17823e-05, 3.24981e-05, 3.31671e-05, 
			1.5723e-05, 1.80568e-05, 2.01326e-05, 2.19916e-05, 2.36667e-05, 2.51856e-05, 2.65693e-05, 2.78349e-05, 2.89969e-05, 3.00669e-05, 3.10556e-05, 3.19717e-05, 3.28234e-05, 3.36173e-05, 3.43594e-05, 3.50553e-05, 
			1.7631e-05, 1.98524e-05, 2.18578e-05, 2.36734e-05, 2.53238e-05, 2.68297e-05, 2.82089e-05, 2.94759e-05, 3.06438e-05, 3.17233e-05, 3.27242e-05, 3.36547e-05, 3.45226e-05, 3.53343e-05, 3.60954e-05, 3.6811e-05, 
			1.9493e-05, 2.16136e-05, 2.35542e-05, 2.53262e-05, 2.69481e-05, 2.84351e-05, 2.98031e-05, 3.1065e-05, 3.22326e-05, 3.33156e-05, 3.43229e-05, 3.52627e-05, 3.61418e-05, 3.69665e-05, 3.7742e-05, 3.84735e-05
		)
}

CapTable	"metal3_C_TOP_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.50715e-06, 7.00884e-06, 8.31162e-06, 9.4772e-06, 1.05382e-05, 1.15125e-05, 1.2411e-05, 1.32393e-05, 1.40027e-05, 1.47057e-05, 1.53524e-05, 1.59451e-05, 1.64878e-05, 1.69823e-05, 1.74346e-05, 1.7846e-05, 
			6.76694e-06, 8.20566e-06, 9.51851e-06, 1.07263e-05, 1.18451e-05, 1.28828e-05, 1.38456e-05, 1.47382e-05, 1.55644e-05, 1.63273e-05, 1.70294e-05, 1.76745e-05, 1.82662e-05, 1.88069e-05, 1.93016e-05, 1.97522e-05, 
			8.03696e-06, 9.45394e-06, 1.07809e-05, 1.20218e-05, 1.31807e-05, 1.42627e-05, 1.52712e-05, 1.62094e-05, 1.7079e-05, 1.78829e-05, 1.86232e-05, 1.93053e-05, 1.99311e-05, 2.05047e-05, 2.10281e-05, 2.15063e-05, 
			9.33207e-06, 1.07507e-05, 1.20934e-05, 1.33602e-05, 1.45512e-05, 1.56677e-05, 1.67115e-05, 1.76827e-05, 1.85842e-05, 1.94191e-05, 2.01892e-05, 2.08988e-05, 2.15503e-05, 2.21473e-05, 2.26933e-05, 2.31906e-05, 
			1.06657e-05, 1.20858e-05, 1.3445e-05, 1.47346e-05, 1.59523e-05, 1.70956e-05, 1.81652e-05, 1.91618e-05, 2.00888e-05, 2.09474e-05, 2.17409e-05, 2.2471e-05, 2.31424e-05, 2.37569e-05, 2.43199e-05, 2.48329e-05
		)
}

CapTable	"metal3_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179567, 0.000103603, 7.499e-05, 5.91236e-05, 4.86678e-05, 4.10752e-05, 3.522e-05, 3.05216e-05, 2.66472e-05, 2.339e-05, 2.0613e-05, 1.82204e-05, 1.61429e-05, 1.43279e-05, 1.27347e-05, 1.13308e-05, 
			0.00019064, 0.000112029, 8.17126e-05, 6.468e-05, 5.3348e-05, 4.50762e-05, 3.8677e-05, 3.35322e-05, 2.9285e-05, 2.57116e-05, 2.26632e-05, 2.00358e-05, 1.77537e-05, 1.5759e-05, 1.40076e-05, 1.24639e-05, 
			0.000196959, 0.000117272, 8.60516e-05, 6.83186e-05, 5.64574e-05, 4.77556e-05, 4.1005e-05, 3.5568e-05, 3.10738e-05, 2.72894e-05, 2.40592e-05, 2.12734e-05, 1.88521e-05, 1.67354e-05, 1.4876e-05, 1.32367e-05, 
			0.000201108, 0.000120864, 8.9097e-05, 7.09128e-05, 5.8683e-05, 4.96852e-05, 4.2689e-05, 3.7045e-05, 3.23746e-05, 2.84386e-05, 2.50764e-05, 2.21756e-05, 1.96531e-05, 1.74473e-05, 1.55086e-05, 1.3799e-05, 
			0.000203586, 0.000123328, 9.12524e-05, 7.27776e-05, 6.02984e-05, 5.10968e-05, 4.39274e-05, 3.81338e-05, 3.33348e-05, 2.9287e-05, 2.58278e-05, 2.28416e-05, 2.02442e-05, 1.79718e-05, 1.59747e-05, 1.42126e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.04711e-05, 1.32556e-05, 1.56402e-05, 1.77521e-05, 1.96596e-05, 2.14013e-05, 2.3001e-05, 2.44731e-05, 2.58287e-05, 2.70777e-05, 2.82272e-05, 2.92849e-05, 3.02572e-05, 3.11506e-05, 3.19707e-05, 3.27233e-05, 
			1.28491e-05, 1.55035e-05, 1.78948e-05, 2.00759e-05, 2.20803e-05, 2.39293e-05, 2.56384e-05, 2.72189e-05, 2.86794e-05, 3.00287e-05, 3.12739e-05, 3.24219e-05, 3.34793e-05, 3.44527e-05, 3.53478e-05, 3.61706e-05, 
			1.52275e-05, 1.78343e-05, 2.02431e-05, 2.24744e-05, 2.45438e-05, 2.64647e-05, 2.82475e-05, 2.99013e-05, 3.14337e-05, 3.28522e-05, 3.41637e-05, 3.53746e-05, 3.64917e-05, 3.75215e-05, 3.84699e-05, 3.93428e-05, 
			1.76426e-05, 2.0244e-05, 2.26743e-05, 2.4944e-05, 2.70623e-05, 2.90359e-05, 3.08729e-05, 3.25812e-05, 3.41665e-05, 3.56366e-05, 3.69976e-05, 3.8256e-05, 3.94184e-05, 4.04914e-05, 4.14798e-05, 4.23906e-05, 
			2.01197e-05, 2.27157e-05, 2.51653e-05, 2.74668e-05, 2.96212e-05, 3.16343e-05, 3.35125e-05, 3.52618e-05, 3.68879e-05, 3.83977e-05, 3.97971e-05, 4.10922e-05, 4.22902e-05, 4.33957e-05, 4.44165e-05, 4.53564e-05
		)
}

CapTable	"metal3_C_TOP_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.59194e-06, 9.75807e-06, 1.16681e-05, 1.3394e-05, 1.49714e-05, 1.64179e-05, 1.77438e-05, 1.89568e-05, 2.00611e-05, 2.10608e-05, 2.19643e-05, 2.27766e-05, 2.35033e-05, 2.41528e-05, 2.47296e-05, 2.52424e-05, 
			9.49559e-06, 1.162e-05, 1.35789e-05, 1.53929e-05, 1.70715e-05, 1.8624e-05, 2.00536e-05, 2.1363e-05, 2.25563e-05, 2.36391e-05, 2.46173e-05, 2.54975e-05, 2.62854e-05, 2.69895e-05, 2.76159e-05, 2.81729e-05, 
			1.14597e-05, 1.35897e-05, 1.55959e-05, 1.74745e-05, 1.92265e-05, 2.08509e-05, 2.23476e-05, 2.37208e-05, 2.49737e-05, 2.61093e-05, 2.71357e-05, 2.8059e-05, 2.88861e-05, 2.96257e-05, 3.0284e-05, 3.08687e-05, 
			1.34966e-05, 1.56539e-05, 1.7704e-05, 1.96352e-05, 2.14397e-05, 2.31148e-05, 2.46603e-05, 2.60775e-05, 2.73709e-05, 2.85426e-05, 2.96023e-05, 3.05557e-05, 3.14103e-05, 3.21735e-05, 3.28533e-05, 3.34579e-05, 
			1.56145e-05, 1.7797e-05, 1.98836e-05, 2.18531e-05, 2.36969e-05, 2.54095e-05, 2.69879e-05, 2.8437e-05, 2.97574e-05, 3.09555e-05, 3.20383e-05, 3.30122e-05, 3.38851e-05, 3.46659e-05, 3.53593e-05, 3.59754e-05
		)
}

CapTable	"metal3_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178572, 0.000102252, 7.33078e-05, 5.714e-05, 4.64186e-05, 3.86016e-05, 3.2566e-05, 2.77318e-05, 2.37652e-05, 2.04568e-05, 1.7666e-05, 1.52926e-05, 1.3262e-05, 1.15174e-05, 1.00152e-05, 8.71658e-06, 
			0.000189208, 0.000110214, 7.9541e-05, 6.21882e-05, 5.05802e-05, 4.20806e-05, 3.55044e-05, 3.02334e-05, 2.59084e-05, 2.23012e-05, 1.92596e-05, 1.66729e-05, 1.4462e-05, 1.25621e-05, 1.09255e-05, 9.51218e-06, 
			0.000195052, 0.000114967, 8.33802e-05, 6.53252e-05, 5.31926e-05, 4.42744e-05, 3.73634e-05, 3.18202e-05, 2.72704e-05, 2.34762e-05, 2.02766e-05, 1.75571e-05, 1.52314e-05, 1.32343e-05, 1.15133e-05, 1.00269e-05, 
			0.000198703, 0.000118056, 8.59274e-05, 6.74318e-05, 5.49476e-05, 4.5755e-05, 3.8622e-05, 3.28978e-05, 2.81978e-05, 2.42794e-05, 2.0974e-05, 1.81643e-05, 1.57621e-05, 1.36989e-05, 1.19212e-05, 1.03856e-05, 
			0.000200676, 0.000120024, 8.76016e-05, 6.88364e-05, 5.61284e-05, 4.6759e-05, 3.94818e-05, 3.36362e-05, 2.88366e-05, 2.48332e-05, 2.14574e-05, 1.85872e-05, 1.61331e-05, 1.40251e-05, 1.22095e-05, 1.06408e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.71125e-06, 1.23472e-05, 1.46226e-05, 1.66532e-05, 1.84971e-05, 2.01871e-05, 2.17409e-05, 2.31722e-05, 2.44897e-05, 2.57002e-05, 2.68099e-05, 2.78264e-05, 2.8755e-05, 2.96035e-05, 3.0375e-05, 3.10773e-05, 
			1.20061e-05, 1.45433e-05, 1.68469e-05, 1.89605e-05, 2.09115e-05, 2.2717e-05, 2.43879e-05, 2.59328e-05, 2.73579e-05, 2.86702e-05, 2.98767e-05, 3.0983e-05, 3.19949e-05, 3.29201e-05, 3.37626e-05, 3.45301e-05, 
			1.43218e-05, 1.68369e-05, 1.91765e-05, 2.13526e-05, 2.33797e-05, 2.52655e-05, 2.70166e-05, 2.86387e-05, 3.01384e-05, 3.15215e-05, 3.27947e-05, 3.39624e-05, 3.50323e-05, 3.60094e-05, 3.69018e-05, 3.7714e-05, 
			1.66949e-05, 1.92227e-05, 2.15996e-05, 2.3829e-05, 2.59139e-05, 2.78593e-05, 2.96689e-05, 3.13495e-05, 3.29048e-05, 3.43398e-05, 3.56617e-05, 3.68749e-05, 3.79872e-05, 3.90039e-05, 3.99325e-05, 4.07795e-05, 
			1.91473e-05, 2.1687e-05, 2.40966e-05, 2.63678e-05, 2.84973e-05, 3.04877e-05, 3.23432e-05, 3.40679e-05, 3.56645e-05, 3.71395e-05, 3.84971e-05, 3.97455e-05, 4.08893e-05, 4.19366e-05, 4.28917e-05, 4.37637e-05
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
			8.87606e-06, 1.13797e-05, 1.35769e-05, 1.55587e-05, 1.73692e-05, 1.90303e-05, 2.05525e-05, 2.19426e-05, 2.32079e-05, 2.43555e-05, 2.53893e-05, 2.63181e-05, 2.7151e-05, 2.78936e-05, 2.8554e-05, 2.91406e-05, 
			1.11288e-05, 1.35844e-05, 1.58421e-05, 1.79294e-05, 1.98628e-05, 2.16478e-05, 2.32893e-05, 2.47926e-05, 2.61621e-05, 2.74045e-05, 2.85249e-05, 2.95327e-05, 3.04347e-05, 3.12405e-05, 3.19576e-05, 3.25932e-05, 
			1.34409e-05, 1.59107e-05, 1.82289e-05, 2.03973e-05, 2.24146e-05, 2.42835e-05, 2.60059e-05, 2.75829e-05, 2.90196e-05, 3.03237e-05, 3.15005e-05, 3.25579e-05, 3.35054e-05, 3.43502e-05, 3.51029e-05, 3.57711e-05, 
			1.58414e-05, 1.83509e-05, 2.07246e-05, 2.2954e-05, 2.50347e-05, 2.6964e-05, 2.87421e-05, 3.03706e-05, 3.18545e-05, 3.32001e-05, 3.44148e-05, 3.55065e-05, 3.64836e-05, 3.73564e-05, 3.81332e-05, 3.88223e-05, 
			1.83425e-05, 2.08812e-05, 2.32988e-05, 2.55765e-05, 2.77027e-05, 2.96735e-05, 3.14916e-05, 3.31555e-05, 3.46718e-05, 3.60465e-05, 3.72861e-05, 3.84011e-05, 3.93994e-05, 4.02902e-05, 4.10836e-05, 4.17876e-05
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

CapTable	"metal3_C_BOTTOM_GP_46MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.20706e-05, 1.49934e-05, 1.73997e-05, 1.94691e-05, 2.13004e-05, 2.29514e-05, 2.44592e-05, 2.58474e-05, 2.71337e-05, 2.83299e-05, 2.94464e-05, 3.04905e-05, 3.14689e-05, 3.23866e-05, 3.32486e-05, 3.40586e-05, 
			1.43166e-05, 1.69707e-05, 1.9289e-05, 2.13532e-05, 2.32213e-05, 2.49308e-05, 2.6508e-05, 2.79715e-05, 2.93349e-05, 3.06093e-05, 3.18031e-05, 3.29232e-05, 3.39754e-05, 3.49652e-05, 3.58965e-05, 3.67737e-05, 
			1.6452e-05, 1.89548e-05, 2.12124e-05, 2.32669e-05, 2.51518e-05, 2.6895e-05, 2.85152e-05, 3.0027e-05, 3.14418e-05, 3.27689e-05, 3.40159e-05, 3.51889e-05, 3.62933e-05, 3.73337e-05, 3.83149e-05, 3.924e-05, 
			1.8531e-05, 2.09466e-05, 2.31632e-05, 2.52068e-05, 2.71026e-05, 2.88676e-05, 3.05175e-05, 3.20639e-05, 3.35163e-05, 3.48824e-05, 3.6169e-05, 3.73817e-05, 3.85258e-05, 3.96052e-05, 4.06243e-05, 4.15867e-05, 
			2.0601e-05, 2.29446e-05, 2.513e-05, 2.71656e-05, 2.90669e-05, 3.08472e-05, 3.25183e-05, 3.40902e-05, 3.55708e-05, 3.69667e-05, 3.8284e-05, 3.95275e-05, 4.07023e-05, 4.18123e-05, 4.28613e-05, 4.3853e-05
		)
}

CapTable	"metal3_C_LATERAL_46MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182097, 0.00010697, 7.91258e-05, 6.3968e-05, 5.41584e-05, 4.7148e-05, 4.18084e-05, 3.75598e-05, 3.40702e-05, 3.11358e-05, 2.86224e-05, 2.64386e-05, 2.4519e-05, 2.2816e-05, 2.12932e-05, 1.99229e-05, 
			0.000194155, 0.000116424, 8.6931e-05, 7.06578e-05, 6.0017e-05, 5.23644e-05, 4.65108e-05, 4.1839e-05, 3.7994e-05, 3.47552e-05, 3.19778e-05, 2.95624e-05, 2.74378e-05, 2.55514e-05, 2.3864e-05, 2.23446e-05, 
			0.000201524, 0.000122751, 9.23866e-05, 7.544e-05, 6.42904e-05, 5.6222e-05, 5.00264e-05, 4.50672e-05, 4.09764e-05, 3.75244e-05, 3.456e-05, 3.19788e-05, 2.97062e-05, 2.7687e-05, 2.5879e-05, 2.42504e-05, 
			0.000206776, 0.000127467, 9.65718e-05, 7.91842e-05, 6.76704e-05, 5.93066e-05, 5.28618e-05, 4.76894e-05, 4.34136e-05, 3.97996e-05, 3.66918e-05, 3.39828e-05, 3.1595e-05, 2.94718e-05, 2.75694e-05, 2.58544e-05, 
			0.000210392, 0.000131075, 9.9872e-05, 8.21904e-05, 7.0421e-05, 6.18432e-05, 5.52136e-05, 4.98782e-05, 4.54594e-05, 4.17188e-05, 3.8498e-05, 3.56876e-05, 3.32082e-05, 3.10016e-05, 2.90234e-05, 2.72388e-05
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

CapTable	"metal3_C_BOTTOM_GP_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.93805e-06, 1.12124e-05, 1.31292e-05, 1.48102e-05, 1.63233e-05, 1.77068e-05, 1.89839e-05, 2.01691e-05, 2.1273e-05, 2.23026e-05, 2.32636e-05, 2.41612e-05, 2.49991e-05, 2.57804e-05, 2.65095e-05, 2.71889e-05, 
			1.079e-05, 1.2911e-05, 1.48013e-05, 1.65171e-05, 1.80942e-05, 1.95555e-05, 2.09164e-05, 2.21878e-05, 2.33775e-05, 2.44911e-05, 2.55336e-05, 2.65095e-05, 2.74221e-05, 2.82751e-05, 2.90721e-05, 2.9816e-05, 
			1.26005e-05, 1.465e-05, 1.6534e-05, 1.8277e-05, 1.98986e-05, 2.14148e-05, 2.28349e-05, 2.41673e-05, 2.54182e-05, 2.65921e-05, 2.76929e-05, 2.87251e-05, 2.96921e-05, 3.0597e-05, 3.14433e-05, 3.2234e-05, 
			1.44099e-05, 1.64344e-05, 1.83223e-05, 2.00893e-05, 2.17477e-05, 2.33063e-05, 2.47726e-05, 2.61522e-05, 2.74504e-05, 2.86707e-05, 2.98169e-05, 3.0893e-05, 3.19021e-05, 3.28473e-05, 3.37324e-05, 3.45592e-05, 
			1.62552e-05, 1.82606e-05, 2.01573e-05, 2.19463e-05, 2.36346e-05, 2.5227e-05, 2.67299e-05, 2.81471e-05, 2.94827e-05, 3.074e-05, 3.19226e-05, 3.30336e-05, 3.40764e-05, 3.5054e-05, 3.59686e-05, 3.68257e-05
		)
}

CapTable	"metal3_C_TOP_GP_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.50495e-06, 5.65701e-06, 6.63056e-06, 7.48723e-06, 8.25851e-06, 8.96394e-06, 9.61535e-06, 1.02204e-05, 1.07843e-05, 1.13107e-05, 1.18026e-05, 1.22621e-05, 1.26915e-05, 1.30931e-05, 1.34675e-05, 1.38172e-05, 
			5.41476e-06, 6.48644e-06, 7.44469e-06, 8.31488e-06, 9.11531e-06, 9.85783e-06, 1.05503e-05, 1.11978e-05, 1.18043e-05, 1.23729e-05, 1.29059e-05, 1.34053e-05, 1.38732e-05, 1.43112e-05, 1.47207e-05, 1.51033e-05, 
			6.30549e-06, 7.33583e-06, 8.2862e-06, 9.16719e-06, 9.98827e-06, 1.07567e-05, 1.14781e-05, 1.2156e-05, 1.27929e-05, 1.33917e-05, 1.39549e-05, 1.44832e-05, 1.49791e-05, 1.54436e-05, 1.58785e-05, 1.62851e-05, 
			7.19312e-06, 8.2052e-06, 9.15373e-06, 1.00443e-05, 1.08821e-05, 1.16709e-05, 1.24147e-05, 1.3116e-05, 1.37768e-05, 1.43995e-05, 1.4986e-05, 1.55367e-05, 1.60543e-05, 1.65396e-05, 1.69941e-05, 1.74202e-05, 
			8.09175e-06, 9.09164e-06, 1.00419e-05, 1.09421e-05, 1.1794e-05, 1.25996e-05, 1.33615e-05, 1.40821e-05, 1.47622e-05, 1.54043e-05, 1.60088e-05, 1.65778e-05, 1.71124e-05, 1.76142e-05, 1.80855e-05, 1.85259e-05
		)
}

CapTable	"metal3_C_LATERAL_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180982, 0.000105496, 7.73164e-05, 6.18404e-05, 5.1729e-05, 4.44332e-05, 3.8826e-05, 3.43284e-05, 3.06094e-05, 2.74654e-05, 2.4763e-05, 2.241e-05, 2.0341e-05, 1.85074e-05, 1.68723e-05, 1.54065e-05, 
			0.000192635, 0.000114524, 8.4664e-05, 6.80398e-05, 5.70644e-05, 4.90956e-05, 4.29458e-05, 3.79992e-05, 3.39014e-05, 3.04326e-05, 2.74482e-05, 2.4848e-05, 2.25604e-05, 2.05322e-05, 1.87227e-05, 1.71002e-05, 
			0.000199566, 0.000120389, 8.96318e-05, 7.23078e-05, 6.0799e-05, 5.23922e-05, 4.58808e-05, 4.06294e-05, 3.6271e-05, 3.25764e-05, 2.9394e-05, 2.66192e-05, 2.4176e-05, 2.20088e-05, 2.00744e-05, 1.83393e-05, 
			0.000204346, 0.000124609, 9.3299e-05, 7.55134e-05, 6.3622e-05, 5.49036e-05, 4.81292e-05, 4.26534e-05, 3.81006e-05, 3.42362e-05, 3.0904e-05, 2.79964e-05, 2.54346e-05, 2.31608e-05, 2.11302e-05, 1.9308e-05, 
			0.000207456, 0.000127693, 9.60568e-05, 7.79616e-05, 6.58014e-05, 5.68584e-05, 4.98902e-05, 4.4244e-05, 3.95428e-05, 3.55474e-05, 3.20996e-05, 2.90884e-05, 2.6434e-05, 2.40768e-05, 2.19708e-05, 2.00798e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.18426e-06, 1.03157e-05, 1.21303e-05, 1.37377e-05, 1.51951e-05, 1.65325e-05, 1.77703e-05, 1.89198e-05, 1.999e-05, 2.09867e-05, 2.19138e-05, 2.27755e-05, 2.3575e-05, 2.43167e-05, 2.50028e-05, 2.56374e-05, 
			9.96058e-06, 1.19726e-05, 1.37837e-05, 1.54388e-05, 1.6969e-05, 1.83918e-05, 1.97197e-05, 2.09605e-05, 2.21203e-05, 2.32032e-05, 2.42124e-05, 2.51532e-05, 2.6026e-05, 2.68372e-05, 2.75888e-05, 2.82831e-05, 
			1.17176e-05, 1.36842e-05, 1.55062e-05, 1.72011e-05, 1.87846e-05, 2.02695e-05, 2.1663e-05, 2.29693e-05, 2.41926e-05, 2.53367e-05, 2.64058e-05, 2.74019e-05, 2.83289e-05, 2.91883e-05, 2.99861e-05, 3.07249e-05, 
			1.34961e-05, 1.54548e-05, 1.72935e-05, 1.90239e-05, 2.06533e-05, 2.21877e-05, 2.36316e-05, 2.49882e-05, 2.62618e-05, 2.74526e-05, 2.85669e-05, 2.96062e-05, 3.05727e-05, 3.14708e-05, 3.23031e-05, 3.3074e-05, 
			1.53238e-05, 1.7278e-05, 1.91369e-05, 2.08997e-05, 2.25672e-05, 2.41408e-05, 2.56245e-05, 2.70218e-05, 2.83337e-05, 2.95632e-05, 3.07116e-05, 3.17837e-05, 3.27826e-05, 3.37089e-05, 3.45688e-05, 3.53652e-05
		)
}

CapTable	"metal3_C_TOP_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.93754e-06, 7.49749e-06, 8.83121e-06, 1.0013e-05, 1.10831e-05, 1.20677e-05, 1.29795e-05, 1.38276e-05, 1.46171e-05, 1.53518e-05, 1.6036e-05, 1.66722e-05, 1.72632e-05, 1.78106e-05, 1.83174e-05, 1.87859e-05, 
			7.20582e-06, 8.67525e-06, 1.00023e-05, 1.12166e-05, 1.23398e-05, 1.33858e-05, 1.43625e-05, 1.52756e-05, 1.61292e-05, 1.69269e-05, 1.76717e-05, 1.83644e-05, 1.90106e-05, 1.96089e-05, 2.01638e-05, 2.06779e-05, 
			8.46459e-06, 9.89457e-06, 1.1225e-05, 1.24659e-05, 1.36283e-05, 1.47183e-05, 1.5741e-05, 1.67012e-05, 1.76017e-05, 1.8445e-05, 1.92322e-05, 1.99665e-05, 2.06503e-05, 2.12866e-05, 2.18758e-05, 2.24207e-05, 
			9.73387e-06, 1.11552e-05, 1.24961e-05, 1.37613e-05, 1.49541e-05, 1.60787e-05, 1.71384e-05, 1.81355e-05, 1.90711e-05, 1.995e-05, 2.07704e-05, 2.1536e-05, 2.22501e-05, 2.29136e-05, 2.35296e-05, 2.40998e-05, 
			1.10352e-05, 1.24534e-05, 1.38079e-05, 1.50937e-05, 1.6313e-05, 1.74665e-05, 1.85561e-05, 1.9582e-05, 2.05464e-05, 2.14513e-05, 2.22991e-05, 2.30898e-05, 2.38259e-05, 2.45124e-05, 2.51482e-05, 2.57371e-05
		)
}

CapTable	"metal3_C_LATERAL_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180434, 0.000104764, 7.6412e-05, 6.07736e-05, 5.05106e-05, 4.30746e-05, 3.73398e-05, 3.27278e-05, 2.89084e-05, 2.56782e-05, 2.29036e-05, 2.04924e-05, 1.83786e-05, 1.65129e-05, 1.48577e-05, 1.33826e-05, 
			0.000191873, 0.000113564, 8.3516e-05, 6.67136e-05, 5.55714e-05, 4.74488e-05, 4.11598e-05, 3.60894e-05, 3.18838e-05, 2.83232e-05, 2.5263e-05, 2.26028e-05, 2.027e-05, 1.82111e-05, 1.63838e-05, 1.47559e-05, 
			0.00019857, 0.000119184, 8.82258e-05, 7.0712e-05, 5.90264e-05, 5.04578e-05, 4.38008e-05, 3.84212e-05, 3.39522e-05, 3.01648e-05, 2.69072e-05, 2.40742e-05, 2.1589e-05, 1.9395e-05, 1.74477e-05, 1.57126e-05, 
			0.000203098, 0.000123143, 9.16224e-05, 7.36388e-05, 6.15646e-05, 5.26802e-05, 4.57578e-05, 4.01528e-05, 3.54902e-05, 3.15348e-05, 2.81308e-05, 2.5169e-05, 2.25702e-05, 2.02752e-05, 1.82382e-05, 1.64227e-05, 
			0.000205942, 0.000125953, 9.41002e-05, 7.58026e-05, 6.34568e-05, 5.43466e-05, 4.7231e-05, 4.14578e-05, 3.66502e-05, 3.25684e-05, 2.90536e-05, 2.59944e-05, 2.33094e-05, 2.09376e-05, 1.88324e-05, 1.69559e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.446e-06, 9.4786e-06, 1.12437e-05, 1.28279e-05, 1.42754e-05, 1.56079e-05, 1.68385e-05, 1.79734e-05, 1.90176e-05, 1.99759e-05, 2.08538e-05, 2.16536e-05, 2.23797e-05, 2.30403e-05, 2.36374e-05, 2.41745e-05, 
			9.2119e-06, 1.11737e-05, 1.29664e-05, 1.46224e-05, 1.61597e-05, 1.75895e-05, 1.89155e-05, 2.01439e-05, 2.12764e-05, 2.23179e-05, 2.32724e-05, 2.4142e-05, 2.49354e-05, 2.56529e-05, 2.63045e-05, 2.68916e-05, 
			1.09975e-05, 1.29474e-05, 1.47758e-05, 1.64884e-05, 1.80921e-05, 1.95892e-05, 2.09824e-05, 2.22753e-05, 2.34684e-05, 2.45649e-05, 2.55717e-05, 2.64907e-05, 2.7326e-05, 2.8085e-05, 2.87713e-05, 2.93897e-05, 
			1.28316e-05, 1.47997e-05, 1.66651e-05, 1.84244e-05, 2.00795e-05, 2.16279e-05, 2.30716e-05, 2.44112e-05, 2.56476e-05, 2.67869e-05, 2.78289e-05, 2.87822e-05, 2.96494e-05, 3.04351e-05, 3.11473e-05, 3.17895e-05, 
			1.47354e-05, 1.67208e-05, 1.86184e-05, 2.04161e-05, 2.21111e-05, 2.36987e-05, 2.51781e-05, 2.65531e-05, 2.78229e-05, 2.89901e-05, 3.00609e-05, 3.10378e-05, 3.19262e-05, 3.27331e-05, 3.34632e-05, 3.41219e-05
		)
}

CapTable	"metal3_C_TOP_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.089e-06, 1.03304e-05, 1.22846e-05, 1.40397e-05, 1.56405e-05, 1.71121e-05, 1.8468e-05, 1.97174e-05, 2.08671e-05, 2.19216e-05, 2.28852e-05, 2.37633e-05, 2.45625e-05, 2.52853e-05, 2.59382e-05, 2.65272e-05, 
			1.00155e-05, 1.21851e-05, 1.41724e-05, 1.60052e-05, 1.77045e-05, 1.92803e-05, 2.07419e-05, 2.2093e-05, 2.33387e-05, 2.44815e-05, 2.55279e-05, 2.64836e-05, 2.73507e-05, 2.8138e-05, 2.88478e-05, 2.94895e-05, 
			1.19793e-05, 1.41374e-05, 1.61616e-05, 1.80552e-05, 1.98246e-05, 2.14753e-05, 2.30093e-05, 2.44293e-05, 2.57393e-05, 2.69435e-05, 2.80447e-05, 2.90499e-05, 2.99639e-05, 3.07925e-05, 3.15429e-05, 3.22189e-05, 
			1.40034e-05, 1.61795e-05, 1.82403e-05, 2.01848e-05, 2.201e-05, 2.37157e-05, 2.53015e-05, 2.67718e-05, 2.81296e-05, 2.93751e-05, 3.05168e-05, 3.15578e-05, 3.25056e-05, 3.33642e-05, 3.41408e-05, 3.48419e-05, 
			1.61036e-05, 1.8297e-05, 2.03938e-05, 2.23791e-05, 2.42457e-05, 2.5992e-05, 2.76187e-05, 2.9125e-05, 3.05155e-05, 3.17934e-05, 3.2963e-05, 3.40314e-05, 3.50018e-05, 3.58828e-05, 3.66769e-05, 3.7394e-05
		)
}

CapTable	"metal3_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179306, 0.000103245, 7.45334e-05, 5.8569e-05, 4.80172e-05, 4.03338e-05, 3.4395e-05, 2.96232e-05, 2.5687e-05, 2.23808e-05, 1.95675e-05, 1.71524e-05, 1.50644e-05, 1.32495e-05, 1.1667e-05, 1.02839e-05, 
			0.000190271, 0.000111548, 8.11172e-05, 6.39704e-05, 5.25282e-05, 4.41536e-05, 3.76622e-05, 3.24382e-05, 2.81268e-05, 2.45054e-05, 2.14238e-05, 1.87785e-05, 1.64918e-05, 1.45062e-05, 1.27743e-05, 1.12594e-05, 
			0.000196461, 0.000116648, 8.52986e-05, 6.74384e-05, 5.5457e-05, 4.66458e-05, 3.98004e-05, 3.42846e-05, 2.97298e-05, 2.59026e-05, 2.2646e-05, 1.985e-05, 1.74344e-05, 1.53354e-05, 1.35049e-05, 1.19055e-05, 
			0.000200462, 0.000120077, 8.81696e-05, 6.98498e-05, 5.74944e-05, 4.83864e-05, 4.1298e-05, 3.55804e-05, 3.08558e-05, 2.6885e-05, 2.3507e-05, 2.0606e-05, 1.80983e-05, 1.59215e-05, 1.40227e-05, 1.23623e-05, 
			0.000202772, 0.000122362, 9.01378e-05, 7.15238e-05, 5.89202e-05, 4.96122e-05, 4.23568e-05, 3.6498e-05, 3.16546e-05, 2.75834e-05, 2.41184e-05, 2.11432e-05, 1.85729e-05, 1.63393e-05, 1.43929e-05, 1.26908e-05
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

CapTable	"metal2_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167681, 8.90672e-05, 5.91388e-05, 4.2868e-05, 3.26054e-05, 2.55864e-05, 2.05354e-05, 1.67698e-05, 1.38879e-05, 1.16361e-05, 9.84648e-06, 8.40374e-06, 7.22612e-06, 6.25448e-06, 5.44498e-06, 4.76474e-06, 
			0.000174609, 9.43398e-05, 6.34188e-05, 4.64896e-05, 3.57156e-05, 2.8286e-05, 2.28944e-05, 1.88412e-05, 1.57137e-05, 1.32506e-05, 1.12783e-05, 9.6769e-06, 8.36104e-06, 7.26842e-06, 6.3528e-06, 5.57916e-06, 
			0.000178156, 9.75842e-05, 6.62814e-05, 4.90096e-05, 3.79624e-05, 3.02852e-05, 2.46764e-05, 2.0432e-05, 1.71358e-05, 1.45237e-05, 1.24197e-05, 1.07016e-05, 9.28226e-06, 8.0978e-06, 7.10048e-06, 6.25398e-06, 
			0.000180555, 9.9957e-05, 6.8469e-05, 5.09948e-05, 3.975e-05, 3.19006e-05, 2.61346e-05, 2.1748e-05, 1.83232e-05, 1.55954e-05, 1.33874e-05, 1.15762e-05, 1.00731e-05, 8.81354e-06, 7.74864e-06, 6.8414e-06, 
			0.000181992, 0.000101749, 7.02008e-05, 5.26024e-05, 4.12222e-05, 3.32492e-05, 2.73658e-05, 2.28666e-05, 1.9339e-05, 1.65175e-05, 1.42245e-05, 1.23361e-05, 1.07632e-05, 9.44038e-06, 8.31824e-06, 7.35916e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.13422e-05, 4.1677e-05, 4.98802e-05, 5.62988e-05, 6.13168e-05, 6.52621e-05, 6.83897e-05, 7.08927e-05, 7.29153e-05, 7.4566e-05, 7.59265e-05, 7.70583e-05, 7.80086e-05, 7.88135e-05, 7.95009e-05, 8.00925e-05, 
			4.38272e-05, 5.39178e-05, 6.20002e-05, 6.83896e-05, 7.3449e-05, 7.74742e-05, 8.07028e-05, 8.33154e-05, 8.54496e-05, 8.72094e-05, 8.86748e-05, 8.99052e-05, 9.0947e-05, 9.18379e-05, 9.26039e-05, 9.32683e-05, 
			5.61188e-05, 6.59012e-05, 7.37964e-05, 8.00994e-05, 8.51304e-05, 8.91736e-05, 9.2446e-05, 9.51178e-05, 9.73198e-05, 9.915e-05, 0.000100685, 0.000101985, 0.000103093, 0.000104046, 0.000104873, 0.000105594, 
			6.81094e-05, 7.76332e-05, 8.53528e-05, 9.15584e-05, 9.65494e-05, 0.000100588, 0.00010388, 0.000106587, 0.000108834, 0.000110714, 0.000112302, 0.000113654, 0.000114815, 0.00011582, 0.000116695, 0.000117464, 
			7.98216e-05, 8.9078e-05, 9.66306e-05, 0.000102737, 0.00010768, 0.000111701, 0.000114999, 0.000117729, 0.000120007, 0.000121926, 0.000123555, 0.00012495, 0.000126154, 0.000127201, 0.000128118, 0.000128927
		)
}

CapTable	"metal2_C_LATERAL_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000168931, 9.0889e-05, 6.14828e-05, 4.56632e-05, 3.5777e-05, 2.90644e-05, 2.42578e-05, 2.06842e-05, 1.79507e-05, 1.58115e-05, 1.41054e-05, 1.27226e-05, 1.15858e-05, 1.06395e-05, 9.8429e-06, 9.16552e-06, 
			0.000176763, 9.71902e-05, 6.68918e-05, 5.04954e-05, 4.0164e-05, 3.30938e-05, 2.79892e-05, 2.41616e-05, 2.12084e-05, 1.88776e-05, 1.70032e-05, 1.54718e-05, 1.4203e-05, 1.31391e-05, 1.22371e-05, 1.14647e-05, 
			0.000181411, 0.000101642, 7.10466e-05, 5.43756e-05, 4.38246e-05, 3.65494e-05, 3.1261e-05, 2.72682e-05, 2.41662e-05, 2.1701e-05, 1.97051e-05, 1.80635e-05, 1.66947e-05, 1.55397e-05, 1.45545e-05, 1.37061e-05, 
			0.000185091, 0.000105389, 7.46832e-05, 5.78686e-05, 4.71666e-05, 3.97554e-05, 3.4338e-05, 3.0224e-05, 2.7009e-05, 2.44392e-05, 2.23466e-05, 2.06156e-05, 1.91644e-05, 1.79332e-05, 1.68774e-05, 1.59635e-05, 
			0.000187965, 0.000108702, 7.80014e-05, 6.11142e-05, 5.03168e-05, 4.28128e-05, 3.7301e-05, 3.3092e-05, 2.97866e-05, 2.71314e-05, 2.49584e-05, 2.31522e-05, 2.16304e-05, 2.03332e-05, 1.92156e-05, 1.82438e-05
		)
}

CapTable	"metal2_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167511, 8.88174e-05, 5.88112e-05, 4.2469e-05, 3.21452e-05, 2.5076e-05, 1.99854e-05, 1.61903e-05, 1.32875e-05, 1.10222e-05, 9.22554e-06, 7.781e-06, 6.60606e-06, 5.64074e-06, 4.84066e-06, 4.17232e-06, 
			0.000174334, 9.39712e-05, 6.29588e-05, 4.59468e-05, 3.5102e-05, 2.76146e-05, 2.2178e-05, 1.80915e-05, 1.49409e-05, 1.24637e-05, 1.0485e-05, 8.8835e-06, 7.57288e-06, 6.49004e-06, 5.5878e-06, 4.83066e-06, 
			0.000177758, 9.70802e-05, 6.56752e-05, 4.83112e-05, 3.71862e-05, 2.9446e-05, 2.37888e-05, 1.95094e-05, 1.61898e-05, 1.35646e-05, 1.1456e-05, 9.74078e-06, 8.3303e-06, 7.1598e-06, 6.1807e-06, 5.3558e-06, 
			0.000180019, 9.93034e-05, 6.77036e-05, 5.013e-05, 3.88018e-05, 3.08862e-05, 2.50702e-05, 2.06482e-05, 1.72012e-05, 1.44625e-05, 1.22531e-05, 1.04484e-05, 8.95884e-06, 7.7182e-06, 6.67684e-06, 5.79678e-06, 
			0.000181302, 0.000100933, 6.92654e-05, 5.1562e-05, 4.0095e-05, 3.2054e-05, 2.61202e-05, 2.1587e-05, 1.80396e-05, 1.52104e-05, 1.29201e-05, 1.10431e-05, 9.48886e-06, 8.1905e-06, 7.0978e-06, 6.17194e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.03199e-05, 4.06029e-05, 4.88219e-05, 5.52797e-05, 6.03545e-05, 6.43524e-05, 6.75242e-05, 7.00603e-05, 7.21049e-05, 7.37662e-05, 7.51272e-05, 7.62513e-05, 7.71855e-05, 7.79695e-05, 7.86302e-05, 7.91919e-05, 
			4.31585e-05, 5.34136e-05, 6.16737e-05, 6.82343e-05, 7.34458e-05, 7.75998e-05, 8.09319e-05, 8.36222e-05, 8.58128e-05, 8.76083e-05, 8.90934e-05, 9.03282e-05, 9.13639e-05, 9.22374e-05, 9.29795e-05, 9.3614e-05, 
			5.61008e-05, 6.62481e-05, 7.44735e-05, 8.10646e-05, 8.63383e-05, 9.05803e-05, 9.4011e-05, 9.68029e-05, 9.90933e-05, 0.000100984, 0.000102556, 0.000103873, 0.000104984, 0.000105926, 0.00010673, 0.000107421, 
			6.9032e-05, 7.90979e-05, 8.7289e-05, 9.38914e-05, 9.92107e-05, 0.000103515, 0.000107015, 0.000109884, 0.000112249, 0.000114213, 0.000115856, 0.000117238, 0.000118409, 0.000119407, 0.000120263, 0.000121001, 
			8.19442e-05, 9.19016e-05, 0.000100055, 0.000106659, 0.00011201, 0.000116359, 0.000119913, 0.000122842, 0.000125268, 0.000127293, 0.000128991, 0.000130429, 0.00013165, 0.000132696, 0.000133595, 0.000134373
		)
}

CapTable	"metal2_C_TOP_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.61788e-06, 3.51392e-06, 4.30025e-06, 4.97327e-06, 5.52528e-06, 5.9795e-06, 6.34995e-06, 6.65225e-06, 6.89883e-06, 7.10187e-06, 7.26965e-06, 7.40897e-06, 7.52656e-06, 7.62447e-06, 7.70843e-06, 7.77922e-06, 
			3.49694e-06, 4.38553e-06, 5.18351e-06, 5.86914e-06, 6.44461e-06, 6.92217e-06, 7.31675e-06, 7.64252e-06, 7.91156e-06, 8.13513e-06, 8.32129e-06, 8.47793e-06, 8.61004e-06, 8.72218e-06, 8.81773e-06, 8.89984e-06, 
			4.38065e-06, 5.25766e-06, 6.05606e-06, 6.75084e-06, 7.34025e-06, 7.83249e-06, 8.24263e-06, 8.58408e-06, 8.86796e-06, 9.10679e-06, 9.30582e-06, 9.47545e-06, 9.61845e-06, 9.7414e-06, 9.8463e-06, 9.93681e-06, 
			5.25481e-06, 6.12815e-06, 6.927e-06, 7.62788e-06, 8.22635e-06, 8.72994e-06, 9.15217e-06, 9.50529e-06, 9.80176e-06, 1.00512e-05, 1.0262e-05, 1.04408e-05, 1.05936e-05, 1.07244e-05, 1.0837e-05, 1.09347e-05, 
			6.12724e-06, 6.99843e-06, 7.79698e-06, 8.50218e-06, 9.10765e-06, 9.61908e-06, 1.00511e-05, 1.04132e-05, 1.07199e-05, 1.0978e-05, 1.1198e-05, 1.13851e-05, 1.15454e-05, 1.16834e-05, 1.18025e-05, 1.19062e-05
		)
}

CapTable	"metal2_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167177, 8.8329e-05, 5.81732e-05, 4.1697e-05, 3.12614e-05, 2.41048e-05, 1.89508e-05, 1.51141e-05, 1.21885e-05, 9.91654e-06, 8.12632e-06, 6.699e-06, 5.54994e-06, 4.61678e-06, 3.85414e-06, 3.2267e-06, 
			0.000173793, 9.32492e-05, 6.20628e-05, 4.48972e-05, 3.3926e-05, 2.6342e-05, 2.08374e-05, 1.67085e-05, 1.3538e-05, 1.10598e-05, 9.09534e-06, 7.52092e-06, 6.2469e-06, 5.20834e-06, 4.35598e-06, 3.65268e-06, 
			0.000176976, 9.60944e-05, 6.44966e-05, 4.69656e-05, 3.57062e-05, 2.78656e-05, 2.2141e-05, 1.78232e-05, 1.44903e-05, 1.1873e-05, 9.78906e-06, 8.11214e-06, 6.7506e-06, 5.63716e-06, 4.7207e-06, 3.96258e-06, 
			0.000178966, 9.80274e-05, 6.62218e-05, 4.8473e-05, 3.70074e-05, 2.89926e-05, 2.31138e-05, 1.86605e-05, 1.52098e-05, 1.24896e-05, 1.0317e-05, 8.5633e-06, 7.13582e-06, 5.96536e-06, 5.00006e-06, 4.19996e-06, 
			0.000179951, 9.93482e-05, 6.74664e-05, 4.95848e-05, 3.79814e-05, 2.98464e-05, 2.3858e-05, 1.93035e-05, 1.57635e-05, 1.29654e-05, 1.0725e-05, 8.91236e-06, 7.43378e-06, 6.21924e-06, 5.21592e-06, 4.3833e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.97142e-05, 3.98201e-05, 4.79005e-05, 5.42574e-05, 5.92483e-05, 6.31818e-05, 6.6302e-05, 6.87947e-05, 7.08012e-05, 7.24297e-05, 7.37585e-05, 7.48528e-05, 7.576e-05, 7.65157e-05, 7.715e-05, 7.76857e-05, 
			4.23984e-05, 5.25055e-05, 6.0647e-05, 6.71159e-05, 7.22536e-05, 7.63496e-05, 7.96321e-05, 8.22809e-05, 8.44332e-05, 8.61947e-05, 8.76443e-05, 8.88463e-05, 8.98497e-05, 9.06922e-05, 9.1402e-05, 9.20049e-05, 
			5.52205e-05, 6.52377e-05, 7.33611e-05, 7.98723e-05, 8.50819e-05, 8.92718e-05, 9.26577e-05, 9.54094e-05, 9.76602e-05, 9.95147e-05, 0.000101051, 0.000102331, 0.000103406, 0.000104311, 0.00010508, 0.000105733, 
			6.80508e-05, 7.80066e-05, 8.6111e-05, 9.26453e-05, 9.79098e-05, 0.000102166, 0.000105627, 0.000108454, 0.000110781, 0.000112706, 0.00011431, 0.000115652, 0.000116783, 0.000117741, 0.000118554, 0.000119251, 
			8.08823e-05, 9.07507e-05, 9.883e-05, 0.000105378, 0.000110681, 0.000114987, 0.000118503, 0.000121392, 0.000123778, 0.000125762, 0.000127419, 0.000128813, 0.00012999, 0.000130989, 0.000131841, 0.000132571
		)
}

CapTable	"metal2_C_TOP_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.4392e-06, 4.62953e-06, 5.67327e-06, 6.56055e-06, 7.29706e-06, 7.90133e-06, 8.39375e-06, 8.79524e-06, 9.12334e-06, 9.3915e-06, 9.61442e-06, 9.79858e-06, 9.95173e-06, 1.00811e-05, 1.01897e-05, 1.02814e-05, 
			4.61403e-06, 5.79234e-06, 6.85124e-06, 7.76426e-06, 8.53236e-06, 9.16984e-06, 9.69588e-06, 1.01296e-05, 1.04879e-05, 1.07836e-05, 1.10317e-05, 1.12382e-05, 1.14114e-05, 1.15578e-05, 1.16822e-05, 1.17874e-05, 
			5.78872e-06, 6.9591e-06, 8.02472e-06, 8.95254e-06, 9.73991e-06, 1.03992e-05, 1.09465e-05, 1.14032e-05, 1.1782e-05, 1.20977e-05, 1.23633e-05, 1.25861e-05, 1.2774e-05, 1.29339e-05, 1.30683e-05, 1.31849e-05, 
			6.96165e-06, 8.13003e-06, 9.19941e-06, 1.01378e-05, 1.09394e-05, 1.16148e-05, 1.21788e-05, 1.26526e-05, 1.30478e-05, 1.3379e-05, 1.3658e-05, 1.38936e-05, 1.40929e-05, 1.42618e-05, 1.44078e-05, 1.45321e-05, 
			8.13712e-06, 9.30254e-06, 1.03766e-05, 1.13222e-05, 1.21359e-05, 1.28231e-05, 1.34008e-05, 1.38873e-05, 1.42954e-05, 1.4639e-05, 1.49294e-05, 1.5174e-05, 1.53834e-05, 1.55619e-05, 1.57154e-05, 1.58466e-05
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
			2.89834e-05, 3.89113e-05, 4.68576e-05, 5.31179e-05, 5.8036e-05, 6.1912e-05, 6.49818e-05, 6.74274e-05, 6.9387e-05, 7.09661e-05, 7.22466e-05, 7.32902e-05, 7.4146e-05, 7.48506e-05, 7.54325e-05, 7.59163e-05, 
			4.15303e-05, 5.14972e-05, 5.95383e-05, 6.59321e-05, 7.10151e-05, 7.50631e-05, 7.82996e-05, 8.09021e-05, 8.30034e-05, 8.47114e-05, 8.61048e-05, 8.72488e-05, 8.8191e-05, 8.8969e-05, 8.96165e-05, 9.01551e-05, 
			5.42584e-05, 6.41717e-05, 7.22227e-05, 7.86825e-05, 8.38517e-05, 8.80029e-05, 9.13451e-05, 9.40491e-05, 9.62469e-05, 9.80409e-05, 9.95138e-05, 0.000100725, 0.000101728, 0.00010256, 0.000103253, 0.000103831, 
			6.70358e-05, 7.69206e-05, 8.49787e-05, 9.14808e-05, 9.67156e-05, 0.000100938, 0.000104357, 0.000107136, 0.000109404, 0.000111264, 0.000112794, 0.000114057, 0.000115105, 0.000115978, 0.000116706, 0.000117315, 
			7.9852e-05, 8.96775e-05, 9.77339e-05, 0.000104263, 0.000109545, 0.00011382, 0.000117296, 0.000120132, 0.000122453, 0.000124362, 0.000125937, 0.000127241, 0.000128326, 0.000129229, 0.000129983, 0.000130619
		)
}

CapTable	"metal2_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.59583e-06, 6.19374e-06, 7.60624e-06, 8.81012e-06, 9.81119e-06, 1.06318e-05, 1.12999e-05, 1.18426e-05, 1.22842e-05, 1.26449e-05, 1.29399e-05, 1.31823e-05, 1.33813e-05, 1.35462e-05, 1.36835e-05, 1.37972e-05, 
			6.19071e-06, 7.78958e-06, 9.23091e-06, 1.04777e-05, 1.15269e-05, 1.23969e-05, 1.3113e-05, 1.37014e-05, 1.41846e-05, 1.45818e-05, 1.49089e-05, 1.51783e-05, 1.54021e-05, 1.55887e-05, 1.57435e-05, 1.58732e-05, 
			7.80259e-06, 9.40285e-06, 1.08617e-05, 1.21339e-05, 1.32131e-05, 1.41155e-05, 1.48639e-05, 1.54827e-05, 1.59938e-05, 1.64151e-05, 1.67641e-05, 1.70549e-05, 1.72956e-05, 1.74971e-05, 1.76654e-05, 1.78064e-05, 
			9.42564e-06, 1.10319e-05, 1.25035e-05, 1.37952e-05, 1.4898e-05, 1.58243e-05, 1.65964e-05, 1.7237e-05, 1.77673e-05, 1.82077e-05, 1.85745e-05, 1.88794e-05, 1.9134e-05, 1.93468e-05, 1.95256e-05, 1.9676e-05, 
			1.10628e-05, 1.26723e-05, 1.41557e-05, 1.54633e-05, 1.65833e-05, 1.75281e-05, 1.83162e-05, 1.89731e-05, 1.9521e-05, 1.99755e-05, 2.0355e-05, 2.06715e-05, 2.09361e-05, 2.11586e-05, 2.1347e-05, 2.15012e-05
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

CapTable	"metal2_C_LATERAL_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177929, 0.000101624, 7.28974e-05, 5.7114e-05, 4.68984e-05, 3.96636e-05, 3.42474e-05, 3.0039e-05, 2.66808e-05, 2.39472e-05, 2.1686e-05, 1.97914e-05, 1.8186e-05, 1.68125e-05, 1.56272e-05, 1.45962e-05, 
			0.000188522, 0.000109789, 7.95798e-05, 6.28388e-05, 5.19356e-05, 4.41878e-05, 3.83718e-05, 3.38416e-05, 3.02176e-05, 2.7259e-05, 2.48046e-05, 2.27414e-05, 2.09874e-05, 1.94812e-05, 1.81767e-05, 1.70377e-05, 
			0.00019466, 0.000115101, 8.42146e-05, 6.69708e-05, 5.5707e-05, 4.76704e-05, 4.16212e-05, 3.68968e-05, 3.3107e-05, 3.00042e-05, 2.74224e-05, 2.52452e-05, 2.33882e-05, 2.17882e-05, 2.03976e-05, 1.91792e-05, 
			0.000198958, 0.000119083, 8.78578e-05, 7.03362e-05, 5.88458e-05, 5.06294e-05, 4.44288e-05, 3.95732e-05, 3.56678e-05, 3.24616e-05, 2.9786e-05, 2.7523e-05, 2.55866e-05, 2.39132e-05, 2.24538e-05, 2.11708e-05, 
			0.000201902, 0.000122229, 9.08728e-05, 7.3204e-05, 6.158e-05, 5.32514e-05, 4.69498e-05, 4.2001e-05, 3.80108e-05, 3.47264e-05, 3.1978e-05, 2.9647e-05, 2.76464e-05, 2.59124e-05, 2.43956e-05, 2.30578e-05
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

CapTable	"metal2_C_TOP_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.05559e-06, 3.96708e-06, 4.77501e-06, 5.4947e-06, 6.13539e-06, 6.70661e-06, 7.21155e-06, 7.65888e-06, 8.05341e-06, 8.40108e-06, 8.70763e-06, 8.97794e-06, 9.21643e-06, 9.42749e-06, 9.61264e-06, 9.77805e-06, 
			3.87235e-06, 4.76618e-06, 5.5837e-06, 6.32605e-06, 6.99571e-06, 7.59615e-06, 8.13181e-06, 8.60804e-06, 9.03157e-06, 9.40625e-06, 9.73829e-06, 1.00323e-05, 1.02931e-05, 1.05251e-05, 1.07297e-05, 1.09126e-05, 
			4.70471e-06, 5.58647e-06, 6.40932e-06, 7.16386e-06, 7.84928e-06, 8.46787e-06, 9.02213e-06, 9.51761e-06, 9.95923e-06, 1.03526e-05, 1.07028e-05, 1.10127e-05, 1.12899e-05, 1.15361e-05, 1.1755e-05, 1.19506e-05, 
			5.5415e-06, 6.42163e-06, 7.24665e-06, 8.00857e-06, 8.70412e-06, 9.33499e-06, 9.90264e-06, 1.04116e-05, 1.0867e-05, 1.12738e-05, 1.16377e-05, 1.19605e-05, 1.22499e-05, 1.25075e-05, 1.27375e-05, 1.29432e-05, 
			6.38816e-06, 7.26196e-06, 8.08955e-06, 8.85698e-06, 9.56031e-06, 1.01994e-05, 1.07771e-05, 1.12973e-05, 1.17627e-05, 1.21811e-05, 1.25547e-05, 1.28883e-05, 1.31871e-05, 1.3454e-05, 1.36932e-05, 1.39072e-05
		)
}

CapTable	"metal2_C_LATERAL_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00017661, 9.97874e-05, 7.05618e-05, 5.43062e-05, 4.3652e-05, 3.60166e-05, 3.02398e-05, 2.57106e-05, 2.20706e-05, 1.90916e-05, 1.66194e-05, 1.4545e-05, 1.27887e-05, 1.12901e-05, 1.00032e-05, 8.89144e-06, 
			0.000186536, 0.000107211, 7.64284e-05, 5.9145e-05, 4.77384e-05, 3.9531e-05, 3.33016e-05, 2.84032e-05, 2.44554e-05, 2.12152e-05, 1.85184e-05, 1.62489e-05, 1.43216e-05, 1.26724e-05, 1.12519e-05, 1.00215e-05, 
			0.000191906, 0.000111687, 8.01636e-05, 6.23194e-05, 5.05e-05, 4.19572e-05, 3.54528e-05, 3.03238e-05, 2.61784e-05, 2.27668e-05, 1.99195e-05, 1.7517e-05, 1.54714e-05, 1.37165e-05, 1.22011e-05, 1.08852e-05, 
			0.000195339, 0.000114743, 8.28258e-05, 6.46538e-05, 5.25632e-05, 4.38012e-05, 3.71108e-05, 3.1821e-05, 2.75346e-05, 2.39982e-05, 2.10396e-05, 1.85373e-05, 1.64017e-05, 1.45653e-05, 1.29762e-05, 1.15934e-05, 
			0.000197331, 0.000116885, 8.47878e-05, 6.64254e-05, 5.41628e-05, 4.52554e-05, 3.84356e-05, 3.30282e-05, 2.86366e-05, 2.50054e-05, 2.1961e-05, 1.93807e-05, 1.71741e-05, 1.52729e-05, 1.36246e-05, 1.21876e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.75906e-05, 2.26672e-05, 2.69986e-05, 3.07363e-05, 3.39761e-05, 3.67901e-05, 3.92372e-05, 4.13679e-05, 4.32262e-05, 4.48496e-05, 4.62718e-05, 4.75209e-05, 4.86217e-05, 4.95951e-05, 5.04591e-05, 5.12289e-05, 
			2.23752e-05, 2.72822e-05, 3.15992e-05, 3.53816e-05, 3.86926e-05, 4.15876e-05, 4.41193e-05, 4.63345e-05, 4.82755e-05, 4.99797e-05, 5.14797e-05, 5.28035e-05, 5.39757e-05, 5.50175e-05, 5.59467e-05, 5.67787e-05, 
			2.71498e-05, 3.19302e-05, 3.61914e-05, 3.99562e-05, 4.32699e-05, 4.6183e-05, 4.87421e-05, 5.09912e-05, 5.29705e-05, 5.47158e-05, 5.62586e-05, 5.76262e-05, 5.88424e-05, 5.99281e-05, 6.09006e-05, 6.17752e-05, 
			3.1886e-05, 3.65602e-05, 4.07462e-05, 4.44658e-05, 4.77552e-05, 5.06576e-05, 5.32187e-05, 5.54785e-05, 5.74751e-05, 5.92425e-05, 6.08111e-05, 6.22071e-05, 6.34538e-05, 6.45707e-05, 6.55755e-05, 6.64828e-05, 
			3.657e-05, 4.11198e-05, 4.52222e-05, 4.8882e-05, 5.2132e-05, 5.50106e-05, 5.75602e-05, 5.9818e-05, 6.18198e-05, 6.35987e-05, 6.51833e-05, 6.65986e-05, 6.78673e-05, 6.90082e-05, 7.00382e-05, 7.0972e-05
		)
}

CapTable	"metal2_C_TOP_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.95667e-06, 5.14862e-06, 6.21033e-06, 7.15793e-06, 8.00488e-06, 8.75904e-06, 9.42786e-06, 1.00193e-05, 1.0541e-05, 1.10005e-05, 1.14049e-05, 1.17607e-05, 1.20736e-05, 1.2348e-05, 1.25907e-05, 1.28042e-05, 
			5.03706e-06, 6.21085e-06, 7.29029e-06, 8.27226e-06, 9.16008e-06, 9.95681e-06, 1.06685e-05, 1.13015e-05, 1.18627e-05, 1.23606e-05, 1.27985e-05, 1.31872e-05, 1.35298e-05, 1.38319e-05, 1.40991e-05, 1.43348e-05, 
			6.13995e-06, 7.30731e-06, 8.39743e-06, 9.40049e-06, 1.03128e-05, 1.11361e-05, 1.18749e-05, 1.2535e-05, 1.31229e-05, 1.36453e-05, 1.41073e-05, 1.45183e-05, 1.4882e-05, 1.52032e-05, 1.54882e-05, 1.57402e-05, 
			7.25831e-06, 8.42639e-06, 9.52455e-06, 1.05412e-05, 1.14711e-05, 1.23134e-05, 1.30733e-05, 1.37517e-05, 1.43597e-05, 1.49007e-05, 1.53816e-05, 1.58089e-05, 1.6188e-05, 1.65246e-05, 1.68229e-05, 1.70871e-05, 
			8.39482e-06, 9.56095e-06, 1.0666e-05, 1.16931e-05, 1.26357e-05, 1.34922e-05, 1.42662e-05, 1.49603e-05, 1.55834e-05, 1.61393e-05, 1.6634e-05, 1.70749e-05, 1.74663e-05, 1.7814e-05, 1.81229e-05, 1.83977e-05
		)
}

CapTable	"metal2_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176374, 9.94572e-05, 7.01392e-05, 5.3795e-05, 4.30584e-05, 3.5349e-05, 2.95068e-05, 2.49218e-05, 2.12354e-05, 1.82192e-05, 1.57184e-05, 1.36234e-05, 1.18538e-05, 1.03485e-05, 9.0605e-06, 7.95294e-06, 
			0.000186183, 0.000106751, 7.58618e-05, 5.84772e-05, 4.69774e-05, 3.8686e-05, 3.2383e-05, 2.74224e-05, 2.34232e-05, 2.01422e-05, 1.74147e-05, 1.51238e-05, 1.31836e-05, 1.1529e-05, 1.01099e-05, 8.88664e-06, 
			0.000191418, 0.00011108, 7.94398e-05, 6.14846e-05, 4.95636e-05, 4.09298e-05, 3.43468e-05, 2.91516e-05, 2.49524e-05, 2.1499e-05, 1.8621e-05, 1.61982e-05, 1.41416e-05, 1.23839e-05, 1.08734e-05, 9.56866e-06, 
			0.000194701, 0.000113976, 8.19324e-05, 6.36418e-05, 5.14432e-05, 4.2586e-05, 3.58136e-05, 3.04556e-05, 2.6115e-05, 2.25372e-05, 1.95494e-05, 1.70291e-05, 1.48854e-05, 1.30502e-05, 1.147e-05, 1.01033e-05, 
			0.000196529, 0.000115945, 8.3715e-05, 6.52282e-05, 5.28534e-05, 4.38478e-05, 3.69448e-05, 3.14692e-05, 2.7024e-05, 2.33532e-05, 2.02824e-05, 1.76873e-05, 1.54766e-05, 1.3581e-05, 1.19467e-05, 1.05307e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.61742e-05, 2.10745e-05, 2.53312e-05, 2.90632e-05, 3.23407e-05, 3.52161e-05, 3.7739e-05, 3.99487e-05, 4.18843e-05, 4.35795e-05, 4.50647e-05, 4.63672e-05, 4.75107e-05, 4.85158e-05, 4.94025e-05, 5.01836e-05, 
			2.10113e-05, 2.58796e-05, 3.02369e-05, 3.41094e-05, 3.75408e-05, 4.05716e-05, 4.32432e-05, 4.55955e-05, 4.76635e-05, 4.9483e-05, 5.10836e-05, 5.2493e-05, 5.3735e-05, 5.48305e-05, 5.58003e-05, 5.6658e-05, 
			2.59793e-05, 3.08495e-05, 3.52551e-05, 3.92017e-05, 4.27147e-05, 4.58322e-05, 4.85919e-05, 5.103e-05, 5.31825e-05, 5.50817e-05, 5.6758e-05, 5.824e-05, 5.95489e-05, 6.07081e-05, 6.17363e-05, 6.2649e-05, 
			3.10535e-05, 3.59304e-05, 4.03606e-05, 4.43466e-05, 4.79107e-05, 5.10828e-05, 5.39006e-05, 5.63977e-05, 5.86092e-05, 6.05665e-05, 6.22984e-05, 6.3834e-05, 6.51941e-05, 6.64021e-05, 6.74757e-05, 6.84312e-05, 
			3.62074e-05, 4.1067e-05, 4.55036e-05, 4.95106e-05, 5.31039e-05, 5.63122e-05, 5.91693e-05, 6.17085e-05, 6.39647e-05, 6.59655e-05, 6.77413e-05, 6.9318e-05, 7.07188e-05, 7.19651e-05, 7.30752e-05, 7.40652e-05
		)
}

CapTable	"metal2_C_TOP_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.16013e-06, 6.74564e-06, 8.16242e-06, 9.43531e-06, 1.05755e-05, 1.15914e-05, 1.24929e-05, 1.32889e-05, 1.39885e-05, 1.46013e-05, 1.51366e-05, 1.56042e-05, 1.60118e-05, 1.63653e-05, 1.66734e-05, 1.69395e-05, 
			6.62007e-06, 8.19455e-06, 9.64859e-06, 1.09774e-05, 1.21803e-05, 1.32613e-05, 1.42255e-05, 1.50804e-05, 1.58346e-05, 1.64989e-05, 1.70807e-05, 1.75905e-05, 1.80359e-05, 1.84223e-05, 1.87611e-05, 1.90548e-05, 
			8.12379e-06, 9.70248e-06, 1.11823e-05, 1.25478e-05, 1.37915e-05, 1.49139e-05, 1.59178e-05, 1.68109e-05, 1.76022e-05, 1.83002e-05, 1.89129e-05, 1.94503e-05, 1.99194e-05, 2.03311e-05, 2.06896e-05, 2.10022e-05, 
			9.66332e-06, 1.12541e-05, 1.27554e-05, 1.41481e-05, 1.54204e-05, 1.65713e-05, 1.76048e-05, 1.85256e-05, 1.93433e-05, 2.00654e-05, 2.06999e-05, 2.12581e-05, 2.17467e-05, 2.21735e-05, 2.25475e-05, 2.28737e-05, 
			1.12394e-05, 1.28384e-05, 1.43573e-05, 1.5769e-05, 1.70628e-05, 1.82361e-05, 1.92911e-05, 2.02326e-05, 2.10687e-05, 2.18074e-05, 2.24604e-05, 2.30334e-05, 2.35362e-05, 2.39763e-05, 2.43605e-05, 2.46967e-05
		)
}

CapTable	"metal2_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000175937, 9.8845e-05, 6.93576e-05, 5.28544e-05, 4.19744e-05, 3.414e-05, 2.81936e-05, 2.35254e-05, 1.9777e-05, 1.67186e-05, 1.41937e-05, 1.20909e-05, 1.03277e-05, 8.84078e-06, 7.58158e-06, 6.511e-06, 
			0.000185525, 0.000105895, 7.48144e-05, 5.72514e-05, 4.55918e-05, 3.71632e-05, 3.07474e-05, 2.56992e-05, 2.1637e-05, 1.83155e-05, 1.55683e-05, 1.32761e-05, 1.13506e-05, 9.7243e-06, 8.34478e-06, 7.16986e-06, 
			0.000190509, 0.000109955, 7.81066e-05, 5.99598e-05, 4.78698e-05, 3.90936e-05, 3.2396e-05, 2.71144e-05, 2.28558e-05, 1.93679e-05, 1.6478e-05, 1.40633e-05, 1.20316e-05, 1.03133e-05, 8.85344e-06, 7.60952e-06, 
			0.000193516, 0.00011256, 8.02968e-05, 6.1807e-05, 4.94358e-05, 4.04358e-05, 3.35516e-05, 2.81124e-05, 2.37196e-05, 2.01164e-05, 1.71266e-05, 1.46254e-05, 1.25179e-05, 1.07338e-05, 9.21684e-06, 7.92222e-06, 
			0.000195048, 0.000114223, 8.17672e-05, 6.3079e-05, 5.05324e-05, 4.13878e-05, 3.43794e-05, 2.88306e-05, 2.43432e-05, 2.06576e-05, 1.75963e-05, 1.50316e-05, 1.28699e-05, 1.10373e-05, 9.4781e-06, 8.14684e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.55671e-05, 2.03221e-05, 2.44635e-05, 2.81042e-05, 3.13069e-05, 3.41217e-05, 3.65924e-05, 3.87576e-05, 4.06529e-05, 4.23107e-05, 4.37604e-05, 4.50284e-05, 4.61379e-05, 4.71107e-05, 4.79624e-05, 4.87103e-05, 
			2.02947e-05, 2.50416e-05, 2.92989e-05, 3.30915e-05, 3.64574e-05, 3.94343e-05, 4.20595e-05, 4.437e-05, 4.64009e-05, 4.8183e-05, 4.97494e-05, 5.11224e-05, 5.23286e-05, 5.3389e-05, 5.4321e-05, 5.51421e-05, 
			2.51748e-05, 2.99397e-05, 3.42618e-05, 3.81389e-05, 4.15956e-05, 4.46674e-05, 4.73859e-05, 4.97867e-05, 5.19033e-05, 5.37672e-05, 5.54097e-05, 5.68536e-05, 5.81253e-05, 5.92464e-05, 6.0234e-05, 6.1106e-05, 
			3.01767e-05, 3.49668e-05, 3.9326e-05, 4.3255e-05, 4.67717e-05, 4.99046e-05, 5.26841e-05, 5.51493e-05, 5.73261e-05, 5.92489e-05, 6.09461e-05, 6.24431e-05, 6.37645e-05, 6.49306e-05, 6.59612e-05, 6.68723e-05, 
			3.52748e-05, 4.00617e-05, 4.4441e-05, 4.84007e-05, 5.19559e-05, 5.513e-05, 5.7956e-05, 6.04655e-05, 6.26876e-05, 6.46545e-05, 6.63936e-05, 6.79308e-05, 6.92911e-05, 7.0493e-05, 7.15564e-05, 7.24986e-05
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
			1.49123e-05, 1.95294e-05, 2.3577e-05, 2.71487e-05, 3.02999e-05, 3.30743e-05, 3.55083e-05, 3.76379e-05, 3.94958e-05, 4.11135e-05, 4.25199e-05, 4.37398e-05, 4.47973e-05, 4.57152e-05, 4.65095e-05, 4.71995e-05, 
			1.95581e-05, 2.42048e-05, 2.8392e-05, 3.21362e-05, 3.54672e-05, 3.84142e-05, 4.10113e-05, 4.32913e-05, 4.52871e-05, 4.70291e-05, 4.85478e-05, 4.98685e-05, 5.10163e-05, 5.20154e-05, 5.28806e-05, 5.36334e-05, 
			2.4389e-05, 2.90839e-05, 3.33601e-05, 3.72074e-05, 4.06427e-05, 4.3694e-05, 4.63911e-05, 4.8765e-05, 5.08469e-05, 5.26681e-05, 5.42593e-05, 5.56459e-05, 5.68547e-05, 5.79045e-05, 5.88186e-05, 5.96125e-05, 
			2.93717e-05, 3.41173e-05, 3.84518e-05, 4.23659e-05, 4.58728e-05, 4.89939e-05, 5.17576e-05, 5.4196e-05, 5.63371e-05, 5.82138e-05, 5.98568e-05, 6.12894e-05, 6.25399e-05, 6.36294e-05, 6.45768e-05, 6.54019e-05, 
			3.44764e-05, 3.92422e-05, 4.36135e-05, 4.7572e-05, 5.11268e-05, 5.42951e-05, 5.71045e-05, 5.95878e-05, 6.17731e-05, 6.3692e-05, 6.53693e-05, 6.6838e-05, 6.81179e-05, 6.92354e-05, 7.02084e-05, 7.10555e-05
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

CapTable	"metal2_C_BOTTOM_GP_37MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.1521e-05, 1.42542e-05, 1.64434e-05, 1.82629e-05, 1.9812e-05, 2.11526e-05, 2.23271e-05, 2.33663e-05, 2.42927e-05, 2.51246e-05, 2.58763e-05, 2.65596e-05, 2.71844e-05, 2.77585e-05, 2.82887e-05, 2.87809e-05, 
			1.362e-05, 1.60432e-05, 1.80884e-05, 1.98384e-05, 2.13566e-05, 2.26877e-05, 2.38648e-05, 2.49142e-05, 2.58561e-05, 2.67069e-05, 2.74799e-05, 2.81864e-05, 2.88357e-05, 2.94351e-05, 2.99913e-05, 3.05098e-05, 
			1.5539e-05, 1.7754e-05, 1.96744e-05, 2.13478e-05, 2.28185e-05, 2.41206e-05, 2.52813e-05, 2.6323e-05, 2.72636e-05, 2.81182e-05, 2.88989e-05, 2.96158e-05, 3.02775e-05, 3.08913e-05, 3.14633e-05, 3.19988e-05, 
			1.7319e-05, 1.93791e-05, 2.11918e-05, 2.27924e-05, 2.42116e-05, 2.54783e-05, 2.66156e-05, 2.76425e-05, 2.85752e-05, 2.94269e-05, 3.02086e-05, 3.09301e-05, 3.1599e-05, 3.22221e-05, 3.28049e-05, 3.33525e-05, 
			1.8995e-05, 2.09188e-05, 2.26366e-05, 2.41678e-05, 2.55368e-05, 2.67675e-05, 2.7879e-05, 2.88885e-05, 2.98101e-05, 3.06558e-05, 3.14358e-05, 3.21585e-05, 3.28315e-05, 3.34606e-05, 3.40515e-05, 3.46085e-05
		)
}

CapTable	"metal2_C_LATERAL_37MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182701, 0.000107877, 8.03842e-05, 6.5611e-05, 5.62084e-05, 4.96178e-05, 4.4703e-05, 4.08764e-05, 3.78014e-05, 3.52686e-05, 3.31412e-05, 3.13248e-05, 2.97524e-05, 2.83752e-05, 2.71562e-05, 2.60672e-05, 
			0.000195131, 0.000117827, 8.88006e-05, 7.30194e-05, 6.28832e-05, 5.57382e-05, 5.03878e-05, 4.6208e-05, 4.28388e-05, 4.00562e-05, 3.77126e-05, 3.57064e-05, 3.39652e-05, 3.24362e-05, 3.10796e-05, 2.98648e-05, 
			0.000203042, 0.000124812, 9.50186e-05, 7.86562e-05, 6.8092e-05, 6.06018e-05, 5.49702e-05, 5.05554e-05, 4.69854e-05, 4.40278e-05, 4.15294e-05, 3.93848e-05, 3.75186e-05, 3.58754e-05, 3.44136e-05, 3.31014e-05, 
			0.000208992, 0.000130332, 0.000100098, 8.33726e-05, 7.25108e-05, 6.47812e-05, 5.89476e-05, 5.4359e-05, 5.06366e-05, 4.75436e-05, 4.49236e-05, 4.2668e-05, 4.07e-05, 3.89626e-05, 3.74134e-05, 3.60194e-05, 
			0.000213448, 0.000134867, 0.000104401, 8.74452e-05, 7.63802e-05, 6.84798e-05, 6.24962e-05, 5.77726e-05, 5.39294e-05, 5.0727e-05, 4.80066e-05, 4.56588e-05, 4.36048e-05, 4.17874e-05, 4.01628e-05, 3.86978e-05
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

CapTable	"metal2_C_BOTTOM_GP_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.23384e-05, 1.57244e-05, 1.86142e-05, 2.11456e-05, 2.34051e-05, 2.54411e-05, 2.7286e-05, 2.89635e-05, 3.04928e-05, 3.1888e-05, 3.31618e-05, 3.43256e-05, 3.53888e-05, 3.63607e-05, 3.72485e-05, 3.80598e-05, 
			1.53587e-05, 1.85974e-05, 2.14875e-05, 2.40903e-05, 2.64516e-05, 2.86033e-05, 3.05695e-05, 3.23689e-05, 3.4017e-05, 3.55271e-05, 3.69109e-05, 3.8179e-05, 3.9341e-05, 4.04054e-05, 4.13803e-05, 4.22735e-05, 
			1.83603e-05, 2.15311e-05, 2.44301e-05, 2.70812e-05, 2.9509e-05, 3.17387e-05, 3.37872e-05, 3.56701e-05, 3.7401e-05, 3.89918e-05, 4.04538e-05, 4.1796e-05, 4.30286e-05, 4.416e-05, 4.51977e-05, 4.615e-05, 
			2.13804e-05, 2.45303e-05, 2.744e-05, 3.01269e-05, 3.26066e-05, 3.48948e-05, 3.70052e-05, 3.89514e-05, 4.07456e-05, 4.2398e-05, 4.39197e-05, 4.53196e-05, 4.66073e-05, 4.779e-05, 4.88774e-05, 4.98749e-05, 
			2.44448e-05, 2.75768e-05, 3.05003e-05, 3.32165e-05, 3.57359e-05, 3.80686e-05, 4.02271e-05, 4.2223e-05, 4.40666e-05, 4.57677e-05, 4.73365e-05, 4.87818e-05, 5.01127e-05, 5.13367e-05, 5.24628e-05, 5.3497e-05
		)
}

CapTable	"metal2_C_TOP_GP_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.47617e-06, 4.42802e-06, 5.24651e-06, 5.97344e-06, 6.62378e-06, 7.21163e-06, 7.74668e-06, 8.23499e-06, 8.68085e-06, 9.08899e-06, 9.46264e-06, 9.8045e-06, 1.01176e-05, 1.04039e-05, 1.06663e-05, 1.09065e-05, 
			4.27493e-06, 5.1778e-06, 5.99331e-06, 6.73422e-06, 7.41093e-06, 8.03076e-06, 8.59951e-06, 9.12192e-06, 9.60214e-06, 1.00435e-05, 1.04492e-05, 1.08219e-05, 1.11641e-05, 1.14783e-05, 1.17666e-05, 1.20308e-05, 
			5.06689e-06, 5.94533e-06, 6.75712e-06, 7.50802e-06, 8.2015e-06, 8.84192e-06, 9.43379e-06, 9.9803e-06, 1.04845e-05, 1.09495e-05, 1.1378e-05, 1.17728e-05, 1.21361e-05, 1.24703e-05, 1.27777e-05, 1.30597e-05, 
			5.85565e-06, 6.72272e-06, 7.53616e-06, 8.29548e-06, 9.00176e-06, 9.65813e-06, 1.02674e-05, 1.0832e-05, 1.13545e-05, 1.18378e-05, 1.2284e-05, 1.26959e-05, 1.30753e-05, 1.34256e-05, 1.37472e-05, 1.40442e-05, 
			6.65321e-06, 7.51162e-06, 8.32633e-06, 9.09309e-06, 9.81089e-06, 1.048e-05, 1.1103e-05, 1.16821e-05, 1.22193e-05, 1.2717e-05, 1.31773e-05, 1.36031e-05, 1.39957e-05, 1.43585e-05, 1.46926e-05, 1.50011e-05
		)
}

CapTable	"metal2_C_LATERAL_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179229, 0.000103278, 7.47482e-05, 5.90122e-05, 4.87138e-05, 4.12916e-05, 3.56078e-05, 3.10748e-05, 2.73546e-05, 2.42368e-05, 2.1583e-05, 1.92966e-05, 1.73083e-05, 1.55662e-05, 1.40305e-05, 1.26701e-05, 
			0.000190329, 0.000111832, 8.16802e-05, 6.48406e-05, 5.37128e-05, 4.56442e-05, 3.94388e-05, 3.44736e-05, 3.0388e-05, 2.69568e-05, 2.40306e-05, 2.15054e-05, 1.93061e-05, 1.73765e-05, 1.56735e-05, 1.41629e-05, 
			0.000196815, 0.000117325, 8.63298e-05, 6.88318e-05, 5.72026e-05, 4.87206e-05, 4.21722e-05, 3.69168e-05, 3.25818e-05, 2.89338e-05, 2.5817e-05, 2.31236e-05, 2.07744e-05, 1.87106e-05, 1.68871e-05, 1.52681e-05, 
			0.000201242, 0.000121254, 8.97528e-05, 7.18286e-05, 5.98436e-05, 5.10702e-05, 4.42746e-05, 3.88064e-05, 3.4286e-05, 3.04752e-05, 2.72144e-05, 2.43924e-05, 2.19282e-05, 1.97612e-05, 1.78445e-05, 1.61411e-05, 
			0.000204078, 0.000124114, 9.23254e-05, 7.41204e-05, 6.18882e-05, 5.29064e-05, 4.59292e-05, 4.03e-05, 3.5638e-05, 3.17018e-05, 2.83292e-05, 2.54068e-05, 2.28526e-05, 2.06042e-05, 1.86136e-05, 1.68433e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.1741e-05, 1.49984e-05, 1.77894e-05, 2.0248e-05, 2.24473e-05, 2.44332e-05, 2.62369e-05, 2.78789e-05, 2.93738e-05, 3.07363e-05, 3.19785e-05, 3.31129e-05, 3.41438e-05, 3.50832e-05, 3.59396e-05, 3.67171e-05, 
			1.4678e-05, 1.78114e-05, 2.06196e-05, 2.31589e-05, 2.54688e-05, 2.75777e-05, 2.95077e-05, 3.12757e-05, 3.28914e-05, 3.43702e-05, 3.57233e-05, 3.69612e-05, 3.80909e-05, 3.91216e-05, 4.00624e-05, 4.09182e-05, 
			1.76147e-05, 2.07006e-05, 2.35299e-05, 2.61281e-05, 2.85135e-05, 3.07059e-05, 3.27216e-05, 3.45742e-05, 3.62783e-05, 3.78394e-05, 3.92712e-05, 4.05836e-05, 4.17831e-05, 4.28787e-05, 4.38799e-05, 4.4793e-05, 
			2.05853e-05, 2.36639e-05, 2.6519e-05, 2.91618e-05, 3.16072e-05, 3.38631e-05, 3.59449e-05, 3.78642e-05, 3.96328e-05, 4.1258e-05, 4.27501e-05, 4.41192e-05, 4.53715e-05, 4.65183e-05, 4.75652e-05, 4.85213e-05, 
			2.36158e-05, 2.66899e-05, 2.95674e-05, 3.22479e-05, 3.47368e-05, 3.70449e-05, 3.9179e-05, 4.11511e-05, 4.29714e-05, 4.46457e-05, 4.61843e-05, 4.75977e-05, 4.88932e-05, 5.00775e-05, 5.11619e-05, 5.21517e-05
		)
}

CapTable	"metal2_C_TOP_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.43078e-06, 5.66126e-06, 6.72635e-06, 7.67133e-06, 8.52225e-06, 9.294e-06, 9.99607e-06, 1.06364e-05, 1.12233e-05, 1.17601e-05, 1.22508e-05, 1.26966e-05, 1.31061e-05, 1.3479e-05, 1.38173e-05, 1.41269e-05, 
			5.47765e-06, 6.65199e-06, 7.71759e-06, 8.68888e-06, 9.57843e-06, 1.03951e-05, 1.11448e-05, 1.18327e-05, 1.24678e-05, 1.30507e-05, 1.35849e-05, 1.40732e-05, 1.45207e-05, 1.49299e-05, 1.5303e-05, 1.56445e-05, 
			6.51971e-06, 7.66883e-06, 8.73731e-06, 9.72653e-06, 1.06415e-05, 1.14901e-05, 1.22748e-05, 1.29995e-05, 1.36652e-05, 1.42807e-05, 1.4846e-05, 1.53635e-05, 1.58391e-05, 1.62751e-05, 1.6673e-05, 1.70368e-05, 
			7.56769e-06, 8.70845e-06, 9.78242e-06, 1.07874e-05, 1.17232e-05, 1.25968e-05, 1.34077e-05, 1.41583e-05, 1.48507e-05, 1.54903e-05, 1.60792e-05, 1.66201e-05, 1.7118e-05, 1.75733e-05, 1.79912e-05, 1.83728e-05, 
			8.63225e-06, 9.76653e-06, 1.08484e-05, 1.18687e-05, 1.28254e-05, 1.37159e-05, 1.45472e-05, 1.53183e-05, 1.60307e-05, 1.66902e-05, 1.72988e-05, 1.78581e-05, 1.83722e-05, 1.88452e-05, 1.92771e-05, 1.96726e-05
		)
}

CapTable	"metal2_C_LATERAL_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178941, 0.000102885, 7.42562e-05, 5.84254e-05, 4.80382e-05, 4.05338e-05, 3.47752e-05, 3.01756e-05, 2.63968e-05, 2.32292e-05, 2.05336e-05, 1.82138e-05, 1.61997e-05, 1.44392e-05, 1.28919e-05, 1.15261e-05, 
			0.000189916, 0.000111305, 8.10418e-05, 6.40958e-05, 5.28682e-05, 4.47074e-05, 3.84186e-05, 3.33792e-05, 2.9229e-05, 2.5743e-05, 2.27716e-05, 2.02106e-05, 1.79845e-05, 1.60365e-05, 1.43225e-05, 1.28084e-05, 
			0.000196264, 0.00011665, 8.55338e-05, 6.79204e-05, 5.61832e-05, 4.7602e-05, 4.09644e-05, 3.56302e-05, 3.12274e-05, 2.75224e-05, 2.43594e-05, 2.163e-05, 1.92547e-05, 1.71741e-05, 1.53421e-05, 1.37222e-05, 
			0.000200538, 0.000120419, 8.87886e-05, 7.07418e-05, 5.86426e-05, 4.97654e-05, 4.28768e-05, 3.73274e-05, 3.27378e-05, 2.88696e-05, 2.55634e-05, 2.27068e-05, 2.02188e-05, 1.80376e-05, 1.61158e-05, 1.44156e-05, 
			0.00020321, 0.000123108, 9.11842e-05, 7.28514e-05, 6.05008e-05, 5.14122e-05, 4.43404e-05, 3.86292e-05, 3.38984e-05, 2.9906e-05, 2.64898e-05, 2.35356e-05, 2.09604e-05, 1.87016e-05, 1.67102e-05, 1.49479e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.10912e-05, 1.42291e-05, 1.69403e-05, 1.93478e-05, 2.15163e-05, 2.34824e-05, 2.52693e-05, 2.68931e-05, 2.83653e-05, 2.96978e-05, 3.09016e-05, 3.19867e-05, 3.29627e-05, 3.38381e-05, 3.46235e-05, 3.53258e-05, 
			1.397e-05, 1.70202e-05, 1.97797e-05, 2.22919e-05, 2.45897e-05, 2.66923e-05, 2.86137e-05, 3.03654e-05, 3.1959e-05, 3.34049e-05, 3.47131e-05, 3.58941e-05, 3.69571e-05, 3.79128e-05, 3.87704e-05, 3.95391e-05, 
			1.68799e-05, 1.99167e-05, 2.2725e-05, 2.53161e-05, 2.77032e-05, 2.98975e-05, 3.19087e-05, 3.37474e-05, 3.54226e-05, 3.69441e-05, 3.83218e-05, 3.95671e-05, 4.0689e-05, 4.1699e-05, 4.26053e-05, 4.34188e-05, 
			1.98566e-05, 2.29165e-05, 2.57715e-05, 2.84246e-05, 3.08772e-05, 3.31387e-05, 3.5216e-05, 3.71167e-05, 3.88502e-05, 4.04256e-05, 4.18539e-05, 4.3145e-05, 4.431e-05, 4.53586e-05, 4.6301e-05, 4.71464e-05, 
			2.29229e-05, 2.60002e-05, 2.88947e-05, 3.15924e-05, 3.40954e-05, 3.64066e-05, 3.8531e-05, 4.04762e-05, 4.22521e-05, 4.38671e-05, 4.53321e-05, 4.66573e-05, 4.78536e-05, 4.89306e-05, 4.98986e-05, 5.0768e-05
		)
}

CapTable	"metal2_C_TOP_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.76958e-06, 7.40732e-06, 8.83856e-06, 1.01192e-05, 1.12783e-05, 1.23333e-05, 1.32945e-05, 1.41696e-05, 1.49662e-05, 1.56892e-05, 1.63433e-05, 1.69336e-05, 1.74657e-05, 1.79446e-05, 1.83741e-05, 1.87591e-05, 
			7.19601e-06, 8.78037e-06, 1.02305e-05, 1.15617e-05, 1.27856e-05, 1.39102e-05, 1.49422e-05, 1.58873e-05, 1.67496e-05, 1.75337e-05, 1.82447e-05, 1.88882e-05, 1.94694e-05, 1.99929e-05, 2.04627e-05, 2.08845e-05, 
			8.6373e-06, 1.02075e-05, 1.16776e-05, 1.30459e-05, 1.43146e-05, 1.54882e-05, 1.65695e-05, 1.7561e-05, 1.8467e-05, 1.92931e-05, 2.00437e-05, 2.07233e-05, 2.13373e-05, 2.18907e-05, 2.23885e-05, 2.28352e-05, 
			1.01076e-05, 1.16841e-05, 1.31737e-05, 1.4572e-05, 1.58768e-05, 1.70867e-05, 1.82026e-05, 1.9228e-05, 2.01671e-05, 2.10238e-05, 2.18027e-05, 2.25088e-05, 2.31465e-05, 2.37216e-05, 2.42398e-05, 2.47056e-05, 
			1.16191e-05, 1.32002e-05, 1.47101e-05, 1.61342e-05, 1.74654e-05, 1.87012e-05, 1.98439e-05, 2.08957e-05, 2.1859e-05, 2.27383e-05, 2.3538e-05, 2.42631e-05, 2.49188e-05, 2.55116e-05, 2.60445e-05, 2.6524e-05
		)
}

CapTable	"metal2_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178405, 0.000102164, 7.33512e-05, 5.73382e-05, 4.67756e-05, 3.91102e-05, 3.3212e-05, 2.84976e-05, 2.46312e-05, 2.14028e-05, 1.86724e-05, 1.63413e-05, 1.43367e-05, 1.26039e-05, 1.10993e-05, 9.78898e-06, 
			0.00018916, 0.000110337, 7.98578e-05, 6.2698e-05, 5.12704e-05, 4.2933e-05, 3.64966e-05, 3.13414e-05, 2.7108e-05, 2.357e-05, 2.0576e-05, 1.80178e-05, 1.58172e-05, 1.39135e-05, 1.22604e-05, 1.08192e-05, 
			0.000195253, 0.000115396, 8.40344e-05, 6.6187e-05, 5.42394e-05, 4.54794e-05, 3.86988e-05, 3.32586e-05, 2.87862e-05, 2.50448e-05, 2.18762e-05, 1.91674e-05, 1.68362e-05, 1.48182e-05, 1.30651e-05, 1.15359e-05, 
			0.00019923, 0.000118839, 8.69468e-05, 6.86594e-05, 5.6352e-05, 4.73046e-05, 4.02868e-05, 3.46484e-05, 3.00074e-05, 2.61226e-05, 2.283e-05, 2.0014e-05, 1.75889e-05, 1.54894e-05, 1.36634e-05, 1.20704e-05, 
			0.000201568, 0.00012118, 8.89902e-05, 7.04224e-05, 5.78762e-05, 4.86352e-05, 4.14534e-05, 3.56742e-05, 3.09134e-05, 2.69254e-05, 2.35436e-05, 2.065e-05, 1.81565e-05, 1.59962e-05, 1.41179e-05, 1.24779e-05
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

CapTable	"metal1_C_LATERAL_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000172144, 9.1068e-05, 5.9575e-05, 4.2387e-05, 3.1609e-05, 2.43258e-05, 1.91659e-05, 1.53857e-05, 1.25441e-05, 1.03631e-05, 8.65944e-06, 7.30834e-06, 6.22244e-06, 5.33926e-06, 4.6133e-06, 4.0108e-06, 
			0.000179965, 9.6861e-05, 6.4218e-05, 4.62652e-05, 3.49086e-05, 2.71644e-05, 2.1625e-05, 1.75268e-05, 1.44161e-05, 1.20058e-05, 1.01057e-05, 8.58544e-06, 7.35342e-06, 6.34352e-06, 5.5072e-06, 4.80828e-06, 
			0.000183756, 0.0001003, 6.72476e-05, 4.8938e-05, 3.7275e-05, 2.92604e-05, 2.34832e-05, 1.91758e-05, 1.58812e-05, 1.33092e-05, 1.1267e-05, 9.62188e-06, 8.27984e-06, 7.17294e-06, 6.25096e-06, 5.4762e-06, 
			0.000185894, 0.000102706, 6.951e-05, 5.09996e-05, 3.91456e-05, 3.09536e-05, 2.50056e-05, 2.05432e-05, 1.71089e-05, 1.44116e-05, 1.22573e-05, 1.05121e-05, 9.08084e-06, 7.89434e-06, 6.90132e-06, 6.0631e-06, 
			0.000187676, 0.000104668, 7.1384e-05, 5.27334e-05, 4.07286e-05, 3.23854e-05, 2.6304e-05, 2.17178e-05, 1.817e-05, 1.53696e-05, 1.31223e-05, 1.12933e-05, 9.78666e-06, 8.53246e-06, 7.4786e-06, 6.5857e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.2632e-05, 5.68388e-05, 6.79696e-05, 7.65258e-05, 8.30742e-05, 8.80974e-05, 9.19753e-05, 9.49956e-05, 9.73699e-05, 9.92556e-05, 0.000100769, 0.000101997, 0.000103003, 0.000103834, 0.000104528, 0.000105112, 
			6.07932e-05, 7.50496e-05, 8.62948e-05, 9.50212e-05, 0.000101773, 0.000107012, 0.000111102, 0.000114322, 0.00011688, 0.000118934, 0.000120597, 0.000121959, 0.000123084, 0.000124021, 0.00012481, 0.00012548, 
			7.91738e-05, 9.32812e-05, 0.000104476, 0.000113233, 0.000120066, 0.000125415, 0.000129628, 0.000132973, 0.000135652, 0.000137819, 0.000139588, 0.000141047, 0.000142261, 0.000143279, 0.000144142, 0.000144879, 
			9.75288e-05, 0.000111442, 0.000122549, 0.000131296, 0.000138164, 0.000143574, 0.000147867, 0.000151298, 0.000154065, 0.000156317, 0.000158168, 0.000159703, 0.000160988, 0.000162072, 0.000162996, 0.000163788, 
			0.000115854, 0.000129641, 0.000140683, 0.000149418, 0.000156313, 0.000161777, 0.000166133, 0.000169633, 0.000172471, 0.000174794, 0.000176714, 0.000178314, 0.000179661, 0.000180804, 0.000181782, 0.000182624
		)
}

CapTable	"metal1_C_LATERAL_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000172229, 9.11822e-05, 5.97214e-05, 4.25632e-05, 3.18108e-05, 2.45476e-05, 1.94017e-05, 1.56304e-05, 1.27931e-05, 1.06124e-05, 8.90574e-06, 7.5487e-06, 6.4544e-06, 5.5607e-06, 4.82238e-06, 4.20588e-06, 
			0.000180172, 9.71184e-05, 6.45272e-05, 4.66228e-05, 3.5309e-05, 2.7601e-05, 2.2091e-05, 1.80156e-05, 1.49216e-05, 1.25225e-05, 1.06287e-05, 9.11038e-06, 7.87632e-06, 6.86082e-06, 6.01574e-06, 5.3052e-06, 
			0.000184101, 0.000100716, 6.77342e-05, 4.94918e-05, 3.7889e-05, 2.99266e-05, 2.41932e-05, 1.99212e-05, 1.66543e-05, 1.41028e-05, 1.20746e-05, 1.04374e-05, 9.0979e-06, 7.98864e-06, 7.05984e-06, 6.27424e-06, 
			0.0001864, 0.000103305, 7.02018e-05, 5.17796e-05, 4.0005e-05, 3.18824e-05, 2.5993e-05, 2.15788e-05, 1.8183e-05, 1.5515e-05, 1.33818e-05, 1.165e-05, 1.02252e-05, 9.03892e-06, 8.04038e-06, 7.19146e-06, 
			0.000188359, 0.000105465, 7.22954e-05, 5.37522e-05, 4.18434e-05, 3.35842e-05, 2.75734e-05, 2.30452e-05, 1.95438e-05, 1.67788e-05, 1.45567e-05, 1.27438e-05, 1.12449e-05, 9.9909e-06, 8.93034e-06, 8.02454e-06
		)
}

CapTable	"metal1_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000172062, 9.09456e-05, 5.94126e-05, 4.21884e-05, 3.13802e-05, 2.40726e-05, 1.88934e-05, 1.50987e-05, 1.22465e-05, 1.00583e-05, 8.35004e-06, 6.99654e-06, 5.91002e-06, 5.02774e-06, 4.30382e-06, 3.7044e-06, 
			0.000179834, 9.66808e-05, 6.39906e-05, 4.59954e-05, 3.4603e-05, 2.683e-05, 2.12678e-05, 1.71525e-05, 1.40294e-05, 1.16105e-05, 9.70502e-06, 8.18216e-06, 6.9497e-06, 5.94118e-06, 5.10776e-06, 4.41298e-06, 
			0.000183565, 0.000100053, 6.69468e-05, 4.85896e-05, 3.68862e-05, 2.8839e-05, 2.30364e-05, 1.871e-05, 1.54016e-05, 1.28203e-05, 1.07726e-05, 9.12492e-06, 7.78302e-06, 6.67838e-06, 5.76038e-06, 4.9911e-06, 
			0.000185634, 0.000102384, 6.91286e-05, 5.05658e-05, 3.86676e-05, 3.04402e-05, 2.44646e-05, 1.99817e-05, 1.65327e-05, 1.38257e-05, 1.1666e-05, 9.91888e-06, 8.48864e-06, 7.30554e-06, 6.31794e-06, 5.48684e-06, 
			0.000187339, 0.000104262, 7.09134e-05, 5.2206e-05, 4.01534e-05, 3.17724e-05, 2.56618e-05, 2.10538e-05, 1.74911e-05, 1.46812e-05, 1.24291e-05, 1.0599e-05, 9.09462e-06, 7.84528e-06, 6.79858e-06, 5.91468e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.07997e-05, 5.43425e-05, 6.49176e-05, 7.30242e-05, 7.92185e-05, 8.39603e-05, 8.762e-05, 9.04638e-05, 9.26942e-05, 9.44642e-05, 9.58796e-05, 9.70247e-05, 9.79584e-05, 9.87269e-05, 9.93641e-05, 9.98988e-05, 
			5.84313e-05, 7.20723e-05, 8.27808e-05, 9.10736e-05, 9.74808e-05, 0.000102445, 0.000106319, 0.000109366, 0.000111782, 0.00011372, 0.000115286, 0.000116563, 0.000117615, 0.000118489, 0.00011922, 0.000119836, 
			7.63213e-05, 8.98423e-05, 0.000100527, 0.000108875, 0.000115378, 0.000120464, 0.000124469, 0.000127646, 0.000130189, 0.000132243, 0.000133917, 0.000135293, 0.000136434, 0.000137386, 0.00013819, 0.000138869, 
			9.42111e-05, 0.000107578, 0.00011821, 0.000126573, 0.000133132, 0.000138296, 0.000142395, 0.000145668, 0.000148306, 0.00015045, 0.000152209, 0.000153664, 0.000154877, 0.000155894, 0.000156756, 0.000157489, 
			0.000112097, 0.000125372, 0.000135967, 0.000144344, 0.000150948, 0.000156183, 0.000160354, 0.000163705, 0.00016642, 0.00016864, 0.000170468, 0.000171988, 0.000173261, 0.000174335, 0.000175247, 0.000176027
		)
}

CapTable	"metal1_C_TOP_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.9217e-06, 2.60848e-06, 3.19942e-06, 3.6868e-06, 4.07646e-06, 4.38787e-06, 4.6311e-06, 4.82454e-06, 4.97977e-06, 5.10172e-06, 5.20093e-06, 5.28195e-06, 5.34817e-06, 5.40282e-06, 5.44862e-06, 5.48637e-06, 
			2.58731e-06, 3.26274e-06, 3.8662e-06, 4.3672e-06, 4.77464e-06, 5.10507e-06, 5.36633e-06, 5.57674e-06, 5.74676e-06, 5.88356e-06, 5.99533e-06, 6.08738e-06, 6.1633e-06, 6.22688e-06, 6.28002e-06, 6.32418e-06, 
			3.24185e-06, 3.91952e-06, 4.52686e-06, 5.03434e-06, 5.4527e-06, 5.7949e-06, 6.06814e-06, 6.29012e-06, 6.47061e-06, 6.61767e-06, 6.73868e-06, 6.83905e-06, 6.92201e-06, 6.99269e-06, 7.05131e-06, 7.10235e-06, 
			3.90028e-06, 4.57376e-06, 5.18226e-06, 5.69515e-06, 6.12143e-06, 6.47022e-06, 6.75261e-06, 6.98346e-06, 7.17221e-06, 7.32707e-06, 7.45565e-06, 7.56237e-06, 7.6509e-06, 7.72733e-06, 7.79186e-06, 7.84642e-06, 
			4.55683e-06, 5.23042e-06, 5.84106e-06, 6.35805e-06, 6.79012e-06, 7.14512e-06, 7.4349e-06, 7.67283e-06, 7.8684e-06, 8.02954e-06, 8.16453e-06, 8.2763e-06, 8.37186e-06, 8.4514e-06, 8.52042e-06, 8.57975e-06
		)
}

CapTable	"metal1_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000171855, 9.06418e-05, 5.90224e-05, 4.17284e-05, 3.08682e-05, 2.35258e-05, 1.83269e-05, 1.45244e-05, 1.16742e-05, 9.49518e-06, 7.80176e-06, 6.46708e-06, 5.40236e-06, 4.54386e-06, 3.8451e-06, 3.27172e-06, 
			0.000179494, 9.62224e-05, 6.34304e-05, 4.53566e-05, 3.39096e-05, 2.61032e-05, 2.05262e-05, 1.64103e-05, 1.32976e-05, 1.08974e-05, 9.01666e-06, 7.5227e-06, 6.32202e-06, 5.34712e-06, 4.54832e-06, 3.8887e-06, 
			0.000183079, 9.9434e-05, 6.6218e-05, 4.77794e-05, 3.60228e-05, 2.79472e-05, 2.21362e-05, 1.78172e-05, 1.45281e-05, 1.19748e-05, 9.96116e-06, 8.3518e-06, 7.05086e-06, 5.98874e-06, 5.11406e-06, 4.38832e-06, 
			0.000184999, 0.000101608, 6.8239e-05, 4.95956e-05, 3.76482e-05, 2.93982e-05, 2.34216e-05, 1.89543e-05, 1.55332e-05, 1.28631e-05, 1.07463e-05, 9.04606e-06, 7.66514e-06, 6.53282e-06, 5.59626e-06, 4.816e-06, 
			0.000186549, 0.000103326, 6.98648e-05, 5.10804e-05, 3.89842e-05, 3.05876e-05, 2.4484e-05, 1.99002e-05, 1.6374e-05, 1.36098e-05, 1.14091e-05, 9.63454e-06, 8.1878e-06, 6.9969e-06, 6.00882e-06, 5.18302e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.03672e-05, 5.37759e-05, 6.42423e-05, 7.22683e-05, 7.84002e-05, 8.30959e-05, 8.67169e-05, 8.95308e-05, 9.17391e-05, 9.34871e-05, 9.48856e-05, 9.60147e-05, 9.69355e-05, 9.76913e-05, 9.83173e-05, 9.88399e-05, 
			5.78812e-05, 7.13953e-05, 8.20124e-05, 9.02256e-05, 9.6573e-05, 0.000101493, 0.000105331, 0.000108348, 0.000110741, 0.000112657, 0.000114204, 0.000115465, 0.000116503, 0.000117362, 0.000118078, 0.000118681, 
			7.56641e-05, 8.90729e-05, 9.96737e-05, 0.000107949, 0.000114398, 0.000119443, 0.000123413, 0.000126562, 0.00012908, 0.000131113, 0.000132768, 0.000134126, 0.00013525, 0.000136188, 0.000136974, 0.000137638, 
			9.3461e-05, 0.000106727, 0.000117282, 0.000125582, 0.000132092, 0.000137217, 0.000141283, 0.00014453, 0.000147143, 0.000149267, 0.000151006, 0.00015244, 0.000153636, 0.000154636, 0.000155481, 0.000156196, 
			0.000111267, 0.000124451, 0.00013498, 0.000143298, 0.000149859, 0.000155059, 0.000159199, 0.000162525, 0.000165216, 0.000167414, 0.000169222, 0.000170722, 0.000171975, 0.000173029, 0.000173922, 0.000174683
		)
}

CapTable	"metal1_C_TOP_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.45762e-06, 3.33954e-06, 4.09912e-06, 4.7243e-06, 5.22565e-06, 5.62345e-06, 5.93768e-06, 6.18649e-06, 6.38434e-06, 6.54264e-06, 6.67041e-06, 6.77374e-06, 6.85849e-06, 6.92796e-06, 6.98689e-06, 7.03471e-06, 
			3.30883e-06, 4.18391e-06, 4.95203e-06, 5.59996e-06, 6.12603e-06, 6.54874e-06, 6.8867e-06, 7.15767e-06, 7.37549e-06, 7.55181e-06, 7.69553e-06, 7.81363e-06, 7.91085e-06, 7.99123e-06, 8.05998e-06, 8.11655e-06, 
			4.15333e-06, 5.02792e-06, 5.80453e-06, 6.4614e-06, 7.00164e-06, 7.43995e-06, 7.79394e-06, 8.08031e-06, 8.31224e-06, 8.50157e-06, 8.65661e-06, 8.78598e-06, 8.89211e-06, 8.98103e-06, 9.05731e-06, 9.122e-06, 
			5.001e-06, 5.87226e-06, 6.65239e-06, 7.31568e-06, 7.8653e-06, 8.31443e-06, 8.68e-06, 8.97764e-06, 9.22079e-06, 9.42032e-06, 9.58467e-06, 9.72264e-06, 9.83664e-06, 9.93394e-06, 1.00144e-05, 1.00855e-05, 
			5.84892e-06, 6.72078e-06, 7.50412e-06, 8.17419e-06, 8.73206e-06, 9.18998e-06, 9.56493e-06, 9.87146e-06, 1.01242e-05, 1.03316e-05, 1.05038e-05, 1.06489e-05, 1.07708e-05, 1.08728e-05, 1.09608e-05, 1.10346e-05
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
			4.00341e-05, 5.33907e-05, 6.38226e-05, 7.18208e-05, 7.79285e-05, 8.26017e-05, 8.61971e-05, 8.89847e-05, 9.11645e-05, 9.28834e-05, 9.42512e-05, 9.53488e-05, 9.62376e-05, 9.69617e-05, 9.75563e-05, 9.80478e-05, 
			5.74863e-05, 7.09834e-05, 8.15867e-05, 8.97912e-05, 9.61241e-05, 0.000101023, 0.000104834, 0.00010782, 0.000110177, 0.000112054, 0.000113561, 0.000114781, 0.000115777, 0.000116594, 0.000117271, 0.000117833, 
			7.52166e-05, 8.86439e-05, 9.92558e-05, 0.000107534, 0.000113974, 0.000118999, 0.00012294, 0.000126052, 0.000128529, 0.000130516, 0.000132122, 0.00013343, 0.000134504, 0.000135391, 0.000136131, 0.000136748, 
			9.29815e-05, 0.00010629, 0.000116875, 0.000125186, 0.000131691, 0.000136798, 0.000140831, 0.000144036, 0.000146601, 0.000148672, 0.000150354, 0.000151733, 0.00015287, 0.000153816, 0.000154604, 0.000155267, 
			0.000110777, 0.000124025, 0.000134596, 0.000142933, 0.000149493, 0.000154671, 0.000158776, 0.000162055, 0.000164692, 0.00016683, 0.000168575, 0.000170012, 0.000171201, 0.000172193, 0.000173024, 0.000173724
		)
}

CapTable	"metal1_C_TOP_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.05786e-06, 4.14046e-06, 5.07404e-06, 5.84584e-06, 6.46535e-06, 6.95753e-06, 7.34601e-06, 7.65293e-06, 7.89636e-06, 8.09038e-06, 8.24606e-06, 8.37211e-06, 8.475e-06, 8.55944e-06, 8.62864e-06, 8.68648e-06, 
			4.15231e-06, 5.2352e-06, 6.1899e-06, 6.9892e-06, 7.64035e-06, 8.16344e-06, 8.58157e-06, 8.91585e-06, 9.18402e-06, 9.40044e-06, 9.57599e-06, 9.7189e-06, 9.83651e-06, 9.93379e-06, 1.00142e-05, 1.00822e-05, 
			5.25484e-06, 6.33608e-06, 7.29923e-06, 8.11376e-06, 8.78342e-06, 9.32613e-06, 9.76374e-06, 1.01166e-05, 1.04017e-05, 1.06337e-05, 1.08232e-05, 1.09783e-05, 1.11069e-05, 1.12142e-05, 1.13021e-05, 1.1377e-05, 
			6.36014e-06, 7.43949e-06, 8.40781e-06, 9.23232e-06, 9.91449e-06, 1.04711e-05, 1.09232e-05, 1.12901e-05, 1.15883e-05, 1.18321e-05, 1.20326e-05, 1.21976e-05, 1.23351e-05, 1.24476e-05, 1.25442e-05, 1.26244e-05, 
			7.46382e-06, 8.5457e-06, 9.51875e-06, 1.03516e-05, 1.10441e-05, 1.16118e-05, 1.20752e-05, 1.24531e-05, 1.27616e-05, 1.30151e-05, 1.3225e-05, 1.33967e-05, 1.35409e-05, 1.36614e-05, 1.37625e-05, 1.38489e-05
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

CapTable	"metal1_C_LATERAL_28MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000187059, 0.000109107, 7.89866e-05, 6.20396e-05, 5.08148e-05, 4.26908e-05, 3.64864e-05, 3.15786e-05, 2.76012e-05, 2.43204e-05, 2.15778e-05, 1.92608e-05, 1.72867e-05, 1.55925e-05, 1.41295e-05, 1.28593e-05, 
			0.000200086, 0.000118858, 8.67362e-05, 6.84574e-05, 5.62758e-05, 4.74336e-05, 4.06694e-05, 3.53126e-05, 3.09666e-05, 2.73774e-05, 2.4373e-05, 2.18308e-05, 1.9661e-05, 1.77952e-05, 1.61808e-05, 1.4776e-05, 
			0.000207244, 0.000124738, 9.16308e-05, 7.2636e-05, 5.99204e-05, 5.06634e-05, 4.35682e-05, 3.79402e-05, 3.33672e-05, 2.9585e-05, 2.64136e-05, 2.37258e-05, 2.14276e-05, 1.94477e-05, 1.77312e-05, 1.62347e-05, 
			0.00021145, 0.000128607, 9.49964e-05, 7.55894e-05, 6.25558e-05, 5.30456e-05, 4.57386e-05, 3.99332e-05, 3.5209e-05, 3.12956e-05, 2.80094e-05, 2.52198e-05, 2.28306e-05, 2.0769e-05, 1.89786e-05, 1.7415e-05, 
			0.000214454, 0.000131446, 9.7548e-05, 7.78858e-05, 6.464e-05, 5.49524e-05, 4.75002e-05, 4.15708e-05, 3.67384e-05, 3.273e-05, 2.9359e-05, 2.64934e-05, 2.40354e-05, 2.19114e-05, 2.0064e-05, 1.84482e-05
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

CapTable	"metal1_C_TOP_GP_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.40445e-06, 3.08486e-06, 3.68266e-06, 4.21105e-06, 4.68335e-06, 5.10936e-06, 5.49123e-06, 5.83397e-06, 6.13989e-06, 6.41367e-06, 6.65772e-06, 6.87583e-06, 7.07014e-06, 7.24307e-06, 7.39801e-06, 7.53573e-06, 
			2.99423e-06, 3.66014e-06, 4.26813e-06, 4.81849e-06, 5.31822e-06, 5.77094e-06, 6.18006e-06, 6.54865e-06, 6.87913e-06, 7.17611e-06, 7.44152e-06, 7.67998e-06, 7.89308e-06, 8.08334e-06, 8.25432e-06, 8.40655e-06, 
			3.60171e-06, 4.25968e-06, 4.87313e-06, 5.43645e-06, 5.95271e-06, 6.42154e-06, 6.84746e-06, 7.23164e-06, 7.57854e-06, 7.89077e-06, 8.17073e-06, 8.42284e-06, 8.64819e-06, 8.85123e-06, 9.03293e-06, 9.19621e-06, 
			4.22017e-06, 4.87568e-06, 5.4932e-06, 6.06545e-06, 6.59073e-06, 7.07054e-06, 7.50786e-06, 7.9033e-06, 8.26168e-06, 8.58487e-06, 8.87547e-06, 9.13786e-06, 9.37282e-06, 9.58455e-06, 9.77517e-06, 9.94625e-06, 
			4.84581e-06, 5.50262e-06, 6.12222e-06, 6.70046e-06, 7.23246e-06, 7.7207e-06, 8.16644e-06, 8.57066e-06, 8.93781e-06, 9.26895e-06, 9.56877e-06, 9.83853e-06, 1.0082e-05, 1.03013e-05, 1.04986e-05, 1.06772e-05
		)
}

CapTable	"metal1_C_LATERAL_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.00018658, 0.000108462, 7.81792e-05, 6.10762e-05, 4.97034e-05, 4.14404e-05, 3.51064e-05, 3.00788e-05, 2.59908e-05, 2.26088e-05, 1.97737e-05, 1.73728e-05, 1.53227e-05, 1.356e-05, 1.20355e-05, 1.07104e-05, 
			0.000199445, 0.000118014, 8.56942e-05, 6.72248e-05, 5.4862e-05, 4.5849e-05, 3.89254e-05, 3.3421e-05, 2.89392e-05, 2.5226e-05, 2.21088e-05, 1.94648e-05, 1.72034e-05, 1.52557e-05, 1.35684e-05, 1.20992e-05, 
			0.000206466, 0.00012373, 9.03972e-05, 7.11856e-05, 5.82632e-05, 4.88108e-05, 4.15326e-05, 3.57352e-05, 3.10062e-05, 2.70812e-05, 2.37804e-05, 2.0976e-05, 1.85729e-05, 1.64997e-05, 1.47004e-05, 1.31309e-05, 
			0.000210568, 0.000127477, 9.36208e-05, 7.3975e-05, 6.07124e-05, 5.09854e-05, 4.34748e-05, 3.74804e-05, 3.2582e-05, 2.85094e-05, 2.50786e-05, 2.21586e-05, 1.96526e-05, 1.74869e-05, 1.56042e-05, 1.39594e-05, 
			0.000213488, 0.000130213, 9.6047e-05, 7.61232e-05, 6.2626e-05, 5.26996e-05, 4.5023e-05, 3.88846e-05, 3.386e-05, 2.96754e-05, 2.61444e-05, 2.31344e-05, 2.05468e-05, 1.83073e-05, 1.63575e-05, 1.46514e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_28MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.01744e-05, 2.5716e-05, 3.04854e-05, 3.46849e-05, 3.84157e-05, 4.17388e-05, 4.46982e-05, 4.73312e-05, 4.96708e-05, 5.1748e-05, 5.35911e-05, 5.52264e-05, 5.66776e-05, 5.79662e-05, 5.91116e-05, 6.01307e-05, 
			2.5354e-05, 3.07904e-05, 3.56608e-05, 4.00316e-05, 4.39532e-05, 4.74673e-05, 5.0609e-05, 5.34128e-05, 5.59114e-05, 5.81359e-05, 6.01152e-05, 6.18764e-05, 6.34439e-05, 6.484e-05, 6.60845e-05, 6.71953e-05, 
			3.0758e-05, 3.61676e-05, 4.10902e-05, 4.5548e-05, 4.95686e-05, 5.31826e-05, 5.64231e-05, 5.9322e-05, 6.19113e-05, 6.42217e-05, 6.62825e-05, 6.81204e-05, 6.97601e-05, 7.12241e-05, 7.25325e-05, 7.37031e-05, 
			3.6395e-05, 4.17864e-05, 4.67326e-05, 5.12316e-05, 5.53002e-05, 5.89674e-05, 6.22614e-05, 6.52148e-05, 6.7858e-05, 7.02204e-05, 7.23326e-05, 7.42194e-05, 7.59063e-05, 7.74154e-05, 7.87668e-05, 7.99783e-05, 
			4.2185e-05, 4.7563e-05, 5.2509e-05, 5.70192e-05, 6.1108e-05, 6.47986e-05, 6.81208e-05, 7.11032e-05, 7.37776e-05, 7.6173e-05, 7.8317e-05, 8.02366e-05, 8.19556e-05, 8.34956e-05, 8.4878e-05, 8.61188e-05
		)
}

CapTable	"metal1_C_TOP_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.02867e-06, 3.89009e-06, 4.64132e-06, 5.31364e-06, 5.91653e-06, 6.45842e-06, 6.94513e-06, 7.38144e-06, 7.77191e-06, 8.12073e-06, 8.43144e-06, 8.70902e-06, 8.95601e-06, 9.17669e-06, 9.37397e-06, 9.54861e-06, 
			3.77179e-06, 4.61827e-06, 5.38923e-06, 6.09067e-06, 6.72828e-06, 7.30593e-06, 7.82799e-06, 8.29796e-06, 8.72033e-06, 9.09916e-06, 9.43907e-06, 9.74233e-06, 1.00142e-05, 1.02562e-05, 1.04739e-05, 1.06671e-05, 
			4.5438e-06, 5.38346e-06, 6.1641e-06, 6.88327e-06, 7.5416e-06, 8.14146e-06, 8.68582e-06, 9.17732e-06, 9.62094e-06, 1.00196e-05, 1.03784e-05, 1.07009e-05, 1.09888e-05, 1.12464e-05, 1.14783e-05, 1.16856e-05, 
			5.33381e-06, 6.17123e-06, 6.95906e-06, 7.69007e-06, 8.36194e-06, 8.9764e-06, 9.53577e-06, 1.00438e-05, 1.05019e-05, 1.09161e-05, 1.12877e-05, 1.16234e-05, 1.19234e-05, 1.21944e-05, 1.2438e-05, 1.26555e-05, 
			6.1353e-06, 6.97396e-06, 7.76697e-06, 8.50725e-06, 9.18926e-06, 9.81539e-06, 1.03863e-05, 1.09059e-05, 1.13774e-05, 1.18024e-05, 1.21852e-05, 1.25315e-05, 1.28424e-05, 1.31234e-05, 1.33748e-05, 1.3602e-05
		)
}

CapTable	"metal1_C_LATERAL_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000186451, 0.000108285, 7.7954e-05, 6.08048e-05, 4.93882e-05, 4.10846e-05, 3.47134e-05, 2.96522e-05, 2.55348e-05, 2.21272e-05, 1.92704e-05, 1.68514e-05, 1.47867e-05, 1.30125e-05, 1.14796e-05, 1.01487e-05, 
			0.000199257, 0.000117769, 8.53938e-05, 6.68706e-05, 5.44568e-05, 4.53964e-05, 3.84296e-05, 3.28866e-05, 2.83706e-05, 2.46278e-05, 2.14856e-05, 1.88209e-05, 1.65429e-05, 1.45825e-05, 1.28859e-05, 1.14105e-05, 
			0.000206208, 0.000123409, 9.00138e-05, 7.0742e-05, 5.77628e-05, 4.82576e-05, 4.09316e-05, 3.50914e-05, 3.03248e-05, 2.63678e-05, 2.304e-05, 2.02132e-05, 1.77926e-05, 1.5706e-05, 1.38974e-05, 1.23222e-05, 
			0.000210232, 0.000127071, 9.31466e-05, 7.3435e-05, 6.01106e-05, 5.03266e-05, 4.27646e-05, 3.67244e-05, 3.1786e-05, 2.76794e-05, 2.42202e-05, 2.12774e-05, 1.87533e-05, 1.65744e-05, 1.46829e-05, 1.30331e-05, 
			0.000213064, 0.000129714, 9.54746e-05, 7.54802e-05, 6.19172e-05, 5.19302e-05, 4.41992e-05, 3.80128e-05, 3.29464e-05, 2.87266e-05, 2.51666e-05, 2.21332e-05, 1.9528e-05, 1.72758e-05, 1.5318e-05, 1.36084e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.8326e-05, 2.34329e-05, 2.78461e-05, 3.17531e-05, 3.52392e-05, 3.83529e-05, 4.11345e-05, 4.36145e-05, 4.58242e-05, 4.77891e-05, 4.95362e-05, 5.10882e-05, 5.24675e-05, 5.3694e-05, 5.47844e-05, 5.57557e-05, 
			2.30894e-05, 2.81669e-05, 3.27297e-05, 3.68417e-05, 4.05468e-05, 4.38759e-05, 4.68614e-05, 4.9533e-05, 5.19198e-05, 5.40484e-05, 5.59462e-05, 5.76361e-05, 5.91419e-05, 6.04842e-05, 6.16805e-05, 6.27491e-05, 
			2.80363e-05, 3.31375e-05, 3.77917e-05, 4.2022e-05, 4.58501e-05, 4.93057e-05, 5.24119e-05, 5.52004e-05, 5.76965e-05, 5.99284e-05, 6.1923e-05, 6.37031e-05, 6.52937e-05, 6.67134e-05, 6.79826e-05, 6.91175e-05, 
			3.31558e-05, 3.82711e-05, 4.298e-05, 4.72796e-05, 5.11859e-05, 5.47181e-05, 5.79033e-05, 6.07683e-05, 6.33383e-05, 6.56417e-05, 6.77039e-05, 6.95485e-05, 7.11996e-05, 7.26771e-05, 7.39995e-05, 7.51847e-05, 
			3.83922e-05, 4.35268e-05, 4.82708e-05, 5.26133e-05, 5.65695e-05, 6.01567e-05, 6.33966e-05, 6.63167e-05, 6.89422e-05, 7.12996e-05, 7.34128e-05, 7.53081e-05, 7.70072e-05, 7.85294e-05, 7.98959e-05, 8.11204e-05
		)
}

CapTable	"metal1_C_TOP_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.79837e-06, 4.89003e-06, 5.84897e-06, 6.70444e-06, 7.47286e-06, 8.16409e-06, 8.78517e-06, 9.34167e-06, 9.83879e-06, 1.02819e-05, 1.0676e-05, 1.1026e-05, 1.13363e-05, 1.16113e-05, 1.18554e-05, 1.20712e-05, 
			4.74581e-06, 5.82167e-06, 6.80346e-06, 7.69942e-06, 8.51446e-06, 9.25338e-06, 9.92079e-06, 1.05215e-05, 1.10603e-05, 1.15423e-05, 1.19724e-05, 1.23552e-05, 1.26956e-05, 1.29988e-05, 1.32682e-05, 1.35071e-05, 
			5.72869e-06, 6.80001e-06, 7.79803e-06, 8.71875e-06, 9.56245e-06, 1.03313e-05, 1.10281e-05, 1.16571e-05, 1.22228e-05, 1.27298e-05, 1.31834e-05, 1.3589e-05, 1.39501e-05, 1.42725e-05, 1.45587e-05, 1.4814e-05, 
			6.73816e-06, 7.81027e-06, 8.82051e-06, 9.75852e-06, 1.06216e-05, 1.14106e-05, 1.21282e-05, 1.2777e-05, 1.33616e-05, 1.38868e-05, 1.43582e-05, 1.478e-05, 1.51564e-05, 1.54928e-05, 1.57921e-05, 1.60587e-05, 
			7.76806e-06, 8.84512e-06, 9.8649e-06, 1.08161e-05, 1.16938e-05, 1.2498e-05, 1.323e-05, 1.38939e-05, 1.44936e-05, 1.5033e-05, 1.55179e-05, 1.5952e-05, 1.63408e-05, 1.66877e-05, 1.69968e-05, 1.7273e-05
		)
}

CapTable	"metal1_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000186287, 0.00010805, 7.76498e-05, 6.04332e-05, 4.89536e-05, 4.0593e-05, 3.4173e-05, 2.90722e-05, 2.49248e-05, 2.14968e-05, 1.8629e-05, 1.62073e-05, 1.41474e-05, 1.23848e-05, 1.0869e-05, 9.55984e-06, 
			0.000199013, 0.000117445, 8.49892e-05, 6.63878e-05, 5.39016e-05, 4.4777e-05, 3.7756e-05, 3.21694e-05, 2.76212e-05, 2.3857e-05, 2.07038e-05, 1.80373e-05, 1.57657e-05, 1.38189e-05, 1.21422e-05, 1.06918e-05, 
			0.000205868, 0.000122979, 8.9493e-05, 7.01352e-05, 5.70776e-05, 4.75046e-05, 4.01226e-05, 3.42386e-05, 2.94406e-05, 2.5464e-05, 2.21276e-05, 1.9302e-05, 1.68913e-05, 1.48222e-05, 1.30375e-05, 1.14916e-05, 
			0.00020978, 0.00012652, 9.24974e-05, 7.26948e-05, 5.92894e-05, 4.94368e-05, 4.1819e-05, 3.57368e-05, 3.07696e-05, 2.66464e-05, 2.3182e-05, 2.02442e-05, 1.77342e-05, 1.55771e-05, 1.37139e-05, 1.20978e-05, 
			0.000212488, 0.00012903, 9.46878e-05, 7.46006e-05, 6.09566e-05, 5.09024e-05, 4.31186e-05, 3.6894e-05, 3.1803e-05, 2.75712e-05, 2.4011e-05, 2.0988e-05, 1.84022e-05, 1.61771e-05, 1.42534e-05, 1.25826e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.78609e-05, 2.28567e-05, 2.71877e-05, 3.10201e-05, 3.44433e-05, 3.75054e-05, 4.02423e-05, 4.26845e-05, 4.48599e-05, 4.67949e-05, 4.85151e-05, 5.00421e-05, 5.13985e-05, 5.26024e-05, 5.36714e-05, 5.46227e-05, 
			2.25492e-05, 2.75275e-05, 3.201e-05, 3.60537e-05, 3.97009e-05, 4.29813e-05, 4.59252e-05, 4.85607e-05, 5.09153e-05, 5.30153e-05, 5.48857e-05, 5.65518e-05, 5.80339e-05, 5.93542e-05, 6.05283e-05, 6.15757e-05, 
			2.74242e-05, 3.24367e-05, 3.70181e-05, 4.11857e-05, 4.49626e-05, 4.83729e-05, 5.14416e-05, 5.41967e-05, 5.66631e-05, 5.88681e-05, 6.08364e-05, 6.2592e-05, 6.4159e-05, 6.55572e-05, 6.68032e-05, 6.79159e-05, 
			3.24782e-05, 3.75154e-05, 4.21593e-05, 4.64049e-05, 5.02645e-05, 5.3757e-05, 5.69086e-05, 5.97418e-05, 6.22861e-05, 6.45625e-05, 6.66011e-05, 6.84222e-05, 7.00503e-05, 7.15042e-05, 7.28021e-05, 7.3964e-05, 
			3.76597e-05, 4.2727e-05, 4.74124e-05, 5.17075e-05, 5.56225e-05, 5.91744e-05, 6.23845e-05, 6.52773e-05, 6.78762e-05, 7.0209e-05, 7.23012e-05, 7.41723e-05, 7.58476e-05, 7.73458e-05, 7.86882e-05, 7.98886e-05
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
			1.73038e-05, 2.21666e-05, 2.63872e-05, 3.01365e-05, 3.34907e-05, 3.64948e-05, 3.91805e-05, 4.15758e-05, 4.37069e-05, 4.55985e-05, 4.72746e-05, 4.87579e-05, 5.00693e-05, 5.12281e-05, 5.22513e-05, 5.31559e-05, 
			2.1892e-05, 2.67521e-05, 3.11393e-05, 3.51048e-05, 3.86869e-05, 4.19119e-05, 4.48063e-05, 4.73956e-05, 4.97051e-05, 5.17603e-05, 5.35855e-05, 5.52049e-05, 5.66401e-05, 5.79105e-05, 5.90351e-05, 6.00311e-05, 
			2.66813e-05, 3.15894e-05, 3.6085e-05, 4.01831e-05, 4.38999e-05, 4.72581e-05, 5.02793e-05, 5.29881e-05, 5.54092e-05, 5.75681e-05, 5.94893e-05, 6.11963e-05, 6.27123e-05, 6.40567e-05, 6.52497e-05, 6.6307e-05, 
			3.16658e-05, 3.66095e-05, 4.11781e-05, 4.53597e-05, 4.9164e-05, 5.26066e-05, 5.57118e-05, 5.85002e-05, 6.09968e-05, 6.32278e-05, 6.52158e-05, 6.69848e-05, 6.85584e-05, 6.99561e-05, 7.1198e-05, 7.23015e-05, 
			3.67859e-05, 4.17723e-05, 4.63903e-05, 5.06273e-05, 5.44906e-05, 5.79956e-05, 6.11604e-05, 6.40061e-05, 6.65584e-05, 6.88418e-05, 7.08791e-05, 7.2696e-05, 7.4313e-05, 7.57522e-05, 7.70328e-05, 7.81714e-05
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

CapTable	"poly_C_BOTTOM_GP_19MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.6703e-05, 3.41286e-05, 4.06126e-05, 4.63106e-05, 5.1327e-05, 5.57418e-05, 5.96265e-05, 6.30411e-05, 6.60417e-05, 6.86792e-05, 7.09985e-05, 7.30398e-05, 7.48384e-05, 7.64255e-05, 7.78279e-05, 7.90693e-05, 
			3.555e-05, 4.29186e-05, 4.95406e-05, 5.5446e-05, 6.0696e-05, 6.5351e-05, 6.94702e-05, 7.31126e-05, 7.63314e-05, 7.91748e-05, 8.16866e-05, 8.39092e-05, 8.58765e-05, 8.76201e-05, 8.91669e-05, 9.05426e-05, 
			4.4707e-05, 5.20366e-05, 5.86988e-05, 6.46888e-05, 7.00436e-05, 7.48188e-05, 7.90656e-05, 8.28372e-05, 8.61836e-05, 8.91522e-05, 9.17872e-05, 9.41256e-05, 9.62034e-05, 9.80514e-05, 9.96974e-05, 0.000101165, 
			5.4045e-05, 6.13458e-05, 6.80138e-05, 7.40418e-05, 7.94576e-05, 8.43082e-05, 8.86382e-05, 9.2498e-05, 9.59348e-05, 9.89948e-05, 0.000101719, 0.000104144, 0.000106306, 0.000108234, 0.000109957, 0.000111497, 
			6.3432e-05, 7.06636e-05, 7.73052e-05, 8.33328e-05, 8.87704e-05, 9.3655e-05, 9.80276e-05, 0.000101937, 0.000105429, 0.000108547, 0.00011133, 0.000113815, 0.000116034, 0.00011802, 0.000119797, 0.000121389
		)
}

CapTable	"poly_C_LATERAL_19MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.00021728, 0.000124583, 8.88744e-05, 6.87784e-05, 5.5488e-05, 4.58992e-05, 3.86058e-05, 3.28626e-05, 2.82292e-05, 2.44234e-05, 2.12546e-05, 1.85872e-05, 1.63218e-05, 1.43834e-05, 1.27142e-05, 1.12686e-05, 
			0.000230976, 0.000135104, 9.73304e-05, 7.5847e-05, 6.1536e-05, 5.1166e-05, 4.32508e-05, 3.69974e-05, 3.19356e-05, 2.77642e-05, 2.42794e-05, 2.13358e-05, 1.88275e-05, 1.66739e-05, 1.48131e-05, 1.31964e-05, 
			0.00023804, 0.000141202, 0.000102542, 8.03712e-05, 6.55434e-05, 5.47482e-05, 4.64784e-05, 3.99238e-05, 3.46014e-05, 3.02018e-05, 2.65148e-05, 2.33914e-05, 2.07216e-05, 1.84226e-05, 1.64306e-05, 1.4695e-05, 
			0.000242664, 0.0001454, 0.000106275, 8.37092e-05, 6.85504e-05, 5.74768e-05, 4.89708e-05, 4.2209e-05, 3.67032e-05, 3.21392e-05, 2.83044e-05, 2.50468e-05, 2.22552e-05, 1.98455e-05, 1.77522e-05, 1.59239e-05, 
			0.000244688, 0.000148034, 0.000108864, 8.61562e-05, 7.08356e-05, 5.9612e-05, 5.09704e-05, 4.4084e-05, 3.84578e-05, 3.37832e-05, 2.9846e-05, 2.64942e-05, 2.36156e-05, 2.11252e-05, 1.89571e-05, 1.70597e-05
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

CapTable	"poly_C_BOTTOM_GP_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.50939e-05, 3.204e-05, 3.80871e-05, 4.33871e-05, 4.80456e-05, 5.21327e-05, 5.57219e-05, 5.8871e-05, 6.16291e-05, 6.40516e-05, 6.61748e-05, 6.80375e-05, 6.96741e-05, 7.11142e-05, 7.23826e-05, 7.35033e-05, 
			3.35183e-05, 4.04235e-05, 4.66169e-05, 5.21259e-05, 5.70062e-05, 6.133e-05, 6.51433e-05, 6.85067e-05, 7.14715e-05, 7.40802e-05, 7.63793e-05, 7.84084e-05, 8.01979e-05, 8.1781e-05, 8.31798e-05, 8.44206e-05, 
			4.22428e-05, 4.91331e-05, 5.53679e-05, 6.09707e-05, 6.59583e-05, 7.03939e-05, 7.43274e-05, 7.78091e-05, 8.08895e-05, 8.36149e-05, 8.60243e-05, 8.81586e-05, 9.00474e-05, 9.17226e-05, 9.32123e-05, 9.45367e-05, 
			5.11591e-05, 5.80293e-05, 6.42811e-05, 6.99117e-05, 7.49552e-05, 7.94532e-05, 8.34621e-05, 8.70245e-05, 9.01827e-05, 9.29867e-05, 9.54754e-05, 9.76844e-05, 9.96481e-05, 0.000101394, 0.00010295, 0.000104339, 
			6.01556e-05, 6.69655e-05, 7.31984e-05, 7.88339e-05, 8.39041e-05, 8.84443e-05, 9.24913e-05, 9.60976e-05, 9.93117e-05, 0.000102169, 0.000104714, 0.000106978, 0.000108995, 0.000110795, 0.000112403, 0.000113841
		)
}

CapTable	"poly_C_TOP_GP_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			1.5461e-06, 1.94564e-06, 2.30485e-06, 2.62806e-06, 2.91384e-06, 3.17154e-06, 3.39789e-06, 3.59714e-06, 3.77537e-06, 3.92818e-06, 4.06393e-06, 4.18443e-06, 4.29056e-06, 4.38391e-06, 4.46706e-06, 4.53939e-06, 
			2.01966e-06, 2.4219e-06, 2.79011e-06, 3.12571e-06, 3.43242e-06, 3.70038e-06, 3.94254e-06, 4.1559e-06, 4.34489e-06, 4.51438e-06, 4.66413e-06, 4.79564e-06, 4.91317e-06, 5.01578e-06, 5.10843e-06, 5.19092e-06, 
			2.51525e-06, 2.91187e-06, 3.29085e-06, 3.62607e-06, 3.93713e-06, 4.21628e-06, 4.46538e-06, 4.68947e-06, 4.88945e-06, 5.0653e-06, 5.22327e-06, 5.3622e-06, 5.48695e-06, 5.59805e-06, 5.6957e-06, 5.7836e-06, 
			3.01292e-06, 3.4083e-06, 3.7811e-06, 4.1269e-06, 4.44295e-06, 4.73125e-06, 4.98431e-06, 5.21131e-06, 5.41753e-06, 5.60014e-06, 5.763e-06, 5.90903e-06, 6.0379e-06, 6.15374e-06, 6.25766e-06, 6.34928e-06, 
			3.51436e-06, 3.91331e-06, 4.28876e-06, 4.63887e-06, 4.95394e-06, 5.23913e-06, 5.50013e-06, 5.73357e-06, 5.9419e-06, 6.12977e-06, 6.29638e-06, 6.44591e-06, 6.58014e-06, 6.69898e-06, 6.80617e-06, 6.90229e-06
		)
}

CapTable	"poly_C_LATERAL_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217344, 0.00012471, 8.9057e-05, 6.90108e-05, 5.57666e-05, 4.62218e-05, 3.89714e-05, 3.32708e-05, 2.86796e-05, 2.4916e-05, 2.17892e-05, 1.91632e-05, 1.69384e-05, 1.50395e-05, 1.34083e-05, 1.19993e-05, 
			0.000231008, 0.000135185, 9.7452e-05, 7.60074e-05, 6.17354e-05, 5.14056e-05, 4.35322e-05, 3.73224e-05, 3.23056e-05, 2.81804e-05, 2.47416e-05, 2.1844e-05, 1.93809e-05, 1.72713e-05, 1.54528e-05, 1.38765e-05, 
			0.000238026, 0.000141221, 0.000102592, 8.04542e-05, 6.56626e-05, 5.49078e-05, 4.66822e-05, 4.01744e-05, 3.4901e-05, 3.05518e-05, 2.69154e-05, 2.38422e-05, 2.12216e-05, 1.89703e-05, 1.7024e-05, 1.53317e-05, 
			0.00024259, 0.000145352, 0.000106257, 8.37254e-05, 6.86068e-05, 5.75786e-05, 4.91226e-05, 4.24142e-05, 3.69638e-05, 3.24562e-05, 2.86776e-05, 2.54756e-05, 2.2738e-05, 2.038e-05, 1.8336e-05, 1.65541e-05, 
			0.000244522, 0.000147887, 0.000108743, 8.60682e-05, 7.0788e-05, 5.96106e-05, 5.10206e-05, 4.41888e-05, 3.86194e-05, 3.40024e-05, 3.01228e-05, 2.68274e-05, 2.4003e-05, 2.15648e-05, 1.94459e-05, 1.75946e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.47153e-05, 3.1555e-05, 3.75156e-05, 4.27477e-05, 4.73432e-05, 5.13829e-05, 5.49288e-05, 5.80386e-05, 6.07644e-05, 6.3155e-05, 6.52509e-05, 6.70912e-05, 6.87069e-05, 7.0129e-05, 7.13809e-05, 7.24865e-05, 
			3.30433e-05, 3.9861e-05, 4.59706e-05, 5.14166e-05, 5.62438e-05, 6.05136e-05, 6.42824e-05, 6.76059e-05, 7.05345e-05, 7.31144e-05, 7.53872e-05, 7.73921e-05, 7.91598e-05, 8.07234e-05, 8.21058e-05, 8.3331e-05, 
			4.1686e-05, 4.84954e-05, 5.46623e-05, 6.0197e-05, 6.51302e-05, 6.95154e-05, 7.34047e-05, 7.68493e-05, 7.98964e-05, 8.25903e-05, 8.49743e-05, 8.70836e-05, 8.89519e-05, 9.06078e-05, 9.20791e-05, 9.33872e-05, 
			5.05268e-05, 5.73231e-05, 6.35065e-05, 6.90763e-05, 7.40675e-05, 7.85218e-05, 8.24874e-05, 8.60099e-05, 8.91368e-05, 9.19119e-05, 9.43746e-05, 9.65601e-05, 9.85017e-05, 0.000100229, 0.000101767, 0.00010314, 
			5.94618e-05, 6.61994e-05, 7.2369e-05, 7.79496e-05, 8.29677e-05, 8.74601e-05, 9.14702e-05, 9.50419e-05, 9.82233e-05, 0.000101054, 0.000103572, 0.000105814, 0.000107811, 0.000109591, 0.000111181, 0.000112602
		)
}

CapTable	"poly_C_TOP_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			1.99271e-06, 2.52902e-06, 3.00723e-06, 3.43107e-06, 3.81055e-06, 4.14552e-06, 4.44344e-06, 4.70686e-06, 4.94023e-06, 5.14494e-06, 5.32573e-06, 5.48419e-06, 5.62467e-06, 5.7478e-06, 5.8574e-06, 5.95335e-06, 
			2.60173e-06, 3.13125e-06, 3.62221e-06, 4.06037e-06, 4.45736e-06, 4.81445e-06, 5.1336e-06, 5.41708e-06, 5.66854e-06, 5.891e-06, 6.0884e-06, 6.26271e-06, 6.41745e-06, 6.55425e-06, 6.67592e-06, 6.78347e-06, 
			3.23201e-06, 3.75484e-06, 4.24787e-06, 4.69482e-06, 5.10342e-06, 5.47158e-06, 5.80246e-06, 6.09754e-06, 6.36038e-06, 6.59431e-06, 6.80226e-06, 6.987e-06, 7.15133e-06, 7.2971e-06, 7.42737e-06, 7.54245e-06, 
			3.86922e-06, 4.38754e-06, 4.87969e-06, 5.33611e-06, 5.75053e-06, 6.12677e-06, 6.46423e-06, 6.76772e-06, 7.03839e-06, 7.2805e-06, 7.496e-06, 7.6881e-06, 7.85985e-06, 8.01273e-06, 8.14917e-06, 8.27004e-06, 
			4.50116e-06, 5.02699e-06, 5.52035e-06, 5.97955e-06, 6.39767e-06, 6.77867e-06, 7.12101e-06, 7.42988e-06, 7.70606e-06, 7.95324e-06, 8.17502e-06, 8.37242e-06, 8.54932e-06, 8.70737e-06, 8.84894e-06, 8.97536e-06
		)
}

CapTable	"poly_C_LATERAL_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217284, 0.000124626, 8.89472e-05, 6.88772e-05, 5.56112e-05, 4.60466e-05, 3.87788e-05, 3.3063e-05, 2.84584e-05, 2.46834e-05, 2.15466e-05, 1.89121e-05, 1.66802e-05, 1.47754e-05, 1.31394e-05, 1.17265e-05, 
			0.00023091, 0.000135055, 9.72932e-05, 7.5822e-05, 6.15258e-05, 5.1174e-05, 4.3281e-05, 3.7054e-05, 3.2022e-05, 2.78836e-05, 2.44334e-05, 2.15262e-05, 1.90548e-05, 1.69383e-05, 1.51143e-05, 1.35335e-05, 
			0.00023788, 0.000141041, 0.000102381, 8.02142e-05, 6.53964e-05, 5.4618e-05, 4.63708e-05, 3.98442e-05, 3.45542e-05, 3.01904e-05, 2.65414e-05, 2.34574e-05, 2.08278e-05, 1.85691e-05, 1.66165e-05, 1.49193e-05, 
			0.00024239, 0.000145118, 0.00010599, 8.34276e-05, 6.8281e-05, 5.72274e-05, 4.87484e-05, 4.20194e-05, 3.65508e-05, 3.20276e-05, 2.82354e-05, 2.50218e-05, 2.22744e-05, 1.99082e-05, 1.78576e-05, 1.60704e-05, 
			0.000244268, 0.000147597, 0.000108418, 8.57108e-05, 7.04006e-05, 5.91962e-05, 5.05818e-05, 4.37282e-05, 3.81396e-05, 3.3506e-05, 2.9612e-05, 2.63042e-05, 2.34696e-05, 2.10228e-05, 1.88971e-05, 1.70404e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.43668e-05, 3.11279e-05, 3.70246e-05, 4.21959e-05, 4.67374e-05, 5.07254e-05, 5.42236e-05, 5.72922e-05, 5.99798e-05, 6.23355e-05, 6.44021e-05, 6.62146e-05, 6.78073e-05, 6.92094e-05, 7.04438e-05, 7.1534e-05, 
			3.26224e-05, 3.93637e-05, 4.54105e-05, 5.07916e-05, 5.55606e-05, 5.97796e-05, 6.35024e-05, 6.67851e-05, 6.96776e-05, 7.2224e-05, 7.44691e-05, 7.645e-05, 7.81965e-05, 7.9742e-05, 8.1109e-05, 8.23202e-05, 
			4.11958e-05, 4.79285e-05, 5.40312e-05, 5.95013e-05, 6.43786e-05, 6.87169e-05, 7.25627e-05, 7.59689e-05, 7.8982e-05, 8.16492e-05, 8.40063e-05, 8.60951e-05, 8.79452e-05, 8.95859e-05, 9.1043e-05, 9.23384e-05, 
			4.9968e-05, 5.66862e-05, 6.28028e-05, 6.83179e-05, 7.3257e-05, 7.76668e-05, 8.15943e-05, 8.50825e-05, 8.81809e-05, 9.09306e-05, 9.33709e-05, 9.55384e-05, 9.74636e-05, 9.91766e-05, 0.000100703, 0.000102063, 
			5.88271e-05, 6.55019e-05, 7.16109e-05, 7.71388e-05, 8.21119e-05, 8.65652e-05, 9.05406e-05, 9.40846e-05, 9.72413e-05, 0.000100051, 0.00010255, 0.000104776, 0.000106759, 0.000108527, 0.000110104, 0.000111514
		)
}

CapTable	"poly_C_TOP_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.44223e-06, 3.10149e-06, 3.6852e-06, 4.20709e-06, 4.6722e-06, 5.08519e-06, 5.4521e-06, 5.77444e-06, 6.06024e-06, 6.31159e-06, 6.53217e-06, 6.72759e-06, 6.89948e-06, 7.05036e-06, 7.18482e-06, 7.30316e-06, 
			3.18857e-06, 3.83846e-06, 4.43651e-06, 4.97898e-06, 5.46916e-06, 5.90704e-06, 6.29897e-06, 6.64691e-06, 6.95496e-06, 7.22903e-06, 7.47127e-06, 7.68516e-06, 7.8757e-06, 8.04334e-06, 8.19306e-06, 8.326e-06, 
			3.9552e-06, 4.60291e-06, 5.20542e-06, 5.75911e-06, 6.26243e-06, 6.71435e-06, 7.12052e-06, 7.4839e-06, 7.80719e-06, 8.09437e-06, 8.35072e-06, 8.57735e-06, 8.78001e-06, 8.95968e-06, 9.11999e-06, 9.26296e-06, 
			4.73201e-06, 5.37919e-06, 5.9872e-06, 6.54606e-06, 7.05737e-06, 7.52019e-06, 7.93525e-06, 8.30872e-06, 8.64289e-06, 8.94021e-06, 9.20635e-06, 9.44303e-06, 9.6548e-06, 9.84351e-06, 1.00123e-05, 1.0163e-05, 
			5.51986e-06, 6.16331e-06, 6.77373e-06, 7.33843e-06, 7.8535e-06, 8.32244e-06, 8.74561e-06, 9.12516e-06, 9.4665e-06, 9.7715e-06, 1.00451e-05, 1.02893e-05, 1.05079e-05, 1.07035e-05, 1.08786e-05, 1.10355e-05
		)
}

CapTable	"poly_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217202, 0.000124515, 8.88132e-05, 6.8727e-05, 5.54504e-05, 4.58794e-05, 3.86076e-05, 3.28892e-05, 2.8283e-05, 2.45066e-05, 2.1368e-05, 1.87314e-05, 1.6497e-05, 1.45891e-05, 1.29498e-05, 1.15331e-05, 
			0.00023078, 0.000134902, 9.7122e-05, 7.56374e-05, 6.13312e-05, 5.09714e-05, 4.30716e-05, 3.6838e-05, 3.17994e-05, 2.7654e-05, 2.41966e-05, 2.12818e-05, 1.88028e-05, 1.66786e-05, 1.48469e-05, 1.32588e-05, 
			0.00023771, 0.000140852, 0.000102176, 7.99966e-05, 6.5167e-05, 5.43768e-05, 4.61178e-05, 3.95792e-05, 3.42768e-05, 2.99004e-05, 2.6239e-05, 2.31426e-05, 2.05008e-05, 1.82305e-05, 1.6267e-05, 1.45597e-05, 
			0.000242186, 0.000144897, 0.000105752, 8.3174e-05, 6.80106e-05, 5.694e-05, 4.84434e-05, 4.16968e-05, 3.62102e-05, 3.16692e-05, 2.78598e-05, 2.46296e-05, 2.18666e-05, 1.94859e-05, 1.74219e-05, 1.56229e-05, 
			0.000244028, 0.000147339, 0.000108138, 8.54098e-05, 7.00766e-05, 5.88484e-05, 5.02098e-05, 4.33322e-05, 3.77202e-05, 3.30638e-05, 2.91484e-05, 2.58204e-05, 2.29676e-05, 2.0504e-05, 1.83636e-05, 1.64941e-05
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

CapModel	"metal8Config28" {
		refLayer				= "M8"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_41MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_41MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_41MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_41MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_41MAX"
}

CapModel	"metal8Config37" {
		refLayer				= "M8"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_51MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_51MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_51MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_51MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_51MAX"
}

CapModel	"metal8Config46" {
		refLayer				= "M8"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_61MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_61MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_61MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_61MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_61MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_61MAX"
}

CapModel	"metal8Config55" {
		refLayer				= "M8"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_71MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_71MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_71MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_71MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_71MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_71MAX"
}

CapModel	"metal8Config64" {
		refLayer				= "M8"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_81MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_81MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_81MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_81MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_81MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_81MAX"
}

CapModel	"metal8Config73" {
		refLayer				= "M8"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_91MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_91MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_91MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_91MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_91MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_91MAX"
}

CapModel	"metal5Config22" {
		refLayer				= "M5"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_34MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_34MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_34MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_34MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_34MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_34MAX"
}

CapModel	"metal5Config28" {
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

CapModel	"metal5Config29" {
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

CapModel	"metal5Config30" {
		refLayer				= "M5"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_43MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_43MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_43MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_43MAX"
		topCapDataNom			= "metal5_C_TOP_GP_43MAX"
		topCapDataMax			= "metal5_C_TOP_GP_43MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_43MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_43MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_43MAX"
}

CapModel	"metal5Config31" {
		refLayer				= "M5"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_44MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_44MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_44MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_44MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_44MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_44MAX"
}

CapModel	"metal5Config37" {
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

CapModel	"metal5Config38" {
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

CapModel	"metal5Config39" {
		refLayer				= "M5"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_53MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_53MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_53MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_53MAX"
		topCapDataNom			= "metal5_C_TOP_GP_53MAX"
		topCapDataMax			= "metal5_C_TOP_GP_53MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_53MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_53MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_53MAX"
}

CapModel	"metal5Config40" {
		refLayer				= "M5"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_54MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_54MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_54MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_54MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_54MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_54MAX"
}

CapModel	"metal5Config46" {
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

CapModel	"metal5Config47" {
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

CapModel	"metal5Config48" {
		refLayer				= "M5"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_63MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_63MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_63MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_63MAX"
		topCapDataNom			= "metal5_C_TOP_GP_63MAX"
		topCapDataMax			= "metal5_C_TOP_GP_63MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_63MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_63MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_63MAX"
}

CapModel	"metal5Config49" {
		refLayer				= "M5"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_64MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_64MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_64MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_64MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_64MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_64MAX"
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
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_12MAX"
		topCapDataNom			= "metal6_C_TOP_GP_12MAX"
		topCapDataMax			= "metal6_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_12MAX"
}

CapModel	"metal6Config3" {
		refLayer				= "M6"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_13MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_13MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_13MAX"
}

CapModel	"metal6Config10" {
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

CapModel	"metal6Config11" {
		refLayer				= "M6"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_22MAX"
		topCapDataNom			= "metal6_C_TOP_GP_22MAX"
		topCapDataMax			= "metal6_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_22MAX"
}

CapModel	"metal6Config12" {
		refLayer				= "M6"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_23MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_23MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_23MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_23MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_23MAX"
}

CapModel	"metal6Config19" {
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

CapModel	"metal6Config20" {
		refLayer				= "M6"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_32MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_32MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_32MAX"
		topCapDataNom			= "metal6_C_TOP_GP_32MAX"
		topCapDataMax			= "metal6_C_TOP_GP_32MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_32MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_32MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_32MAX"
}

CapModel	"metal6Config21" {
		refLayer				= "M6"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_33MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_33MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_33MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_33MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_33MAX"
}

CapModel	"metal6Config28" {
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

CapModel	"metal6Config29" {
		refLayer				= "M6"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_42MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_42MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_42MAX"
		topCapDataNom			= "metal6_C_TOP_GP_42MAX"
		topCapDataMax			= "metal6_C_TOP_GP_42MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_42MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_42MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_42MAX"
}

CapModel	"metal6Config30" {
		refLayer				= "M6"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_43MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_43MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_43MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_43MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_43MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_43MAX"
}

CapModel	"metal6Config37" {
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

CapModel	"metal6Config38" {
		refLayer				= "M6"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_52MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_52MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_52MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_52MAX"
		topCapDataNom			= "metal6_C_TOP_GP_52MAX"
		topCapDataMax			= "metal6_C_TOP_GP_52MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_52MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_52MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_52MAX"
}

CapModel	"metal6Config39" {
		refLayer				= "M6"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_53MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_53MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_53MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_53MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_53MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_53MAX"
}

CapModel	"metal6Config46" {
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

CapModel	"metal6Config47" {
		refLayer				= "M6"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_62MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_62MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_62MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_62MAX"
		topCapDataNom			= "metal6_C_TOP_GP_62MAX"
		topCapDataMax			= "metal6_C_TOP_GP_62MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_62MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_62MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_62MAX"
}

CapModel	"metal6Config48" {
		refLayer				= "M6"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_63MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_63MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_63MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_63MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_63MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_63MAX"
}

CapModel	"metal6Config55" {
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

CapModel	"metal6Config56" {
		refLayer				= "M6"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_72MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_72MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_72MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_72MAX"
		topCapDataNom			= "metal6_C_TOP_GP_72MAX"
		topCapDataMax			= "metal6_C_TOP_GP_72MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_72MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_72MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_72MAX"
}

CapModel	"metal6Config57" {
		refLayer				= "M6"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_73MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_73MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_73MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_73MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_73MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_73MAX"
}

CapModel	"metal7Config1" {
		refLayer				= "M7"
		groundPlaneBelow		= "M6"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GPMAX"
		topCapDataNom			= "metal7_C_TOP_GPMAX"
		topCapDataMax			= "metal7_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERALMAX"
		lateralCapDataNom		= "metal7_C_LATERALMAX"
		lateralCapDataMax		= "metal7_C_LATERALMAX"
}

CapModel	"metal7Config2" {
		refLayer				= "M7"
		groundPlaneBelow		= "M6"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_12MAX"
}

CapModel	"metal7Config10" {
		refLayer				= "M7"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_21MAX"
		topCapDataNom			= "metal7_C_TOP_GP_21MAX"
		topCapDataMax			= "metal7_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_21MAX"
}

CapModel	"metal7Config11" {
		refLayer				= "M7"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_22MAX"
}

CapModel	"metal7Config19" {
		refLayer				= "M7"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_31MAX"
		topCapDataNom			= "metal7_C_TOP_GP_31MAX"
		topCapDataMax			= "metal7_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_31MAX"
}

CapModel	"metal7Config20" {
		refLayer				= "M7"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_32MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_32MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_32MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_32MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_32MAX"
}

CapModel	"metal7Config28" {
		refLayer				= "M7"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_41MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_41MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_41MAX"
		topCapDataNom			= "metal7_C_TOP_GP_41MAX"
		topCapDataMax			= "metal7_C_TOP_GP_41MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_41MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_41MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_41MAX"
}

CapModel	"metal7Config29" {
		refLayer				= "M7"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_42MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_42MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_42MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_42MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_42MAX"
}

CapModel	"metal7Config37" {
		refLayer				= "M7"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_51MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_51MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_51MAX"
		topCapDataNom			= "metal7_C_TOP_GP_51MAX"
		topCapDataMax			= "metal7_C_TOP_GP_51MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_51MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_51MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_51MAX"
}

CapModel	"metal7Config38" {
		refLayer				= "M7"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_52MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_52MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_52MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_52MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_52MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_52MAX"
}

CapModel	"metal7Config46" {
		refLayer				= "M7"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_61MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_61MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_61MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_61MAX"
		topCapDataNom			= "metal7_C_TOP_GP_61MAX"
		topCapDataMax			= "metal7_C_TOP_GP_61MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_61MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_61MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_61MAX"
}

CapModel	"metal7Config47" {
		refLayer				= "M7"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_62MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_62MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_62MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_62MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_62MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_62MAX"
}

CapModel	"metal7Config55" {
		refLayer				= "M7"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_71MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_71MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_71MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_71MAX"
		topCapDataNom			= "metal7_C_TOP_GP_71MAX"
		topCapDataMax			= "metal7_C_TOP_GP_71MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_71MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_71MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_71MAX"
}

CapModel	"metal7Config56" {
		refLayer				= "M7"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_72MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_72MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_72MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_72MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_72MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_72MAX"
}

CapModel	"metal7Config64" {
		refLayer				= "M7"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_81MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_81MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_81MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_81MAX"
		topCapDataNom			= "metal7_C_TOP_GP_81MAX"
		topCapDataMax			= "metal7_C_TOP_GP_81MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_81MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_81MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_81MAX"
}

CapModel	"metal7Config65" {
		refLayer				= "M7"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_82MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_82MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_82MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_82MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_82MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_82MAX"
}

CapModel	"metal8Config1" {
		refLayer				= "M8"
		groundPlaneBelow		= "M7"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERALMAX"
		lateralCapDataNom		= "metal8_C_LATERALMAX"
		lateralCapDataMax		= "metal8_C_LATERALMAX"
}

CapModel	"metal8Config10" {
		refLayer				= "M8"
		groundPlaneBelow		= "M6"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_21MAX"
}

CapModel	"metal8Config19" {
		refLayer				= "M8"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_31MAX"
}

CapModel	"metal3Config11" {
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

CapModel	"metal3Config12" {
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

CapModel	"metal3Config13" {
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

CapModel	"metal3Config14" {
		refLayer				= "M3"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_25MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_25MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_25MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_25MAX"
		topCapDataNom			= "metal3_C_TOP_GP_25MAX"
		topCapDataMax			= "metal3_C_TOP_GP_25MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_25MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_25MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_25MAX"
}

CapModel	"metal3Config15" {
		refLayer				= "M3"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_26MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_26MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_26MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_26MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_26MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_26MAX"
}

CapModel	"metal3Config19" {
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

CapModel	"metal3Config20" {
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

CapModel	"metal3Config21" {
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

CapModel	"metal3Config22" {
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

CapModel	"metal3Config23" {
		refLayer				= "M3"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_35MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_35MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_35MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_35MAX"
		topCapDataNom			= "metal3_C_TOP_GP_35MAX"
		topCapDataMax			= "metal3_C_TOP_GP_35MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_35MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_35MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_35MAX"
}

CapModel	"metal3Config24" {
		refLayer				= "M3"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_36MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_36MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_36MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_36MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_36MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_36MAX"
}

CapModel	"metal3Config28" {
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

CapModel	"metal3Config29" {
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

CapModel	"metal3Config30" {
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

CapModel	"metal3Config31" {
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

CapModel	"metal3Config32" {
		refLayer				= "M3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_45MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_45MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_45MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_45MAX"
		topCapDataNom			= "metal3_C_TOP_GP_45MAX"
		topCapDataMax			= "metal3_C_TOP_GP_45MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_45MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_45MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_45MAX"
}

CapModel	"metal3Config33" {
		refLayer				= "M3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_46MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_46MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_46MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_46MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_46MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_46MAX"
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
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_14MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_14MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_14MAX"
		topCapDataNom			= "metal4_C_TOP_GP_14MAX"
		topCapDataMax			= "metal4_C_TOP_GP_14MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_14MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_14MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_14MAX"
}

CapModel	"metal4Config5" {
		refLayer				= "M4"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_15MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_15MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_15MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_15MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_15MAX"
}

CapModel	"metal4Config10" {
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

CapModel	"metal4Config11" {
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

CapModel	"metal4Config12" {
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

CapModel	"metal4Config13" {
		refLayer				= "M4"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_24MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_24MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_24MAX"
		topCapDataNom			= "metal4_C_TOP_GP_24MAX"
		topCapDataMax			= "metal4_C_TOP_GP_24MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_24MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_24MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_24MAX"
}

CapModel	"metal4Config14" {
		refLayer				= "M4"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_25MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_25MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_25MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_25MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_25MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_25MAX"
}

CapModel	"metal4Config19" {
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

CapModel	"metal4Config20" {
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

CapModel	"metal4Config21" {
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

CapModel	"metal4Config22" {
		refLayer				= "M4"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_34MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_34MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_34MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_34MAX"
		topCapDataNom			= "metal4_C_TOP_GP_34MAX"
		topCapDataMax			= "metal4_C_TOP_GP_34MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_34MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_34MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_34MAX"
}

CapModel	"metal4Config23" {
		refLayer				= "M4"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_35MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_35MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_35MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_35MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_35MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_35MAX"
}

CapModel	"metal4Config28" {
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

CapModel	"metal4Config29" {
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

CapModel	"metal4Config30" {
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

CapModel	"metal4Config31" {
		refLayer				= "M4"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_44MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_44MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_44MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_44MAX"
		topCapDataNom			= "metal4_C_TOP_GP_44MAX"
		topCapDataMax			= "metal4_C_TOP_GP_44MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_44MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_44MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_44MAX"
}

CapModel	"metal4Config32" {
		refLayer				= "M4"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_45MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_45MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_45MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_45MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_45MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_45MAX"
}

CapModel	"metal4Config37" {
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

CapModel	"metal4Config38" {
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

CapModel	"metal4Config39" {
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

CapModel	"metal4Config40" {
		refLayer				= "M4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_54MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_54MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_54MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_54MAX"
		topCapDataNom			= "metal4_C_TOP_GP_54MAX"
		topCapDataMax			= "metal4_C_TOP_GP_54MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_54MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_54MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_54MAX"
}

CapModel	"metal4Config41" {
		refLayer				= "M4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_55MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_55MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_55MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_55MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_55MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_55MAX"
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
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_13MAX"
		topCapDataNom			= "metal5_C_TOP_GP_13MAX"
		topCapDataMax			= "metal5_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_13MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_13MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_13MAX"
}

CapModel	"metal5Config4" {
		refLayer				= "M5"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_14MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_14MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_14MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_14MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_14MAX"
}

CapModel	"metal5Config10" {
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

CapModel	"metal5Config11" {
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

CapModel	"metal5Config12" {
		refLayer				= "M5"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_23MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_23MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_23MAX"
		topCapDataNom			= "metal5_C_TOP_GP_23MAX"
		topCapDataMax			= "metal5_C_TOP_GP_23MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_23MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_23MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_23MAX"
}

CapModel	"metal5Config13" {
		refLayer				= "M5"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_24MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_24MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_24MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_24MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_24MAX"
}

CapModel	"metal5Config19" {
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

CapModel	"metal5Config20" {
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

CapModel	"metal5Config21" {
		refLayer				= "M5"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_33MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_33MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_33MAX"
		topCapDataNom			= "metal5_C_TOP_GP_33MAX"
		topCapDataMax			= "metal5_C_TOP_GP_33MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_33MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_33MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_33MAX"
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
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_18MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_18MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_18MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_18MAX"
		topCapDataNom			= "poly_C_TOP_GP_18MAX"
		topCapDataMax			= "poly_C_TOP_GP_18MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_18MAX"
		lateralCapDataNom		= "poly_C_LATERAL_18MAX"
		lateralCapDataMax		= "poly_C_LATERAL_18MAX"
}

CapModel	"polyConfig9" {
		refLayer				= "POLY1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_19MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_19MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_19MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_19MAX"
		lateralCapDataNom		= "poly_C_LATERAL_19MAX"
		lateralCapDataMax		= "poly_C_LATERAL_19MAX"
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
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_17MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_17MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_17MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_17MAX"
		topCapDataNom			= "metal1_C_TOP_GP_17MAX"
		topCapDataMax			= "metal1_C_TOP_GP_17MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_17MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_17MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_17MAX"
}

CapModel	"metal1Config8" {
		refLayer				= "M1"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_18MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_18MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_18MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_18MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_18MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_18MAX"
}

CapModel	"metal1Config10" {
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

CapModel	"metal1Config11" {
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

CapModel	"metal1Config12" {
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

CapModel	"metal1Config13" {
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

CapModel	"metal1Config14" {
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

CapModel	"metal1Config15" {
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

CapModel	"metal1Config16" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_27MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_27MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_27MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_27MAX"
		topCapDataNom			= "metal1_C_TOP_GP_27MAX"
		topCapDataMax			= "metal1_C_TOP_GP_27MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_27MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_27MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_27MAX"
}

CapModel	"metal1Config17" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_28MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_28MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_28MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_28MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_28MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_28MAX"
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
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_16MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_16MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_16MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_16MAX"
		topCapDataNom			= "metal2_C_TOP_GP_16MAX"
		topCapDataMax			= "metal2_C_TOP_GP_16MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_16MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_16MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_16MAX"
}

CapModel	"metal2Config7" {
		refLayer				= "M2"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_17MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_17MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_17MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_17MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_17MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_17MAX"
}

CapModel	"metal2Config10" {
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

CapModel	"metal2Config11" {
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

CapModel	"metal2Config12" {
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

CapModel	"metal2Config13" {
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

CapModel	"metal2Config14" {
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

CapModel	"metal2Config15" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_26MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_26MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_26MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_26MAX"
		topCapDataNom			= "metal2_C_TOP_GP_26MAX"
		topCapDataMax			= "metal2_C_TOP_GP_26MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_26MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_26MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_26MAX"
}

CapModel	"metal2Config16" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_27MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_27MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_27MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_27MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_27MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_27MAX"
}

CapModel	"metal2Config19" {
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

CapModel	"metal2Config20" {
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

CapModel	"metal2Config21" {
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

CapModel	"metal2Config22" {
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

CapModel	"metal2Config23" {
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

CapModel	"metal2Config24" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_36MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_36MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_36MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_36MAX"
		topCapDataNom			= "metal2_C_TOP_GP_36MAX"
		topCapDataMax			= "metal2_C_TOP_GP_36MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_36MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_36MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_36MAX"
}

CapModel	"metal2Config25" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_37MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_37MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_37MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_37MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_37MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_37MAX"
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
		groundPlaneAbove		= "M8"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_15MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_15MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_15MAX"
		topCapDataNom			= "metal3_C_TOP_GP_15MAX"
		topCapDataMax			= "metal3_C_TOP_GP_15MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_15MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_15MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_15MAX"
}

CapModel	"metal3Config6" {
		refLayer				= "M3"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_16MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_16MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_16MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_16MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_16MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_16MAX"
}

CapModel	"metal3Config10" {
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

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
   $Id: tsmc090_9lm_2thick.tf,v 1.1 2006/05/11 06:35:09 Exp $
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
		color				= "purple"
		lineStyle			= "solid"
		pattern				= "backSlash"
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

Layer		"M8" {
		layerNumber			= 38
		maskName			= "metal8"
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

Layer		"M9" {
		layerNumber			= 39
		maskName			= "metal9"
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
		fatTblFatContactNumber		= (7,7,7,77,77,77)
		fatTblFatContactMinCuts		= (1,2,2,4,4,4)
		fatTblExtensionContactNumber	= (0,0,7,7,7,7)
		fatTblExtensionMinCuts		= (1,1,2,2,2,2)
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.19
}

Layer		"VIA7" {
		layerNumber			= 57
		maskName			= "via7"
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
		fatTblFatContactNumber		= (8,8,88)
		fatTblFatContactMinCuts		= (1,2,2)
		fatTblExtensionContactNumber	= (0,0,8)
		fatTblExtensionMinCuts		= (1,1,2)
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.56
}

Layer		"VIA8" {
		layerNumber			= 58
		maskName			= "via8"
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
		fatTblFatContactNumber		= (9,9,99)
		fatTblFatContactMinCuts		= (1,2,2)
		fatTblExtensionContactNumber	= (0,0,9)
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

Layer		"TEXT9" {
		layerNumber			= 139
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
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
		unitMinResistance		= 0.00067
		unitNomResistance		= 0.00067
		unitMaxResistance		= 0.00067
}

ContactCode	"via8" {
		contactCodeNumber		= 9
		cutLayer			= "VIA8"
		lowerLayer			= "M8"
		upperLayer			= "M9"
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
		unitMinResistance		= 0.00067
		unitNomResistance		= 0.00067
		unitMaxResistance		= 0.00067
}

ContactCode	"via8_fat" {
		contactCodeNumber		= 99
		cutLayer			= "VIA8"
		lowerLayer			= "M8"
		upperLayer			= "M9"
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
		minSpacing			= 0.17
}

DesignRule	{
		layer1				= "via6Blockage"
		layer2				= "VIA6"
		minSpacing			= 0.17
}

DesignRule	{
		layer1				= "via7Blockage"
		layer2				= "VIA7"
		minSpacing			= 0.54
}

DesignRule	{
		layer1				= "via8Blockage"
		layer2				= "VIA8"
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

CapTable	"metal9_C_BOTTOM_GPMAX" {
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

CapTable	"metal9_C_LATERALMAX" {
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

CapTable	"metal9_C_LATERAL_31MAX" {
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

CapTable	"metal9_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal9_C_LATERAL_21MAX" {
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

CapTable	"metal9_C_BOTTOM_GP_41MAX" {
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

CapTable	"metal9_C_LATERAL_41MAX" {
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

CapTable	"metal9_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal9_C_LATERAL_61MAX" {
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

CapTable	"metal9_C_BOTTOM_GP_51MAX" {
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

CapTable	"metal9_C_LATERAL_51MAX" {
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

CapTable	"metal9_C_BOTTOM_GP_71MAX" {
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

CapTable	"metal9_C_LATERAL_71MAX" {
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

CapTable	"metal9_C_BOTTOM_GP_61MAX" {
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

CapTable	"metal9_C_LATERAL_91MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.00024059, 0.000146339, 0.00011158, 9.26264e-05, 8.02492e-05, 7.12586e-05, 6.42572e-05, 5.85376e-05, 5.3705e-05, 4.95228e-05, 4.58398e-05, 4.2555e-05, 3.9598e-05, 3.69166e-05, 3.4472e-05, 3.22336e-05, 
			0.000260316, 0.000161833, 0.000124374, 0.000103514, 8.9672e-05, 7.95118e-05, 7.15512e-05, 6.50308e-05, 5.95218e-05, 5.47628e-05, 5.05842e-05, 4.6871e-05, 4.3541e-05, 4.05332e-05, 3.78014e-05, 3.53088e-05, 
			0.000272882, 0.000172337, 0.000133254, 0.000111124, 9.62732e-05, 8.52858e-05, 7.664e-05, 6.95466e-05, 6.35546e-05, 5.83856e-05, 5.38572e-05, 4.98432e-05, 4.6253e-05, 4.3019e-05, 4.00892e-05, 3.7422e-05, 
			0.000281462, 0.000179909, 0.000139744, 0.000116707, 0.000101111, 8.95154e-05, 8.03586e-05, 7.28392e-05, 6.64896e-05, 6.1019e-05, 5.62342e-05, 5.20014e-05, 4.82228e-05, 4.48258e-05, 4.17538e-05, 3.89618e-05, 
			0.000288132, 0.000185722, 0.000144731, 0.00012099, 0.000104814, 9.27378e-05, 8.31876e-05, 7.53414e-05, 6.87192e-05, 6.30196e-05, 5.80416e-05, 5.3644e-05, 4.97246e-05, 4.62056e-05, 4.30276e-05, 4.01428e-05
		)
}

CapTable	"metal9_C_BOTTOM_GP_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.3096e-05, 1.56482e-05, 1.75754e-05, 1.91576e-05, 2.05484e-05, 2.18345e-05, 2.30658e-05, 2.42685e-05, 2.54555e-05, 2.66312e-05, 2.77964e-05, 2.89488e-05, 3.00846e-05, 3.12006e-05, 3.22932e-05, 3.33588e-05, 
			1.4575e-05, 1.6718e-05, 1.85004e-05, 2.0069e-05, 2.15176e-05, 2.29018e-05, 2.42524e-05, 2.55841e-05, 2.69028e-05, 2.82093e-05, 2.95015e-05, 3.07756e-05, 3.20274e-05, 3.32535e-05, 3.44503e-05, 3.56147e-05, 
			1.5862e-05, 1.78066e-05, 1.9532e-05, 2.11254e-05, 2.2645e-05, 2.41236e-05, 2.55792e-05, 2.70198e-05, 2.84455e-05, 2.98549e-05, 3.12442e-05, 3.26098e-05, 3.39475e-05, 3.52535e-05, 3.65252e-05, 3.77596e-05, 
			1.7116e-05, 1.89702e-05, 2.06974e-05, 2.23414e-05, 2.3939e-05, 2.55074e-05, 2.7056e-05, 2.85872e-05, 3.01005e-05, 3.15916e-05, 3.30572e-05, 3.44929e-05, 3.58953e-05, 3.72615e-05, 3.85886e-05, 3.98746e-05, 
			1.8404e-05, 2.025e-05, 2.2012e-05, 2.37198e-05, 2.5392e-05, 2.70408e-05, 2.86698e-05, 3.0276e-05, 3.18596e-05, 3.34155e-05, 3.494e-05, 3.643e-05, 3.78819e-05, 3.92934e-05, 4.06624e-05, 4.19871e-05
		)
}

CapTable	"metal9_C_LATERAL_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000240266, 0.000145937, 0.000111112, 9.21004e-05, 7.96706e-05, 7.06314e-05, 6.3585e-05, 5.7824e-05, 5.29538e-05, 4.8738e-05, 4.50256e-05, 4.17156e-05, 3.87376e-05, 3.60394e-05, 3.35818e-05, 3.13344e-05, 
			0.000259908, 0.000161353, 0.000123829, 0.000102909, 8.90114e-05, 7.88002e-05, 7.07922e-05, 6.42286e-05, 5.8681e-05, 5.38878e-05, 4.96798e-05, 4.59418e-05, 4.25916e-05, 3.9568e-05, 3.68242e-05, 3.43234e-05, 
			0.000272396, 0.000171779, 0.000132631, 0.000110441, 9.5533e-05, 8.44934e-05, 7.57998e-05, 6.86634e-05, 6.26334e-05, 5.74314e-05, 5.2875e-05, 4.88378e-05, 4.5229e-05, 4.19808e-05, 3.90404e-05, 3.63666e-05, 
			0.000280898, 0.000179274, 0.000139043, 0.000115945, 0.000100292, 8.86446e-05, 7.9441e-05, 7.18798e-05, 6.5494e-05, 5.99924e-05, 5.51816e-05, 5.09276e-05, 4.71326e-05, 4.37228e-05, 4.06418e-05, 3.78446e-05, 
			0.000287488, 0.000185008, 0.000143951, 0.000120149, 0.000103918, 9.17912e-05, 8.21962e-05, 7.4311e-05, 6.76552e-05, 6.19272e-05, 5.69258e-05, 5.25094e-05, 4.85754e-05, 4.50458e-05, 4.18604e-05, 3.89716e-05
		)
}

CapTable	"metal9_C_BOTTOM_GP_101MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.2243e-05, 1.455e-05, 1.62774e-05, 1.76902e-05, 1.89314e-05, 2.00801e-05, 2.11796e-05, 2.22533e-05, 2.33127e-05, 2.43627e-05, 2.54042e-05, 2.64359e-05, 2.74554e-05, 2.84599e-05, 2.9447e-05, 3.04136e-05, 
			1.3495e-05, 1.54186e-05, 1.70104e-05, 1.84088e-05, 1.97002e-05, 2.09332e-05, 2.21347e-05, 2.33185e-05, 2.44906e-05, 2.56523e-05, 2.68027e-05, 2.79395e-05, 2.90595e-05, 3.01599e-05, 3.12384e-05, 3.22919e-05, 
			1.4586e-05, 1.63214e-05, 1.78592e-05, 1.92766e-05, 2.06268e-05, 2.19386e-05, 2.32282e-05, 2.45031e-05, 2.57657e-05, 2.70151e-05, 2.82492e-05, 2.9465e-05, 3.06598e-05, 3.18306e-05, 3.29749e-05, 3.40908e-05, 
			1.5654e-05, 1.73046e-05, 1.88374e-05, 2.02946e-05, 2.1707e-05, 2.30918e-05, 2.44588e-05, 2.58098e-05, 2.71462e-05, 2.84654e-05, 2.9765e-05, 3.10422e-05, 3.22939e-05, 3.35176e-05, 3.47115e-05, 3.58735e-05, 
			1.6757e-05, 1.83928e-05, 1.99498e-05, 2.1455e-05, 2.29282e-05, 2.43784e-05, 2.5811e-05, 2.72258e-05, 2.86218e-05, 2.99969e-05, 3.13483e-05, 3.2673e-05, 3.3969e-05, 3.52336e-05, 3.64653e-05, 3.76625e-05
		)
}

CapTable	"metal9_C_LATERAL_101MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000240902, 0.000146674, 0.000111897, 9.29058e-05, 8.04878e-05, 7.14638e-05, 6.44416e-05, 5.8715e-05, 5.3888e-05, 4.97212e-05, 4.6061e-05, 4.28038e-05, 3.98766e-05, 3.72262e-05, 3.48116e-05, 3.2602e-05, 
			0.000260616, 0.000162094, 0.000124576, 0.000103656, 8.97678e-05, 7.95808e-05, 7.16128e-05, 6.51022e-05, 5.96162e-05, 5.48896e-05, 5.07494e-05, 4.70772e-05, 4.3789e-05, 4.08222e-05, 3.81288e-05, 3.5672e-05, 
			0.000273088, 0.000172464, 0.000133304, 0.000111116, 9.62322e-05, 8.52364e-05, 7.66038e-05, 6.95402e-05, 6.35892e-05, 5.84682e-05, 5.3991e-05, 5.0029e-05, 4.64894e-05, 4.33032e-05, 4.04176e-05, 3.77906e-05, 
			0.000281526, 0.000179878, 0.000139643, 0.000116565, 0.000100959, 8.93782e-05, 8.02562e-05, 7.2785e-05, 6.6492e-05, 6.1082e-05, 5.63586e-05, 5.21852e-05, 4.84632e-05, 4.51186e-05, 4.2094e-05, 3.93448e-05, 
			0.000288036, 0.000185543, 0.000144502, 0.000120746, 0.000104585, 9.25456e-05, 8.3049e-05, 7.52662e-05, 6.87126e-05, 6.30826e-05, 5.81724e-05, 5.38396e-05, 4.99798e-05, 4.65156e-05, 4.33866e-05, 4.05454e-05
		)
}

CapTable	"metal9_C_BOTTOM_GP_91MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.269e-05, 1.51258e-05, 1.69504e-05, 1.84376e-05, 1.97386e-05, 2.09387e-05, 2.2086e-05, 2.32067e-05, 2.43142e-05, 2.54133e-05, 2.65052e-05, 2.75879e-05, 2.86581e-05, 2.9713e-05, 3.07489e-05, 3.17628e-05, 
			1.4057e-05, 1.60876e-05, 1.77626e-05, 1.92296e-05, 2.058e-05, 2.18672e-05, 2.31235e-05, 2.43635e-05, 2.55934e-05, 2.68145e-05, 2.80253e-05, 2.92224e-05, 3.04021e-05, 3.1561e-05, 3.26954e-05, 3.38027e-05, 
			1.5234e-05, 1.70614e-05, 1.86742e-05, 2.01586e-05, 2.15718e-05, 2.29462e-05, 2.4299e-05, 2.56405e-05, 2.69707e-05, 2.82887e-05, 2.95912e-05, 3.08749e-05, 3.2136e-05, 3.33709e-05, 3.45764e-05, 3.57505e-05, 
			1.637e-05, 1.8103e-05, 1.97112e-05, 2.124e-05, 2.27218e-05, 2.41796e-05, 2.56194e-05, 2.70464e-05, 2.8459e-05, 2.98544e-05, 3.12293e-05, 3.25797e-05, 3.39027e-05, 3.51946e-05, 3.6453e-05, 3.76762e-05, 
			1.7532e-05, 1.92508e-05, 2.08882e-05, 2.24732e-05, 2.40258e-05, 2.55572e-05, 2.70724e-05, 2.85706e-05, 3.00503e-05, 3.15074e-05, 3.29387e-05, 3.43411e-05, 3.57112e-05, 3.70467e-05, 3.83452e-05, 3.96052e-05
		)
}

CapTable	"metal8_C_LATERALMAX" {
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

CapTable	"metal8_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal8_C_LATERAL_12MAX" {
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

CapTable	"metal8_C_LATERAL_22MAX" {
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

CapTable	"metal8_C_BOTTOM_GPMAX" {
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

CapTable	"metal8_C_TOP_GPMAX" {
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

CapTable	"metal8_C_TOP_GP_21MAX" {
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

CapTable	"metal8_C_LATERAL_21MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_22MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_32MAX" {
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

CapTable	"metal8_C_LATERAL_32MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal8_C_TOP_GP_31MAX" {
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

CapTable	"metal8_C_LATERAL_31MAX" {
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

CapTable	"metal8_C_LATERAL_41MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_42MAX" {
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

CapTable	"metal8_C_LATERAL_42MAX" {
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

CapTable	"metal8_C_LATERAL_52MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_41MAX" {
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

CapTable	"metal8_C_TOP_GP_41MAX" {
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

CapTable	"metal8_C_TOP_GP_51MAX" {
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

CapTable	"metal8_C_LATERAL_51MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_52MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_62MAX" {
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

CapTable	"metal8_C_LATERAL_62MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_51MAX" {
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

CapTable	"metal8_C_BOTTOM_GP_61MAX" {
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

CapTable	"metal8_C_TOP_GP_61MAX" {
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

CapTable	"metal8_C_LATERAL_61MAX" {
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

CapTable	"metal8_C_LATERAL_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000213618, 0.000110542, 7.10258e-05, 4.94442e-05, 3.57898e-05, 2.65446e-05, 1.99864e-05, 1.52131e-05, 1.1677e-05, 9.01538e-06, 7.00736e-06, 5.45474e-06, 4.25632e-06, 3.33002e-06, 2.60588e-06, 2.04284e-06, 
			0.000222108, 0.000116559, 7.55566e-05, 5.29216e-05, 3.8547e-05, 2.87178e-05, 2.17152e-05, 1.65899e-05, 1.27811e-05, 9.89176e-06, 7.68586e-06, 5.98792e-06, 4.67894e-06, 3.6579e-06, 2.86524e-06, 2.24284e-06, 
			0.000226068, 0.000119744, 7.80788e-05, 5.49438e-05, 4.01686e-05, 3.0025e-05, 2.27616e-05, 1.7443e-05, 1.34476e-05, 1.04171e-05, 8.10502e-06, 6.31746e-06, 4.93604e-06, 3.86364e-06, 3.02142e-06, 2.36678e-06, 
			0.000227794, 0.00012154, 7.95856e-05, 5.61866e-05, 4.11842e-05, 3.0869e-05, 2.34492e-05, 1.79784e-05, 1.38708e-05, 1.07611e-05, 8.36946e-06, 6.5326e-06, 5.10062e-06, 3.99198e-06, 3.1228e-06, 2.44184e-06, 
			0.000229066, 0.000122737, 8.06144e-05, 5.70266e-05, 4.189e-05, 3.14284e-05, 2.38924e-05, 1.83415e-05, 1.41599e-05, 1.09861e-05, 8.55066e-06, 6.67012e-06, 5.21582e-06, 4.07236e-06, 3.18766e-06, 2.48628e-06
		)
}

CapTable	"metal8_C_BOTTOM_GP_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.4206e-05, 1.74072e-05, 2.0022e-05, 2.22772e-05, 2.42918e-05, 2.61338e-05, 2.78448e-05, 2.94513e-05, 3.09701e-05, 3.24129e-05, 3.37876e-05, 3.50996e-05, 3.6353e-05, 3.7551e-05, 3.86959e-05, 3.97896e-05, 
			1.6414e-05, 1.93076e-05, 2.18348e-05, 2.41e-05, 2.61744e-05, 2.81017e-05, 2.99117e-05, 3.16241e-05, 3.32519e-05, 3.4804e-05, 3.6287e-05, 3.7705e-05, 3.90617e-05, 4.03599e-05, 4.16014e-05, 4.27885e-05, 
			1.856e-05, 2.12896e-05, 2.3761e-05, 2.60316e-05, 2.81446e-05, 3.01308e-05, 3.2011e-05, 3.37991e-05, 3.55051e-05, 3.71364e-05, 3.86978e-05, 4.0193e-05, 4.16249e-05, 4.2996e-05, 4.43081e-05, 4.55631e-05, 
			2.0702e-05, 2.33312e-05, 2.57722e-05, 2.80524e-05, 3.01972e-05, 3.22288e-05, 3.41636e-05, 3.6011e-05, 3.77782e-05, 3.94709e-05, 4.10933e-05, 4.26483e-05, 4.41384e-05, 4.55659e-05, 4.69326e-05, 4.82404e-05, 
			2.2848e-05, 2.543e-05, 2.78574e-05, 3.01494e-05, 3.23242e-05, 3.43964e-05, 3.63758e-05, 3.82714e-05, 4.00886e-05, 4.18311e-05, 4.35029e-05, 4.51065e-05, 4.66439e-05, 4.81173e-05, 4.95283e-05, 5.08788e-05
		)
}

CapTable	"metal8_C_LATERAL_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000239194, 0.000141929, 0.000105876, 8.61598e-05, 7.33288e-05, 6.41028e-05, 5.70276e-05, 5.13538e-05, 4.6654e-05, 4.26652e-05, 3.92164e-05, 3.6191e-05, 3.35068e-05, 3.11032e-05, 2.89352e-05, 2.6968e-05, 
			0.000256202, 0.000154952, 0.000116476, 9.5135e-05, 8.11086e-05, 7.09608e-05, 6.31468e-05, 5.68642e-05, 5.16518e-05, 4.72246e-05, 4.33958e-05, 4.00378e-05, 3.70596e-05, 3.43944e-05, 3.19922e-05, 2.98138e-05, 
			0.000266558, 0.000163529, 0.000123735, 0.000101412, 8.66334e-05, 7.58792e-05, 6.75662e-05, 6.08646e-05, 5.5295e-05, 5.0559e-05, 4.64608e-05, 4.28654e-05, 3.96766e-05, 3.68234e-05, 3.42522e-05, 3.19214e-05, 
			0.000273386, 0.000169668, 0.000129093, 0.000106127, 9.08258e-05, 7.96462e-05, 7.09694e-05, 6.3958e-05, 5.81214e-05, 5.31534e-05, 4.88514e-05, 4.5076e-05, 4.1727e-05, 3.87304e-05, 3.603e-05, 3.35822e-05, 
			0.000278806, 0.000174504, 0.000133366, 0.000109917, 9.42148e-05, 8.26956e-05, 7.37342e-05, 6.64786e-05, 6.04304e-05, 5.52774e-05, 5.08128e-05, 4.6893e-05, 4.34154e-05, 4.03032e-05, 3.74988e-05, 3.49568e-05
		)
}

CapTable	"metal8_C_LATERAL_82MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000239646, 0.000142507, 0.000106563, 8.69408e-05, 7.41902e-05, 6.5032e-05, 5.8013e-05, 5.23846e-05, 4.77206e-05, 4.3759e-05, 4.03298e-05, 3.7317e-05, 3.46396e-05, 3.22376e-05, 3.0067e-05, 2.8093e-05, 
			0.000256786, 0.000155661, 0.000117291, 9.60412e-05, 8.20918e-05, 7.20076e-05, 6.42452e-05, 5.80034e-05, 5.28224e-05, 4.8418e-05, 4.46046e-05, 4.12554e-05, 3.82804e-05, 3.56136e-05, 3.32054e-05, 3.10176e-05, 
			0.000267276, 0.000164365, 0.000124671, 0.000102433, 8.77238e-05, 7.70264e-05, 6.87586e-05, 6.20918e-05, 5.65478e-05, 5.18294e-05, 4.7742e-05, 4.41512e-05, 4.0962e-05, 3.8104e-05, 3.55242e-05, 3.31814e-05, 
			0.000274232, 0.000170622, 0.000130139, 0.000107248, 9.20092e-05, 8.08786e-05, 7.22398e-05, 6.52566e-05, 5.94398e-05, 5.44844e-05, 5.01886e-05, 4.6414e-05, 4.30612e-05, 4.00568e-05, 3.73452e-05, 3.48834e-05, 
			0.000279772, 0.000175567, 0.00013451, 0.000111127, 9.5478e-05, 8.39996e-05, 7.5069e-05, 6.78354e-05, 6.18016e-05, 5.66564e-05, 5.21938e-05, 4.82716e-05, 4.4787e-05, 4.16648e-05, 3.8847e-05, 3.6289e-05
		)
}

CapTable	"metal8_C_BOTTOM_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			6.4445e-06, 8.7412e-06, 1.07543e-05, 1.24266e-05, 1.38048e-05, 1.48909e-05, 1.57536e-05, 1.64279e-05, 1.6955e-05, 1.73646e-05, 1.77776e-05, 1.79953e-05, 1.81667e-05, 1.8305e-05, 1.84001e-05, 1.84952e-05, 
			8.7985e-06, 1.11461e-05, 1.32344e-05, 1.50164e-05, 1.6466e-05, 1.76352e-05, 1.85618e-05, 1.92921e-05, 1.99769e-05, 2.03902e-05, 2.07151e-05, 2.09711e-05, 2.11751e-05, 2.13281e-05, 2.14098e-05, 2.15592e-05, 
			1.12073e-05, 1.36088e-05, 1.57582e-05, 1.75882e-05, 1.90914e-05, 2.0303e-05, 2.12664e-05, 2.2123e-05, 2.26944e-05, 2.31449e-05, 2.3502e-05, 2.37695e-05, 2.4002e-05, 2.41784e-05, 2.43136e-05, 2.44232e-05, 
			1.3707e-05, 1.61278e-05, 1.83134e-05, 2.01744e-05, 2.17058e-05, 2.3052e-05, 2.40078e-05, 2.47676e-05, 2.53682e-05, 2.58449e-05, 2.62125e-05, 2.64524e-05, 2.67474e-05, 2.6933e-05, 2.70762e-05, 2.71882e-05, 
			1.6235e-05, 1.8685e-05, 2.08926e-05, 2.27744e-05, 2.4416e-05, 2.56456e-05, 2.66296e-05, 2.74155e-05, 2.80231e-05, 2.85259e-05, 2.89143e-05, 2.92199e-05, 2.94622e-05, 2.96466e-05, 2.97973e-05, 2.99097e-05
		)
}

CapTable	"metal8_C_TOP_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.59915e-05, 6.16864e-05, 7.39359e-05, 8.33732e-05, 9.06654e-05, 9.62605e-05, 0.000100569, 0.000103898, 0.000106464, 0.00010846, 0.000109901, 0.000111144, 0.000112116, 0.000112867, 0.000113468, 0.000113924, 
			6.66695e-05, 8.24969e-05, 9.4995e-05, 0.000104764, 0.000112342, 0.000118229, 0.000122798, 0.000126347, 0.000128986, 0.000131174, 0.000132884, 0.000134225, 0.000135262, 0.000136087, 0.000136768, 0.000137227, 
			8.76907e-05, 0.000103565, 0.000116178, 0.00012609, 0.000133842, 0.000139894, 0.000144622, 0.000148193, 0.000151105, 0.000153386, 0.000155156, 0.00015656, 0.000157645, 0.000158493, 0.000159171, 0.000159688, 
			0.000108952, 0.000124771, 0.000137441, 0.000147445, 0.000155303, 0.000161341, 0.000166188, 0.000169987, 0.00017297, 0.000175286, 0.00017712, 0.000178596, 0.000179668, 0.000180536, 0.000181232, 0.000181779, 
			0.000130363, 0.000146215, 0.000158927, 0.000169014, 0.000176835, 0.000183089, 0.00018801, 0.000191842, 0.000194873, 0.00019723, 0.000199084, 0.000200539, 0.000201665, 0.000202584, 0.000203282, 0.000203849
		)
}

CapTable	"metal8_C_TOP_GP_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.62712e-05, 6.2017e-05, 7.42992e-05, 8.37558e-05, 9.108e-05, 9.67087e-05, 0.000101046, 0.00010441, 0.000107013, 0.000109045, 0.000110626, 0.000111761, 0.000112777, 0.000113569, 0.000114196, 0.000114705, 
			6.69882e-05, 8.28463e-05, 9.53614e-05, 0.000105156, 0.000112759, 0.000118679, 0.000123285, 0.000126873, 0.000129676, 0.000131736, 0.0001335, 0.000134894, 0.000135982, 0.000136845, 0.000137539, 0.000138076, 
			8.80167e-05, 0.000103911, 0.000116542, 0.000126472, 0.000134251, 0.000140337, 0.000145105, 0.000148825, 0.000151635, 0.000153978, 0.000155809, 0.000157258, 0.00015842, 0.000159321, 0.000160038, 0.000160599, 
			0.000109283, 0.000125109, 0.000137789, 0.000147811, 0.000155696, 0.000161883, 0.000166607, 0.00017047, 0.00017352, 0.000175902, 0.00017779, 0.000179298, 0.000180474, 0.0001814, 0.000182145, 0.000182744, 
			0.000130682, 0.000146535, 0.000159252, 0.000169356, 0.0001773, 0.000183452, 0.000188435, 0.000192335, 0.000195418, 0.000197876, 0.000199793, 0.000201315, 0.000202506, 0.000203482, 0.000204241, 0.00020486
		)
}

CapTable	"metal8_C_LATERAL_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000213794, 0.000110804, 7.13678e-05, 4.98582e-05, 3.62408e-05, 2.7003e-05, 2.04652e-05, 1.5684e-05, 1.21313e-05, 9.44698e-06, 7.40082e-06, 5.83414e-06, 4.60438e-06, 3.64682e-06, 2.89416e-06, 2.29846e-06, 
			0.000222398, 0.000116949, 7.60408e-05, 5.34664e-05, 3.91348e-05, 2.93226e-05, 2.23202e-05, 1.71817e-05, 1.33376e-05, 1.04351e-05, 8.19302e-06, 6.45642e-06, 5.10788e-06, 4.0498e-06, 3.2143e-06, 2.55702e-06, 
			0.0002265, 0.000120277, 7.8687e-05, 5.56258e-05, 4.08856e-05, 3.07542e-05, 2.34844e-05, 1.81331e-05, 1.41228e-05, 1.10519e-05, 8.69506e-06, 6.86396e-06, 5.4302e-06, 4.30836e-06, 3.42348e-06, 2.72532e-06, 
			0.00022836, 0.000122213, 8.03418e-05, 5.69994e-05, 4.20262e-05, 3.17078e-05, 2.42874e-05, 1.87854e-05, 1.46356e-05, 1.14766e-05, 9.03634e-06, 7.13464e-06, 5.65142e-06, 4.48832e-06, 3.56672e-06, 2.83592e-06, 
			0.000229772, 0.000123546, 8.15022e-05, 5.79646e-05, 4.28402e-05, 3.2389e-05, 2.48272e-05, 1.92356e-05, 1.50092e-05, 1.17696e-05, 9.27276e-06, 7.32878e-06, 5.81156e-06, 4.60682e-06, 3.66352e-06, 2.90678e-06
		)
}

CapTable	"metal8_C_BOTTOM_GP_82MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.3643e-05, 1.66524e-05, 1.909e-05, 2.11792e-05, 2.30393e-05, 2.47375e-05, 2.63157e-05, 2.78002e-05, 2.92076e-05, 3.05493e-05, 3.18327e-05, 3.30633e-05, 3.4244e-05, 3.53778e-05, 3.64661e-05, 3.7511e-05, 
			1.5667e-05, 1.83614e-05, 2.06998e-05, 2.27888e-05, 2.46972e-05, 2.64702e-05, 2.8138e-05, 2.97198e-05, 3.12282e-05, 3.26721e-05, 3.40573e-05, 3.53878e-05, 3.66664e-05, 3.78952e-05, 3.90759e-05, 4.02097e-05, 
			1.7613e-05, 2.01373e-05, 2.24132e-05, 2.44994e-05, 2.64402e-05, 2.82666e-05, 2.99983e-05, 3.16508e-05, 3.32332e-05, 3.47522e-05, 3.62121e-05, 3.76163e-05, 3.89668e-05, 4.02655e-05, 4.15137e-05, 4.27128e-05, 
			1.9545e-05, 2.19636e-05, 2.42042e-05, 2.62946e-05, 2.82638e-05, 3.01324e-05, 3.19162e-05, 3.36247e-05, 3.52657e-05, 3.68436e-05, 3.83624e-05, 3.98242e-05, 4.12308e-05, 4.2584e-05, 4.38851e-05, 4.5135e-05, 
			2.1472e-05, 2.38396e-05, 2.60628e-05, 2.8164e-05, 3.016e-05, 3.20664e-05, 3.3894e-05, 3.56496e-05, 3.73384e-05, 3.8965e-05, 4.05318e-05, 4.20405e-05, 4.34931e-05, 4.48906e-05, 4.62345e-05, 4.75259e-05
		)
}

CapTable	"metal8_C_BOTTOM_GP_92MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.3158e-05, 1.60002e-05, 1.82854e-05, 2.02336e-05, 2.19615e-05, 2.35357e-05, 2.49981e-05, 2.63747e-05, 2.76822e-05, 2.89319e-05, 3.0131e-05, 3.12843e-05, 3.23952e-05, 3.34661e-05, 3.44981e-05, 3.54929e-05, 
			1.5031e-05, 1.75552e-05, 1.97348e-05, 2.16732e-05, 2.34394e-05, 2.50805e-05, 2.66241e-05, 2.80904e-05, 2.94919e-05, 3.08372e-05, 3.21319e-05, 3.33799e-05, 3.45837e-05, 3.57448e-05, 3.6865e-05, 3.79448e-05, 
			1.6815e-05, 1.91652e-05, 2.12756e-05, 2.32054e-05, 2.49996e-05, 2.66864e-05, 2.82896e-05, 2.98219e-05, 3.12929e-05, 3.27093e-05, 3.40753e-05, 3.53935e-05, 3.66661e-05, 3.78944e-05, 3.90795e-05, 4.02222e-05, 
			1.8575e-05, 2.0817e-05, 2.28886e-05, 2.48178e-05, 2.66364e-05, 2.83632e-05, 3.00144e-05, 3.15996e-05, 3.31268e-05, 3.45997e-05, 3.60222e-05, 3.73961e-05, 3.87229e-05, 4.00041e-05, 4.12404e-05, 4.24323e-05, 
			2.0324e-05, 2.2511e-05, 2.45624e-05, 2.64996e-05, 2.83426e-05, 3.01044e-05, 3.1797e-05, 3.34272e-05, 3.50012e-05, 3.65213e-05, 3.79902e-05, 3.94098e-05, 4.07811e-05, 4.21054e-05, 4.33834e-05, 4.46157e-05
		)
}

CapTable	"metal8_C_LATERAL_92MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000240036, 0.00014301, 0.000107162, 8.76224e-05, 7.4944e-05, 6.58484e-05, 5.88828e-05, 5.32996e-05, 4.8673e-05, 4.47416e-05, 4.13362e-05, 3.83416e-05, 3.5677e-05, 3.3283e-05, 3.11162e-05, 2.91422e-05, 
			0.000257288, 0.000156271, 0.000117995, 9.68268e-05, 8.29476e-05, 7.29234e-05, 6.52118e-05, 5.9012e-05, 5.38652e-05, 4.9488e-05, 4.56954e-05, 4.23612e-05, 3.9396e-05, 3.67346e-05, 3.43276e-05, 3.21374e-05, 
			0.00026789, 0.000165081, 0.000125476, 0.000103316, 8.86724e-05, 7.80306e-05, 6.98088e-05, 6.31796e-05, 5.76656e-05, 5.29704e-05, 4.88998e-05, 4.53208e-05, 4.21382e-05, 3.92826e-05, 3.67012e-05, 3.43536e-05, 
			0.000274954, 0.00017144, 0.000131039, 0.00010822, 9.30406e-05, 8.19598e-05, 7.33616e-05, 6.6411e-05, 6.06194e-05, 5.56828e-05, 5.14002e-05, 4.76336e-05, 4.42844e-05, 4.12794e-05, 3.85638e-05, 3.6095e-05, 
			0.000280596, 0.00017648, 0.000135499, 0.000112179, 9.65834e-05, 8.51486e-05, 7.6253e-05, 6.90468e-05, 6.30336e-05, 5.7903e-05, 5.345e-05, 4.95324e-05, 4.60486e-05, 4.29232e-05, 4.0099e-05, 3.7532e-05
		)
}

CapTable	"metal8_C_BOTTOM_GP_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			5.9368e-06, 8.0509e-06, 9.899e-06, 1.143e-05, 1.26952e-05, 1.37013e-05, 1.44868e-05, 1.5111e-05, 1.55997e-05, 1.5982e-05, 1.62822e-05, 1.66149e-05, 1.67676e-05, 1.68922e-05, 1.69898e-05, 1.70525e-05, 
			8.0918e-06, 1.02469e-05, 1.21578e-05, 1.37916e-05, 1.51192e-05, 1.61924e-05, 1.70448e-05, 1.77203e-05, 1.82524e-05, 1.87919e-05, 1.9086e-05, 1.93176e-05, 1.95041e-05, 1.96522e-05, 1.97587e-05, 1.9862e-05, 
			1.02873e-05, 1.24916e-05, 1.4465e-05, 1.61332e-05, 1.75104e-05, 1.86218e-05, 1.95096e-05, 2.02159e-05, 2.08782e-05, 2.12871e-05, 2.16139e-05, 2.1873e-05, 2.20598e-05, 2.22356e-05, 2.23705e-05, 2.24757e-05, 
			1.257e-05, 1.4785e-05, 1.67842e-05, 1.84856e-05, 1.98888e-05, 2.10252e-05, 2.20606e-05, 2.27506e-05, 2.32984e-05, 2.37364e-05, 2.40827e-05, 2.43444e-05, 2.45756e-05, 2.47517e-05, 2.48903e-05, 2.49991e-05, 
			1.4874e-05, 1.71134e-05, 1.91318e-05, 2.08514e-05, 2.22738e-05, 2.3532e-05, 2.44278e-05, 2.51454e-05, 2.57168e-05, 2.61504e-05, 2.65262e-05, 2.68182e-05, 2.70484e-05, 2.72272e-05, 2.73735e-05, 2.74852e-05
		)
}

CapTable	"metal8_C_BOTTOM_GP_91MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			5.5235e-06, 7.4829e-06, 9.1942e-06, 1.06089e-05, 1.17814e-05, 1.27165e-05, 1.34462e-05, 1.40287e-05, 1.44875e-05, 1.48468e-05, 1.51331e-05, 1.54876e-05, 1.56267e-05, 1.57404e-05, 1.58304e-05, 1.59039e-05, 
			7.5141e-06, 9.5075e-06, 1.12725e-05, 1.2786e-05, 1.40142e-05, 1.5012e-05, 1.5807e-05, 1.64369e-05, 1.69364e-05, 1.73321e-05, 1.77629e-05, 1.79772e-05, 1.81499e-05, 1.82877e-05, 1.8398e-05, 1.84718e-05, 
			9.5357e-06, 1.15728e-05, 1.33986e-05, 1.4942e-05, 1.6219e-05, 1.72518e-05, 1.8079e-05, 1.87405e-05, 1.94094e-05, 1.97862e-05, 2.009e-05, 2.03316e-05, 2.05249e-05, 2.06791e-05, 2.07916e-05, 2.09029e-05, 
			1.1641e-05, 1.36852e-05, 1.55338e-05, 1.71092e-05, 1.84098e-05, 1.9466e-05, 2.03172e-05, 2.11228e-05, 2.16293e-05, 2.20362e-05, 2.23611e-05, 2.26206e-05, 2.28105e-05, 2.29879e-05, 2.3129e-05, 2.32359e-05, 
			1.376e-05, 1.58298e-05, 1.76938e-05, 1.92864e-05, 2.06062e-05, 2.18284e-05, 2.26544e-05, 2.33197e-05, 2.38519e-05, 2.42771e-05, 2.46149e-05, 2.48771e-05, 2.51079e-05, 2.52801e-05, 2.5423e-05, 2.55325e-05
		)
}

CapTable	"metal8_C_TOP_GP_91MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.64955e-05, 6.22897e-05, 7.46008e-05, 8.40695e-05, 9.14202e-05, 9.70749e-05, 0.000101436, 0.00010483, 0.000107463, 0.000109527, 0.000111137, 0.000112264, 0.000113316, 0.000114141, 0.000114799, 0.000115323, 
			6.72439e-05, 8.31307e-05, 9.56579e-05, 0.000105474, 0.000113096, 0.000119042, 0.000123678, 0.0001273, 0.000130138, 0.000132367, 0.000133998, 0.000135435, 0.000136563, 0.000137465, 0.000138184, 0.000138767, 
			8.82743e-05, 0.00010419, 0.000116836, 0.000126779, 0.000134579, 0.000140693, 0.000145494, 0.000149251, 0.000152057, 0.000154451, 0.000156331, 0.000157828, 0.000159019, 0.000159969, 0.000160735, 0.000161333, 
			0.000109544, 0.000125378, 0.000138068, 0.000148104, 0.000156011, 0.000162228, 0.000167127, 0.000170852, 0.000173956, 0.000176393, 0.000178334, 0.000179878, 0.000181122, 0.000182102, 0.000182878, 0.000183517, 
			0.000130934, 0.000146791, 0.000159515, 0.000169632, 0.000177599, 0.000183736, 0.000188769, 0.000192724, 0.000195864, 0.000198359, 0.000200354, 0.000201931, 0.000203177, 0.000204203, 0.000205005, 0.000205668
		)
}

CapTable	"metal8_C_LATERAL_91MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.00021394, 0.000111019, 7.1648e-05, 5.02006e-05, 3.66124e-05, 2.73896e-05, 2.08588e-05, 1.60693e-05, 1.25015e-05, 9.79722e-06, 7.72794e-06, 6.1394e-06, 4.8833e-06, 3.89962e-06, 3.12156e-06, 2.50406e-06, 
			0.000222638, 0.00011727, 7.64406e-05, 5.3914e-05, 3.96168e-05, 2.9816e-05, 2.2811e-05, 1.76591e-05, 1.37936e-05, 1.08499e-05, 8.59512e-06, 6.82576e-06, 5.44406e-06, 4.35332e-06, 3.48896e-06, 2.79824e-06, 
			0.000226856, 0.000120716, 7.91924e-05, 5.6182e-05, 4.1467e-05, 3.13422e-05, 2.4064e-05, 1.86925e-05, 1.46576e-05, 1.15518e-05, 9.15696e-06, 7.2864e-06, 5.81708e-06, 4.65588e-06, 3.73044e-06, 2.99808e-06, 
			0.000228824, 0.000122763, 8.09552e-05, 5.76548e-05, 4.27012e-05, 3.2383e-05, 2.49318e-05, 1.94212e-05, 1.52347e-05, 1.20338e-05, 9.54886e-06, 7.60636e-06, 6.07248e-06, 4.86208e-06, 3.90296e-06, 3.13314e-06, 
			0.000230348, 0.000124199, 8.22152e-05, 5.87136e-05, 4.36018e-05, 3.31476e-05, 2.55616e-05, 1.99343e-05, 1.56641e-05, 1.23829e-05, 9.82808e-06, 7.8329e-06, 6.26512e-06, 5.01188e-06, 4.02304e-06, 3.22348e-06
		)
}

CapTable	"metal7_C_LATERAL_12MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal7_C_LATERAL_13MAX" {
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

CapTable	"metal7_C_LATERALMAX" {
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

CapTable	"metal7_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal7_C_TOP_GP_12MAX" {
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

CapTable	"metal7_C_LATERAL_23MAX" {
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

CapTable	"metal7_C_BOTTOM_GPMAX" {
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

CapTable	"metal7_C_TOP_GPMAX" {
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

CapTable	"metal7_C_TOP_GP_22MAX" {
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

CapTable	"metal7_C_LATERAL_22MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_23MAX" {
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

CapTable	"metal7_C_TOP_GP_21MAX" {
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

CapTable	"metal7_C_LATERAL_21MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_22MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_33MAX" {
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

CapTable	"metal7_C_LATERAL_33MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_32MAX" {
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

CapTable	"metal7_C_TOP_GP_32MAX" {
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

CapTable	"metal7_C_LATERAL_32MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal7_C_TOP_GP_31MAX" {
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

CapTable	"metal7_C_LATERAL_31MAX" {
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

CapTable	"metal7_C_LATERAL_42MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_43MAX" {
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

CapTable	"metal7_C_LATERAL_43MAX" {
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

CapTable	"metal7_C_LATERAL_41MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_42MAX" {
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

CapTable	"metal7_C_TOP_GP_42MAX" {
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

CapTable	"metal7_C_LATERAL_53MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_41MAX" {
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

CapTable	"metal7_C_TOP_GP_41MAX" {
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

CapTable	"metal7_C_TOP_GP_52MAX" {
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

CapTable	"metal7_C_LATERAL_52MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_53MAX" {
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

CapTable	"metal7_C_TOP_GP_51MAX" {
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

CapTable	"metal7_C_LATERAL_51MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_52MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.1551e-05, 1.39206e-05, 1.57538e-05, 1.72539e-05, 1.85349e-05, 1.96619e-05, 2.0676e-05, 2.16034e-05, 2.2462e-05, 2.32643e-05, 2.40189e-05, 2.47331e-05, 2.54113e-05, 2.60579e-05, 2.66761e-05, 2.7268e-05, 
			1.3128e-05, 1.51672e-05, 1.68618e-05, 1.8312e-05, 1.95885e-05, 2.07357e-05, 2.17832e-05, 2.27518e-05, 2.36562e-05, 2.45066e-05, 2.5311e-05, 2.60751e-05, 2.68037e-05, 2.75003e-05, 2.81678e-05, 2.88087e-05, 
			1.4522e-05, 1.63638e-05, 1.79582e-05, 1.93662e-05, 2.06294e-05, 2.17827e-05, 2.28479e-05, 2.38411e-05, 2.47749e-05, 2.56574e-05, 2.64957e-05, 2.7295e-05, 2.80592e-05, 2.87916e-05, 2.94949e-05, 3.01711e-05, 
			1.5813e-05, 1.75264e-05, 1.90496e-05, 2.04202e-05, 2.16716e-05, 2.28259e-05, 2.39018e-05, 2.49121e-05, 2.58669e-05, 2.67734e-05, 2.76374e-05, 2.84633e-05, 2.92552e-05, 3.00153e-05, 3.07463e-05, 3.14503e-05, 
			1.7052e-05, 1.86672e-05, 2.01352e-05, 2.14772e-05, 2.2716e-05, 2.38702e-05, 2.49534e-05, 2.59763e-05, 2.69469e-05, 2.78718e-05, 2.87561e-05, 2.96033e-05, 3.04168e-05, 3.11994e-05, 3.19529e-05, 3.26794e-05
		)
}

CapTable	"metal7_C_LATERAL_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000187096, 0.000113345, 8.61742e-05, 7.14462e-05, 6.19472e-05, 5.51738e-05, 5.00192e-05, 4.59146e-05, 4.25358e-05, 3.96832e-05, 3.72272e-05, 3.50788e-05, 3.31756e-05, 3.14716e-05, 2.99324e-05, 2.8532e-05, 
			0.000202682, 0.000125767, 9.66062e-05, 8.0527e-05, 7.00194e-05, 6.24636e-05, 5.66804e-05, 5.20568e-05, 4.824e-05, 4.50118e-05, 4.22286e-05, 3.97924e-05, 3.7633e-05, 3.56992e-05, 3.39526e-05, 3.23634e-05, 
			0.000212714, 0.000134383, 0.000104119, 8.71968e-05, 7.60488e-05, 6.79704e-05, 6.17556e-05, 5.67682e-05, 5.26392e-05, 4.91396e-05, 4.61176e-05, 4.3469e-05, 4.11194e-05, 3.9014e-05, 3.71114e-05, 3.538e-05, 
			0.000220138, 0.000141001, 0.000110028, 9.25328e-05, 8.09144e-05, 7.24526e-05, 6.5914e-05, 6.06488e-05, 5.62786e-05, 5.25666e-05, 4.93564e-05, 4.65394e-05, 4.40378e-05, 4.17948e-05, 3.97668e-05, 3.79204e-05, 
			0.000225568, 0.000146217, 0.000114802, 9.69068e-05, 8.4946e-05, 7.61968e-05, 6.941e-05, 6.39264e-05, 5.93644e-05, 5.54824e-05, 5.21198e-05, 4.91658e-05, 4.65404e-05, 4.41842e-05, 4.20528e-05, 4.01114e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_51MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.0524e-06, 6.2538e-06, 7.2412e-06, 8.0896e-06, 8.8497e-06, 9.5326e-06, 1.01648e-05, 1.07538e-05, 1.13049e-05, 1.18217e-05, 1.23082e-05, 1.27663e-05, 1.31994e-05, 1.36059e-05, 1.39894e-05, 1.43492e-05, 
			5.9863e-06, 7.0798e-06, 8.0424e-06, 8.9049e-06, 9.6924e-06, 1.04204e-05, 1.10997e-05, 1.17365e-05, 1.23364e-05, 1.29034e-05, 1.34384e-05, 1.39434e-05, 1.44217e-05, 1.4871e-05, 1.52971e-05, 1.57011e-05, 
			6.8608e-06, 7.9141e-06, 8.863e-06, 9.7346e-06, 1.05461e-05, 1.13049e-05, 1.20176e-05, 1.26906e-05, 1.3327e-05, 1.39307e-05, 1.45009e-05, 1.50414e-05, 1.55509e-05, 1.60351e-05, 1.64893e-05, 1.69201e-05, 
			7.7359e-06, 8.7578e-06, 9.7056e-06, 1.05912e-05, 1.14206e-05, 1.22031e-05, 1.29442e-05, 1.3646e-05, 1.43113e-05, 1.49436e-05, 1.55411e-05, 1.61095e-05, 1.66494e-05, 1.71536e-05, 1.76353e-05, 1.80874e-05, 
			8.6153e-06, 9.621e-06, 1.05718e-05, 1.14685e-05, 1.23156e-05, 1.31199e-05, 1.38836e-05, 1.46085e-05, 1.52981e-05, 1.59519e-05, 1.65747e-05, 1.71627e-05, 1.77214e-05, 1.82516e-05, 1.87505e-05, 1.92233e-05
		)
}

CapTable	"metal7_C_TOP_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.04076e-05, 1.2832e-05, 1.48214e-05, 1.65376e-05, 1.80597e-05, 1.94522e-05, 2.07346e-05, 2.19273e-05, 2.3044e-05, 2.40938e-05, 2.50817e-05, 2.60117e-05, 2.68872e-05, 2.77128e-05, 2.84899e-05, 2.92214e-05, 
			1.23281e-05, 1.45634e-05, 1.65164e-05, 1.82657e-05, 1.98635e-05, 2.13427e-05, 2.27236e-05, 2.40201e-05, 2.52415e-05, 2.6393e-05, 2.74805e-05, 2.85076e-05, 2.9477e-05, 3.03929e-05, 3.12549e-05, 3.20637e-05, 
			1.41762e-05, 1.63051e-05, 1.8245e-05, 2.00256e-05, 2.16758e-05, 2.32201e-05, 2.46738e-05, 2.60453e-05, 2.73419e-05, 2.85681e-05, 2.97291e-05, 3.08274e-05, 3.18669e-05, 3.28462e-05, 3.37724e-05, 3.46446e-05, 
			1.59931e-05, 1.80879e-05, 2.00264e-05, 2.18333e-05, 2.3529e-05, 2.51274e-05, 2.66385e-05, 2.80689e-05, 2.94255e-05, 3.07114e-05, 3.19315e-05, 3.30847e-05, 3.4174e-05, 3.52103e-05, 3.61833e-05, 3.71023e-05, 
			1.78417e-05, 1.99118e-05, 2.18582e-05, 2.36933e-05, 2.54276e-05, 2.70693e-05, 2.86272e-05, 3.01072e-05, 3.15126e-05, 3.28482e-05, 3.41123e-05, 3.53123e-05, 3.64482e-05, 3.75205e-05, 3.85331e-05, 3.94891e-05
		)
}

CapTable	"metal7_C_LATERAL_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183971, 0.000109356, 8.14194e-05, 6.59954e-05, 5.5856e-05, 4.84904e-05, 4.27878e-05, 3.8178e-05, 3.43352e-05, 3.1059e-05, 2.82188e-05, 2.57252e-05, 2.35134e-05, 2.15372e-05, 1.97599e-05, 1.81547e-05, 
			0.000198575, 0.000120784, 9.08172e-05, 7.39914e-05, 6.27892e-05, 5.4588e-05, 4.8206e-05, 4.30298e-05, 3.87054e-05, 3.5014e-05, 3.18116e-05, 2.8999e-05, 2.65036e-05, 2.42744e-05, 2.22696e-05, 2.04592e-05, 
			0.000207608, 0.000128383, 9.7281e-05, 7.95758e-05, 6.76968e-05, 5.8938e-05, 5.20924e-05, 4.65232e-05, 4.18614e-05, 3.7876e-05, 3.44158e-05, 3.13738e-05, 2.86754e-05, 2.62632e-05, 2.40952e-05, 2.21354e-05, 
			0.000214004, 0.00013395, 0.000102116, 8.38116e-05, 7.14374e-05, 6.22724e-05, 5.50824e-05, 4.92188e-05, 4.43014e-05, 4.0092e-05, 3.6434e-05, 3.3217e-05, 3.03618e-05, 2.78088e-05, 2.55132e-05, 2.34402e-05, 
			0.00021837, 0.000138088, 0.000105794, 8.70732e-05, 7.43408e-05, 6.48758e-05, 5.74274e-05, 5.1337e-05, 4.62214e-05, 4.18382e-05, 3.80262e-05, 3.46726e-05, 3.16938e-05, 2.90302e-05, 2.66364e-05, 2.44714e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.5066e-06, 4.5509e-06, 5.4639e-06, 6.2732e-06, 6.9872e-06, 7.6148e-06, 8.164e-06, 8.6396e-06, 9.0614e-06, 9.4212e-06, 9.74092e-06, 1.00192e-05, 1.02511e-05, 1.04631e-05, 1.0648e-05, 1.0809e-05, 
			4.4714e-06, 5.4947e-06, 6.4288e-06, 7.2721e-06, 8.0259e-06, 8.7013e-06, 9.2867e-06, 9.8102e-06, 1.02621e-05, 1.06642e-05, 1.10157e-05, 1.1313e-05, 1.15828e-05, 1.18183e-05, 1.20243e-05, 1.22047e-05, 
			5.4432e-06, 6.4645e-06, 7.413e-06, 8.2777e-06, 9.0529e-06, 9.7528e-06, 1.03673e-05, 1.09164e-05, 1.14e-05, 1.18148e-05, 1.21889e-05, 1.25169e-05, 1.28045e-05, 1.30565e-05, 1.32737e-05, 1.34685e-05, 
			6.4286e-06, 7.4516e-06, 8.4147e-06, 9.2889e-06, 1.00895e-05, 1.08007e-05, 1.14414e-05, 1.20089e-05, 1.25003e-05, 1.29423e-05, 1.33321e-05, 1.36753e-05, 1.39758e-05, 1.42374e-05, 1.44706e-05, 1.46761e-05, 
			7.4323e-06, 8.452e-06, 9.4205e-06, 1.03085e-05, 1.1121e-05, 1.1853e-05, 1.24964e-05, 1.30778e-05, 1.35935e-05, 1.40491e-05, 1.44501e-05, 1.48003e-05, 1.51128e-05, 1.53874e-05, 1.563e-05, 1.58436e-05
		)
}

CapTable	"metal7_C_TOP_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.04998e-05, 2.65353e-05, 3.17709e-05, 3.6332e-05, 4.03018e-05, 4.37453e-05, 4.67235e-05, 4.92975e-05, 5.151e-05, 5.34114e-05, 5.50554e-05, 5.64701e-05, 5.76881e-05, 5.8746e-05, 5.96611e-05, 6.04564e-05, 
			2.66932e-05, 3.28239e-05, 3.8286e-05, 4.31059e-05, 4.73319e-05, 5.10106e-05, 5.42161e-05, 5.69859e-05, 5.93797e-05, 6.1453e-05, 6.3244e-05, 6.47919e-05, 6.61356e-05, 6.73029e-05, 6.83177e-05, 6.92016e-05, 
			3.31554e-05, 3.93689e-05, 4.49552e-05, 4.99123e-05, 5.42765e-05, 5.80894e-05, 6.14085e-05, 6.42996e-05, 6.68088e-05, 6.8981e-05, 7.08688e-05, 7.25097e-05, 7.39357e-05, 7.51768e-05, 7.62606e-05, 7.72067e-05, 
			3.98274e-05, 4.61006e-05, 5.17493e-05, 5.67865e-05, 6.12275e-05, 6.51189e-05, 6.85254e-05, 7.14927e-05, 7.40749e-05, 7.63225e-05, 7.82803e-05, 7.99846e-05, 8.14698e-05, 8.27683e-05, 8.39023e-05, 8.48968e-05, 
			4.66537e-05, 5.29376e-05, 5.86169e-05, 6.36849e-05, 6.8175e-05, 7.2124e-05, 7.55802e-05, 7.8604e-05, 8.12447e-05, 8.35479e-05, 8.55563e-05, 8.73112e-05, 8.88426e-05, 9.01833e-05, 9.13549e-05, 9.23861e-05
		)
}

CapTable	"metal7_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177424, 0.000100732, 7.11092e-05, 5.43898e-05, 4.3317e-05, 3.53386e-05, 2.92958e-05, 2.4569e-05, 2.07872e-05, 1.77248e-05, 1.51946e-05, 1.30937e-05, 1.13474e-05, 9.85914e-06, 8.59712e-06, 7.51996e-06, 
			0.00018921, 0.000109396, 7.78432e-05, 5.9846e-05, 4.78452e-05, 3.9164e-05, 3.25686e-05, 2.73948e-05, 2.32558e-05, 1.98739e-05, 1.70847e-05, 1.47725e-05, 1.28169e-05, 1.11623e-05, 9.75408e-06, 8.549e-06, 
			0.00019553, 0.000114467, 8.19718e-05, 6.3284e-05, 5.07796e-05, 4.16948e-05, 3.47842e-05, 2.9339e-05, 2.49612e-05, 2.13992e-05, 1.84373e-05, 1.59624e-05, 1.38778e-05, 1.21097e-05, 1.06037e-05, 9.30806e-06, 
			0.000199452, 0.000117802, 8.48e-05, 6.57116e-05, 5.2883e-05, 4.35534e-05, 3.64162e-05, 3.07904e-05, 2.62678e-05, 2.25512e-05, 1.94686e-05, 1.68871e-05, 1.47074e-05, 1.28563e-05, 1.12701e-05, 9.90606e-06, 
			0.000201646, 0.000120028, 8.67886e-05, 6.74836e-05, 5.4457e-05, 4.4952e-05, 3.76864e-05, 3.19282e-05, 2.72768e-05, 2.3459e-05, 2.02866e-05, 1.76265e-05, 1.53726e-05, 1.34523e-05, 1.18081e-05, 1.03903e-05
		)
}

CapTable	"metal7_C_LATERAL_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000184116, 0.000109544, 8.16478e-05, 6.62614e-05, 5.61566e-05, 4.8823e-05, 4.31502e-05, 3.8567e-05, 3.47482e-05, 3.14936e-05, 2.8672e-05, 2.61936e-05, 2.39954e-05, 2.203e-05, 2.02608e-05, 1.86611e-05, 
			0.000198771, 0.000121026, 9.11028e-05, 7.43178e-05, 6.3154e-05, 5.49882e-05, 4.86388e-05, 4.34924e-05, 3.91944e-05, 3.55264e-05, 3.23444e-05, 2.95482e-05, 2.70676e-05, 2.48488e-05, 2.28528e-05, 2.10472e-05, 
			0.000207858, 0.000128681, 9.76256e-05, 7.99644e-05, 6.81262e-05, 5.94052e-05, 5.25942e-05, 4.70562e-05, 4.24216e-05, 3.8461e-05, 3.50218e-05, 3.19972e-05, 2.93128e-05, 2.69116e-05, 2.47504e-05, 2.27968e-05, 
			0.000214312, 0.000134308, 0.000102522, 8.42636e-05, 7.19324e-05, 6.28062e-05, 5.56524e-05, 4.98204e-05, 4.49308e-05, 4.07468e-05, 3.71092e-05, 3.39096e-05, 3.10674e-05, 2.85258e-05, 2.62366e-05, 2.4166e-05, 
			0.000218738, 0.000138509, 0.000106265, 8.75906e-05, 7.49022e-05, 6.54764e-05, 5.80646e-05, 5.20066e-05, 4.6919e-05, 4.25602e-05, 3.8768e-05, 3.54298e-05, 3.2465e-05, 2.981e-05, 2.74216e-05, 2.52594e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_73MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.1392e-05, 1.37134e-05, 1.55056e-05, 1.69687e-05, 1.82153e-05, 1.93109e-05, 2.02952e-05, 2.11945e-05, 2.20266e-05, 2.28036e-05, 2.35344e-05, 2.42258e-05, 2.48825e-05, 2.55086e-05, 2.61073e-05, 2.66809e-05, 
			1.2923e-05, 1.49172e-05, 1.65694e-05, 1.79809e-05, 1.92211e-05, 2.0334e-05, 2.13492e-05, 2.2287e-05, 2.31621e-05, 2.39847e-05, 2.47625e-05, 2.55014e-05, 2.62061e-05, 2.68798e-05, 2.75258e-05, 2.81461e-05, 
			1.4273e-05, 1.60696e-05, 1.76216e-05, 1.89884e-05, 2.02143e-05, 2.13313e-05, 2.23621e-05, 2.33226e-05, 2.4225e-05, 2.50778e-05, 2.58877e-05, 2.66599e-05, 2.73984e-05, 2.81063e-05, 2.87862e-05, 2.94403e-05, 
			1.5519e-05, 1.7187e-05, 1.86668e-05, 1.9996e-05, 2.1208e-05, 2.23244e-05, 2.33643e-05, 2.43403e-05, 2.5262e-05, 2.61372e-05, 2.69713e-05, 2.77688e-05, 2.85332e-05, 2.92676e-05, 2.99742e-05, 3.06549e-05, 
			1.6713e-05, 1.82818e-05, 1.97054e-05, 2.10052e-05, 2.22034e-05, 2.33183e-05, 2.43639e-05, 2.5351e-05, 2.62875e-05, 2.71799e-05, 2.80329e-05, 2.88505e-05, 2.96357e-05, 3.03914e-05, 3.11194e-05, 3.18214e-05
		)
}

CapTable	"metal7_C_LATERAL_73MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000187226, 0.000113507, 8.63624e-05, 7.16584e-05, 6.21814e-05, 5.54276e-05, 5.02912e-05, 4.62034e-05, 4.284e-05, 4.00018e-05, 3.7559e-05, 3.54228e-05, 3.35308e-05, 3.18372e-05, 3.03074e-05, 2.89156e-05, 
			0.000202846, 0.000125961, 9.68276e-05, 8.07732e-05, 7.02882e-05, 6.27534e-05, 5.69894e-05, 5.23836e-05, 4.85834e-05, 4.53704e-05, 4.26014e-05, 4.01782e-05, 3.80306e-05, 3.6108e-05, 3.43712e-05, 3.27912e-05, 
			0.00021291, 0.000134609, 0.000104372, 8.74756e-05, 7.63508e-05, 6.8294e-05, 6.2099e-05, 5.713e-05, 5.30182e-05, 4.95342e-05, 4.65268e-05, 4.38916e-05, 4.15542e-05, 3.946e-05, 3.75678e-05, 3.58458e-05, 
			0.000220368, 0.000141259, 0.000110314, 9.2844e-05, 8.1249e-05, 7.2809e-05, 6.62906e-05, 6.1044e-05, 5.66912e-05, 5.29952e-05, 4.97996e-05, 4.6996e-05, 4.4507e-05, 4.22752e-05, 4.02574e-05, 3.84204e-05, 
			0.00022583, 0.000146507, 0.00011512, 9.72498e-05, 8.53126e-05, 7.65852e-05, 6.98186e-05, 6.43538e-05, 5.9809e-05, 5.59428e-05, 5.2595e-05, 4.96544e-05, 4.70412e-05, 4.46962e-05, 4.2575e-05, 4.0643e-05
		)
}

CapTable	"metal7_C_LATERAL_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177502, 0.000100839, 7.12468e-05, 5.45562e-05, 4.35102e-05, 3.55554e-05, 2.95336e-05, 2.48268e-05, 2.10596e-05, 1.79983e-05, 1.54882e-05, 1.33942e-05, 1.16388e-05, 1.01724e-05, 8.91088e-06, 7.83314e-06, 
			0.000189327, 0.000109547, 7.80296e-05, 6.00656e-05, 4.80966e-05, 3.9441e-05, 3.28732e-05, 2.77196e-05, 2.35984e-05, 2.023e-05, 1.74514e-05, 1.51533e-05, 1.32022e-05, 1.15501e-05, 1.01428e-05, 8.93724e-06, 
			0.00019569, 0.000114667, 8.22112e-05, 6.35606e-05, 5.10928e-05, 4.20384e-05, 3.5143e-05, 2.97322e-05, 2.5373e-05, 2.18108e-05, 1.88816e-05, 1.64142e-05, 1.43346e-05, 1.25695e-05, 1.10617e-05, 9.77076e-06, 
			0.000199663, 0.000118057, 8.50962e-05, 6.60514e-05, 5.32596e-05, 4.39638e-05, 3.6855e-05, 3.1253e-05, 2.67574e-05, 2.30552e-05, 1.99839e-05, 1.74106e-05, 1.52364e-05, 1.33863e-05, 1.18056e-05, 1.04406e-05, 
			0.000201914, 0.000120344, 8.71496e-05, 6.78774e-05, 5.49014e-05, 4.54308e-05, 3.81802e-05, 3.24688e-05, 2.7837e-05, 2.40348e-05, 2.08742e-05, 1.82205e-05, 1.59773e-05, 1.40598e-05, 1.24164e-05, 1.09976e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.6387e-06, 5.7356e-06, 6.6345e-06, 7.4068e-06, 8.0915e-06, 8.7129e-06, 9.2855e-06, 9.818e-06, 1.03166e-05, 1.07842e-05, 1.12241e-05, 1.16405e-05, 1.2032e-05, 1.24014e-05, 1.27507e-05, 1.30783e-05, 
			5.4817e-06, 6.48e-06, 7.354e-06, 8.134e-06, 8.8463e-06, 9.5043e-06, 1.01175e-05, 1.06939e-05, 1.12362e-05, 1.17479e-05, 1.22313e-05, 1.26895e-05, 1.31221e-05, 1.35318e-05, 1.39172e-05, 1.42829e-05, 
			6.2797e-06, 7.2279e-06, 8.0879e-06, 8.878e-06, 9.6094e-06, 1.02938e-05, 1.09365e-05, 1.15431e-05, 1.21181e-05, 1.26619e-05, 1.31773e-05, 1.36667e-05, 1.41281e-05, 1.4567e-05, 1.4982e-05, 1.53723e-05, 
			7.0595e-06, 7.9844e-06, 8.8414e-06, 9.6394e-06, 1.03888e-05, 1.1094e-05, 1.17607e-05, 1.23928e-05, 1.29936e-05, 1.3563e-05, 1.41043e-05, 1.46163e-05, 1.51038e-05, 1.55635e-05, 1.60006e-05, 1.6414e-05, 
			7.8505e-06, 8.7596e-06, 9.6163e-06, 1.04231e-05, 1.1185e-05, 1.19086e-05, 1.25955e-05, 1.32483e-05, 1.38699e-05, 1.44594e-05, 1.50214e-05, 1.55551e-05, 1.60599e-05, 1.65401e-05, 1.69925e-05, 1.74235e-05
		)
}

CapTable	"metal7_C_TOP_GP_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.06413e-05, 1.3106e-05, 1.51237e-05, 1.6858e-05, 1.84006e-05, 1.98021e-05, 2.10938e-05, 2.22961e-05, 2.34212e-05, 2.44788e-05, 2.54752e-05, 2.64131e-05, 2.72983e-05, 2.81326e-05, 2.89191e-05, 2.96614e-05, 
			1.25855e-05, 1.48474e-05, 1.68222e-05, 1.85892e-05, 2.02001e-05, 2.16895e-05, 2.30793e-05, 2.43819e-05, 2.56102e-05, 2.67697e-05, 2.7865e-05, 2.88999e-05, 2.9878e-05, 3.08022e-05, 3.16759e-05, 3.24992e-05, 
			1.44373e-05, 1.65981e-05, 1.85535e-05, 2.03456e-05, 2.20067e-05, 2.35594e-05, 2.502e-05, 2.63984e-05, 2.77014e-05, 2.8935e-05, 3.01028e-05, 3.12087e-05, 3.22571e-05, 3.32466e-05, 3.41824e-05, 3.50667e-05, 
			1.62685e-05, 1.83824e-05, 2.03342e-05, 2.2152e-05, 2.38538e-05, 2.54587e-05, 2.69759e-05, 2.84125e-05, 2.97744e-05, 3.10666e-05, 3.22923e-05, 3.34553e-05, 3.4556e-05, 3.55984e-05, 3.6584e-05, 3.75152e-05, 
			1.81195e-05, 2.02034e-05, 2.21611e-05, 2.40043e-05, 2.57448e-05, 2.7392e-05, 2.89549e-05, 3.04392e-05, 3.18497e-05, 3.31911e-05, 3.4463e-05, 3.56702e-05, 3.68149e-05, 3.78994e-05, 3.89252e-05, 3.98937e-05
		)
}

CapTable	"metal7_C_LATERAL_83MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000187542, 0.0001139, 8.68226e-05, 7.21774e-05, 6.27534e-05, 5.60486e-05, 5.09574e-05, 4.69116e-05, 4.35876e-05, 4.0786e-05, 3.83774e-05, 3.62732e-05, 3.44108e-05, 3.27442e-05, 3.12394e-05, 2.98704e-05, 
			0.000203242, 0.000126433, 9.73664e-05, 8.13728e-05, 7.09438e-05, 6.3461e-05, 5.77456e-05, 5.3185e-05, 4.94274e-05, 4.6254e-05, 4.3522e-05, 4.1133e-05, 3.90172e-05, 3.71236e-05, 3.54138e-05, 3.3858e-05, 
			0.000213384, 0.000135159, 0.000104989, 8.81546e-05, 7.70876e-05, 6.90848e-05, 6.29404e-05, 5.80186e-05, 5.39512e-05, 5.05086e-05, 4.75396e-05, 4.494e-05, 4.26356e-05, 4.05716e-05, 3.87068e-05, 3.70096e-05, 
			0.000220922, 0.000141886, 0.000111009, 9.3602e-05, 8.20664e-05, 7.36816e-05, 6.72152e-05, 6.20172e-05, 5.77096e-05, 5.4056e-05, 5.08996e-05, 4.81322e-05, 4.56764e-05, 4.3475e-05, 4.14848e-05, 3.96724e-05, 
			0.000226462, 0.000147212, 0.000115893, 9.80872e-05, 8.621e-05, 7.75388e-05, 7.08248e-05, 6.5409e-05, 6.09102e-05, 5.70866e-05, 5.37782e-05, 5.08736e-05, 4.82936e-05, 4.59786e-05, 4.38846e-05, 4.19766e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.2294e-06, 4.1815e-06, 5.0159e-06, 5.7554e-06, 6.4073e-06, 6.9794e-06, 7.4789e-06, 7.9125e-06, 8.2975e-06, 8.63276e-06, 8.91426e-06, 9.16884e-06, 9.39044e-06, 9.57164e-06, 9.74192e-06, 9.89076e-06, 
			4.1065e-06, 5.0415e-06, 5.8955e-06, 6.6648e-06, 7.3505e-06, 7.9645e-06, 8.4994e-06, 8.9768e-06, 9.3841e-06, 9.7512e-06, 1.00724e-05, 1.03395e-05, 1.05868e-05, 1.08032e-05, 1.09928e-05, 1.11594e-05, 
			4.9934e-06, 5.9265e-06, 6.7913e-06, 7.5775e-06, 8.2833e-06, 8.9215e-06, 9.4874e-06, 9.9765e-06, 1.04167e-05, 1.08044e-05, 1.1132e-05, 1.14317e-05, 1.16955e-05, 1.19266e-05, 1.21304e-05, 1.23047e-05, 
			5.8904e-06, 6.8224e-06, 7.6984e-06, 8.4968e-06, 9.2249e-06, 9.8667e-06, 1.04501e-05, 1.09665e-05, 1.14089e-05, 1.18131e-05, 1.21689e-05, 1.24822e-05, 1.27583e-05, 1.30016e-05, 1.32108e-05, 1.34002e-05, 
			6.8015e-06, 7.7322e-06, 8.6135e-06, 9.4273e-06, 1.01558e-05, 1.08212e-05, 1.14152e-05, 1.19302e-05, 1.23999e-05, 1.28153e-05, 1.31824e-05, 1.3506e-05, 1.37863e-05, 1.4039e-05, 1.42624e-05, 1.44592e-05
		)
}

CapTable	"metal7_C_TOP_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.06808e-05, 2.67641e-05, 3.20333e-05, 3.66196e-05, 4.0609e-05, 4.40691e-05, 4.70615e-05, 4.96437e-05, 5.18662e-05, 5.37811e-05, 5.54322e-05, 5.68552e-05, 5.80843e-05, 5.91446e-05, 6.00681e-05, 6.08713e-05, 
			2.69097e-05, 3.30783e-05, 3.85659e-05, 4.34076e-05, 4.76499e-05, 5.13462e-05, 5.45563e-05, 5.73356e-05, 5.9741e-05, 6.18223e-05, 6.3621e-05, 6.51736e-05, 6.6526e-05, 6.77017e-05, 6.87247e-05, 6.96166e-05, 
			3.33974e-05, 3.96387e-05, 4.52475e-05, 5.02229e-05, 5.45969e-05, 5.84201e-05, 6.17526e-05, 6.46493e-05, 6.71653e-05, 6.93478e-05, 7.12364e-05, 7.28851e-05, 7.43189e-05, 7.55679e-05, 7.6658e-05, 7.76133e-05, 
			4.00868e-05, 4.63828e-05, 5.20524e-05, 5.70968e-05, 6.15465e-05, 6.54485e-05, 6.88609e-05, 7.18335e-05, 7.44177e-05, 7.66717e-05, 7.86362e-05, 8.03472e-05, 8.18393e-05, 8.31431e-05, 8.42866e-05, 8.52892e-05, 
			4.69255e-05, 5.32238e-05, 5.89159e-05, 6.39963e-05, 6.84908e-05, 7.2444e-05, 7.59066e-05, 7.8928e-05, 8.15731e-05, 8.38809e-05, 8.58944e-05, 8.76525e-05, 8.91924e-05, 9.05402e-05, 9.17192e-05, 9.27582e-05
		)
}

CapTable	"metal7_C_TOP_GP_82MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.08447e-05, 1.33464e-05, 1.53899e-05, 1.71447e-05, 1.87022e-05, 2.01163e-05, 2.14183e-05, 2.26293e-05, 2.37626e-05, 2.48267e-05, 2.58294e-05, 2.6775e-05, 2.76671e-05, 2.85089e-05, 2.93029e-05, 3.00519e-05, 
			1.2808e-05, 1.50986e-05, 1.70947e-05, 1.88777e-05, 2.0503e-05, 2.20024e-05, 2.3402e-05, 2.47127e-05, 2.59469e-05, 2.71132e-05, 2.82154e-05, 2.92573e-05, 3.02423e-05, 3.11737e-05, 3.20552e-05, 3.28867e-05, 
			1.46752e-05, 1.68591e-05, 1.88328e-05, 2.06387e-05, 2.23103e-05, 2.38727e-05, 2.53395e-05, 2.6724e-05, 2.80336e-05, 2.92735e-05, 3.04478e-05, 3.15599e-05, 3.26135e-05, 3.3612e-05, 3.45557e-05, 3.54486e-05, 
			1.6514e-05, 1.86481e-05, 2.06144e-05, 2.24445e-05, 2.41559e-05, 2.57666e-05, 2.72904e-05, 2.87331e-05, 3.0101e-05, 3.13984e-05, 3.26298e-05, 3.37991e-05, 3.49068e-05, 3.59561e-05, 3.69502e-05, 3.78897e-05, 
			1.83744e-05, 2.04739e-05, 2.24442e-05, 2.42946e-05, 2.6042e-05, 2.76954e-05, 2.92641e-05, 3.07538e-05, 3.21687e-05, 3.35138e-05, 3.47926e-05, 3.60061e-05, 3.71578e-05, 3.82495e-05, 3.92831e-05, 4.02631e-05
		)
}

CapTable	"metal7_C_LATERAL_82MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000184224, 0.000109686, 8.18198e-05, 6.64614e-05, 5.63832e-05, 4.90742e-05, 4.34242e-05, 3.88624e-05, 3.50632e-05, 3.18262e-05, 2.90206e-05, 2.65564e-05, 2.43702e-05, 2.24144e-05, 2.06546e-05, 1.90612e-05, 
			0.000198918, 0.000121207, 9.13172e-05, 7.45634e-05, 6.34288e-05, 5.52908e-05, 4.89672e-05, 4.3844e-05, 3.95684e-05, 3.59204e-05, 3.27558e-05, 2.9975e-05, 2.7508e-05, 2.53006e-05, 2.3314e-05, 2.15158e-05, 
			0.000208044, 0.000128905, 9.78844e-05, 8.02566e-05, 6.84502e-05, 5.97588e-05, 5.29758e-05, 4.74634e-05, 4.28522e-05, 3.89126e-05, 3.54912e-05, 3.24838e-05, 2.9813e-05, 2.74238e-05, 2.5272e-05, 2.33258e-05, 
			0.000214542, 0.000134577, 0.000102828, 8.46048e-05, 7.23064e-05, 6.32124e-05, 5.60876e-05, 5.02824e-05, 4.5417e-05, 4.12548e-05, 3.76364e-05, 3.44534e-05, 3.16254e-05, 2.9094e-05, 2.68154e-05, 2.47518e-05, 
			0.000219014, 0.000138825, 0.000106619, 8.79824e-05, 7.53288e-05, 6.59354e-05, 5.85534e-05, 5.25222e-05, 4.74602e-05, 4.3123e-05, 3.93506e-05, 3.60286e-05, 3.30778e-05, 3.0434e-05, 2.80526e-05, 2.5898e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_83MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.09982e-05, 1.32068e-05, 1.48994e-05, 1.62735e-05, 1.74384e-05, 1.84574e-05, 1.93699e-05, 2.02013e-05, 2.09684e-05, 2.16836e-05, 2.23553e-05, 2.299e-05, 2.35927e-05, 2.41674e-05, 2.47172e-05, 2.52441e-05, 
			1.2426e-05, 1.43092e-05, 1.58606e-05, 1.71793e-05, 1.83323e-05, 1.93627e-05, 2.02994e-05, 2.11625e-05, 2.19657e-05, 2.27197e-05, 2.34317e-05, 2.41078e-05, 2.47522e-05, 2.53686e-05, 2.59595e-05, 2.65277e-05, 
			1.3674e-05, 1.53594e-05, 1.68088e-05, 1.80794e-05, 1.92136e-05, 2.02434e-05, 2.11908e-05, 2.20714e-05, 2.28968e-05, 2.36758e-05, 2.4415e-05, 2.51194e-05, 2.57928e-05, 2.64387e-05, 2.70595e-05, 2.76573e-05, 
			1.4813e-05, 1.63722e-05, 1.7747e-05, 1.8977e-05, 2.00926e-05, 2.11185e-05, 2.20706e-05, 2.29622e-05, 2.3803e-05, 2.46001e-05, 2.53594e-05, 2.60852e-05, 2.67811e-05, 2.74498e-05, 2.80939e-05, 2.87152e-05, 
			1.5901e-05, 1.73586e-05, 1.8675e-05, 1.98728e-05, 2.0972e-05, 2.19921e-05, 2.29465e-05, 2.38457e-05, 2.46975e-05, 2.55085e-05, 2.62833e-05, 2.70261e-05, 2.77396e-05, 2.8427e-05, 2.90896e-05, 2.97299e-05
		)
}

CapTable	"metal7_C_TOP_GP_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.08701e-05, 2.69987e-05, 3.23039e-05, 3.69197e-05, 4.09322e-05, 4.4412e-05, 4.74206e-05, 5.00149e-05, 5.22529e-05, 5.41792e-05, 5.584e-05, 5.72734e-05, 5.85125e-05, 5.95776e-05, 6.05115e-05, 6.13247e-05, 
			2.71347e-05, 3.33414e-05, 3.88619e-05, 4.37299e-05, 4.79935e-05, 5.17083e-05, 5.49343e-05, 5.77273e-05, 6.01433e-05, 6.22365e-05, 6.40465e-05, 6.5615e-05, 6.69682e-05, 6.81552e-05, 6.91892e-05, 7.00919e-05, 
			3.3652e-05, 3.99279e-05, 4.5566e-05, 5.05637e-05, 5.49541e-05, 5.87972e-05, 6.21439e-05, 6.50517e-05, 6.75799e-05, 6.9774e-05, 7.16681e-05, 7.33291e-05, 7.47748e-05, 7.60355e-05, 7.71373e-05, 7.81026e-05, 
			4.03681e-05, 4.66926e-05, 5.23876e-05, 5.74525e-05, 6.19199e-05, 6.58341e-05, 6.92599e-05, 7.22446e-05, 7.48454e-05, 7.71005e-05, 7.90772e-05, 8.08004e-05, 8.23047e-05, 8.36207e-05, 8.47748e-05, 8.579e-05, 
			4.72271e-05, 5.35478e-05, 5.92651e-05, 6.43638e-05, 6.88708e-05, 7.28372e-05, 7.63117e-05, 7.93384e-05, 8.19957e-05, 8.43156e-05, 8.63412e-05, 8.81116e-05, 8.96615e-05, 9.10228e-05, 9.22152e-05, 9.32677e-05
		)
}

CapTable	"metal7_C_LATERAL_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00017756, 0.000100921, 7.1351e-05, 5.4682e-05, 4.36562e-05, 3.57192e-05, 2.97136e-05, 2.5015e-05, 2.12634e-05, 1.82109e-05, 1.57083e-05, 1.36187e-05, 1.18662e-05, 1.04063e-05, 9.144e-06, 8.0644e-06, 
			0.000189415, 0.000109662, 7.81708e-05, 6.02322e-05, 4.82824e-05, 3.96516e-05, 3.31016e-05, 2.79632e-05, 2.38556e-05, 2.04968e-05, 1.77253e-05, 1.54133e-05, 1.34892e-05, 1.18373e-05, 1.04288e-05, 9.22088e-06, 
			0.000195812, 0.000114819, 8.23926e-05, 6.37708e-05, 5.13236e-05, 4.22964e-05, 3.54206e-05, 3.00276e-05, 2.56814e-05, 2.21294e-05, 1.92136e-05, 1.675e-05, 1.46722e-05, 1.29068e-05, 1.13973e-05, 1.0099e-05, 
			0.000199823, 0.000118247, 8.5322e-05, 6.63076e-05, 5.35428e-05, 4.42728e-05, 3.71844e-05, 3.15994e-05, 2.7097e-05, 2.34312e-05, 2.0366e-05, 1.77962e-05, 1.56233e-05, 1.37724e-05, 1.21856e-05, 1.0822e-05, 
			0.000202116, 0.000120578, 8.74222e-05, 6.81814e-05, 5.5236e-05, 4.57904e-05, 3.85608e-05, 3.28734e-05, 2.8254e-05, 2.44608e-05, 2.1306e-05, 1.86553e-05, 1.64088e-05, 1.44959e-05, 1.28485e-05, 1.14241e-05
		)
}

CapTable	"metal7_C_BOTTOM_GP_82MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.3011e-06, 5.3128e-06, 6.1403e-06, 6.8491e-06, 7.4776e-06, 8.0472e-06, 8.572e-06, 9.0598e-06, 9.5162e-06, 9.9455e-06, 1.03492e-05, 1.07301e-05, 1.10894e-05, 1.14291e-05, 1.17491e-05, 1.2052e-05, 
			5.0744e-06, 5.9932e-06, 6.7951e-06, 7.5119e-06, 8.1635e-06, 8.7662e-06, 9.3265e-06, 9.8543e-06, 1.03508e-05, 1.08185e-05, 1.12608e-05, 1.16802e-05, 1.20763e-05, 1.24519e-05, 1.28053e-05, 1.31412e-05, 
			5.8038e-06, 6.6729e-06, 7.4618e-06, 8.1847e-06, 8.8547e-06, 9.48e-06, 1.00684e-05, 1.06232e-05, 1.11481e-05, 1.16449e-05, 1.21168e-05, 1.25637e-05, 1.2988e-05, 1.33881e-05, 1.37688e-05, 1.41268e-05, 
			6.517e-06, 7.3629e-06, 8.1472e-06, 8.8767e-06, 9.5607e-06, 1.02058e-05, 1.08142e-05, 1.13908e-05, 1.19389e-05, 1.2459e-05, 1.29537e-05, 1.34216e-05, 1.38673e-05, 1.42904e-05, 1.46891e-05, 1.5069e-05, 
			7.2356e-06, 8.0661e-06, 8.8486e-06, 9.586e-06, 1.02822e-05, 1.09422e-05, 1.15683e-05, 1.2164e-05, 1.27305e-05, 1.32701e-05, 1.37815e-05, 1.42693e-05, 1.47305e-05, 1.51706e-05, 1.55879e-05, 1.59796e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_14MAX" {
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

CapTable	"metal6_C_LATERAL_14MAX" {
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

CapTable	"metal7_C_BOTTOM_GP_81MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.9671e-06, 3.8405e-06, 4.6051e-06, 5.2811e-06, 5.8777e-06, 6.4009e-06, 6.8571e-06, 7.2605e-06, 7.6051e-06, 7.91176e-06, 8.16844e-06, 8.40148e-06, 8.60452e-06, 8.7687e-06, 8.9251e-06, 9.0619e-06, 
			3.7695e-06, 4.6264e-06, 5.4073e-06, 6.1099e-06, 6.7421e-06, 7.2975e-06, 7.7854e-06, 8.2215e-06, 8.5928e-06, 8.9283e-06, 9.22198e-06, 9.47868e-06, 9.69058e-06, 9.88928e-06, 1.00636e-05, 1.02168e-05, 
			4.5796e-06, 5.4331e-06, 6.2224e-06, 6.9405e-06, 7.5923e-06, 8.1674e-06, 8.6835e-06, 9.1287e-06, 9.5317e-06, 9.8856e-06, 1.01823e-05, 1.04569e-05, 1.0698e-05, 1.0911e-05, 1.10981e-05, 1.12631e-05, 
			5.3983e-06, 6.2543e-06, 7.0494e-06, 7.7759e-06, 8.4403e-06, 9.0251e-06, 9.5567e-06, 1.0028e-05, 1.04446e-05, 1.07983e-05, 1.11238e-05, 1.14114e-05, 1.1664e-05, 1.18869e-05, 1.20846e-05, 1.2254e-05, 
			6.2289e-06, 7.0832e-06, 7.8807e-06, 8.6218e-06, 9.2852e-06, 9.8914e-06, 1.04335e-05, 1.09002e-05, 1.13283e-05, 1.17086e-05, 1.20438e-05, 1.23401e-05, 1.26017e-05, 1.28283e-05, 1.30343e-05, 1.32162e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal6_C_TOP_GP_13MAX" {
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

CapTable	"metal6_C_LATERAL_13MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal6_C_TOP_GP_12MAX" {
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

CapTable	"metal6_C_LATERAL_12MAX" {
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

CapTable	"metal6_C_BOTTOM_GPMAX" {
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

CapTable	"metal6_C_TOP_GPMAX" {
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

CapTable	"metal6_C_LATERALMAX" {
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

CapTable	"metal6_C_LATERAL_23MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_24MAX" {
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

CapTable	"metal6_C_LATERAL_24MAX" {
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

CapTable	"metal6_C_LATERAL_22MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_23MAX" {
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

CapTable	"metal6_C_TOP_GP_23MAX" {
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

CapTable	"metal6_C_LATERAL_21MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_22MAX" {
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

CapTable	"metal6_C_TOP_GP_22MAX" {
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

CapTable	"metal6_C_LATERAL_34MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal6_C_TOP_GP_21MAX" {
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

CapTable	"metal6_C_TOP_GP_33MAX" {
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

CapTable	"metal6_C_LATERAL_33MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_34MAX" {
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

CapTable	"metal6_C_TOP_GP_32MAX" {
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

CapTable	"metal6_C_LATERAL_32MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_33MAX" {
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

CapTable	"metal6_C_TOP_GP_31MAX" {
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

CapTable	"metal6_C_LATERAL_31MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_32MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_44MAX" {
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

CapTable	"metal6_C_LATERAL_44MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_43MAX" {
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

CapTable	"metal6_C_TOP_GP_43MAX" {
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

CapTable	"metal6_C_LATERAL_43MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_42MAX" {
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

CapTable	"metal6_C_TOP_GP_42MAX" {
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

CapTable	"metal6_C_LATERAL_42MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_41MAX" {
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

CapTable	"metal6_C_TOP_GP_41MAX" {
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

CapTable	"metal6_C_LATERAL_41MAX" {
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

CapTable	"metal6_C_LATERAL_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00018124, 0.000105862, 7.78024e-05, 6.24538e-05, 5.24712e-05, 4.52986e-05, 3.98042e-05, 3.54056e-05, 3.17702e-05, 2.86936e-05, 2.60422e-05, 2.37256e-05, 2.16792e-05, 1.98553e-05, 1.82189e-05, 1.67425e-05, 
			0.000193035, 0.000115068, 8.53644e-05, 6.88966e-05, 5.80708e-05, 5.02382e-05, 4.42078e-05, 3.93618e-05, 3.53448e-05, 3.1938e-05, 2.89974e-05, 2.64244e-05, 2.41492e-05, 2.212e-05, 2.02984e-05, 1.8654e-05, 
			0.000200156, 0.00012116, 9.0585e-05, 7.34346e-05, 6.20838e-05, 5.38154e-05, 4.742e-05, 4.22622e-05, 3.79756e-05, 3.43322e-05, 3.1182e-05, 2.84224e-05, 2.59798e-05, 2.37998e-05, 2.18418e-05, 2.00734e-05, 
			0.000205174, 0.000125644, 9.453e-05, 7.6923e-05, 6.51882e-05, 5.66016e-05, 4.99338e-05, 4.45398e-05, 4.00458e-05, 3.6219e-05, 3.29056e-05, 3e-05, 2.74256e-05, 2.5127e-05, 2.3061e-05, 2.1195e-05, 
			0.000208558, 0.000129011, 9.75734e-05, 7.96526e-05, 6.76394e-05, 5.88158e-05, 5.19404e-05, 4.63614e-05, 4.1704e-05, 3.7732e-05, 3.42884e-05, 3.12662e-05, 2.85862e-05, 2.61922e-05, 2.40396e-05, 2.20946e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.11532e-05, 1.37564e-05, 1.58587e-05, 1.76335e-05, 1.91784e-05, 2.05526e-05, 2.17946e-05, 2.29308e-05, 2.39799e-05, 2.49552e-05, 2.58674e-05, 2.67239e-05, 2.7531e-05, 2.8294e-05, 2.90163e-05, 2.9702e-05, 
			1.30666e-05, 1.5378e-05, 1.73574e-05, 1.9091e-05, 2.06371e-05, 2.20363e-05, 2.33178e-05, 2.45016e-05, 2.56033e-05, 2.66342e-05, 2.76035e-05, 2.85179e-05, 2.93828e-05, 3.02028e-05, 3.09817e-05, 3.17223e-05, 
			1.4832e-05, 1.69624e-05, 1.8851e-05, 2.05449e-05, 2.2081e-05, 2.34896e-05, 2.47925e-05, 2.60058e-05, 2.71421e-05, 2.8211e-05, 2.92203e-05, 3.01756e-05, 3.1082e-05, 3.19435e-05, 3.27634e-05, 3.35446e-05, 
			1.6501e-05, 1.85142e-05, 2.0335e-05, 2.19956e-05, 2.35211e-05, 2.4934e-05, 2.62512e-05, 2.74856e-05, 2.86477e-05, 2.97453e-05, 3.07852e-05, 3.17722e-05, 3.27111e-05, 3.36051e-05, 3.44574e-05, 3.52707e-05, 
			1.812e-05, 2.00386e-05, 2.18084e-05, 2.3442e-05, 2.49586e-05, 2.63738e-05, 2.77015e-05, 2.89521e-05, 3.01342e-05, 3.12546e-05, 3.23187e-05, 3.33313e-05, 3.42961e-05, 3.52162e-05, 3.60947e-05, 3.69337e-05
		)
}

CapTable	"metal6_C_LATERAL_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00018286, 0.000107982, 8.03784e-05, 6.54534e-05, 5.58656e-05, 4.90622e-05, 4.39126e-05, 3.98348e-05, 3.64964e-05, 3.36936e-05, 3.1293e-05, 2.92044e-05, 2.73638e-05, 2.57242e-05, 2.42514e-05, 2.29182e-05, 
			0.000195212, 0.000117763, 8.85446e-05, 7.2534e-05, 6.21382e-05, 5.47098e-05, 4.90574e-05, 4.45636e-05, 4.08734e-05, 3.77676e-05, 3.51024e-05, 3.27798e-05, 3.07306e-05, 2.89038e-05, 2.72612e-05, 2.5774e-05, 
			0.000202922, 0.000124461, 9.4395e-05, 7.77278e-05, 6.68334e-05, 5.89944e-05, 5.30012e-05, 4.82182e-05, 4.42784e-05, 4.09542e-05, 3.80958e-05, 3.5601e-05, 3.33968e-05, 3.14298e-05, 2.96598e-05, 2.8056e-05, 
			0.000208556, 0.000129581, 9.8997e-05, 8.18944e-05, 7.06366e-05, 6.24988e-05, 5.62508e-05, 5.12474e-05, 4.71146e-05, 4.36196e-05, 4.06088e-05, 3.79772e-05, 3.5649e-05, 3.35694e-05, 3.16966e-05, 2.99984e-05, 
			0.000212586, 0.00013361, 0.000102721, 8.5321e-05, 7.3801e-05, 6.54406e-05, 5.89976e-05, 5.38206e-05, 4.9534e-05, 4.59016e-05, 4.27676e-05, 4.00242e-05, 3.75948e-05, 3.54228e-05, 3.34652e-05, 3.16894e-05
		)
}

CapTable	"metal6_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179164, 0.000103081, 7.43858e-05, 5.84722e-05, 4.79984e-05, 4.04116e-05, 3.45786e-05, 2.99154e-05, 2.60842e-05, 2.28752e-05, 2.01488e-05, 1.78082e-05, 1.57831e-05, 1.40181e-05, 1.24728e-05, 1.11158e-05, 
			0.000190102, 0.000111401, 8.10326e-05, 6.39802e-05, 5.26538e-05, 4.44062e-05, 3.80446e-05, 3.29468e-05, 2.87504e-05, 2.52324e-05, 2.22406e-05, 1.967e-05, 1.74424e-05, 1.55019e-05, 1.37997e-05, 1.2302e-05, 
			0.000196322, 0.000116582, 8.5341e-05, 6.76132e-05, 5.5777e-05, 4.7114e-05, 4.04116e-05, 3.50286e-05, 3.0592e-05, 2.68682e-05, 2.36972e-05, 2.0969e-05, 1.86051e-05, 1.65407e-05, 1.47301e-05, 1.31387e-05, 
			0.000200418, 0.000120154, 8.83932e-05, 7.02346e-05, 5.80446e-05, 4.90946e-05, 4.21542e-05, 3.65698e-05, 3.19612e-05, 2.80866e-05, 2.47862e-05, 2.19428e-05, 1.94751e-05, 1.73213e-05, 1.54324e-05, 1.37661e-05, 
			0.000202884, 0.000122634, 9.05842e-05, 7.21484e-05, 5.97186e-05, 5.05724e-05, 4.34642e-05, 3.7733e-05, 3.29964e-05, 2.9012e-05, 2.56122e-05, 2.26824e-05, 2.01412e-05, 1.79178e-05, 1.59666e-05, 1.42464e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.91314e-06, 7.39242e-06, 8.628e-06, 9.703e-06, 1.06634e-05, 1.15362e-05, 1.23391e-05, 1.30834e-05, 1.37773e-05, 1.44258e-05, 1.50343e-05, 1.56057e-05, 1.61425e-05, 1.66486e-05, 1.71231e-05, 1.75694e-05, 
			7.08966e-06, 8.4492e-06, 9.652e-06, 1.07348e-05, 1.17245e-05, 1.26388e-05, 1.34895e-05, 1.42845e-05, 1.50305e-05, 1.57319e-05, 1.63921e-05, 1.70155e-05, 1.7602e-05, 1.81557e-05, 1.86769e-05, 1.91687e-05, 
			8.2171e-06, 9.5124e-06, 1.06956e-05, 1.17853e-05, 1.2796e-05, 1.37397e-05, 1.46244e-05, 1.54564e-05, 1.62412e-05, 1.69816e-05, 1.76824e-05, 1.83427e-05, 1.89666e-05, 1.95566e-05, 2.01125e-05, 2.06379e-05, 
			9.3233e-06, 1.05857e-05, 1.17611e-05, 1.28587e-05, 1.38868e-05, 1.48541e-05, 1.57668e-05, 1.66293e-05, 1.74459e-05, 1.82177e-05, 1.8949e-05, 1.96406e-05, 2.02956e-05, 2.09141e-05, 2.14994e-05, 2.20498e-05, 
			1.04315e-05, 1.16734e-05, 1.28466e-05, 1.39518e-05, 1.4997e-05, 1.5985e-05, 1.69211e-05, 1.78102e-05, 1.86516e-05, 1.94497e-05, 2.02074e-05, 2.09243e-05, 2.16043e-05, 2.22477e-05, 2.2854e-05, 2.34281e-05
		)
}

CapTable	"metal6_C_TOP_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.23546e-06, 9.07158e-06, 1.06082e-05, 1.19432e-05, 1.3132e-05, 1.421e-05, 1.5199e-05, 1.61141e-05, 1.69659e-05, 1.77627e-05, 1.85096e-05, 1.92106e-05, 1.98698e-05, 2.04889e-05, 2.10726e-05, 2.16214e-05, 
			8.69374e-06, 1.03894e-05, 1.18866e-05, 1.32309e-05, 1.44552e-05, 1.55823e-05, 1.66281e-05, 1.76046e-05, 1.85201e-05, 1.93804e-05, 2.01906e-05, 2.09532e-05, 2.16732e-05, 2.23517e-05, 2.29916e-05, 2.35939e-05, 
			1.01049e-05, 1.17212e-05, 1.31934e-05, 1.45431e-05, 1.57902e-05, 1.69514e-05, 1.80387e-05, 1.90608e-05, 2.00227e-05, 2.09305e-05, 2.17867e-05, 2.25973e-05, 2.33626e-05, 2.40848e-05, 2.47669e-05, 2.54097e-05, 
			1.14927e-05, 1.30681e-05, 1.45259e-05, 1.58823e-05, 1.71497e-05, 1.83396e-05, 1.946e-05, 2.05177e-05, 2.15171e-05, 2.24637e-05, 2.33591e-05, 2.42065e-05, 2.50078e-05, 2.57656e-05, 2.64808e-05, 2.71575e-05, 
			1.28855e-05, 1.44286e-05, 1.5881e-05, 1.72466e-05, 1.85336e-05, 1.97478e-05, 2.08965e-05, 2.19837e-05, 2.30161e-05, 2.39944e-05, 2.49213e-05, 2.57997e-05, 2.66313e-05, 2.74173e-05, 2.81624e-05, 2.88643e-05
		)
}

CapTable	"metal6_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167417, 8.86966e-05, 5.8661e-05, 4.23146e-05, 3.19756e-05, 2.49828e-05, 1.9894e-05, 1.61124e-05, 1.32531e-05, 1.10071e-05, 9.23106e-06, 7.80814e-06, 6.65472e-06, 5.71024e-06, 4.9303e-06, 4.28126e-06, 
			0.000174484, 9.41056e-05, 6.30604e-05, 4.6074e-05, 3.518e-05, 2.7667e-05, 2.22256e-05, 1.81676e-05, 1.503e-05, 1.25694e-05, 1.06084e-05, 9.0275e-06, 7.73954e-06, 6.67758e-06, 5.79586e-06, 5.06614e-06, 
			0.00017819, 9.74678e-05, 6.60526e-05, 4.86024e-05, 3.7418e-05, 2.96702e-05, 2.39978e-05, 1.97218e-05, 1.6413e-05, 1.38038e-05, 1.17142e-05, 1.00196e-05, 8.6305e-06, 7.48144e-06, 6.5285e-06, 5.72432e-06, 
			0.000180745, 9.99534e-05, 6.8244e-05, 5.05732e-05, 3.92048e-05, 3.1255e-05, 2.54248e-05, 2.1001e-05, 1.7565e-05, 1.48469e-05, 1.26578e-05, 1.08752e-05, 9.41362e-06, 8.1934e-06, 7.17302e-06, 6.3144e-06, 
			0.000182193, 0.000101736, 6.99726e-05, 5.2171e-05, 4.06436e-05, 3.25692e-05, 2.66242e-05, 2.20952e-05, 1.8561e-05, 1.57516e-05, 1.34839e-05, 1.1634e-05, 1.01064e-05, 8.83152e-06, 7.76294e-06, 6.8612e-06
		)
}

CapTable	"metal6_C_BOTTOM_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.7813e-06, 6.0839e-06, 7.2132e-06, 8.2225e-06, 9.1388e-06, 9.9739e-06, 1.07402e-05, 1.14433e-05, 1.2091e-05, 1.26783e-05, 1.32121e-05, 1.37044e-05, 1.41499e-05, 1.45587e-05, 1.49295e-05, 1.52624e-05, 
			5.9014e-06, 7.1473e-06, 8.2839e-06, 9.3283e-06, 1.02909e-05, 1.11797e-05, 1.20008e-05, 1.27575e-05, 1.34516e-05, 1.40887e-05, 1.46754e-05, 1.52096e-05, 1.56999e-05, 1.61427e-05, 1.65498e-05, 1.69196e-05, 
			7.0183e-06, 8.2472e-06, 9.3919e-06, 1.04609e-05, 1.14565e-05, 1.23862e-05, 1.32416e-05, 1.4031e-05, 1.47644e-05, 1.54363e-05, 1.60568e-05, 1.66245e-05, 1.71402e-05, 1.76142e-05, 1.8046e-05, 1.84368e-05, 
			8.15e-06, 9.3768e-06, 1.05358e-05, 1.16261e-05, 1.26478e-05, 1.3599e-05, 1.44837e-05, 1.53062e-05, 1.60644e-05, 1.67661e-05, 1.74067e-05, 1.79981e-05, 1.85392e-05, 1.90337e-05, 1.94826e-05, 1.98936e-05, 
			9.307e-06, 1.05334e-05, 1.17087e-05, 1.28144e-05, 1.38523e-05, 1.48277e-05, 1.57346e-05, 1.65798e-05, 1.73612e-05, 1.80789e-05, 1.87425e-05, 1.93516e-05, 1.99077e-05, 2.04181e-05, 2.08843e-05, 2.13088e-05
		)
}

CapTable	"metal6_C_TOP_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.09722e-05, 1.40397e-05, 1.67013e-05, 1.90686e-05, 2.12034e-05, 2.31445e-05, 2.49133e-05, 2.65261e-05, 2.79943e-05, 2.93384e-05, 3.05654e-05, 3.16758e-05, 3.26863e-05, 3.3601e-05, 3.44304e-05, 3.51836e-05, 
			1.36636e-05, 1.66369e-05, 1.93315e-05, 2.17878e-05, 2.40374e-05, 2.61005e-05, 2.79917e-05, 2.97251e-05, 3.13161e-05, 3.27691e-05, 3.40927e-05, 3.53009e-05, 3.63986e-05, 3.73986e-05, 3.83045e-05, 3.91257e-05, 
			1.64005e-05, 1.9343e-05, 2.20721e-05, 2.45929e-05, 2.69181e-05, 2.90587e-05, 3.10366e-05, 3.28569e-05, 3.45223e-05, 3.60484e-05, 3.74414e-05, 3.87141e-05, 3.98754e-05, 4.09306e-05, 4.189e-05, 4.27605e-05, 
			1.92e-05, 2.21492e-05, 2.4908e-05, 2.74753e-05, 2.98566e-05, 3.20656e-05, 3.41024e-05, 3.59768e-05, 3.77009e-05, 3.92795e-05, 4.07275e-05, 4.20492e-05, 4.32544e-05, 4.43511e-05, 4.53504e-05, 4.62589e-05, 
			2.2079e-05, 2.50316e-05, 2.78131e-05, 3.04222e-05, 3.28521e-05, 3.51019e-05, 3.71832e-05, 3.91013e-05, 4.08676e-05, 4.24908e-05, 4.39759e-05, 4.53346e-05, 4.6574e-05, 4.77055e-05, 4.87335e-05, 4.9669e-05
		)
}

CapTable	"metal6_C_LATERAL_64MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183261, 0.000108496, 8.09928e-05, 6.61576e-05, 5.66516e-05, 4.9923e-05, 4.48416e-05, 4.08262e-05, 3.7545e-05, 3.47938e-05, 3.24402e-05, 3.03936e-05, 2.85904e-05, 2.6984e-05, 2.55402e-05, 2.42322e-05, 
			0.000195737, 0.0001184, 8.9284e-05, 7.3367e-05, 6.30572e-05, 5.57074e-05, 5.01276e-05, 4.57002e-05, 4.20704e-05, 3.90194e-05, 3.64038e-05, 3.4126e-05, 3.21162e-05, 3.03242e-05, 2.87122e-05, 2.7251e-05, 
			0.00020357, 0.000125222, 9.52598e-05, 7.86884e-05, 6.7882e-05, 6.0124e-05, 5.42056e-05, 4.94908e-05, 4.56132e-05, 4.23454e-05, 3.95378e-05, 3.70886e-05, 3.49246e-05, 3.29928e-05, 3.12532e-05, 2.96754e-05, 
			0.000209332, 0.000130468, 9.9988e-05, 8.2982e-05, 7.18136e-05, 6.37578e-05, 5.75856e-05, 5.26512e-05, 4.85812e-05, 4.5143e-05, 4.21832e-05, 3.95968e-05, 3.73086e-05, 3.52638e-05, 3.34208e-05, 3.1748e-05, 
			0.000213488, 0.000134623, 0.000103838, 8.6535e-05, 7.51046e-05, 6.68266e-05, 6.04592e-05, 5.53512e-05, 5.1127e-05, 4.7551e-05, 4.44672e-05, 4.17684e-05, 3.9378e-05, 3.72396e-05, 3.53106e-05, 3.35586e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.8146e-06, 5.1015e-06, 6.215e-06, 7.1593e-06, 7.9472e-06, 8.5704e-06, 9.09788e-06, 9.52708e-06, 9.8682e-06, 1.01574e-05, 1.03956e-05, 1.0593e-05, 1.07572e-05, 1.08944e-05, 1.10098e-05, 1.11071e-05, 
			5.1076e-06, 6.3772e-06, 7.5096e-06, 8.4696e-06, 9.2971e-06, 9.9837e-06, 1.055e-05, 1.10065e-05, 1.13917e-05, 1.17107e-05, 1.19764e-05, 1.21971e-05, 1.23825e-05, 1.2539e-05, 1.26702e-05, 1.28858e-05, 
			6.3821e-06, 7.6527e-06, 8.7831e-06, 9.7865e-06, 1.0637e-05, 1.13382e-05, 1.19316e-05, 1.24232e-05, 1.28319e-05, 1.31719e-05, 1.34558e-05, 1.36944e-05, 1.38955e-05, 1.40646e-05, 1.42995e-05, 1.43987e-05, 
			7.6476e-06, 8.9199e-06, 1.00813e-05, 1.10982e-05, 1.19558e-05, 1.2687e-05, 1.32982e-05, 1.3808e-05, 1.4234e-05, 1.45901e-05, 1.48892e-05, 1.51408e-05, 1.54614e-05, 1.56126e-05, 1.5744e-05, 1.58566e-05, 
			8.9417e-06, 1.02119e-05, 1.13691e-05, 1.2398e-05, 1.32804e-05, 1.40238e-05, 1.46488e-05, 1.51718e-05, 1.5611e-05, 1.59794e-05, 1.62891e-05, 1.6645e-05, 1.68416e-05, 1.70095e-05, 1.71551e-05, 1.72798e-05
		)
}

CapTable	"metal6_C_TOP_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.96138e-05, 3.98489e-05, 4.8083e-05, 5.45411e-05, 5.96147e-05, 6.35269e-05, 6.66682e-05, 6.91572e-05, 7.11327e-05, 7.27373e-05, 7.40417e-05, 7.51084e-05, 7.59876e-05, 7.67174e-05, 7.73263e-05, 7.78378e-05, 
			4.20744e-05, 5.22992e-05, 6.0575e-05, 6.71064e-05, 7.23379e-05, 7.64833e-05, 7.97804e-05, 8.24119e-05, 8.45443e-05, 8.62809e-05, 8.77062e-05, 8.88794e-05, 8.9849e-05, 9.06624e-05, 9.13449e-05, 9.18111e-05, 
			5.46213e-05, 6.47475e-05, 7.29593e-05, 7.96041e-05, 8.4899e-05, 8.91186e-05, 9.25186e-05, 9.5258e-05, 9.74881e-05, 9.93133e-05, 0.000100819, 0.000102068, 0.000103111, 0.000103985, 0.00010463, 0.000105276, 
			6.7131e-05, 7.71827e-05, 8.54257e-05, 9.20836e-05, 9.74094e-05, 0.000101697, 0.000105162, 0.000107983, 0.000110284, 0.000112171, 0.00011374, 0.000115047, 0.000116034, 0.000116988, 0.000117793, 0.000118478, 
			7.97007e-05, 8.96501e-05, 9.78453e-05, 0.000104502, 0.000109865, 0.000114198, 0.000117712, 0.000120581, 0.000122938, 0.000124885, 0.000126504, 0.000127766, 0.000128925, 0.00012991, 0.000130747, 0.000131457
		)
}

CapTable	"metal6_C_TOP_GP_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.49014e-06, 9.37119e-06, 1.09382e-05, 1.22945e-05, 1.34989e-05, 1.4588e-05, 1.5587e-05, 1.65106e-05, 1.73706e-05, 1.81752e-05, 1.89303e-05, 1.96407e-05, 2.031e-05, 2.09406e-05, 2.15354e-05, 2.20967e-05, 
			8.96988e-06, 1.06978e-05, 1.22182e-05, 1.35784e-05, 1.48144e-05, 1.59506e-05, 1.7004e-05, 1.79869e-05, 1.89088e-05, 1.97772e-05, 2.05946e-05, 2.1367e-05, 2.20964e-05, 2.27859e-05, 2.34387e-05, 2.40548e-05, 
			1.03937e-05, 1.20341e-05, 1.35223e-05, 1.48837e-05, 1.614e-05, 1.73079e-05, 1.84006e-05, 1.94274e-05, 2.03956e-05, 2.13099e-05, 2.21745e-05, 2.29932e-05, 2.37681e-05, 2.45029e-05, 2.51978e-05, 2.58563e-05, 
			1.1787e-05, 1.33793e-05, 1.48499e-05, 1.62143e-05, 1.74871e-05, 1.86811e-05, 1.98064e-05, 2.08681e-05, 2.1873e-05, 2.28253e-05, 2.37281e-05, 2.45847e-05, 2.5397e-05, 2.61676e-05, 2.68974e-05, 2.75883e-05, 
			1.31794e-05, 1.47358e-05, 1.61963e-05, 1.75673e-05, 1.88569e-05, 2.00745e-05, 2.1226e-05, 2.23175e-05, 2.33536e-05, 2.43373e-05, 2.52726e-05, 2.61605e-05, 2.70042e-05, 2.78035e-05, 2.85633e-05, 2.92819e-05
		)
}

CapTable	"metal6_C_LATERAL_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181463, 0.000106155, 7.81602e-05, 6.28716e-05, 5.2944e-05, 4.5822e-05, 4.03732e-05, 3.60154e-05, 3.2416e-05, 2.93704e-05, 2.67456e-05, 2.44508e-05, 2.24216e-05, 2.06108e-05, 1.89836e-05, 1.75123e-05, 
			0.000193339, 0.000115447, 8.58118e-05, 6.94086e-05, 5.8642e-05, 5.08638e-05, 4.48826e-05, 4.008e-05, 3.61016e-05, 3.27274e-05, 2.9814e-05, 2.72636e-05, 2.50062e-05, 2.29898e-05, 2.11768e-05, 1.95368e-05, 
			0.000200548, 0.000121628, 9.1125e-05, 7.40418e-05, 6.2753e-05, 5.4541e-05, 4.81962e-05, 4.30834e-05, 3.88356e-05, 3.52252e-05, 3.21024e-05, 2.93648e-05, 2.69386e-05, 2.47706e-05, 2.28192e-05, 2.10538e-05, 
			0.000205656, 0.000126205, 9.5165e-05, 7.7627e-05, 6.59556e-05, 5.74262e-05, 5.08094e-05, 4.54598e-05, 4.10046e-05, 3.72102e-05, 3.3923e-05, 3.1038e-05, 2.84788e-05, 2.61902e-05, 2.41294e-05, 2.22638e-05, 
			0.000209134, 0.000129667, 9.8305e-05, 8.04536e-05, 6.85042e-05, 5.97374e-05, 5.29124e-05, 4.73774e-05, 4.27572e-05, 3.88158e-05, 3.53972e-05, 3.23932e-05, 2.97268e-05, 2.73406e-05, 2.51912e-05, 2.32448e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_64MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.06574e-05, 1.3096e-05, 1.50487e-05, 1.66847e-05, 1.80996e-05, 1.93518e-05, 2.04793e-05, 2.15075e-05, 2.24547e-05, 2.33345e-05, 2.41566e-05, 2.4929e-05, 2.56576e-05, 2.63473e-05, 2.70017e-05, 2.76242e-05, 
			1.2409e-05, 1.45538e-05, 1.6377e-05, 1.79626e-05, 1.93687e-05, 2.06357e-05, 2.17914e-05, 2.28565e-05, 2.38461e-05, 2.47713e-05, 2.5641e-05, 2.64618e-05, 2.72394e-05, 2.79779e-05, 2.86807e-05, 2.9351e-05, 
			1.4008e-05, 1.59682e-05, 1.76942e-05, 1.92319e-05, 2.06203e-05, 2.18883e-05, 2.30572e-05, 2.41437e-05, 2.516e-05, 2.61154e-05, 2.70179e-05, 2.78727e-05, 2.86851e-05, 2.94589e-05, 3.01973e-05, 3.09028e-05, 
			1.5501e-05, 1.73414e-05, 1.8993e-05, 2.0492e-05, 2.18629e-05, 2.31284e-05, 2.43048e-05, 2.54058e-05, 2.64413e-05, 2.74193e-05, 2.83466e-05, 2.92279e-05, 3.00676e-05, 3.08691e-05, 3.16353e-05, 3.23686e-05, 
			1.6939e-05, 1.86806e-05, 2.02762e-05, 2.1742e-05, 2.30982e-05, 2.436e-05, 2.55415e-05, 2.6653e-05, 2.77035e-05, 2.86993e-05, 2.96462e-05, 3.05486e-05, 3.14102e-05, 3.22341e-05, 3.30231e-05, 3.37791e-05
		)
}

CapTable	"metal6_C_TOP_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.12136e-05, 1.43257e-05, 1.70187e-05, 1.9409e-05, 2.15613e-05, 2.35136e-05, 2.52926e-05, 2.69167e-05, 2.83985e-05, 2.97512e-05, 3.09836e-05, 3.21082e-05, 3.31302e-05, 3.40631e-05, 3.49067e-05, 3.56756e-05, 
			1.39293e-05, 1.69341e-05, 1.96535e-05, 2.21274e-05, 2.43877e-05, 2.64607e-05, 2.8361e-05, 3.01039e-05, 3.16993e-05, 3.31608e-05, 3.44954e-05, 3.57176e-05, 3.6829e-05, 3.78401e-05, 3.87646e-05, 3.96029e-05, 
			1.66809e-05, 1.96488e-05, 2.23921e-05, 2.49232e-05, 2.72573e-05, 2.94085e-05, 3.13893e-05, 3.32103e-05, 3.48851e-05, 3.6418e-05, 3.78256e-05, 3.91095e-05, 4.02844e-05, 4.13549e-05, 4.23313e-05, 4.32198e-05, 
			1.94868e-05, 2.24517e-05, 2.52217e-05, 2.77964e-05, 3.01838e-05, 3.23919e-05, 3.4432e-05, 3.63108e-05, 3.80432e-05, 3.96303e-05, 4.10859e-05, 4.24211e-05, 4.36404e-05, 4.47537e-05, 4.57705e-05, 4.67003e-05, 
			2.2364e-05, 2.53275e-05, 2.81189e-05, 3.07274e-05, 3.31539e-05, 3.54066e-05, 3.74877e-05, 3.94137e-05, 4.11843e-05, 4.28147e-05, 4.431e-05, 4.56811e-05, 4.69353e-05, 4.80855e-05, 4.91328e-05, 5.00894e-05
		)
}

CapTable	"metal6_C_LATERAL_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179334, 0.000103312, 7.46742e-05, 5.88148e-05, 4.83914e-05, 4.08502e-05, 3.50586e-05, 3.04306e-05, 2.66298e-05, 2.3446e-05, 2.07394e-05, 1.84141e-05, 1.63979e-05, 1.46395e-05, 1.30963e-05, 1.17391e-05, 
			0.000190346, 0.000111711, 8.14066e-05, 6.44146e-05, 5.31446e-05, 4.49474e-05, 3.86304e-05, 3.35712e-05, 2.9408e-05, 2.5917e-05, 2.29454e-05, 2.03898e-05, 1.81716e-05, 1.62348e-05, 1.4536e-05, 1.3035e-05, 
			0.000196648, 0.000116978, 8.5806e-05, 6.81432e-05, 5.63662e-05, 4.77566e-05, 4.11016e-05, 3.57588e-05, 3.13562e-05, 2.76578e-05, 2.45076e-05, 2.17938e-05, 1.94397e-05, 1.73784e-05, 1.55665e-05, 1.39676e-05, 
			0.000200832, 0.000120644, 8.8955e-05, 7.08636e-05, 5.8735e-05, 4.98406e-05, 4.29484e-05, 3.7404e-05, 3.28282e-05, 2.89792e-05, 2.56962e-05, 2.28686e-05, 2.04072e-05, 1.82544e-05, 1.63604e-05, 1.46892e-05, 
			0.000203392, 0.00012322, 9.12444e-05, 7.28786e-05, 6.05114e-05, 5.14208e-05, 4.43594e-05, 3.86682e-05, 3.39636e-05, 3.0005e-05, 2.6622e-05, 2.37028e-05, 2.11638e-05, 1.89426e-05, 1.69851e-05, 1.52543e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.38306e-06, 6.71481e-06, 7.8218e-06, 8.7818e-06, 9.6373e-06, 1.04138e-05, 1.11265e-05, 1.17871e-05, 1.24029e-05, 1.29793e-05, 1.35205e-05, 1.40294e-05, 1.45088e-05, 1.49615e-05, 1.53883e-05, 1.57912e-05, 
			6.42912e-06, 7.6464e-06, 8.719e-06, 9.6821e-06, 1.05605e-05, 1.13703e-05, 1.2123e-05, 1.28272e-05, 1.34878e-05, 1.41089e-05, 1.46964e-05, 1.525e-05, 1.57736e-05, 1.62692e-05, 1.67365e-05, 1.71795e-05, 
			7.4253e-06, 8.5797e-06, 9.6317e-06, 1.05968e-05, 1.14899e-05, 1.23233e-05, 1.31049e-05, 1.38401e-05, 1.45336e-05, 1.51893e-05, 1.58104e-05, 1.63982e-05, 1.69556e-05, 1.74822e-05, 1.79821e-05, 1.84541e-05, 
			8.398e-06, 9.5195e-06, 1.05581e-05, 1.15267e-05, 1.24345e-05, 1.32873e-05, 1.40911e-05, 1.48527e-05, 1.55732e-05, 1.62565e-05, 1.69054e-05, 1.75202e-05, 1.81041e-05, 1.86571e-05, 1.91821e-05, 1.96798e-05, 
			9.3696e-06, 1.0466e-05, 1.15007e-05, 1.24741e-05, 1.33939e-05, 1.42631e-05, 1.50874e-05, 1.58703e-05, 1.6614e-05, 1.7321e-05, 1.79919e-05, 1.86301e-05, 1.92354e-05, 1.98113e-05, 2.03559e-05, 2.08735e-05
		)
}

CapTable	"metal6_C_TOP_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.99068e-05, 4.0221e-05, 4.85121e-05, 5.50134e-05, 6.01234e-05, 6.40418e-05, 6.72127e-05, 6.97274e-05, 7.17422e-05, 7.33459e-05, 7.4673e-05, 7.5761e-05, 7.66602e-05, 7.74089e-05, 7.8036e-05, 7.8565e-05, 
			4.24352e-05, 5.27253e-05, 6.105e-05, 6.76826e-05, 7.2864e-05, 7.70409e-05, 8.03653e-05, 8.30128e-05, 8.51715e-05, 8.69331e-05, 8.83823e-05, 8.95785e-05, 9.05705e-05, 9.14057e-05, 9.21093e-05, 9.27091e-05, 
			5.50344e-05, 6.52174e-05, 7.34503e-05, 8.01334e-05, 8.54608e-05, 8.97243e-05, 9.31256e-05, 9.5892e-05, 9.81481e-05, 9.99989e-05, 0.000101529, 0.000102804, 0.000103872, 0.00010477, 0.000105536, 0.000106044, 
			6.76407e-05, 7.76694e-05, 8.5954e-05, 9.26441e-05, 9.7988e-05, 0.000102303, 0.000105795, 0.000108642, 0.00011097, 0.000112883, 0.000114479, 0.000115813, 0.000116936, 0.000117734, 0.000118577, 0.000119298, 
			8.01797e-05, 9.01733e-05, 9.84153e-05, 0.000105077, 0.000110468, 0.000114825, 0.000118365, 0.00012126, 0.000123644, 0.00012562, 0.000127267, 0.000128658, 0.000129675, 0.000130701, 0.000131578, 0.000132327
		)
}

CapTable	"metal6_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167515, 8.88394e-05, 5.88502e-05, 4.2542e-05, 3.22358e-05, 2.5287e-05, 2.02136e-05, 1.64417e-05, 1.35629e-05, 1.13485e-05, 9.56758e-06, 8.13746e-06, 6.975e-06, 6.02004e-06, 5.22858e-06, 4.56722e-06, 
			0.000174642, 9.43174e-05, 6.33222e-05, 4.63024e-05, 3.55414e-05, 2.80534e-05, 2.26294e-05, 1.85912e-05, 1.54557e-05, 1.29927e-05, 1.10255e-05, 9.43548e-06, 8.1361e-06, 7.06086e-06, 6.16452e-06, 5.4099e-06, 
			0.000178417, 9.77534e-05, 6.64132e-05, 4.90086e-05, 3.78598e-05, 3.01134e-05, 2.44932e-05, 2.0225e-05, 1.69177e-05, 1.43048e-05, 1.22071e-05, 1.05009e-05, 9.09752e-06, 7.93206e-06, 6.95396e-06, 6.142e-06, 
			0.000180981, 0.000100337, 6.86828e-05, 5.106e-05, 3.97396e-05, 3.18146e-05, 2.59998e-05, 2.15828e-05, 1.81469e-05, 1.54228e-05, 1.32231e-05, 1.1426e-05, 9.9413e-06, 8.71174e-06, 7.66914e-06, 6.78722e-06, 
			0.000182591, 0.000102197, 7.04698e-05, 5.27496e-05, 4.1258e-05, 3.32082e-05, 2.72776e-05, 2.27538e-05, 1.92173e-05, 1.63992e-05, 1.41177e-05, 1.22426e-05, 1.07063e-05, 9.4073e-06, 8.31296e-06, 7.38442e-06
		)
}

CapTable	"metal6_C_BOTTOM_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.3288e-06, 5.4991e-06, 6.5095e-06, 7.4109e-06, 8.2276e-06, 8.974e-06, 9.6568e-06, 1.02824e-05, 1.08562e-05, 1.13812e-05, 1.18631e-05, 1.23009e-05, 1.27032e-05, 1.30659e-05, 1.34011e-05, 1.3701e-05, 
			5.3257e-06, 6.4417e-06, 7.4549e-06, 8.3843e-06, 9.2414e-06, 1.00311e-05, 1.07602e-05, 1.14315e-05, 1.20519e-05, 1.26193e-05, 1.31428e-05, 1.36182e-05, 1.40579e-05, 1.44607e-05, 1.48226e-05, 1.51579e-05, 
			6.3175e-06, 7.4118e-06, 8.4329e-06, 9.3816e-06, 1.02649e-05, 1.10856e-05, 1.18461e-05, 1.25517e-05, 1.32002e-05, 1.38012e-05, 1.43494e-05, 1.48575e-05, 1.53183e-05, 1.57453e-05, 1.61353e-05, 1.64919e-05, 
			7.3172e-06, 8.4087e-06, 9.4353e-06, 1.0402e-05, 1.13052e-05, 1.21501e-05, 1.29333e-05, 1.36631e-05, 1.43341e-05, 1.49581e-05, 1.55336e-05, 1.60573e-05, 1.65433e-05, 1.69886e-05, 1.73961e-05, 1.77649e-05, 
			8.339e-06, 9.4255e-06, 1.04617e-05, 1.1441e-05, 1.23627e-05, 1.32236e-05, 1.40284e-05, 1.47723e-05, 1.54668e-05, 1.61037e-05, 1.66961e-05, 1.72411e-05, 1.77423e-05, 1.81977e-05, 1.86197e-05, 1.90057e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_74MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.02564e-05, 1.25656e-05, 1.44011e-05, 1.59295e-05, 1.72441e-05, 1.84024e-05, 1.94411e-05, 2.03858e-05, 2.12538e-05, 2.20588e-05, 2.28102e-05, 2.35158e-05, 2.41813e-05, 2.48116e-05, 2.54103e-05, 2.59805e-05, 
			1.18826e-05, 1.38982e-05, 1.56014e-05, 1.70729e-05, 1.83719e-05, 1.95371e-05, 2.05964e-05, 2.157e-05, 2.24725e-05, 2.33151e-05, 2.41066e-05, 2.48533e-05, 2.55608e-05, 2.62332e-05, 2.68739e-05, 2.74859e-05, 
			1.3354e-05, 1.51838e-05, 1.67858e-05, 1.82051e-05, 1.94804e-05, 2.06408e-05, 2.17073e-05, 2.26962e-05, 2.36193e-05, 2.44863e-05, 2.53045e-05, 2.60798e-05, 2.68169e-05, 2.75196e-05, 2.8191e-05, 2.88336e-05, 
			1.4718e-05, 1.64236e-05, 1.79478e-05, 1.93236e-05, 2.05768e-05, 2.17295e-05, 2.27984e-05, 2.37964e-05, 2.47339e-05, 2.56186e-05, 2.64571e-05, 2.72544e-05, 2.80144e-05, 2.87408e-05, 2.94365e-05, 3.01033e-05, 
			1.602e-05, 1.76248e-05, 1.90886e-05, 2.04278e-05, 2.16622e-05, 2.28071e-05, 2.38764e-05, 2.48809e-05, 2.58291e-05, 2.67275e-05, 2.75819e-05, 2.83966e-05, 2.91753e-05, 2.99209e-05, 3.06363e-05, 3.13232e-05
		)
}

CapTable	"metal6_C_LATERAL_74MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183588, 0.000108911, 8.14864e-05, 6.67216e-05, 5.728e-05, 5.06102e-05, 4.55834e-05, 4.1618e-05, 3.83832e-05, 3.56746e-05, 3.33602e-05, 3.13494e-05, 2.95788e-05, 2.8002e-05, 2.65846e-05, 2.53004e-05, 
			0.000196159, 0.00011891, 8.98736e-05, 7.40298e-05, 6.37874e-05, 5.65002e-05, 5.09782e-05, 4.66042e-05, 4.3024e-05, 4.00186e-05, 3.74448e-05, 3.52052e-05, 3.32302e-05, 3.14696e-05, 2.98858e-05, 2.84496e-05, 
			0.000204088, 0.000125826, 9.59452e-05, 7.94486e-05, 6.8712e-05, 6.10186e-05, 5.516e-05, 5.05006e-05, 4.66744e-05, 4.34538e-05, 4.06896e-05, 3.82798e-05, 3.61516e-05, 3.4252e-05, 3.25412e-05, 3.09888e-05, 
			0.000209944, 0.000131168, 0.00010077, 8.38404e-05, 7.27426e-05, 6.47528e-05, 5.86416e-05, 5.3764e-05, 4.97462e-05, 4.6356e-05, 4.34402e-05, 4.08936e-05, 3.86416e-05, 3.6629e-05, 3.48146e-05, 3.3167e-05, 
			0.000214198, 0.000135421, 0.000104717, 8.74912e-05, 7.61322e-05, 6.79206e-05, 6.1615e-05, 5.6564e-05, 5.23924e-05, 4.88646e-05, 4.58246e-05, 4.31656e-05, 4.08108e-05, 3.87042e-05, 3.68032e-05, 3.50756e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.3964e-06, 4.5386e-06, 5.5247e-06, 6.3616e-06, 7.0582e-06, 7.6078e-06, 8.0737e-06, 8.45332e-06, 8.76362e-06, 9.01058e-06, 9.22282e-06, 9.39934e-06, 9.5469e-06, 9.67086e-06, 9.77562e-06, 9.86448e-06, 
			4.5394e-06, 5.6643e-06, 6.6668e-06, 7.534e-06, 8.2426e-06, 8.8487e-06, 9.3483e-06, 9.75e-06, 1.00918e-05, 1.03762e-05, 1.06122e-05, 1.0811e-05, 1.09774e-05, 1.11194e-05, 1.12392e-05, 1.134e-05, 
			5.6658e-06, 6.7872e-06, 7.7825e-06, 8.668e-06, 9.4174e-06, 1.00453e-05, 1.05582e-05, 1.0993e-05, 1.13562e-05, 1.16593e-05, 1.19139e-05, 1.21271e-05, 1.23075e-05, 1.24619e-05, 1.2593e-05, 1.2834e-05, 
			6.7967e-06, 7.898e-06, 8.9212e-06, 9.8169e-06, 1.05704e-05, 1.12164e-05, 1.17562e-05, 1.22082e-05, 1.25861e-05, 1.29042e-05, 1.31719e-05, 1.3398e-05, 1.35907e-05, 1.39023e-05, 1.40109e-05, 1.41038e-05, 
			7.9129e-06, 9.0305e-06, 1.00589e-05, 1.09534e-05, 1.173e-05, 1.23868e-05, 1.29394e-05, 1.34032e-05, 1.37937e-05, 1.41228e-05, 1.44003e-05, 1.46364e-05, 1.49737e-05, 1.51147e-05, 1.5237e-05, 1.53436e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_73MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.95444e-06, 6.17103e-06, 7.1781e-06, 8.0492e-06, 8.8233e-06, 9.5245e-06, 1.01683e-05, 1.0764e-05, 1.13193e-05, 1.18394e-05, 1.23281e-05, 1.27875e-05, 1.32212e-05, 1.3631e-05, 1.40182e-05, 1.43845e-05, 
			5.90143e-06, 7.0083e-06, 7.9807e-06, 8.8514e-06, 9.6443e-06, 1.03738e-05, 1.10511e-05, 1.16843e-05, 1.2279e-05, 1.28394e-05, 1.33672e-05, 1.38668e-05, 1.43401e-05, 1.4788e-05, 1.52127e-05, 1.56141e-05, 
			6.7989e-06, 7.8444e-06, 8.7937e-06, 9.6639e-06, 1.04682e-05, 1.12176e-05, 1.19197e-05, 1.25803e-05, 1.3203e-05, 1.37923e-05, 1.43511e-05, 1.48805e-05, 1.53837e-05, 1.586e-05, 1.63128e-05, 1.67425e-05, 
			7.6697e-06, 8.6826e-06, 9.6192e-06, 1.04895e-05, 1.13039e-05, 1.20691e-05, 1.27913e-05, 1.34729e-05, 1.41195e-05, 1.47336e-05, 1.53168e-05, 1.58714e-05, 1.63975e-05, 1.68982e-05, 1.73729e-05, 1.78248e-05, 
			8.5387e-06, 9.5254e-06, 1.04548e-05, 1.13287e-05, 1.21525e-05, 1.2931e-05, 1.36686e-05, 1.43701e-05, 1.50367e-05, 1.56716e-05, 1.62745e-05, 1.68495e-05, 1.73961e-05, 1.79157e-05, 1.84106e-05, 1.88797e-05
		)
}

CapTable	"metal6_C_TOP_GP_73MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.71296e-06, 9.63377e-06, 1.12289e-05, 1.26057e-05, 1.38259e-05, 1.49276e-05, 1.59356e-05, 1.68676e-05, 1.7735e-05, 1.85464e-05, 1.93079e-05, 2.00259e-05, 2.0703e-05, 2.13415e-05, 2.19449e-05, 2.25156e-05, 
			9.21277e-06, 1.09717e-05, 1.25139e-05, 1.38904e-05, 1.51383e-05, 1.62842e-05, 1.7346e-05, 1.8336e-05, 1.9264e-05, 2.0137e-05, 2.0962e-05, 2.17408e-05, 2.24777e-05, 2.31752e-05, 2.38359e-05, 2.44625e-05, 
			1.06501e-05, 1.23148e-05, 1.38207e-05, 1.51946e-05, 1.646e-05, 1.76352e-05, 1.87337e-05, 1.97654e-05, 2.07389e-05, 2.16593e-05, 2.25294e-05, 2.33546e-05, 2.41367e-05, 2.48794e-05, 2.55837e-05, 2.62519e-05, 
			1.20523e-05, 1.36622e-05, 1.51456e-05, 1.65203e-05, 1.78008e-05, 1.89998e-05, 2.01283e-05, 2.11953e-05, 2.22046e-05, 2.31615e-05, 2.40697e-05, 2.49321e-05, 2.57521e-05, 2.65309e-05, 2.72708e-05, 2.79728e-05, 
			1.34493e-05, 1.50188e-05, 1.64892e-05, 1.78661e-05, 1.91601e-05, 2.03817e-05, 2.15376e-05, 2.26321e-05, 2.36719e-05, 2.46597e-05, 2.56001e-05, 2.64944e-05, 2.73456e-05, 2.81544e-05, 2.89233e-05, 2.9654e-05
		)
}

CapTable	"metal6_C_LATERAL_73MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181631, 0.000106374, 7.84272e-05, 6.3183e-05, 5.32968e-05, 4.62132e-05, 4.08e-05, 3.64746e-05, 3.29044e-05, 2.98848e-05, 2.7283e-05, 2.50078e-05, 2.29948e-05, 2.1198e-05, 1.95816e-05, 1.81183e-05, 
			0.000193567, 0.000115728, 8.61444e-05, 6.97894e-05, 5.90682e-05, 5.1332e-05, 4.53892e-05, 4.0622e-05, 3.6675e-05, 3.3329e-05, 3.04402e-05, 2.79108e-05, 2.56704e-05, 2.36688e-05, 2.18666e-05, 2.02348e-05, 
			0.000200838, 0.000121975, 9.15256e-05, 7.44938e-05, 6.32526e-05, 5.50848e-05, 4.87808e-05, 4.3705e-05, 3.94902e-05, 3.59084e-05, 3.2811e-05, 3.00948e-05, 2.76862e-05, 2.55322e-05, 2.35914e-05, 2.18328e-05, 
			0.000206014, 0.000126621, 9.56372e-05, 7.81522e-05, 6.653e-05, 5.80466e-05, 5.14714e-05, 4.61598e-05, 4.17378e-05, 3.79724e-05, 3.47106e-05, 3.18462e-05, 2.93042e-05, 2.70284e-05, 2.49776e-05, 2.3118e-05, 
			0.00020956, 0.000130155, 9.885e-05, 8.10532e-05, 6.91544e-05, 6.04342e-05, 5.3651e-05, 4.81538e-05, 4.3567e-05, 3.96544e-05, 3.62604e-05, 3.32762e-05, 3.06254e-05, 2.82516e-05, 2.611e-05, 2.41688e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.9496e-06, 5.0114e-06, 5.9272e-06, 6.7424e-06, 7.4795e-06, 8.1514e-06, 8.7682e-06, 9.3322e-06, 9.8491e-06, 1.03221e-05, 1.07571e-05, 1.1152e-05, 1.15162e-05, 1.18442e-05, 1.21481e-05, 1.24257e-05, 
			4.8505e-06, 5.8598e-06, 6.7755e-06, 7.6123e-06, 8.3841e-06, 9.0956e-06, 9.7512e-06, 1.0357e-05, 1.09133e-05, 1.14236e-05, 1.18959e-05, 1.23291e-05, 1.27216e-05, 1.30857e-05, 1.3419e-05, 1.37189e-05, 
			5.7421e-06, 6.7295e-06, 7.6472e-06, 8.5032e-06, 9.2971e-06, 1.00341e-05, 1.0717e-05, 1.13511e-05, 1.19335e-05, 1.24744e-05, 1.29676e-05, 1.34255e-05, 1.38463e-05, 1.42277e-05, 1.4582e-05, 1.49067e-05, 
			6.6374e-06, 7.62e-06, 8.5446e-06, 9.4114e-06, 1.02244e-05, 1.09803e-05, 1.16824e-05, 1.23375e-05, 1.29444e-05, 1.35005e-05, 1.4018e-05, 1.44952e-05, 1.49292e-05, 1.53327e-05, 1.57031e-05, 1.60427e-05, 
			7.553e-06, 8.5282e-06, 9.4583e-06, 1.03359e-05, 1.11622e-05, 1.19325e-05, 1.26541e-05, 1.33209e-05, 1.39437e-05, 1.45205e-05, 1.50488e-05, 1.55407e-05, 1.59938e-05, 1.64104e-05, 1.67885e-05, 1.71404e-05
		)
}

CapTable	"metal6_C_TOP_GP_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.14392e-05, 1.45976e-05, 1.73239e-05, 1.97398e-05, 2.19123e-05, 2.38829e-05, 2.56747e-05, 2.7311e-05, 2.8805e-05, 3.01688e-05, 3.14124e-05, 3.25486e-05, 3.35822e-05, 3.45271e-05, 3.53843e-05, 3.61644e-05, 
			1.41825e-05, 1.72242e-05, 1.99711e-05, 2.24668e-05, 2.4745e-05, 2.68307e-05, 2.87436e-05, 3.04963e-05, 3.21034e-05, 3.35756e-05, 3.49209e-05, 3.61508e-05, 3.72779e-05, 3.83031e-05, 3.92379e-05, 4.00921e-05, 
			1.69553e-05, 1.99523e-05, 2.27198e-05, 2.52668e-05, 2.76146e-05, 2.9778e-05, 3.17686e-05, 3.35991e-05, 3.52836e-05, 3.68264e-05, 3.82441e-05, 3.95405e-05, 4.07259e-05, 4.18105e-05, 4.28013e-05, 4.3705e-05, 
			1.97766e-05, 2.27658e-05, 2.5552e-05, 2.81412e-05, 3.05388e-05, 3.27564e-05, 3.48051e-05, 3.66921e-05, 3.84293e-05, 4.00294e-05, 4.1497e-05, 4.28408e-05, 4.4074e-05, 4.52014e-05, 4.62333e-05, 4.71769e-05, 
			2.2663e-05, 2.56448e-05, 2.84505e-05, 3.10689e-05, 3.35036e-05, 3.57637e-05, 3.78521e-05, 3.97842e-05, 4.15642e-05, 4.32018e-05, 4.4708e-05, 4.6091e-05, 4.73587e-05, 4.85221e-05, 4.9587e-05, 5.05612e-05
		)
}

CapTable	"metal6_C_LATERAL_72MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179458, 0.000103479, 7.48824e-05, 5.90622e-05, 4.86762e-05, 4.1169e-05, 3.54086e-05, 3.08084e-05, 2.70314e-05, 2.38684e-05, 2.11786e-05, 1.88668e-05, 1.68606e-05, 1.51095e-05, 1.357e-05, 1.22112e-05, 
			0.000190523, 0.000111935, 8.16764e-05, 6.47288e-05, 5.34998e-05, 4.53414e-05, 3.90588e-05, 3.40294e-05, 2.98934e-05, 2.64248e-05, 2.3471e-05, 2.09286e-05, 1.87219e-05, 1.67914e-05, 1.50937e-05, 1.35969e-05, 
			0.000196882, 0.000117264, 8.6142e-05, 6.8527e-05, 5.67948e-05, 4.82258e-05, 4.1608e-05, 3.62972e-05, 3.19222e-05, 2.82464e-05, 2.5115e-05, 2.24146e-05, 2.00674e-05, 1.80163e-05, 1.62065e-05, 1.46066e-05, 
			0.00020113, 0.000120996, 8.93614e-05, 7.13204e-05, 5.92378e-05, 5.03872e-05, 4.3533e-05, 3.80214e-05, 3.34726e-05, 2.96476e-05, 2.63816e-05, 2.35644e-05, 2.1116e-05, 1.89676e-05, 1.70742e-05, 1.53983e-05, 
			0.000203758, 0.000123644, 9.17242e-05, 7.34112e-05, 6.10922e-05, 5.20454e-05, 4.50218e-05, 3.93644e-05, 3.46866e-05, 3.0747e-05, 2.73852e-05, 2.44776e-05, 2.19456e-05, 1.97243e-05, 1.77701e-05, 1.60345e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.0658e-06, 4.0929e-06, 4.9785e-06, 5.7366e-06, 6.3567e-06, 6.85e-06, 7.266e-06, 7.60518e-06, 7.8829e-06, 8.1029e-06, 8.29338e-06, 8.45216e-06, 8.58534e-06, 8.69766e-06, 8.79294e-06, 8.87422e-06, 
			4.0911e-06, 5.0999e-06, 6.0011e-06, 6.7774e-06, 7.4115e-06, 7.9533e-06, 8.3987e-06, 8.75704e-06, 9.06372e-06, 9.31764e-06, 9.53062e-06, 9.70928e-06, 9.85984e-06, 9.98798e-06, 1.00973e-05, 1.01912e-05, 
			5.1045e-06, 6.1046e-06, 6.9958e-06, 7.786e-06, 8.455e-06, 9.0161e-06, 9.4718e-06, 9.8613e-06, 1.01866e-05, 1.0458e-05, 1.06873e-05, 1.08795e-05, 1.10441e-05, 1.1184e-05, 1.13027e-05, 1.14059e-05, 
			6.1095e-06, 7.0932e-06, 8.0065e-06, 8.8055e-06, 9.4758e-06, 1.00526e-05, 1.05354e-05, 1.09382e-05, 1.12771e-05, 1.15629e-05, 1.18043e-05, 1.20091e-05, 1.21838e-05, 1.23315e-05, 1.24605e-05, 1.27202e-05, 
			7.1019e-06, 8.0987e-06, 9.0151e-06, 9.811e-06, 1.05036e-05, 1.10896e-05, 1.15832e-05, 1.19988e-05, 1.23488e-05, 1.26437e-05, 1.28946e-05, 1.31075e-05, 1.32904e-05, 1.36187e-05, 1.37205e-05, 1.38094e-05
		)
}

CapTable	"metal6_C_TOP_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.01145e-05, 4.04771e-05, 4.87987e-05, 5.53518e-05, 6.04496e-05, 6.43558e-05, 6.75433e-05, 7.00715e-05, 7.20977e-05, 7.37042e-05, 7.50451e-05, 7.61462e-05, 7.70581e-05, 7.78192e-05, 7.84583e-05, 7.8999e-05, 
			4.26743e-05, 5.29963e-05, 6.13419e-05, 6.799e-05, 7.31587e-05, 7.73481e-05, 8.06835e-05, 8.33295e-05, 8.55015e-05, 8.72761e-05, 8.87384e-05, 8.99479e-05, 9.09533e-05, 9.1802e-05, 9.25193e-05, 9.31327e-05, 
			5.53093e-05, 6.54876e-05, 7.37082e-05, 8.04026e-05, 8.57374e-05, 9.00081e-05, 9.34054e-05, 9.61821e-05, 9.84493e-05, 0.000100312, 0.000101855, 0.000103143, 0.000104225, 0.000105138, 0.00010592, 0.000106584, 
			6.78889e-05, 7.79054e-05, 8.61941e-05, 9.28871e-05, 9.82198e-05, 0.00010254, 0.000106037, 0.000108892, 0.000111229, 0.000113154, 0.000114762, 0.000116111, 0.000117249, 0.000118222, 0.000119047, 0.0001196, 
			8.03919e-05, 9.03851e-05, 9.86241e-05, 0.000105269, 0.000110658, 0.000115015, 0.000118557, 0.000121458, 0.00012385, 0.000125837, 0.000127497, 0.000128904, 0.000130089, 0.000130911, 0.000131817, 0.000132594
		)
}

CapTable	"metal6_C_LATERAL_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167614, 8.8983e-05, 5.90408e-05, 4.27436e-05, 3.24984e-05, 2.5596e-05, 2.0541e-05, 1.67831e-05, 1.39146e-05, 1.17145e-05, 9.93412e-06, 8.50224e-06, 7.33616e-06, 6.37604e-06, 5.57816e-06, 4.90938e-06, 
			0.000174806, 9.45368e-05, 6.3593e-05, 4.66206e-05, 3.59178e-05, 2.84596e-05, 2.30588e-05, 1.90485e-05, 1.59218e-05, 1.34633e-05, 1.1497e-05, 9.90482e-06, 8.60086e-06, 7.51902e-06, 6.61438e-06, 5.85012e-06, 
			0.000178631, 9.80568e-05, 6.6796e-05, 4.94424e-05, 3.83366e-05, 3.06238e-05, 2.50398e-05, 2.07876e-05, 1.74901e-05, 1.4882e-05, 1.27847e-05, 1.10755e-05, 9.66594e-06, 8.49196e-06, 7.50332e-06, 6.66808e-06, 
			0.00018131, 0.000100753, 6.91654e-05, 5.15984e-05, 4.03364e-05, 3.24454e-05, 2.66556e-05, 2.22558e-05, 1.88299e-05, 1.61101e-05, 1.39097e-05, 1.21079e-05, 1.06152e-05, 9.36354e-06, 8.31048e-06, 7.4258e-06, 
			0.000183036, 0.000102718, 7.10598e-05, 5.3411e-05, 4.19664e-05, 3.39524e-05, 2.80478e-05, 2.35412e-05, 2.00142e-05, 1.71993e-05, 1.49154e-05, 1.30335e-05, 1.14726e-05, 1.01783e-05, 9.06748e-06, 8.12056e-06
		)
}

CapTable	"metal5_C_LATERAL_14MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_15MAX" {
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

CapTable	"metal5_C_LATERAL_15MAX" {
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

CapTable	"metal5_C_LATERAL_13MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_14MAX" {
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

CapTable	"metal5_C_TOP_GP_14MAX" {
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

CapTable	"metal5_C_LATERAL_12MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal5_C_TOP_GP_13MAX" {
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
			2.70117e-05, 3.66015e-05, 4.43494e-05, 5.04484e-05, 5.5182e-05, 5.88169e-05, 6.15885e-05, 6.36919e-05, 6.52811e-05, 6.64802e-05, 6.73821e-05, 6.80593e-05, 6.85685e-05, 6.89501e-05, 6.92567e-05, 6.94726e-05, 
			3.94301e-05, 4.92216e-05, 5.71575e-05, 6.34348e-05, 6.83309e-05, 7.21084e-05, 7.49988e-05, 7.72004e-05, 7.88675e-05, 8.01273e-05, 8.10783e-05, 8.17917e-05, 8.23527e-05, 8.27572e-05, 8.30612e-05, 8.32891e-05, 
			5.21884e-05, 6.20351e-05, 7.00389e-05, 7.63935e-05, 8.13599e-05, 8.52025e-05, 8.81503e-05, 9.03975e-05, 9.21008e-05, 9.33919e-05, 9.43648e-05, 9.51271e-05, 9.56793e-05, 9.60939e-05, 9.64059e-05, 9.66401e-05, 
			6.50998e-05, 7.49795e-05, 8.30182e-05, 8.94102e-05, 9.44167e-05, 9.82918e-05, 0.000101268, 0.000103541, 0.000105262, 0.0001066, 0.000107587, 0.000108329, 0.00010889, 0.00010931, 0.000109626, 0.000109864, 
			7.80976e-05, 8.79543e-05, 9.59971e-05, 0.000102403, 0.000107426, 0.000111311, 0.000114302, 0.000116583, 0.000118356, 0.000119671, 0.000120662, 0.00012141, 0.000121973, 0.000122396, 0.000122716, 0.000122955
		)
}

CapTable	"metal5_C_TOP_GP_12MAX" {
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

CapTable	"metal5_C_LATERAL_25MAX" {
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

CapTable	"metal5_C_TOP_GP_24MAX" {
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

CapTable	"metal5_C_LATERAL_24MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_25MAX" {
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

CapTable	"metal5_C_TOP_GP_23MAX" {
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

CapTable	"metal5_C_LATERAL_23MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_24MAX" {
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

CapTable	"metal5_C_TOP_GP_22MAX" {
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

CapTable	"metal5_C_LATERAL_22MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_23MAX" {
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
			1.05266e-05, 1.38839e-05, 1.69145e-05, 1.96572e-05, 2.21148e-05, 2.42915e-05, 2.61964e-05, 2.78441e-05, 2.92556e-05, 3.04561e-05, 3.14671e-05, 3.23161e-05, 3.30235e-05, 3.36116e-05, 3.40983e-05, 3.44995e-05, 
			1.38853e-05, 1.73324e-05, 2.05299e-05, 2.34482e-05, 2.60738e-05, 2.84002e-05, 3.04376e-05, 3.21993e-05, 3.37074e-05, 3.49902e-05, 3.60714e-05, 3.6978e-05, 3.77345e-05, 3.83631e-05, 3.88803e-05, 3.93106e-05, 
			1.7454e-05, 2.10016e-05, 2.43127e-05, 2.7342e-05, 3.00654e-05, 3.24779e-05, 3.45887e-05, 3.64121e-05, 3.79744e-05, 3.9301e-05, 4.04199e-05, 4.13579e-05, 4.21397e-05, 4.27986e-05, 4.33264e-05, 4.37709e-05, 
			2.12003e-05, 2.48345e-05, 2.82231e-05, 3.13234e-05, 3.41066e-05, 3.657e-05, 3.87226e-05, 4.05839e-05, 4.2176e-05, 4.35284e-05, 4.46692e-05, 4.56214e-05, 4.64189e-05, 4.70819e-05, 4.75878e-05, 4.80367e-05, 
			2.50872e-05, 2.87696e-05, 3.22073e-05, 3.53496e-05, 3.81678e-05, 4.06606e-05, 4.28369e-05, 4.47172e-05, 4.63271e-05, 4.76919e-05, 4.88523e-05, 4.98081e-05, 5.0613e-05, 5.12359e-05, 5.17869e-05, 5.22417e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_35MAX" {
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

CapTable	"metal5_C_LATERAL_35MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_34MAX" {
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

CapTable	"metal5_C_TOP_GP_34MAX" {
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

CapTable	"metal5_C_LATERAL_34MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_33MAX" {
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

CapTable	"metal5_C_TOP_GP_33MAX" {
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

CapTable	"metal5_C_LATERAL_33MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_32MAX" {
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

CapTable	"metal5_C_TOP_GP_32MAX" {
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

CapTable	"metal5_C_LATERAL_32MAX" {
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

CapTable	"metal5_C_LATERAL_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181358, 0.000105988, 7.79098e-05, 6.25192e-05, 5.24778e-05, 4.52376e-05, 3.96722e-05, 3.52034e-05, 3.15022e-05, 2.8366e-05, 2.56624e-05, 2.33014e-05, 2.1218e-05, 1.9365e-05, 1.77064e-05, 1.62141e-05, 
			0.000193155, 0.000115159, 8.53988e-05, 6.88566e-05, 5.79468e-05, 5.00276e-05, 4.39134e-05, 3.89894e-05, 3.4903e-05, 3.14356e-05, 2.84442e-05, 2.583e-05, 2.35226e-05, 2.14696e-05, 1.9632e-05, 1.79782e-05, 
			0.000200228, 0.000121162, 9.04972e-05, 7.32478e-05, 6.17962e-05, 5.34308e-05, 4.69466e-05, 4.17102e-05, 3.73558e-05, 3.3656e-05, 3.04606e-05, 2.76662e-05, 2.51984e-05, 2.3002e-05, 2.1035e-05, 1.92646e-05, 
			0.000205144, 0.00012551, 9.42824e-05, 7.65608e-05, 6.47168e-05, 5.60304e-05, 4.9275e-05, 4.3806e-05, 3.92502e-05, 3.53742e-05, 3.20234e-05, 2.90912e-05, 2.65e-05, 2.41932e-05, 2.21264e-05, 2.0266e-05, 
			0.000208382, 0.000128708, 9.71422e-05, 7.90998e-05, 6.69768e-05, 5.80562e-05, 5.10984e-05, 4.5452e-05, 4.07412e-05, 3.67288e-05, 3.32572e-05, 3.02172e-05, 2.75294e-05, 2.51358e-05, 2.29906e-05, 2.1059e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.11508e-05, 1.37512e-05, 1.58602e-05, 1.76528e-05, 1.9226e-05, 2.0638e-05, 2.19247e-05, 2.31098e-05, 2.42107e-05, 2.52387e-05, 2.62028e-05, 2.71103e-05, 2.79662e-05, 2.87753e-05, 2.95409e-05, 3.02662e-05, 
			1.3061e-05, 1.53808e-05, 1.73812e-05, 1.91468e-05, 2.07359e-05, 2.21857e-05, 2.35231e-05, 2.4766e-05, 2.5928e-05, 2.70189e-05, 2.80466e-05, 2.90172e-05, 2.99355e-05, 3.08056e-05, 3.16308e-05, 3.24142e-05, 
			1.4841e-05, 1.69944e-05, 1.89194e-05, 2.06601e-05, 2.22517e-05, 2.37217e-05, 2.50896e-05, 2.63694e-05, 2.75721e-05, 2.87062e-05, 2.97779e-05, 3.07929e-05, 3.17553e-05, 3.2669e-05, 3.35372e-05, 3.43624e-05, 
			1.6544e-05, 1.85988e-05, 2.04702e-05, 2.21896e-05, 2.37812e-05, 2.52641e-05, 2.6653e-05, 2.79594e-05, 2.91922e-05, 3.03584e-05, 3.14634e-05, 3.25121e-05, 3.35083e-05, 3.44557e-05, 3.53568e-05, 3.62145e-05, 
			1.822e-05, 2.01946e-05, 2.20278e-05, 2.37308e-05, 2.53215e-05, 2.6813e-05, 2.82173e-05, 2.95437e-05, 3.07993e-05, 3.19902e-05, 3.31211e-05, 3.41962e-05, 3.52191e-05, 3.61929e-05, 3.71203e-05, 3.80037e-05
		)
}

CapTable	"metal5_C_LATERAL_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182834, 0.000107922, 8.02658e-05, 6.52736e-05, 5.561e-05, 4.87266e-05, 4.3497e-05, 3.9342e-05, 3.59308e-05, 3.30608e-05, 3.05996e-05, 2.84564e-05, 2.65676e-05, 2.4886e-05, 2.3377e-05, 2.20134e-05, 
			0.000195138, 0.00011762, 8.83168e-05, 7.22116e-05, 6.17178e-05, 5.41928e-05, 4.84482e-05, 4.38684e-05, 4.00996e-05, 3.6923e-05, 3.41952e-05, 3.18178e-05, 2.9721e-05, 2.78536e-05, 2.6177e-05, 2.46616e-05, 
			0.000202752, 0.00012419, 9.40116e-05, 7.72296e-05, 6.62228e-05, 5.82774e-05, 5.21858e-05, 4.73136e-05, 4.32942e-05, 3.98996e-05, 3.69804e-05, 3.44332e-05, 3.21846e-05, 3.01806e-05, 2.83802e-05, 2.67522e-05, 
			0.000208248, 0.000129143, 9.84278e-05, 8.11974e-05, 6.98192e-05, 6.15706e-05, 5.5223e-05, 5.0131e-05, 4.59206e-05, 4.23584e-05, 3.92906e-05, 3.66108e-05, 3.4243e-05, 3.2131e-05, 3.02328e-05, 2.85152e-05, 
			0.000212104, 0.000132979, 0.000101946, 8.44122e-05, 7.27692e-05, 6.42982e-05, 5.77576e-05, 5.24954e-05, 4.81356e-05, 4.4441e-05, 4.1255e-05, 3.8469e-05, 3.60052e-05, 3.38062e-05, 3.18284e-05, 3.00382e-05
		)
}

CapTable	"metal5_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180359, 0.000104658, 7.62724e-05, 6.05978e-05, 5.02966e-05, 4.28218e-05, 3.7049e-05, 3.2401e-05, 2.85488e-05, 2.52896e-05, 2.24902e-05, 2.0059e-05, 1.79298e-05, 1.60536e-05, 1.43915e-05, 1.2914e-05, 
			0.000191766, 0.000113419, 8.33284e-05, 6.64802e-05, 5.52916e-05, 4.71228e-05, 4.07896e-05, 3.56788e-05, 3.14368e-05, 2.78456e-05, 2.47602e-05, 2.208e-05, 1.97334e-05, 1.76649e-05, 1.58342e-05, 1.4206e-05, 
			0.00019842, 0.000118987, 8.79774e-05, 7.041e-05, 5.86706e-05, 5.00506e-05, 4.33462e-05, 3.79242e-05, 3.34182e-05, 2.96006e-05, 2.63194e-05, 2.34684e-05, 2.09714e-05, 1.87717e-05, 1.6823e-05, 1.50921e-05, 
			0.000202892, 0.000122882, 9.13016e-05, 7.32578e-05, 6.11256e-05, 5.21866e-05, 4.52156e-05, 3.95682e-05, 3.48702e-05, 3.08868e-05, 2.74614e-05, 2.44854e-05, 2.18782e-05, 1.95804e-05, 1.75466e-05, 1.57381e-05, 
			0.00020567, 0.000125615, 9.36968e-05, 7.5335e-05, 6.29288e-05, 5.37636e-05, 4.66004e-05, 4.07872e-05, 3.59466e-05, 3.18398e-05, 2.8308e-05, 2.52376e-05, 2.2549e-05, 2.01784e-05, 1.80793e-05, 1.6214e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.36663e-06, 9.20438e-06, 1.07409e-05, 1.2084e-05, 1.32928e-05, 1.43992e-05, 1.54237e-05, 1.6379e-05, 1.72729e-05, 1.81111e-05, 1.88991e-05, 1.96393e-05, 2.03349e-05, 2.09878e-05, 2.16007e-05, 2.21748e-05, 
			8.82514e-06, 1.05199e-05, 1.2026e-05, 1.33904e-05, 1.46456e-05, 1.58122e-05, 1.69032e-05, 1.79279e-05, 1.88919e-05, 1.98e-05, 2.06555e-05, 2.14611e-05, 2.22196e-05, 2.2933e-05, 2.36031e-05, 2.42336e-05, 
			1.02356e-05, 1.18612e-05, 1.33542e-05, 1.4737e-05, 1.60268e-05, 1.72372e-05, 1.83762e-05, 1.94513e-05, 2.04666e-05, 2.14252e-05, 2.23302e-05, 2.31837e-05, 2.39877e-05, 2.47464e-05, 2.54587e-05, 2.6129e-05, 
			1.16356e-05, 1.32341e-05, 1.47264e-05, 1.61259e-05, 1.74451e-05, 1.86907e-05, 1.98686e-05, 2.09838e-05, 2.20391e-05, 2.30376e-05, 2.39812e-05, 2.48721e-05, 2.57139e-05, 2.6506e-05, 2.72527e-05, 2.79538e-05, 
			1.30563e-05, 1.46374e-05, 1.61356e-05, 1.75527e-05, 1.88974e-05, 2.0172e-05, 2.13815e-05, 2.25289e-05, 2.36166e-05, 2.46462e-05, 2.56224e-05, 2.65434e-05, 2.74139e-05, 2.82344e-05, 2.90073e-05, 2.97344e-05
		)
}

CapTable	"metal5_C_TOP_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.60057e-06, 7.00922e-06, 8.19297e-06, 9.22899e-06, 1.01592e-05, 1.101e-05, 1.17971e-05, 1.25303e-05, 1.32166e-05, 1.38608e-05, 1.44654e-05, 1.50335e-05, 1.55674e-05, 1.60694e-05, 1.65405e-05, 1.69832e-05, 
			6.70126e-06, 8.00305e-06, 9.16116e-06, 1.02102e-05, 1.11746e-05, 1.20702e-05, 1.2907e-05, 1.36921e-05, 1.44309e-05, 1.51268e-05, 1.57825e-05, 1.64006e-05, 1.69825e-05, 1.75307e-05, 1.80461e-05, 1.85295e-05, 
			7.77043e-06, 9.01784e-06, 1.01636e-05, 1.12239e-05, 1.22122e-05, 1.31393e-05, 1.40123e-05, 1.48351e-05, 1.5612e-05, 1.63459e-05, 1.70392e-05, 1.76938e-05, 1.83117e-05, 1.88924e-05, 1.94405e-05, 1.99552e-05, 
			8.83238e-06, 1.00547e-05, 1.11972e-05, 1.22693e-05, 1.32783e-05, 1.42306e-05, 1.51312e-05, 1.59837e-05, 1.67911e-05, 1.75551e-05, 1.82783e-05, 1.89617e-05, 1.96061e-05, 2.02146e-05, 2.07871e-05, 2.13265e-05, 
			9.90873e-06, 1.1114e-05, 1.22582e-05, 1.33425e-05, 1.43688e-05, 1.53425e-05, 1.62664e-05, 1.71434e-05, 1.79754e-05, 1.87648e-05, 1.95106e-05, 2.02175e-05, 2.08847e-05, 2.1514e-05, 2.21073e-05, 2.26657e-05
		)
}

CapTable	"metal5_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177707, 0.000101104, 7.19478e-05, 5.56456e-05, 4.48624e-05, 3.70438e-05, 3.10528e-05, 2.6297e-05, 2.24316e-05, 1.92345e-05, 1.6564e-05, 1.4307e-05, 1.23896e-05, 1.07552e-05, 9.35102e-06, 8.14298e-06, 
			0.000187978, 0.000108738, 7.79068e-05, 6.04754e-05, 4.88576e-05, 4.04024e-05, 3.39078e-05, 2.87456e-05, 2.45426e-05, 2.10676e-05, 1.81557e-05, 1.56991e-05, 1.3607e-05, 1.18188e-05, 1.02843e-05, 8.96328e-06, 
			0.000193507, 0.000113242, 8.15618e-05, 6.34872e-05, 5.13944e-05, 4.25594e-05, 3.57584e-05, 3.03466e-05, 2.59326e-05, 2.2277e-05, 1.92163e-05, 1.66256e-05, 1.4421e-05, 1.25352e-05, 1.09156e-05, 9.5198e-06, 
			0.000196926, 0.000116172, 8.40136e-05, 6.55496e-05, 5.31434e-05, 4.406e-05, 3.70588e-05, 3.14744e-05, 2.6921e-05, 2.31436e-05, 1.99748e-05, 1.72939e-05, 1.50113e-05, 1.3056e-05, 1.13762e-05, 9.92778e-06, 
			0.000198756, 0.000118065, 8.56666e-05, 6.69712e-05, 5.43702e-05, 4.51266e-05, 3.79886e-05, 3.22906e-05, 2.76352e-05, 2.37726e-05, 2.05304e-05, 1.77852e-05, 1.54459e-05, 1.34424e-05, 1.17203e-05, 1.02338e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.45029e-06, 8.1305e-06, 9.564e-06, 1.08379e-05, 1.19938e-05, 1.30606e-05, 1.4051e-05, 1.49728e-05, 1.58326e-05, 1.66341e-05, 1.73796e-05, 1.8073e-05, 1.87151e-05, 1.93094e-05, 1.98593e-05, 2.0366e-05, 
			7.84193e-06, 9.4261e-06, 1.08565e-05, 1.21691e-05, 1.33885e-05, 1.45256e-05, 1.559e-05, 1.65879e-05, 1.75192e-05, 1.83911e-05, 1.92031e-05, 1.99597e-05, 2.06617e-05, 2.13128e-05, 2.1914e-05, 2.24692e-05, 
			9.219e-06, 1.07653e-05, 1.22055e-05, 1.35529e-05, 1.48172e-05, 1.60066e-05, 1.71253e-05, 1.81756e-05, 1.91615e-05, 2.0083e-05, 2.09434e-05, 2.17453e-05, 2.24899e-05, 2.31801e-05, 2.38186e-05, 2.44072e-05, 
			1.06089e-05, 1.2153e-05, 1.36112e-05, 1.49891e-05, 1.62933e-05, 1.75228e-05, 1.8684e-05, 1.97757e-05, 2.08014e-05, 2.17619e-05, 2.26594e-05, 2.34947e-05, 2.42715e-05, 2.49914e-05, 2.56574e-05, 2.62724e-05, 
			1.20398e-05, 1.35846e-05, 1.50624e-05, 1.64696e-05, 1.78045e-05, 1.90694e-05, 2.02632e-05, 2.13884e-05, 2.2446e-05, 2.34363e-05, 2.43617e-05, 2.52237e-05, 2.60244e-05, 2.67675e-05, 2.74548e-05, 2.80898e-05
		)
}

CapTable	"metal5_C_TOP_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.75831e-06, 9.8085e-06, 1.15643e-05, 1.31232e-05, 1.4541e-05, 1.58438e-05, 1.7051e-05, 1.81741e-05, 1.92193e-05, 2.01918e-05, 2.10967e-05, 2.19359e-05, 2.27145e-05, 2.34343e-05, 2.40984e-05, 2.47107e-05, 
			9.44527e-06, 1.1388e-05, 1.31441e-05, 1.47543e-05, 1.62436e-05, 1.76321e-05, 1.89291e-05, 2.01399e-05, 2.12745e-05, 2.23311e-05, 2.33163e-05, 2.42317e-05, 2.50807e-05, 2.58669e-05, 2.65926e-05, 2.72626e-05, 
			1.11286e-05, 1.30315e-05, 1.48001e-05, 1.64511e-05, 1.79973e-05, 1.94476e-05, 2.08083e-05, 2.2085e-05, 2.32799e-05, 2.4397e-05, 2.54382e-05, 2.64067e-05, 2.73063e-05, 2.81383e-05, 2.89083e-05, 2.9618e-05, 
			1.28421e-05, 1.4737e-05, 1.65262e-05, 1.82141e-05, 1.9804e-05, 2.1305e-05, 2.27157e-05, 2.40422e-05, 2.5285e-05, 2.6447e-05, 2.7531e-05, 2.854e-05, 2.94767e-05, 3.03449e-05, 3.11463e-05, 3.18864e-05, 
			1.46052e-05, 1.65032e-05, 1.83148e-05, 2.00344e-05, 2.16637e-05, 2.32023e-05, 2.46534e-05, 2.60177e-05, 2.72973e-05, 2.84951e-05, 2.96114e-05, 3.06518e-05, 3.16169e-05, 3.25117e-05, 3.33387e-05, 3.41005e-05
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
			5.5319e-06, 7.1253e-06, 8.5329e-06, 9.8031e-06, 1.09585e-05, 1.2007e-05, 1.29564e-05, 1.38123e-05, 1.45804e-05, 1.52719e-05, 1.58847e-05, 1.64347e-05, 1.69225e-05, 1.73505e-05, 1.77333e-05, 1.80706e-05, 
			6.9693e-06, 8.5311e-06, 9.973e-06, 1.13023e-05, 1.25251e-05, 1.36429e-05, 1.46635e-05, 1.55846e-05, 1.64182e-05, 1.71632e-05, 1.78333e-05, 1.84264e-05, 1.89586e-05, 1.94304e-05, 1.98477e-05, 2.02153e-05, 
			8.4347e-06, 9.9999e-06, 1.14708e-05, 1.28421e-05, 1.41098e-05, 1.52742e-05, 1.63402e-05, 1.73045e-05, 1.81794e-05, 1.89658e-05, 1.9667e-05, 2.02967e-05, 2.0857e-05, 2.13544e-05, 2.17942e-05, 2.21846e-05, 
			9.9402e-06, 1.15201e-05, 1.30151e-05, 1.44207e-05, 1.57213e-05, 1.69225e-05, 1.80178e-05, 1.90172e-05, 1.99169e-05, 2.07309e-05, 2.14607e-05, 2.21123e-05, 2.26922e-05, 2.32083e-05, 2.36663e-05, 2.40718e-05, 
			1.14913e-05, 1.30809e-05, 1.45978e-05, 1.60263e-05, 1.73525e-05, 1.85783e-05, 1.97009e-05, 2.07196e-05, 2.16445e-05, 2.24774e-05, 2.32243e-05, 2.38914e-05, 2.44872e-05, 2.50171e-05, 2.54878e-05, 2.59046e-05
		)
}

CapTable	"metal5_C_TOP_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.20733e-05, 1.56601e-05, 1.88284e-05, 2.16691e-05, 2.42246e-05, 2.65268e-05, 2.85957e-05, 3.04496e-05, 3.21054e-05, 3.35786e-05, 3.48869e-05, 3.60441e-05, 3.70681e-05, 3.79734e-05, 3.87693e-05, 3.94707e-05, 
			1.54013e-05, 1.89715e-05, 2.22372e-05, 2.5218e-05, 2.79271e-05, 3.0381e-05, 3.25925e-05, 3.45806e-05, 3.63584e-05, 3.79451e-05, 3.93547e-05, 4.06081e-05, 4.17159e-05, 4.2696e-05, 4.35606e-05, 4.43254e-05, 
			1.88699e-05, 2.24651e-05, 2.58044e-05, 2.88747e-05, 3.16788e-05, 3.42258e-05, 3.65274e-05, 3.85971e-05, 4.04525e-05, 4.21103e-05, 4.35876e-05, 4.48997e-05, 4.60629e-05, 4.70919e-05, 4.80038e-05, 4.88069e-05, 
			2.2465e-05, 2.61029e-05, 2.94963e-05, 3.26267e-05, 3.54963e-05, 3.81039e-05, 4.04658e-05, 4.25916e-05, 4.45022e-05, 4.62086e-05, 4.77311e-05, 4.90843e-05, 5.02865e-05, 5.13523e-05, 5.22937e-05, 5.31256e-05, 
			2.61801e-05, 2.98401e-05, 3.32706e-05, 3.64445e-05, 3.93543e-05, 4.20051e-05, 4.44075e-05, 4.65752e-05, 4.8522e-05, 5.02642e-05, 5.18183e-05, 5.32046e-05, 5.44336e-05, 5.5523e-05, 5.64854e-05, 5.7338e-05
		)
}

CapTable	"metal5_C_LATERAL_55MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183336, 0.000108566, 8.10346e-05, 6.61528e-05, 5.65876e-05, 4.97922e-05, 4.46404e-05, 4.05536e-05, 3.72022e-05, 3.43838e-05, 3.19662e-05, 2.98598e-05, 2.8001e-05, 2.63436e-05, 2.4853e-05, 2.35026e-05, 
			0.000195797, 0.00011842, 8.92418e-05, 7.32494e-05, 6.28564e-05, 5.54206e-05, 4.97552e-05, 4.52446e-05, 4.15356e-05, 3.84104e-05, 3.57258e-05, 3.33844e-05, 3.13168e-05, 2.94722e-05, 2.78126e-05, 2.63088e-05, 
			0.000203568, 0.000125144, 9.50904e-05, 7.84202e-05, 6.75132e-05, 5.96558e-05, 5.36418e-05, 4.8837e-05, 4.48756e-05, 4.15304e-05, 3.86524e-05, 3.61388e-05, 3.3917e-05, 3.19334e-05, 3.01478e-05, 2.8529e-05, 
			0.00020922, 0.00013025, 9.96566e-05, 8.25352e-05, 7.12538e-05, 6.30904e-05, 5.68172e-05, 5.17896e-05, 4.76342e-05, 4.41182e-05, 4.10886e-05, 3.84394e-05, 3.60952e-05, 3.40008e-05, 3.21142e-05, 3.04032e-05, 
			0.00021323, 0.000134236, 0.00010332, 8.58906e-05, 7.434e-05, 6.595e-05, 5.94798e-05, 5.42778e-05, 4.9969e-05, 4.6317e-05, 4.31654e-05, 4.04066e-05, 3.79634e-05, 3.57786e-05, 3.38094e-05, 3.20226e-05
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

CapTable	"metal5_C_TOP_GP_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.89095e-06, 7.34636e-06, 8.55891e-06, 9.61266e-06, 1.05553e-05, 1.14153e-05, 1.22097e-05, 1.2951e-05, 1.36453e-05, 1.42982e-05, 1.49136e-05, 1.54943e-05, 1.60432e-05, 1.65609e-05, 1.70503e-05, 1.75115e-05, 
			7.00757e-06, 8.34027e-06, 9.51836e-06, 1.05796e-05, 1.15519e-05, 1.24529e-05, 1.32947e-05, 1.40859e-05, 1.48321e-05, 1.55375e-05, 1.6204e-05, 1.68351e-05, 1.74321e-05, 1.79973e-05, 1.85325e-05, 1.90379e-05, 
			8.08294e-06, 9.35007e-06, 1.05083e-05, 1.15755e-05, 1.2569e-05, 1.34995e-05, 1.43759e-05, 1.52037e-05, 1.59876e-05, 1.67309e-05, 1.74352e-05, 1.81039e-05, 1.87371e-05, 1.93378e-05, 1.99063e-05, 2.04442e-05, 
			9.14222e-06, 1.03771e-05, 1.15262e-05, 1.26013e-05, 1.36121e-05, 1.45664e-05, 1.54709e-05, 1.63279e-05, 1.71419e-05, 1.79153e-05, 1.865e-05, 1.93486e-05, 2.00113e-05, 2.06395e-05, 2.12346e-05, 2.17981e-05, 
			1.02097e-05, 1.14225e-05, 1.25694e-05, 1.36536e-05, 1.46808e-05, 1.56553e-05, 1.65818e-05, 1.74632e-05, 1.83028e-05, 1.9101e-05, 1.98611e-05, 2.05836e-05, 2.12697e-05, 2.19203e-05, 2.25373e-05, 2.31217e-05
		)
}

CapTable	"metal5_C_LATERAL_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181743, 0.000106495, 7.85262e-05, 6.32356e-05, 5.32848e-05, 4.6125e-05, 4.06306e-05, 3.62232e-05, 3.25734e-05, 2.94792e-05, 2.6809e-05, 2.44724e-05, 2.24058e-05, 2.05624e-05, 1.89069e-05, 1.74116e-05, 
			0.000193682, 0.000115811, 8.61666e-05, 6.97298e-05, 5.8915e-05, 5.10802e-05, 4.50392e-05, 4.01776e-05, 3.6143e-05, 3.27174e-05, 2.9758e-05, 2.71668e-05, 2.4874e-05, 2.28282e-05, 2.09904e-05, 1.93305e-05, 
			0.000200904, 0.000121965, 9.14184e-05, 7.42762e-05, 6.29204e-05, 5.46394e-05, 4.82278e-05, 4.30522e-05, 3.87476e-05, 3.5087e-05, 3.19208e-05, 2.91462e-05, 2.66894e-05, 2.44966e-05, 2.25258e-05, 2.07454e-05, 
			0.000205972, 0.000126467, 9.53572e-05, 7.77424e-05, 6.59926e-05, 5.73884e-05, 5.07022e-05, 4.52912e-05, 4.07818e-05, 3.6941e-05, 3.36156e-05, 3.06992e-05, 2.81152e-05, 2.58076e-05, 2.3733e-05, 2.18584e-05, 
			0.000209364, 0.000129818, 9.83684e-05, 8.043e-05, 6.83976e-05, 5.95552e-05, 5.2663e-05, 4.707e-05, 4.2401e-05, 3.84192e-05, 3.49684e-05, 3.19396e-05, 2.92548e-05, 2.6856e-05, 2.46994e-05, 2.27496e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_55MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.05286e-05, 1.29198e-05, 1.48372e-05, 1.64521e-05, 1.78595e-05, 1.9116e-05, 2.02575e-05, 2.13077e-05, 2.22828e-05, 2.31944e-05, 2.40514e-05, 2.48603e-05, 2.56263e-05, 2.63534e-05, 2.70448e-05, 2.77035e-05, 
			1.2229e-05, 1.43354e-05, 1.61352e-05, 1.77108e-05, 1.91209e-05, 2.04027e-05, 2.15821e-05, 2.26777e-05, 2.37028e-05, 2.46667e-05, 2.55772e-05, 2.644e-05, 2.72595e-05, 2.80397e-05, 2.87834e-05, 2.94932e-05, 
			1.3791e-05, 1.57254e-05, 1.74416e-05, 1.89825e-05, 2.03855e-05, 2.16783e-05, 2.28796e-05, 2.40038e-05, 2.50616e-05, 2.60613e-05, 2.7009e-05, 2.791e-05, 2.8768e-05, 2.95864e-05, 3.03679e-05, 3.11151e-05, 
			1.5266e-05, 1.70947e-05, 1.87504e-05, 2.02628e-05, 2.16592e-05, 2.29578e-05, 2.41737e-05, 2.53183e-05, 2.64004e-05, 2.7427e-05, 2.84031e-05, 2.93333e-05, 3.02212e-05, 3.10695e-05, 3.18808e-05, 3.26572e-05, 
			1.6704e-05, 1.84494e-05, 2.00592e-05, 2.15504e-05, 2.29399e-05, 2.42421e-05, 2.54685e-05, 2.66289e-05, 2.77299e-05, 2.87773e-05, 2.97759e-05, 3.07293e-05, 3.16407e-05, 3.25128e-05, 3.3348e-05, 3.4148e-05
		)
}

CapTable	"metal5_C_TOP_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.06006e-06, 1.01577e-05, 1.19436e-05, 1.3521e-05, 1.49493e-05, 1.62618e-05, 1.74765e-05, 1.86077e-05, 1.96636e-05, 2.06493e-05, 2.15675e-05, 2.24254e-05, 2.32241e-05, 2.39656e-05, 2.4655e-05, 2.52934e-05, 
			9.76288e-06, 1.17371e-05, 1.35118e-05, 1.51323e-05, 1.66294e-05, 1.80228e-05, 1.93254e-05, 2.05451e-05, 2.16867e-05, 2.27566e-05, 2.37565e-05, 2.46906e-05, 2.55609e-05, 2.63721e-05, 2.71246e-05, 2.78231e-05, 
			1.14518e-05, 1.33716e-05, 1.51519e-05, 1.68069e-05, 1.83554e-05, 1.98091e-05, 2.11745e-05, 2.2456e-05, 2.36613e-05, 2.47915e-05, 2.58486e-05, 2.68375e-05, 2.77601e-05, 2.86185e-05, 2.94169e-05, 3.01587e-05, 
			1.31572e-05, 1.50643e-05, 1.68569e-05, 1.85454e-05, 2.01369e-05, 2.16365e-05, 2.30512e-05, 2.4383e-05, 2.56357e-05, 2.68111e-05, 2.79132e-05, 2.89434e-05, 2.99047e-05, 3.08006e-05, 3.16345e-05, 3.24077e-05, 
			1.49085e-05, 1.68094e-05, 1.86212e-05, 2.03392e-05, 2.19649e-05, 2.3504e-05, 2.4958e-05, 2.63282e-05, 2.76185e-05, 2.88308e-05, 2.99661e-05, 3.10286e-05, 3.20216e-05, 3.29467e-05, 3.3806e-05, 3.46036e-05
		)
}

CapTable	"metal5_C_LATERAL_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180693, 0.000105103, 7.68198e-05, 6.12398e-05, 5.10244e-05, 4.36262e-05, 3.79198e-05, 3.3328e-05, 2.95218e-05, 2.62986e-05, 2.35258e-05, 2.11124e-05, 1.89928e-05, 1.71183e-05, 1.54522e-05, 1.39643e-05, 
			0.000192233, 0.000114004, 8.40236e-05, 6.72768e-05, 5.61792e-05, 4.8091e-05, 4.1827e-05, 3.67736e-05, 3.25786e-05, 2.9023e-05, 2.59624e-05, 2.3298e-05, 2.09578e-05, 1.88885e-05, 1.70489e-05, 1.54073e-05, 
			0.00019903, 0.00011972, 8.88244e-05, 7.13614e-05, 5.97152e-05, 5.11762e-05, 4.45406e-05, 3.91746e-05, 3.47134e-05, 3.09284e-05, 2.76686e-05, 2.483e-05, 2.23358e-05, 2.0131e-05, 1.81699e-05, 1.64189e-05, 
			0.000203654, 0.000123767, 9.23024e-05, 7.43632e-05, 6.2323e-05, 5.34636e-05, 4.6559e-05, 4.09646e-05, 3.63072e-05, 3.23524e-05, 2.89452e-05, 2.5976e-05, 2.3368e-05, 2.10602e-05, 1.90082e-05, 1.71775e-05, 
			0.000206584, 0.000126655, 9.48508e-05, 7.65916e-05, 6.42748e-05, 5.51856e-05, 4.80844e-05, 4.23196e-05, 3.75154e-05, 3.34326e-05, 2.9914e-05, 2.68464e-05, 2.41502e-05, 2.1766e-05, 1.96454e-05, 1.77522e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.59685e-06, 8.20964e-06, 9.54739e-06, 1.07107e-05, 1.1753e-05, 1.27052e-05, 1.35863e-05, 1.44074e-05, 1.51781e-05, 1.59033e-05, 1.65869e-05, 1.72323e-05, 1.78412e-05, 1.84167e-05, 1.89593e-05, 1.94723e-05, 
			7.84863e-06, 9.32233e-06, 1.0622e-05, 1.17953e-05, 1.28715e-05, 1.38708e-05, 1.48058e-05, 1.56847e-05, 1.65135e-05, 1.72966e-05, 1.80381e-05, 1.87397e-05, 1.9404e-05, 2.00322e-05, 2.06256e-05, 2.11868e-05, 
			9.04506e-06, 1.04479e-05, 1.17283e-05, 1.29113e-05, 1.40118e-05, 1.50449e-05, 1.60185e-05, 1.69394e-05, 1.78115e-05, 1.86378e-05, 1.94222e-05, 2.01652e-05, 2.08704e-05, 2.15373e-05, 2.21693e-05, 2.27669e-05, 
			1.02238e-05, 1.15929e-05, 1.28666e-05, 1.40593e-05, 1.5182e-05, 1.62426e-05, 1.72473e-05, 1.82015e-05, 1.91078e-05, 1.99693e-05, 2.07875e-05, 2.15635e-05, 2.23005e-05, 2.29993e-05, 2.36618e-05, 2.42886e-05, 
			1.14143e-05, 1.27597e-05, 1.40322e-05, 1.52364e-05, 1.63782e-05, 1.74625e-05, 1.84937e-05, 1.94756e-05, 2.04096e-05, 2.12998e-05, 2.21452e-05, 2.2949e-05, 2.37125e-05, 2.44373e-05, 2.51236e-05, 2.57741e-05
		)
}

CapTable	"metal5_C_TOP_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.23334e-05, 1.59547e-05, 1.91392e-05, 2.1985e-05, 2.45386e-05, 2.68384e-05, 2.89041e-05, 3.07581e-05, 3.24147e-05, 3.38963e-05, 3.52151e-05, 3.63882e-05, 3.74307e-05, 3.83561e-05, 3.91787e-05, 3.99067e-05, 
			1.56645e-05, 1.9249e-05, 2.2518e-05, 2.54899e-05, 2.81879e-05, 3.06288e-05, 3.28334e-05, 3.48165e-05, 3.65943e-05, 3.81867e-05, 3.96071e-05, 4.08743e-05, 4.20045e-05, 4.30088e-05, 4.39007e-05, 4.46933e-05, 
			1.91188e-05, 2.27102e-05, 2.60386e-05, 2.90904e-05, 3.18761e-05, 3.44039e-05, 3.66931e-05, 3.87557e-05, 4.06091e-05, 4.22717e-05, 4.37591e-05, 4.50897e-05, 4.62749e-05, 4.73303e-05, 4.82701e-05, 4.91092e-05, 
			2.26821e-05, 2.63031e-05, 2.96708e-05, 3.27772e-05, 3.56198e-05, 3.8205e-05, 4.05504e-05, 4.26662e-05, 4.45727e-05, 4.62864e-05, 4.78208e-05, 4.91924e-05, 5.04177e-05, 5.15107e-05, 5.24883e-05, 5.3356e-05, 
			2.63502e-05, 2.99824e-05, 3.33788e-05, 3.65189e-05, 3.93971e-05, 4.20221e-05, 4.44053e-05, 4.65613e-05, 4.8507e-05, 5.02545e-05, 5.18218e-05, 5.32254e-05, 5.44841e-05, 5.56047e-05, 5.66025e-05, 5.74936e-05
		)
}

CapTable	"metal5_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178009, 0.00010152, 7.24734e-05, 5.6274e-05, 4.55846e-05, 3.78478e-05, 3.19268e-05, 2.72278e-05, 2.34042e-05, 2.02412e-05, 1.75867e-05, 1.53449e-05, 1.34278e-05, 1.17834e-05, 1.03703e-05, 9.1425e-06, 
			0.000188425, 0.000109312, 7.8602e-05, 6.12862e-05, 4.97716e-05, 4.14042e-05, 3.49852e-05, 2.98834e-05, 2.57244e-05, 2.22822e-05, 1.93877e-05, 1.69342e-05, 1.48443e-05, 1.30435e-05, 1.14894e-05, 1.0143e-05, 
			0.000194115, 0.000113989, 8.244e-05, 6.44872e-05, 5.25018e-05, 4.37566e-05, 3.70334e-05, 3.16756e-05, 2.731e-05, 2.36814e-05, 2.06316e-05, 1.80478e-05, 1.58342e-05, 1.39305e-05, 1.22861e-05, 1.08602e-05, 
			0.00019771, 0.000117103, 8.50816e-05, 6.67426e-05, 5.44464e-05, 4.5454e-05, 3.8528e-05, 3.29984e-05, 2.84806e-05, 2.4731e-05, 2.15704e-05, 1.88855e-05, 1.65879e-05, 1.46104e-05, 1.29003e-05, 1.14154e-05, 
			0.000199728, 0.000119188, 8.69274e-05, 6.83596e-05, 5.58624e-05, 4.67124e-05, 3.96434e-05, 3.39934e-05, 2.9376e-05, 2.55304e-05, 2.2291e-05, 1.95368e-05, 1.71779e-05, 1.51453e-05, 1.33871e-05, 1.18589e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.73174e-06, 7.2013e-06, 8.4462e-06, 9.5479e-06, 1.05464e-05, 1.14647e-05, 1.23187e-05, 1.31145e-05, 1.38575e-05, 1.45519e-05, 1.52023e-05, 1.58073e-05, 1.63712e-05, 1.68974e-05, 1.73848e-05, 1.78383e-05, 
			6.92792e-06, 8.3009e-06, 9.5356e-06, 1.06647e-05, 1.17111e-05, 1.26874e-05, 1.36016e-05, 1.44592e-05, 1.52645e-05, 1.60184e-05, 1.67257e-05, 1.73864e-05, 1.80039e-05, 1.8578e-05, 1.91133e-05, 1.96094e-05, 
			8.0988e-06, 9.4314e-06, 1.06677e-05, 1.18217e-05, 1.29038e-05, 1.39214e-05, 1.48797e-05, 1.57842e-05, 1.66328e-05, 1.74303e-05, 1.81797e-05, 1.88797e-05, 1.95345e-05, 2.01445e-05, 2.07132e-05, 2.12413e-05, 
			9.2738e-06, 1.05969e-05, 1.18427e-05, 1.30194e-05, 1.41315e-05, 1.51838e-05, 1.6177e-05, 1.71157e-05, 1.79998e-05, 1.88321e-05, 1.9612e-05, 2.03437e-05, 2.10268e-05, 2.1665e-05, 2.22586e-05, 2.28094e-05, 
			1.04785e-05, 1.1797e-05, 1.3055e-05, 1.42522e-05, 1.53913e-05, 1.64701e-05, 1.74919e-05, 1.84592e-05, 1.93707e-05, 2.02291e-05, 2.10348e-05, 2.17907e-05, 2.24966e-05, 2.31541e-05, 2.37683e-05, 2.43391e-05
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
			4.894e-06, 6.2865e-06, 7.5101e-06, 8.6103e-06, 9.6097e-06, 1.05148e-05, 1.13348e-05, 1.20741e-05, 1.27441e-05, 1.33411e-05, 1.38805e-05, 1.43572e-05, 1.47888e-05, 1.51732e-05, 1.55096e-05, 1.5815e-05, 
			6.1347e-06, 7.4896e-06, 8.736e-06, 9.8807e-06, 1.09327e-05, 1.18977e-05, 1.27734e-05, 1.35668e-05, 1.42891e-05, 1.49335e-05, 1.55194e-05, 1.60447e-05, 1.65081e-05, 1.69289e-05, 1.73041e-05, 1.76384e-05, 
			7.3892e-06, 8.74e-06, 1.00044e-05, 1.11814e-05, 1.22672e-05, 1.32701e-05, 1.41822e-05, 1.50168e-05, 1.57679e-05, 1.6452e-05, 1.70681e-05, 1.76155e-05, 1.81122e-05, 1.85566e-05, 1.89535e-05, 1.93052e-05, 
			8.6705e-06, 1.00265e-05, 1.13096e-05, 1.25082e-05, 1.36198e-05, 1.46498e-05, 1.55874e-05, 1.64492e-05, 1.7231e-05, 1.79323e-05, 1.85715e-05, 1.91459e-05, 1.96614e-05, 2.01231e-05, 2.05338e-05, 2.09031e-05, 
			9.9846e-06, 1.13426e-05, 1.26398e-05, 1.38555e-05, 1.49915e-05, 1.60355e-05, 1.69993e-05, 1.78799e-05, 1.86745e-05, 1.94003e-05, 2.00549e-05, 2.06445e-05, 2.11716e-05, 2.16468e-05, 2.20725e-05, 2.24528e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_65MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.9536e-06, 1.21616e-05, 1.39161e-05, 1.5384e-05, 1.66568e-05, 1.77893e-05, 1.88154e-05, 1.97577e-05, 2.06322e-05, 2.14498e-05, 2.22189e-05, 2.29458e-05, 2.36353e-05, 2.42914e-05, 2.49173e-05, 2.55154e-05, 
			1.14752e-05, 1.34008e-05, 1.50346e-05, 1.64577e-05, 1.77254e-05, 1.8874e-05, 1.99289e-05, 2.09076e-05, 2.18225e-05, 2.26832e-05, 2.34972e-05, 2.42695e-05, 2.50048e-05, 2.57065e-05, 2.63772e-05, 2.70197e-05, 
			1.2857e-05, 1.46134e-05, 1.61598e-05, 1.75436e-05, 1.87985e-05, 1.99515e-05, 2.10211e-05, 2.20212e-05, 2.29622e-05, 2.3852e-05, 2.46967e-05, 2.5501e-05, 2.62688e-05, 2.70034e-05, 2.77072e-05, 2.83823e-05, 
			1.4154e-05, 1.58014e-05, 1.72848e-05, 1.86362e-05, 1.98785e-05, 2.10317e-05, 2.21103e-05, 2.31253e-05, 2.40852e-05, 2.49966e-05, 2.58646e-05, 2.66936e-05, 2.74869e-05, 2.82471e-05, 2.89767e-05, 2.96779e-05, 
			1.5409e-05, 1.69708e-05, 1.84064e-05, 1.9731e-05, 2.0963e-05, 2.21152e-05, 2.31998e-05, 2.4226e-05, 2.52003e-05, 2.61285e-05, 2.70153e-05, 2.78639e-05, 2.86776e-05, 2.94586e-05, 3.02093e-05, 3.09313e-05
		)
}

CapTable	"metal5_C_LATERAL_65MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183786, 0.000109125, 8.16816e-05, 6.6874e-05, 5.7374e-05, 5.06368e-05, 4.5538e-05, 4.14996e-05, 3.81922e-05, 3.54136e-05, 3.3032e-05, 3.09578e-05, 2.91276e-05, 2.7495e-05, 2.60256e-05, 2.4693e-05, 
			0.000196358, 0.000119075, 8.99784e-05, 7.40574e-05, 6.37296e-05, 5.63538e-05, 5.07434e-05, 4.62834e-05, 4.26212e-05, 3.95384e-05, 3.6892e-05, 3.45848e-05, 3.25472e-05, 3.07288e-05, 2.90918e-05, 2.76068e-05, 
			0.000204224, 0.000125884, 9.59072e-05, 7.93074e-05, 6.84656e-05, 6.06692e-05, 5.47118e-05, 4.99594e-05, 4.6046e-05, 4.27444e-05, 3.99056e-05, 3.74272e-05, 3.52362e-05, 3.32792e-05, 3.1516e-05, 2.9916e-05, 
			0.000209958, 0.000131069, 0.000100549, 8.34978e-05, 7.2282e-05, 6.41804e-05, 5.79646e-05, 5.299e-05, 4.88832e-05, 4.54114e-05, 4.24214e-05, 3.98072e-05, 3.74936e-05, 3.54256e-05, 3.3561e-05, 3.18678e-05, 
			0.000214046, 0.000135129, 0.000104287, 8.6927e-05, 7.54424e-05, 6.71144e-05, 6.07018e-05, 5.5553e-05, 5.12928e-05, 4.76846e-05, 4.4572e-05, 4.18476e-05, 3.9434e-05, 3.72746e-05, 3.53264e-05, 3.35564e-05
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

CapTable	"metal5_C_BOTTOM_GP_64MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.0034e-06, 7.45073e-06, 8.64518e-06, 9.67831e-06, 1.06001e-05, 1.14405e-05, 1.22169e-05, 1.29411e-05, 1.36205e-05, 1.42605e-05, 1.48647e-05, 1.54362e-05, 1.59777e-05, 1.64905e-05, 1.69763e-05, 1.74362e-05, 
			7.10926e-06, 8.42201e-06, 9.57615e-06, 1.06115e-05, 1.15597e-05, 1.2438e-05, 1.3259e-05, 1.4031e-05, 1.47598e-05, 1.54495e-05, 1.61036e-05, 1.67239e-05, 1.73137e-05, 1.78728e-05, 1.84038e-05, 1.89075e-05, 
			8.15962e-06, 9.40038e-06, 1.053e-05, 1.15689e-05, 1.2535e-05, 1.34405e-05, 1.42939e-05, 1.51007e-05, 1.58656e-05, 1.65928e-05, 1.72841e-05, 1.79411e-05, 1.8566e-05, 1.91603e-05, 1.97255e-05, 2.02621e-05, 
			9.18327e-06, 1.03895e-05, 1.1508e-05, 1.2553e-05, 1.35344e-05, 1.44614e-05, 1.53405e-05, 1.61756e-05, 1.69696e-05, 1.77269e-05, 1.84476e-05, 1.91343e-05, 1.97884e-05, 2.04109e-05, 2.10027e-05, 2.15658e-05, 
			1.02129e-05, 1.13928e-05, 1.25067e-05, 1.3559e-05, 1.45551e-05, 1.55006e-05, 1.64013e-05, 1.72603e-05, 1.80792e-05, 1.88602e-05, 1.96059e-05, 2.03171e-05, 2.09948e-05, 2.16403e-05, 2.2255e-05, 2.28394e-05
		)
}

CapTable	"metal5_C_TOP_GP_64MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.1454e-06, 7.64387e-06, 8.88382e-06, 9.95709e-06, 1.09138e-05, 1.17842e-05, 1.25873e-05, 1.3335e-05, 1.4036e-05, 1.46959e-05, 1.53191e-05, 1.5909e-05, 1.64667e-05, 1.69953e-05, 1.74963e-05, 1.7971e-05, 
			7.28014e-06, 8.64339e-06, 9.84165e-06, 1.09173e-05, 1.18996e-05, 1.28081e-05, 1.36564e-05, 1.44531e-05, 1.5205e-05, 1.59162e-05, 1.65901e-05, 1.72301e-05, 1.78366e-05, 1.84131e-05, 1.89602e-05, 1.94793e-05, 
			8.36438e-06, 9.65402e-06, 1.08274e-05, 1.19051e-05, 1.29047e-05, 1.38401e-05, 1.47204e-05, 1.55526e-05, 1.6342e-05, 1.70908e-05, 1.78022e-05, 1.84793e-05, 1.91232e-05, 1.9735e-05, 2.03166e-05, 2.08692e-05, 
			9.42673e-06, 1.06775e-05, 1.1837e-05, 1.29184e-05, 1.39337e-05, 1.48914e-05, 1.57979e-05, 1.66586e-05, 1.74778e-05, 1.82564e-05, 1.89986e-05, 1.97056e-05, 2.03785e-05, 2.10192e-05, 2.16288e-05, 2.22083e-05, 
			1.04941e-05, 1.17164e-05, 1.28695e-05, 1.3957e-05, 1.49859e-05, 1.59631e-05, 1.68915e-05, 1.77757e-05, 1.86191e-05, 1.94237e-05, 2.01907e-05, 2.09223e-05, 2.16198e-05, 2.2284e-05, 2.29162e-05, 2.35174e-05
		)
}

CapTable	"metal5_C_LATERAL_64MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182016, 0.000106852, 7.89604e-05, 6.37404e-05, 5.3855e-05, 4.67552e-05, 4.1315e-05, 3.69562e-05, 3.33494e-05, 3.02924e-05, 2.76536e-05, 2.53428e-05, 2.3297e-05, 2.14692e-05, 1.98243e-05, 1.83356e-05, 
			0.000194052, 0.000116269, 8.67052e-05, 7.03444e-05, 5.95994e-05, 5.18288e-05, 4.58456e-05, 4.10356e-05, 3.7046e-05, 3.36592e-05, 3.07322e-05, 2.81672e-05, 2.58948e-05, 2.3864e-05, 2.2036e-05, 2.03812e-05, 
			0.000201374, 0.000122527, 9.20646e-05, 7.50014e-05, 6.37184e-05, 5.55034e-05, 4.9151e-05, 4.4028e-05, 3.97686e-05, 3.61462e-05, 3.30118e-05, 3.02624e-05, 2.78248e-05, 2.56452e-05, 2.36822e-05, 2.19048e-05, 
			0.00020655, 0.000127137, 9.6114e-05, 7.85796e-05, 6.69036e-05, 5.83658e-05, 5.1739e-05, 4.63794e-05, 4.19142e-05, 3.81106e-05, 3.48152e-05, 3.19218e-05, 2.93548e-05, 2.7058e-05, 2.49892e-05, 2.31148e-05, 
			0.000210052, 0.000130599, 9.92368e-05, 8.1379e-05, 6.94202e-05, 6.06432e-05, 5.38088e-05, 4.82656e-05, 4.36388e-05, 3.96922e-05, 3.6269e-05, 3.32608e-05, 3.05902e-05, 2.81998e-05, 2.60454e-05, 2.40936e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.17249e-06, 6.484e-06, 7.59e-06, 8.5641e-06, 9.4462e-06, 1.02563e-05, 1.1008e-05, 1.171e-05, 1.23652e-05, 1.29796e-05, 1.35535e-05, 1.40906e-05, 1.45935e-05, 1.50618e-05, 1.54994e-05, 1.59062e-05, 
			6.2268e-06, 7.4455e-06, 8.5357e-06, 9.5308e-06, 1.04508e-05, 1.13093e-05, 1.21135e-05, 1.28669e-05, 1.35748e-05, 1.424e-05, 1.48653e-05, 1.54502e-05, 1.59991e-05, 1.65112e-05, 1.69906e-05, 1.74374e-05, 
			7.2516e-06, 8.4283e-06, 9.5157e-06, 1.05289e-05, 1.14787e-05, 1.23709e-05, 1.32124e-05, 1.40041e-05, 1.47508e-05, 1.54543e-05, 1.61147e-05, 1.67357e-05, 1.73171e-05, 1.7862e-05, 1.83693e-05, 1.88453e-05, 
			8.2759e-06, 9.4387e-06, 1.05316e-05, 1.15617e-05, 1.25347e-05, 1.34542e-05, 1.43244e-05, 1.51478e-05, 1.59238e-05, 1.66564e-05, 1.73455e-05, 1.79937e-05, 1.86015e-05, 1.91698e-05, 1.97027e-05, 2.02e-05, 
			9.3213e-06, 1.04762e-05, 1.15761e-05, 1.26217e-05, 1.36154e-05, 1.45585e-05, 1.54534e-05, 1.62998e-05, 1.71007e-05, 1.78561e-05, 1.85681e-05, 1.92361e-05, 1.98655e-05, 2.04545e-05, 2.10027e-05, 2.15177e-05
		)
}

CapTable	"metal5_C_TOP_GP_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.33371e-06, 1.04798e-05, 1.22976e-05, 1.38996e-05, 1.53444e-05, 1.66699e-05, 1.78967e-05, 1.90375e-05, 2.01037e-05, 2.10993e-05, 2.20312e-05, 2.29013e-05, 2.37133e-05, 2.44716e-05, 2.51774e-05, 2.58344e-05, 
			1.00598e-05, 1.20675e-05, 1.38685e-05, 1.55064e-05, 1.70169e-05, 1.842e-05, 1.97301e-05, 2.09592e-05, 2.2111e-05, 2.31905e-05, 2.42019e-05, 2.51497e-05, 2.60352e-05, 2.68626e-05, 2.76337e-05, 2.83525e-05, 
			1.17622e-05, 1.37081e-05, 1.55053e-05, 1.71745e-05, 1.87309e-05, 2.01917e-05, 2.15636e-05, 2.28543e-05, 2.40671e-05, 2.52065e-05, 2.62766e-05, 2.72789e-05, 2.82174e-05, 2.90946e-05, 2.99138e-05, 3.0676e-05, 
			1.34741e-05, 1.53993e-05, 1.72042e-05, 1.88999e-05, 2.0498e-05, 2.20044e-05, 2.34238e-05, 2.47619e-05, 2.60231e-05, 2.72089e-05, 2.83226e-05, 2.93675e-05, 3.03465e-05, 3.12619e-05, 3.21164e-05, 3.2913e-05, 
			1.52257e-05, 1.7138e-05, 1.89573e-05, 2.06805e-05, 2.23114e-05, 2.38536e-05, 2.53112e-05, 2.66886e-05, 2.79868e-05, 2.92091e-05, 3.03586e-05, 3.14374e-05, 3.24471e-05, 3.33921e-05, 3.42762e-05, 3.50986e-05
		)
}

CapTable	"metal5_C_LATERAL_63MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180923, 0.000105408, 7.71958e-05, 6.16814e-05, 5.15272e-05, 4.41848e-05, 3.85288e-05, 3.39816e-05, 3.02138e-05, 2.70228e-05, 2.42762e-05, 2.18834e-05, 1.97784e-05, 1.79137e-05, 1.62519e-05, 1.47649e-05, 
			0.000192552, 0.000114404, 8.44998e-05, 6.78248e-05, 5.67938e-05, 4.87662e-05, 4.25568e-05, 3.75508e-05, 3.33962e-05, 2.98744e-05, 2.68406e-05, 2.41966e-05, 2.18704e-05, 1.98099e-05, 1.79731e-05, 1.63288e-05, 
			0.000199446, 0.000120221, 8.9406e-05, 7.20184e-05, 6.04424e-05, 5.19666e-05, 4.53862e-05, 4.0069e-05, 3.56486e-05, 3.18966e-05, 2.8663e-05, 2.58428e-05, 2.33614e-05, 2.11616e-05, 1.9202e-05, 1.74467e-05, 
			0.000204172, 0.000124374, 9.29932e-05, 7.51324e-05, 6.31634e-05, 5.43676e-05, 4.7519e-05, 4.19722e-05, 3.73546e-05, 3.34314e-05, 3.00482e-05, 2.70956e-05, 2.44964e-05, 2.21928e-05, 2.01384e-05, 1.8299e-05, 
			0.00020721, 0.000127372, 9.56536e-05, 7.74728e-05, 6.52272e-05, 5.62014e-05, 4.91546e-05, 4.3436e-05, 3.8669e-05, 3.4616e-05, 3.11174e-05, 2.80644e-05, 2.5375e-05, 2.29902e-05, 2.08648e-05, 1.89606e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.3753e-06, 5.6107e-06, 6.6935e-06, 7.6646e-06, 8.5451e-06, 9.3427e-06, 1.00644e-05, 1.07151e-05, 1.13064e-05, 1.18329e-05, 1.23109e-05, 1.2732e-05, 1.3117e-05, 1.34612e-05, 1.37606e-05, 1.40368e-05, 
			5.4685e-06, 6.6657e-06, 7.7635e-06, 8.7729e-06, 9.6972e-06, 1.05426e-05, 1.13114e-05, 1.20082e-05, 1.26446e-05, 1.32194e-05, 1.37303e-05, 1.41969e-05, 1.46158e-05, 1.49841e-05, 1.53221e-05, 1.56249e-05, 
			6.5675e-06, 7.7557e-06, 8.867e-06, 9.8988e-06, 1.0851e-05, 1.17303e-05, 1.25299e-05, 1.32634e-05, 1.3922e-05, 1.45262e-05, 1.50718e-05, 1.5555e-05, 1.5999e-05, 1.63977e-05, 1.67557e-05, 1.70772e-05, 
			7.6883e-06, 8.8768e-06, 9.9992e-06, 1.10481e-05, 1.20207e-05, 1.29224e-05, 1.37499e-05, 1.44987e-05, 1.51875e-05, 1.58121e-05, 1.63696e-05, 1.6881e-05, 1.73421e-05, 1.77571e-05, 1.81303e-05, 1.84627e-05, 
			8.8282e-06, 1.00169e-05, 1.1151e-05, 1.22124e-05, 1.32055e-05, 1.41162e-05, 1.49619e-05, 1.57346e-05, 1.6431e-05, 1.70723e-05, 1.76534e-05, 1.8179e-05, 1.86532e-05, 1.90775e-05, 1.94629e-05, 1.98094e-05
		)
}

CapTable	"metal5_C_TOP_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.26309e-05, 1.63131e-05, 1.9542e-05, 2.24214e-05, 2.50024e-05, 2.73236e-05, 2.94087e-05, 3.12808e-05, 3.29557e-05, 3.44552e-05, 3.57932e-05, 3.69862e-05, 3.80503e-05, 3.89985e-05, 3.98432e-05, 4.05959e-05, 
			1.59997e-05, 1.96319e-05, 2.29369e-05, 2.59347e-05, 2.86556e-05, 3.11157e-05, 3.33374e-05, 3.53369e-05, 3.71319e-05, 3.87418e-05, 4.0183e-05, 4.14723e-05, 4.26258e-05, 4.36546e-05, 4.45733e-05, 4.53935e-05, 
			1.94815e-05, 2.31115e-05, 2.6467e-05, 2.95406e-05, 3.23435e-05, 3.48874e-05, 3.71909e-05, 3.92688e-05, 4.11392e-05, 4.2821e-05, 4.433e-05, 4.5683e-05, 4.68944e-05, 4.79778e-05, 4.89469e-05, 4.98133e-05, 
			2.30613e-05, 2.67134e-05, 3.01026e-05, 3.32253e-05, 3.60819e-05, 3.86796e-05, 4.10363e-05, 4.31693e-05, 4.50931e-05, 4.68254e-05, 4.83835e-05, 4.97811e-05, 5.10345e-05, 5.21577e-05, 5.31639e-05, 5.4068e-05, 
			2.67418e-05, 3.03961e-05, 3.3808e-05, 3.69604e-05, 3.98491e-05, 4.24852e-05, 4.48813e-05, 4.70523e-05, 4.90151e-05, 5.07846e-05, 5.23767e-05, 5.38081e-05, 5.50935e-05, 5.62501e-05, 5.72825e-05, 5.82096e-05
		)
}

CapTable	"metal5_C_LATERAL_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178186, 0.000101763, 7.27806e-05, 5.66418e-05, 4.6008e-05, 3.83212e-05, 3.24436e-05, 2.7781e-05, 2.39856e-05, 2.0845e-05, 1.82051e-05, 1.59736e-05, 1.40589e-05, 1.24117e-05, 1.09952e-05, 9.75596e-06, 
			0.000188685, 0.000109646, 7.90076e-05, 6.17588e-05, 5.03052e-05, 4.1994e-05, 3.56218e-05, 3.05588e-05, 2.64296e-05, 2.30034e-05, 2.01296e-05, 1.76825e-05, 1.55869e-05, 1.37893e-05, 1.2224e-05, 1.08625e-05, 
			0.000194468, 0.000114422, 8.2951e-05, 6.50706e-05, 5.31508e-05, 4.4462e-05, 3.7787e-05, 3.24674e-05, 2.81324e-05, 2.4523e-05, 2.14842e-05, 1.89074e-05, 1.66895e-05, 1.47759e-05, 1.31165e-05, 1.1671e-05, 
			0.000198164, 0.000117642, 8.57032e-05, 6.74396e-05, 5.52104e-05, 4.6275e-05, 3.9391e-05, 3.39042e-05, 2.94122e-05, 2.56742e-05, 2.25294e-05, 1.98434e-05, 1.75378e-05, 1.55463e-05, 1.38171e-05, 1.23098e-05, 
			0.000200292, 0.00011984, 8.7663e-05, 6.91712e-05, 5.67404e-05, 4.76476e-05, 4.06228e-05, 3.50062e-05, 3.0415e-05, 2.65814e-05, 2.33448e-05, 2.05854e-05, 1.82143e-05, 1.61648e-05, 1.4383e-05, 1.28269e-05
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

CapTable	"metal4_C_LATERAL_15MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_16MAX" {
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

CapTable	"metal4_C_LATERAL_16MAX" {
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

CapTable	"metal4_C_LATERAL_14MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_15MAX" {
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

CapTable	"metal4_C_TOP_GP_15MAX" {
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

CapTable	"metal4_C_LATERAL_13MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_14MAX" {
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

CapTable	"metal4_C_TOP_GP_14MAX" {
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
			2.82078e-05, 3.79693e-05, 4.58072e-05, 5.19906e-05, 5.68435e-05, 6.06537e-05, 6.3651e-05, 6.60141e-05, 6.78826e-05, 6.93654e-05, 7.05452e-05, 7.14889e-05, 7.22425e-05, 7.28487e-05, 7.33358e-05, 7.37285e-05, 
			4.06534e-05, 5.05113e-05, 5.84824e-05, 6.48247e-05, 6.98546e-05, 7.38371e-05, 7.69947e-05, 7.95037e-05, 8.14999e-05, 8.3092e-05, 8.4367e-05, 8.53872e-05, 8.62077e-05, 8.68682e-05, 8.73982e-05, 8.78302e-05, 
			5.33397e-05, 6.31889e-05, 7.12007e-05, 7.76258e-05, 8.2747e-05, 8.68298e-05, 9.00842e-05, 9.26798e-05, 9.4757e-05, 9.64178e-05, 9.77514e-05, 9.88231e-05, 9.96854e-05, 0.000100383, 0.000100944, 0.000101397, 
			6.61228e-05, 7.59776e-05, 8.40162e-05, 9.04917e-05, 9.56812e-05, 9.98302e-05, 0.000103148, 0.000105807, 0.000107935, 0.000109645, 0.000111018, 0.000112122, 0.000113016, 0.000113736, 0.000114371, 0.000114846, 
			7.89787e-05, 8.87968e-05, 9.68471e-05, 0.000103354, 0.000108586, 0.000112779, 0.000116142, 0.000118841, 0.000121007, 0.000122749, 0.000124155, 0.000125284, 0.000126196, 0.000126995, 0.000127595, 0.000128082
		)
}

CapTable	"metal4_C_TOP_GP_13MAX" {
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

CapTable	"metal4_C_LATERAL_26MAX" {
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

CapTable	"metal4_C_TOP_GP_25MAX" {
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

CapTable	"metal4_C_LATERAL_25MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_26MAX" {
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

CapTable	"metal4_C_TOP_GP_24MAX" {
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

CapTable	"metal4_C_LATERAL_24MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_25MAX" {
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

CapTable	"metal4_C_TOP_GP_23MAX" {
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

CapTable	"metal4_C_LATERAL_23MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_24MAX" {
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
			1.1452e-05, 1.4899e-05, 1.79593e-05, 2.0717e-05, 2.32089e-05, 2.54542e-05, 2.7465e-05, 2.92573e-05, 3.08452e-05, 3.22438e-05, 3.34715e-05, 3.45431e-05, 3.54759e-05, 3.62863e-05, 3.69877e-05, 3.75927e-05, 
			1.47664e-05, 1.82343e-05, 2.14239e-05, 2.43456e-05, 2.7005e-05, 2.94099e-05, 3.15701e-05, 3.34973e-05, 3.52056e-05, 3.67118e-05, 3.80349e-05, 3.91908e-05, 4.0198e-05, 4.1072e-05, 4.18298e-05, 4.24843e-05, 
			1.82401e-05, 2.177e-05, 2.50596e-05, 2.80902e-05, 3.08557e-05, 3.33615e-05, 3.56124e-05, 3.76221e-05, 3.9404e-05, 4.09765e-05, 4.23578e-05, 4.35652e-05, 4.46169e-05, 4.55309e-05, 4.63222e-05, 4.70066e-05, 
			2.18706e-05, 2.54704e-05, 2.88327e-05, 3.19396e-05, 3.47789e-05, 3.73491e-05, 3.96608e-05, 4.17244e-05, 4.35551e-05, 4.51708e-05, 4.6589e-05, 4.78302e-05, 4.89116e-05, 4.98508e-05, 5.0665e-05, 5.1368e-05, 
			2.56389e-05, 2.92817e-05, 3.2698e-05, 3.58547e-05, 3.87413e-05, 4.13551e-05, 4.37062e-05, 4.5806e-05, 4.76685e-05, 4.93109e-05, 5.07553e-05, 5.20177e-05, 5.31184e-05, 5.40746e-05, 5.49005e-05, 5.56301e-05
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

CapTable	"metal4_C_BOTTOM_GP_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.24936e-05, 1.55704e-05, 1.81226e-05, 2.03305e-05, 2.22921e-05, 2.40647e-05, 2.56844e-05, 2.71746e-05, 2.85519e-05, 2.98289e-05, 3.10158e-05, 3.21204e-05, 3.31498e-05, 3.41101e-05, 3.50067e-05, 3.58442e-05, 
			1.4904e-05, 1.77233e-05, 2.02004e-05, 2.24169e-05, 2.44282e-05, 2.62707e-05, 2.79698e-05, 2.95432e-05, 3.1005e-05, 3.23657e-05, 3.36345e-05, 3.48188e-05, 3.59253e-05, 3.69598e-05, 3.79278e-05, 3.88339e-05, 
			1.7219e-05, 1.98984e-05, 2.2326e-05, 2.45419e-05, 2.65786e-05, 2.84616e-05, 3.02091e-05, 3.18352e-05, 3.33515e-05, 3.47675e-05, 3.60911e-05, 3.73296e-05, 3.84891e-05, 3.95752e-05, 4.05931e-05, 4.15476e-05, 
			1.9493e-05, 2.2094e-05, 2.4488e-05, 2.6701e-05, 2.8753e-05, 3.06617e-05, 3.24413e-05, 3.41037e-05, 3.56585e-05, 3.71141e-05, 3.84778e-05, 3.9756e-05, 4.09551e-05, 4.20799e-05, 4.31357e-05, 4.41267e-05, 
			2.1768e-05, 2.43042e-05, 2.66732e-05, 2.8882e-05, 3.09422e-05, 3.2867e-05, 3.46685e-05, 3.63566e-05, 3.79391e-05, 3.94239e-05, 4.08175e-05, 4.21258e-05, 4.33549e-05, 4.45094e-05, 4.55945e-05, 4.66145e-05
		)
}

CapTable	"metal4_C_LATERAL_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181757, 0.000106523, 7.85824e-05, 6.33372e-05, 5.34498e-05, 4.63714e-05, 4.09742e-05, 3.66782e-05, 3.31516e-05, 3.01894e-05, 2.7657e-05, 2.54622e-05, 2.35388e-05, 2.1838e-05, 2.03226e-05, 1.89642e-05, 
			0.00019369, 0.000115848, 8.62526e-05, 6.98882e-05, 5.91674e-05, 5.14466e-05, 4.55368e-05, 4.08206e-05, 3.6942e-05, 3.368e-05, 3.08886e-05, 2.84674e-05, 2.6344e-05, 2.44652e-05, 2.27902e-05, 2.12876e-05, 
			0.000200926, 0.00012204, 9.1572e-05, 7.45348e-05, 6.33074e-05, 5.51748e-05, 4.8928e-05, 4.393e-05, 3.98118e-05, 3.63428e-05, 3.33708e-05, 3.07898e-05, 2.85242e-05, 2.65178e-05, 2.47276e-05, 2.31204e-05, 
			0.00020604, 0.000126619, 9.5623e-05, 7.8149e-05, 6.65634e-05, 5.81418e-05, 5.16532e-05, 4.64494e-05, 4.21536e-05, 3.85296e-05, 3.54206e-05, 3.2718e-05, 3.0343e-05, 2.82378e-05, 2.6358e-05, 2.46692e-05, 
			0.00020952, 0.000130094, 9.87958e-05, 8.1035e-05, 6.92018e-05, 6.05748e-05, 5.39096e-05, 4.85508e-05, 4.41198e-05, 4.03764e-05, 3.7161e-05, 3.4363e-05, 3.19018e-05, 2.97184e-05, 2.7767e-05, 2.60124e-05
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

CapTable	"metal4_C_BOTTOM_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.49069e-06, 1.19454e-05, 1.40258e-05, 1.58591e-05, 1.75146e-05, 1.90306e-05, 2.04295e-05, 2.17261e-05, 2.293e-05, 2.40488e-05, 2.50886e-05, 2.60545e-05, 2.69515e-05, 2.77835e-05, 2.85549e-05, 2.92696e-05, 
			1.15222e-05, 1.38288e-05, 1.58957e-05, 1.77786e-05, 1.95114e-05, 2.11179e-05, 2.26122e-05, 2.40049e-05, 2.53032e-05, 2.65134e-05, 2.76409e-05, 2.86906e-05, 2.96671e-05, 3.05745e-05, 3.14169e-05, 3.21986e-05, 
			1.35248e-05, 1.57688e-05, 1.78407e-05, 1.97608e-05, 2.15488e-05, 2.32184e-05, 2.47793e-05, 2.62392e-05, 2.76038e-05, 2.88786e-05, 3.00683e-05, 3.11774e-05, 3.22104e-05, 3.31714e-05, 3.40648e-05, 3.48949e-05, 
			1.5545e-05, 1.77712e-05, 1.9855e-05, 2.18073e-05, 2.36389e-05, 2.53564e-05, 2.69677e-05, 2.84782e-05, 2.98933e-05, 3.12169e-05, 3.2454e-05, 3.36085e-05, 3.46853e-05, 3.56876e-05, 3.66195e-05, 3.74864e-05, 
			1.76094e-05, 1.98264e-05, 2.19256e-05, 2.39048e-05, 2.57702e-05, 2.75256e-05, 2.9176e-05, 3.07263e-05, 3.21803e-05, 3.35423e-05, 3.48162e-05, 3.60066e-05, 3.71173e-05, 3.81517e-05, 3.9115e-05, 4.00097e-05
		)
}

CapTable	"metal4_C_TOP_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.34471e-06, 5.47104e-06, 6.42911e-06, 7.27682e-06, 8.04263e-06, 8.74416e-06, 9.39209e-06, 9.99333e-06, 1.05523e-05, 1.10726e-05, 1.15568e-05, 1.20073e-05, 1.2426e-05, 1.28151e-05, 1.31762e-05, 1.35111e-05, 
			5.24499e-06, 6.30059e-06, 7.24909e-06, 8.11377e-06, 8.91223e-06, 9.65293e-06, 1.03431e-05, 1.09874e-05, 1.15893e-05, 1.21515e-05, 1.26764e-05, 1.31657e-05, 1.36215e-05, 1.40459e-05, 1.44405e-05, 1.4807e-05, 
			6.13457e-06, 7.15536e-06, 8.1007e-06, 8.97958e-06, 9.79997e-06, 1.05679e-05, 1.12876e-05, 1.19621e-05, 1.25942e-05, 1.3186e-05, 1.37397e-05, 1.42568e-05, 1.47392e-05, 1.51891e-05, 1.56076e-05, 1.59964e-05, 
			7.02403e-06, 8.0324e-06, 8.97961e-06, 9.87047e-06, 1.07088e-05, 1.14977e-05, 1.224e-05, 1.29379e-05, 1.35932e-05, 1.42078e-05, 1.47836e-05, 1.5322e-05, 1.58249e-05, 1.6294e-05, 1.67318e-05, 1.71386e-05, 
			7.93164e-06, 8.93021e-06, 9.88156e-06, 1.07834e-05, 1.16362e-05, 1.24419e-05, 1.3202e-05, 1.39184e-05, 1.4592e-05, 1.52247e-05, 1.5818e-05, 1.63731e-05, 1.68922e-05, 1.73773e-05, 1.78294e-05, 1.82515e-05
		)
}

CapTable	"metal4_C_LATERAL_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180667, 0.000105074, 7.67956e-05, 6.1229e-05, 5.10356e-05, 4.36676e-05, 3.79994e-05, 3.34516e-05, 2.96938e-05, 2.65214e-05, 2.38002e-05, 2.14374e-05, 1.93664e-05, 1.75376e-05, 1.59131e-05, 1.44631e-05, 
			0.000192191, 0.000113965, 8.39982e-05, 6.72766e-05, 5.62148e-05, 4.81718e-05, 4.19608e-05, 3.69656e-05, 3.28316e-05, 2.9338e-05, 2.6339e-05, 2.37336e-05, 2.14488e-05, 1.94303e-05, 1.76366e-05, 1.60347e-05, 
			0.000198981, 0.000119684, 8.88156e-05, 7.13926e-05, 5.9798e-05, 5.13196e-05, 4.47506e-05, 3.94554e-05, 3.50658e-05, 3.13518e-05, 2.81604e-05, 2.53858e-05, 2.29512e-05, 2.0799e-05, 1.88854e-05, 1.71757e-05, 
			0.00020361, 0.000123752, 9.23314e-05, 7.44492e-05, 6.24762e-05, 5.36916e-05, 4.68658e-05, 4.13524e-05, 3.67748e-05, 3.28974e-05, 2.95624e-05, 2.66608e-05, 2.41126e-05, 2.18592e-05, 1.98543e-05, 1.8062e-05, 
			0.000206568, 0.000126684, 9.49418e-05, 7.67558e-05, 6.45206e-05, 5.55184e-05, 4.85062e-05, 4.28296e-05, 3.81106e-05, 3.41088e-05, 3.06642e-05, 2.76648e-05, 2.50292e-05, 2.2697e-05, 2.0621e-05, 1.87643e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.73939e-06, 1.10479e-05, 1.30249e-05, 1.47824e-05, 1.63787e-05, 1.78469e-05, 1.92048e-05, 2.04631e-05, 2.1632e-05, 2.27163e-05, 2.37196e-05, 2.46473e-05, 2.55036e-05, 2.62936e-05, 2.70195e-05, 2.76866e-05, 
			1.06918e-05, 1.28863e-05, 1.48718e-05, 1.6692e-05, 1.83758e-05, 1.99427e-05, 2.14017e-05, 2.2762e-05, 2.40284e-05, 2.52051e-05, 2.62977e-05, 2.73089e-05, 2.82442e-05, 2.91063e-05, 2.99007e-05, 3.06299e-05, 
			1.2639e-05, 1.47965e-05, 1.68031e-05, 1.86741e-05, 2.04222e-05, 2.20599e-05, 2.35925e-05, 2.50236e-05, 2.63586e-05, 2.76015e-05, 2.87567e-05, 2.98267e-05, 3.08167e-05, 3.17301e-05, 3.2571e-05, 3.33443e-05, 
			1.4622e-05, 1.67822e-05, 1.88154e-05, 2.07295e-05, 2.25309e-05, 2.42228e-05, 2.58098e-05, 2.72957e-05, 2.86833e-05, 2.99767e-05, 3.1178e-05, 3.22929e-05, 3.33231e-05, 3.42748e-05, 3.51518e-05, 3.5958e-05, 
			1.66677e-05, 1.88323e-05, 2.08941e-05, 2.28457e-05, 2.46889e-05, 2.64232e-05, 2.80534e-05, 2.95819e-05, 3.10098e-05, 3.23412e-05, 3.35788e-05, 3.47263e-05, 3.57881e-05, 3.67692e-05, 3.76736e-05, 3.85053e-05
		)
}

CapTable	"metal4_C_TOP_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.74521e-06, 7.27369e-06, 8.58833e-06, 9.75874e-06, 1.08229e-05, 1.18017e-05, 1.2708e-05, 1.35501e-05, 1.43313e-05, 1.50562e-05, 1.57292e-05, 1.63518e-05, 1.69272e-05, 1.7457e-05, 1.79454e-05, 1.83939e-05, 
			7.00102e-06, 8.45152e-06, 9.76679e-06, 1.09737e-05, 1.20938e-05, 1.31357e-05, 1.41085e-05, 1.50156e-05, 1.58617e-05, 1.66495e-05, 1.73809e-05, 1.80595e-05, 1.86864e-05, 1.92661e-05, 1.97995e-05, 2.02915e-05, 
			8.257e-06, 9.67632e-06, 1.10003e-05, 1.22383e-05, 1.33987e-05, 1.44857e-05, 1.55045e-05, 1.64592e-05, 1.73513e-05, 1.81829e-05, 1.89556e-05, 1.96734e-05, 2.03379e-05, 2.09519e-05, 2.15187e-05, 2.20403e-05, 
			9.53004e-06, 1.09458e-05, 1.22842e-05, 1.35485e-05, 1.47408e-05, 1.58639e-05, 1.692e-05, 1.79102e-05, 1.88368e-05, 1.97009e-05, 2.05064e-05, 2.1253e-05, 2.19463e-05, 2.25869e-05, 2.31774e-05, 2.37218e-05, 
			1.08413e-05, 1.22569e-05, 1.36105e-05, 1.48971e-05, 1.61171e-05, 1.72691e-05, 1.83537e-05, 1.93715e-05, 2.03252e-05, 2.12159e-05, 2.20452e-05, 2.28163e-05, 2.35309e-05, 2.41913e-05, 2.48e-05, 2.53605e-05
		)
}

CapTable	"metal4_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180143, 0.000104371, 7.59248e-05, 6.01988e-05, 4.98564e-05, 4.23508e-05, 3.65574e-05, 3.18984e-05, 2.80432e-05, 2.47878e-05, 2.1998e-05, 1.9581e-05, 1.74692e-05, 1.56124e-05, 1.39718e-05, 1.25165e-05, 
			0.000191457, 0.000113038, 8.28864e-05, 6.5989e-05, 5.47626e-05, 4.65682e-05, 4.02206e-05, 3.51046e-05, 3.08658e-05, 2.72842e-05, 2.42134e-05, 2.15522e-05, 1.9227e-05, 1.71822e-05, 1.53755e-05, 1.37726e-05, 
			0.000198017, 0.000118514, 8.74476e-05, 6.98366e-05, 5.80672e-05, 4.94292e-05, 4.27172e-05, 3.72968e-05, 3.28002e-05, 2.89972e-05, 2.57352e-05, 2.2907e-05, 2.0435e-05, 1.8261e-05, 1.63396e-05, 1.46351e-05, 
			0.000202398, 0.000122323, 9.06934e-05, 7.2615e-05, 6.0461e-05, 5.15124e-05, 4.45412e-05, 3.89018e-05, 3.42182e-05, 3.02542e-05, 2.68518e-05, 2.39012e-05, 2.13214e-05, 1.90518e-05, 1.70459e-05, 1.52659e-05, 
			0.00020509, 0.000124982, 9.30244e-05, 7.46372e-05, 6.2218e-05, 5.30508e-05, 4.58938e-05, 4.00938e-05, 3.52722e-05, 3.11882e-05, 2.76818e-05, 2.46394e-05, 2.1979e-05, 1.9638e-05, 1.75688e-05, 1.57328e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.99873e-06, 1.02094e-05, 1.21401e-05, 1.38791e-05, 1.5471e-05, 1.69381e-05, 1.82906e-05, 1.95359e-05, 2.06793e-05, 2.17242e-05, 2.26756e-05, 2.35396e-05, 2.43196e-05, 2.50231e-05, 2.5654e-05, 2.62203e-05, 
			9.9447e-06, 1.20927e-05, 1.40661e-05, 1.58923e-05, 1.75907e-05, 1.9168e-05, 2.06296e-05, 2.19787e-05, 2.32201e-05, 2.43547e-05, 2.53885e-05, 2.63279e-05, 2.7176e-05, 2.79416e-05, 2.86293e-05, 2.9244e-05, 
			1.1926e-05, 1.40753e-05, 1.60965e-05, 1.79927e-05, 1.97673e-05, 2.14227e-05, 2.29599e-05, 2.43798e-05, 2.56861e-05, 2.68812e-05, 2.79706e-05, 2.89585e-05, 2.98529e-05, 3.06584e-05, 3.1381e-05, 3.20292e-05, 
			1.39757e-05, 1.61551e-05, 1.82238e-05, 2.0176e-05, 2.20098e-05, 2.3724e-05, 2.53155e-05, 2.67861e-05, 2.81393e-05, 2.93762e-05, 3.05046e-05, 3.15281e-05, 3.24521e-05, 3.32858e-05, 3.40343e-05, 3.47042e-05, 
			1.61114e-05, 1.83162e-05, 2.0426e-05, 2.24247e-05, 2.43034e-05, 2.60605e-05, 2.76915e-05, 2.91993e-05, 3.05848e-05, 3.18531e-05, 3.30079e-05, 3.40547e-05, 3.50014e-05, 3.58539e-05, 3.66196e-05, 3.73052e-05
		)
}

CapTable	"metal4_C_TOP_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.88687e-06, 1.00978e-05, 1.20356e-05, 1.37826e-05, 1.53799e-05, 1.68496e-05, 1.8204e-05, 1.94506e-05, 2.05938e-05, 2.16386e-05, 2.25898e-05, 2.34523e-05, 2.42319e-05, 2.49344e-05, 2.55643e-05, 2.61288e-05, 
			9.8039e-06, 1.19577e-05, 1.39375e-05, 1.57698e-05, 1.74701e-05, 1.90489e-05, 2.05109e-05, 2.186e-05, 2.30983e-05, 2.42316e-05, 2.52641e-05, 2.62012e-05, 2.70478e-05, 2.78106e-05, 2.84954e-05, 2.91097e-05, 
			1.17716e-05, 1.39233e-05, 1.59477e-05, 1.78463e-05, 1.96219e-05, 2.12772e-05, 2.28116e-05, 2.42293e-05, 2.55326e-05, 2.6724e-05, 2.78103e-05, 2.87956e-05, 2.96859e-05, 3.04886e-05, 3.12098e-05, 3.18555e-05, 
			1.38081e-05, 1.59854e-05, 1.8054e-05, 2.00072e-05, 2.18404e-05, 2.35506e-05, 2.51388e-05, 2.66057e-05, 2.79544e-05, 2.91874e-05, 3.03105e-05, 3.13299e-05, 3.22517e-05, 3.30816e-05, 3.38271e-05, 3.44952e-05, 
			1.59286e-05, 1.81304e-05, 2.02382e-05, 2.22337e-05, 2.411e-05, 2.58625e-05, 2.74885e-05, 2.89918e-05, 3.03724e-05, 3.16347e-05, 3.2785e-05, 3.38284e-05, 3.47712e-05, 3.56212e-05, 3.63826e-05, 3.70643e-05
		)
}

CapTable	"metal4_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179025, 0.000102861, 7.40502e-05, 5.79924e-05, 4.73556e-05, 3.95972e-05, 3.35958e-05, 2.87736e-05, 2.47998e-05, 2.14688e-05, 1.86426e-05, 1.62235e-05, 1.41412e-05, 1.23394e-05, 1.07774e-05, 9.41742e-06, 
			0.00018986, 0.000111022, 8.04794e-05, 6.32292e-05, 5.16946e-05, 4.3241e-05, 3.66852e-05, 3.14122e-05, 2.7066e-05, 2.34236e-05, 2.03342e-05, 1.76905e-05, 1.54166e-05, 1.34495e-05, 1.17435e-05, 1.02605e-05, 
			0.000195903, 0.000115964, 8.44958e-05, 6.6528e-05, 5.44526e-05, 4.55632e-05, 3.8657e-05, 3.30972e-05, 2.85126e-05, 2.4671e-05, 2.1412e-05, 1.8626e-05, 1.62279e-05, 1.41551e-05, 1.23581e-05, 1.07953e-05, 
			0.000199742, 0.000119225, 8.71962e-05, 6.87688e-05, 5.63228e-05, 4.71418e-05, 3.9998e-05, 3.42432e-05, 2.94962e-05, 2.55188e-05, 2.21448e-05, 1.92597e-05, 1.67782e-05, 1.46332e-05, 1.27734e-05, 1.11566e-05, 
			0.000201882, 0.000121339, 8.89948e-05, 7.02776e-05, 5.75896e-05, 4.8215e-05, 4.09128e-05, 3.50234e-05, 3.01666e-05, 2.60948e-05, 2.2642e-05, 1.96903e-05, 1.71509e-05, 1.49564e-05, 1.30547e-05, 1.14015e-05
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

CapTable	"metal4_C_LATERAL_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181404, 0.000106048, 7.79812e-05, 6.26004e-05, 5.25674e-05, 4.5334e-05, 3.97748e-05, 3.53118e-05, 3.16156e-05, 2.84844e-05, 2.57858e-05, 2.34294e-05, 2.13508e-05, 1.95023e-05, 1.78479e-05, 1.63595e-05, 
			0.000193213, 0.00011523, 8.548e-05, 6.89466e-05, 5.80442e-05, 5.0132e-05, 4.40242e-05, 3.91064e-05, 3.50262e-05, 3.1565e-05, 2.85798e-05, 2.59718e-05, 2.36702e-05, 2.16232e-05, 1.97909e-05, 1.81423e-05, 
			0.000200298, 0.000121242, 9.05858e-05, 7.33442e-05, 6.19e-05, 5.35418e-05, 4.70646e-05, 4.18354e-05, 3.74884e-05, 3.3796e-05, 3.06082e-05, 2.78212e-05, 2.53606e-05, 2.3171e-05, 2.12106e-05, 1.94466e-05, 
			0.000205222, 0.000125597, 9.43764e-05, 7.66626e-05, 6.48262e-05, 5.61478e-05, 4.94004e-05, 4.39398e-05, 3.93928e-05, 3.55254e-05, 3.21836e-05, 2.926e-05, 2.66772e-05, 2.43784e-05, 2.23192e-05, 2.04658e-05, 
			0.000208466, 0.000128799, 9.72414e-05, 7.92072e-05, 6.70924e-05, 5.81808e-05, 5.12324e-05, 4.55956e-05, 4.0895e-05, 3.68926e-05, 3.3431e-05, 3.04008e-05, 2.77226e-05, 2.53378e-05, 2.3201e-05, 2.1277e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_46MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.14718e-05, 1.41812e-05, 1.63909e-05, 1.82798e-05, 1.9946e-05, 2.14477e-05, 2.2821e-05, 2.40894e-05, 2.52693e-05, 2.63724e-05, 2.74076e-05, 2.83812e-05, 2.92989e-05, 3.01649e-05, 3.09832e-05, 3.17568e-05, 
			1.34918e-05, 1.5925e-05, 1.80352e-05, 1.9908e-05, 2.1601e-05, 2.31516e-05, 2.45859e-05, 2.59221e-05, 2.71726e-05, 2.83474e-05, 2.94539e-05, 3.04983e-05, 3.14852e-05, 3.24187e-05, 3.33022e-05, 3.41393e-05, 
			1.5391e-05, 1.76644e-05, 1.97082e-05, 2.15652e-05, 2.32697e-05, 2.48494e-05, 2.63225e-05, 2.77028e-05, 2.9001e-05, 3.02252e-05, 3.13817e-05, 3.24757e-05, 3.35117e-05, 3.44933e-05, 3.54239e-05, 3.63063e-05, 
			1.7222e-05, 1.94062e-05, 2.14052e-05, 2.32488e-05, 2.49609e-05, 2.65602e-05, 2.80609e-05, 2.94738e-05, 3.08073e-05, 3.20686e-05, 3.32628e-05, 3.43947e-05, 3.54682e-05, 3.64867e-05, 3.74535e-05, 3.83712e-05, 
			1.904e-05, 2.1151e-05, 2.31174e-05, 2.49518e-05, 2.66698e-05, 2.82834e-05, 2.98046e-05, 3.1242e-05, 3.26027e-05, 3.38924e-05, 3.51159e-05, 3.62772e-05, 3.73802e-05, 3.84277e-05, 3.9423e-05, 4.03687e-05
		)
}

CapTable	"metal4_C_LATERAL_46MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182573, 0.000107583, 7.98548e-05, 6.4794e-05, 5.50642e-05, 4.81178e-05, 4.28284e-05, 3.86176e-05, 3.51554e-05, 3.22388e-05, 2.97354e-05, 2.7555e-05, 2.56334e-05, 2.39236e-05, 2.23902e-05, 2.1006e-05, 
			0.000194789, 0.000117189, 8.78058e-05, 7.16234e-05, 6.10556e-05, 5.34604e-05, 4.76504e-05, 4.301e-05, 3.91862e-05, 3.596e-05, 3.3188e-05, 3.07716e-05, 2.86408e-05, 2.67442e-05, 2.5043e-05, 2.35068e-05, 
			0.000202308, 0.000123657, 9.33918e-05, 7.6526e-05, 6.54398e-05, 5.74198e-05, 5.12596e-05, 4.63248e-05, 4.22488e-05, 3.88038e-05, 3.58398e-05, 3.32536e-05, 3.09712e-05, 2.89384e-05, 2.7114e-05, 2.54662e-05, 
			0.0002077, 0.000128499, 9.76908e-05, 8.03722e-05, 6.89114e-05, 6.05864e-05, 5.41688e-05, 4.90136e-05, 4.47468e-05, 4.11344e-05, 3.80226e-05, 3.53046e-05, 3.2904e-05, 3.07646e-05, 2.88434e-05, 2.71074e-05, 
			0.00021144, 0.000132216, 0.000101087, 8.34622e-05, 7.17352e-05, 6.31874e-05, 5.65772e-05, 5.12526e-05, 4.68372e-05, 4.30938e-05, 3.98652e-05, 3.70426e-05, 3.45476e-05, 3.23228e-05, 3.03238e-05, 2.85166e-05
		)
}

CapTable	"metal4_C_LATERAL_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00018083, 0.000105286, 7.70434e-05, 6.1498e-05, 5.13112e-05, 4.39354e-05, 3.8246e-05, 3.36656e-05, 2.9866e-05, 2.66448e-05, 2.38702e-05, 2.14514e-05, 1.93234e-05, 1.74384e-05, 1.57594e-05, 1.42578e-05, 
			0.000192422, 0.000114238, 8.42978e-05, 6.75844e-05, 5.65136e-05, 4.8446e-05, 4.21964e-05, 3.7152e-05, 3.29604e-05, 2.94038e-05, 2.63386e-05, 2.3666e-05, 2.13146e-05, 1.92322e-05, 1.73774e-05, 1.57188e-05, 
			0.000199271, 0.000120004, 8.9146e-05, 7.17134e-05, 6.0091e-05, 5.15692e-05, 4.49446e-05, 3.95844e-05, 3.51234e-05, 3.1334e-05, 2.80666e-05, 2.52166e-05, 2.2709e-05, 2.04876e-05, 1.85095e-05, 1.67405e-05, 
			0.000203944, 0.000124098, 9.26672e-05, 7.47546e-05, 6.27344e-05, 5.38882e-05, 4.69906e-05, 4.13982e-05, 3.67378e-05, 3.27758e-05, 2.93574e-05, 2.63748e-05, 2.375e-05, 2.14244e-05, 1.93537e-05, 1.75019e-05, 
			0.000206922, 0.000127028, 9.52536e-05, 7.70168e-05, 6.47154e-05, 5.56356e-05, 4.85374e-05, 4.2771e-05, 3.796e-05, 3.38672e-05, 3.03342e-05, 2.72508e-05, 2.45368e-05, 2.21324e-05, 1.99909e-05, 1.8076e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.23433e-06, 1.02855e-05, 1.20005e-05, 1.34999e-05, 1.48469e-05, 1.60798e-05, 1.7221e-05, 1.82847e-05, 1.92801e-05, 2.02138e-05, 2.10907e-05, 2.19146e-05, 2.26881e-05, 2.34147e-05, 2.40966e-05, 2.47359e-05, 
			9.86475e-06, 1.1757e-05, 1.34376e-05, 1.496e-05, 1.636e-05, 1.76603e-05, 1.88757e-05, 2.00165e-05, 2.10896e-05, 2.20998e-05, 2.30513e-05, 2.39474e-05, 2.47902e-05, 2.55834e-05, 2.63287e-05, 2.70284e-05, 
			1.14408e-05, 1.32592e-05, 1.49259e-05, 1.64683e-05, 1.79061e-05, 1.92547e-05, 2.05238e-05, 2.17202e-05, 2.28497e-05, 2.39154e-05, 2.49212e-05, 2.58698e-05, 2.67633e-05, 2.76052e-05, 2.83967e-05, 2.91408e-05, 
			1.30086e-05, 1.47951e-05, 1.64619e-05, 1.80242e-05, 1.94948e-05, 2.08822e-05, 2.21934e-05, 2.34338e-05, 2.46071e-05, 2.57163e-05, 2.67645e-05, 2.77542e-05, 2.86877e-05, 2.95671e-05, 3.03952e-05, 3.11734e-05, 
			1.46022e-05, 1.63686e-05, 1.80409e-05, 1.96232e-05, 2.11205e-05, 2.254e-05, 2.38853e-05, 2.51611e-05, 2.63696e-05, 2.75134e-05, 2.8596e-05, 2.96185e-05, 3.05841e-05, 3.14939e-05, 3.23504e-05, 3.31573e-05
		)
}

CapTable	"metal4_C_TOP_GP_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.67607e-06, 5.84855e-06, 6.83213e-06, 7.69181e-06, 8.46531e-06, 9.17306e-06, 9.82793e-06, 1.04382e-05, 1.10098e-05, 1.1546e-05, 1.20497e-05, 1.25231e-05, 1.29684e-05, 1.33866e-05, 1.37794e-05, 1.41484e-05, 
			5.58385e-06, 6.666e-06, 7.62739e-06, 8.49819e-06, 9.29897e-06, 1.00429e-05, 1.07386e-05, 1.13918e-05, 1.20064e-05, 1.25857e-05, 1.31316e-05, 1.3646e-05, 1.41313e-05, 1.45875e-05, 1.50167e-05, 1.54203e-05, 
			6.4662e-06, 7.50001e-06, 8.4503e-06, 9.33002e-06, 1.01506e-05, 1.09206e-05, 1.16456e-05, 1.23298e-05, 1.29756e-05, 1.35864e-05, 1.41632e-05, 1.47077e-05, 1.52219e-05, 1.5706e-05, 1.61621e-05, 1.65907e-05, 
			7.34136e-06, 8.35333e-06, 9.29971e-06, 1.01882e-05, 1.10253e-05, 1.18157e-05, 1.25638e-05, 1.32722e-05, 1.39429e-05, 1.45786e-05, 1.51797e-05, 1.57478e-05, 1.62845e-05, 1.67907e-05, 1.72675e-05, 1.77166e-05, 
			8.22576e-06, 9.22319e-06, 1.01707e-05, 1.10686e-05, 1.19201e-05, 1.27278e-05, 1.3495e-05, 1.42232e-05, 1.49142e-05, 1.557e-05, 1.61904e-05, 1.67777e-05, 1.73322e-05, 1.7856e-05, 1.83502e-05, 1.88144e-05
		)
}

CapTable	"metal4_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179697, 0.000103768, 7.51734e-05, 5.93102e-05, 4.88428e-05, 4.12266e-05, 3.53386e-05, 3.06018e-05, 2.66866e-05, 2.33888e-05, 2.05728e-05, 1.81458e-05, 1.60375e-05, 1.41974e-05, 1.25839e-05, 1.11659e-05, 
			0.000190825, 0.000112238, 8.19254e-05, 6.48792e-05, 5.3519e-05, 4.52082e-05, 3.8763e-05, 3.3569e-05, 2.9273e-05, 2.56544e-05, 2.25642e-05, 1.99009e-05, 1.75885e-05, 1.5571e-05, 1.38021e-05, 1.22467e-05, 
			0.000197184, 0.000117503, 8.62674e-05, 6.85024e-05, 5.65964e-05, 4.78422e-05, 4.1036e-05, 3.55436e-05, 3.09974e-05, 2.71658e-05, 2.3895e-05, 2.1075e-05, 1.8628e-05, 1.64915e-05, 1.46186e-05, 1.29734e-05, 
			0.000201348, 0.000121089, 8.92884e-05, 7.10556e-05, 5.87674e-05, 4.9708e-05, 4.26512e-05, 3.69492e-05, 3.22266e-05, 2.82454e-05, 2.48464e-05, 2.19158e-05, 1.93715e-05, 1.71521e-05, 1.52062e-05, 1.34953e-05, 
			0.000203816, 0.000123521, 9.13936e-05, 7.28568e-05, 6.03114e-05, 5.10436e-05, 4.38114e-05, 3.79614e-05, 3.31132e-05, 2.90256e-05, 2.5534e-05, 2.25238e-05, 1.99119e-05, 1.76311e-05, 1.56333e-05, 1.38768e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.51335e-06, 9.43262e-06, 1.10565e-05, 1.24889e-05, 1.37867e-05, 1.49806e-05, 1.60889e-05, 1.71231e-05, 1.80909e-05, 1.89968e-05, 1.98448e-05, 2.06373e-05, 2.13778e-05, 2.20681e-05, 2.27113e-05, 2.3309e-05, 
			9.07775e-06, 1.08728e-05, 1.24825e-05, 1.3952e-05, 1.53126e-05, 1.65813e-05, 1.77699e-05, 1.88859e-05, 1.99346e-05, 2.09193e-05, 2.18428e-05, 2.27079e-05, 2.3517e-05, 2.42717e-05, 2.4977e-05, 2.56308e-05, 
			1.06119e-05, 1.23544e-05, 1.39671e-05, 1.54698e-05, 1.68772e-05, 1.82016e-05, 1.94494e-05, 2.06254e-05, 2.17327e-05, 2.27745e-05, 2.3753e-05, 2.46705e-05, 2.5529e-05, 2.63318e-05, 2.70786e-05, 2.77759e-05, 
			1.21561e-05, 1.38863e-05, 1.55117e-05, 1.70444e-05, 1.84922e-05, 1.98613e-05, 2.11559e-05, 2.23786e-05, 2.3532e-05, 2.46178e-05, 2.56381e-05, 2.65973e-05, 2.74926e-05, 2.83309e-05, 2.91138e-05, 2.98395e-05, 
			1.37394e-05, 1.54635e-05, 1.71069e-05, 1.8668e-05, 2.0151e-05, 2.15562e-05, 2.28884e-05, 2.41482e-05, 2.53384e-05, 2.64596e-05, 2.75148e-05, 2.8503e-05, 2.94303e-05, 3.02945e-05, 3.11026e-05, 3.18552e-05
		)
}

CapTable	"metal4_C_TOP_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.10685e-06, 7.68258e-06, 9.02037e-06, 1.0202e-05, 1.1271e-05, 1.22541e-05, 1.31668e-05, 1.40186e-05, 1.4815e-05, 1.55608e-05, 1.62588e-05, 1.69121e-05, 1.75224e-05, 1.80918e-05, 1.8622e-05, 1.91152e-05, 
			7.36665e-06, 8.84077e-06, 1.01657e-05, 1.1375e-05, 1.24934e-05, 1.35365e-05, 1.45141e-05, 1.54318e-05, 1.62941e-05, 1.71039e-05, 1.78642e-05, 1.85765e-05, 1.92432e-05, 1.98661e-05, 2.04454e-05, 2.09869e-05, 
			8.60985e-06, 1.00374e-05, 1.13609e-05, 1.25945e-05, 1.37508e-05, 1.48381e-05, 1.58624e-05, 1.6828e-05, 1.77383e-05, 1.85952e-05, 1.94001e-05, 2.01552e-05, 2.08623e-05, 2.15223e-05, 2.21396e-05, 2.27124e-05, 
			9.85787e-06, 1.12715e-05, 1.26031e-05, 1.386e-05, 1.50477e-05, 1.61707e-05, 1.72327e-05, 1.82366e-05, 1.91841e-05, 2.00773e-05, 2.09176e-05, 2.17042e-05, 2.24436e-05, 2.31335e-05, 2.37757e-05, 2.43771e-05, 
			1.11366e-05, 1.25443e-05, 1.38885e-05, 1.51662e-05, 1.63806e-05, 1.75334e-05, 1.86264e-05, 1.96612e-05, 2.06385e-05, 2.15601e-05, 2.24263e-05, 2.32413e-05, 2.40029e-05, 2.47172e-05, 2.53818e-05, 2.60005e-05
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
			6.77546e-06, 8.5919e-06, 1.01596e-05, 1.15638e-05, 1.28462e-05, 1.40293e-05, 1.51255e-05, 1.61402e-05, 1.70793e-05, 1.7946e-05, 1.87453e-05, 1.94781e-05, 2.015e-05, 2.07621e-05, 2.13214e-05, 2.18275e-05, 
			8.3229e-06, 1.00602e-05, 1.16446e-05, 1.31061e-05, 1.44654e-05, 1.57324e-05, 1.69127e-05, 1.80118e-05, 1.90302e-05, 1.99725e-05, 2.08423e-05, 2.16399e-05, 2.2373e-05, 2.30401e-05, 2.3651e-05, 2.42058e-05, 
			9.875e-06, 1.15932e-05, 1.3202e-05, 1.47119e-05, 1.61273e-05, 1.74541e-05, 1.86947e-05, 1.98518e-05, 2.09263e-05, 2.19213e-05, 2.28383e-05, 2.36825e-05, 2.44545e-05, 2.51623e-05, 2.58066e-05, 2.63914e-05, 
			1.14635e-05, 1.31911e-05, 1.48285e-05, 1.63774e-05, 1.78394e-05, 1.92123e-05, 2.04989e-05, 2.16995e-05, 2.28139e-05, 2.38479e-05, 2.47992e-05, 2.56764e-05, 2.64799e-05, 2.72128e-05, 2.78825e-05, 2.84911e-05, 
			1.31072e-05, 1.48466e-05, 1.6512e-05, 1.80945e-05, 1.95918e-05, 2.10014e-05, 2.23225e-05, 2.35551e-05, 2.47015e-05, 2.57615e-05, 2.67411e-05, 2.76414e-05, 2.84654e-05, 2.92195e-05, 2.99073e-05, 3.05324e-05
		)
}

CapTable	"metal4_C_TOP_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.26394e-06, 1.05163e-05, 1.24693e-05, 1.42168e-05, 1.58094e-05, 1.72748e-05, 1.86282e-05, 1.9881e-05, 2.10385e-05, 2.21062e-05, 2.30875e-05, 2.39877e-05, 2.48112e-05, 2.55633e-05, 2.62464e-05, 2.6868e-05, 
			1.01737e-05, 1.234e-05, 1.4316e-05, 1.61353e-05, 1.7822e-05, 1.939e-05, 2.08485e-05, 2.22022e-05, 2.34571e-05, 2.46146e-05, 2.56808e-05, 2.66609e-05, 2.75561e-05, 2.83749e-05, 2.91184e-05, 2.97948e-05, 
			1.21094e-05, 1.42542e-05, 1.62606e-05, 1.81367e-05, 1.98926e-05, 2.15343e-05, 2.30656e-05, 2.44894e-05, 2.58098e-05, 2.70296e-05, 2.81536e-05, 2.91854e-05, 3.01307e-05, 3.09927e-05, 3.17794e-05, 3.24934e-05, 
			1.40975e-05, 1.62535e-05, 1.82941e-05, 2.0219e-05, 2.20292e-05, 2.37264e-05, 2.53103e-05, 2.67859e-05, 2.81558e-05, 2.94196e-05, 3.0586e-05, 3.16557e-05, 3.26362e-05, 3.35312e-05, 3.43463e-05, 3.50875e-05, 
			1.61578e-05, 1.8328e-05, 2.04014e-05, 2.23667e-05, 2.42188e-05, 2.59571e-05, 2.75823e-05, 2.90962e-05, 3.05004e-05, 3.1799e-05, 3.29948e-05, 3.40939e-05, 3.50994e-05, 3.60187e-05, 3.68532e-05, 3.76124e-05
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

CapTable	"metal4_C_LATERAL_56MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183136, 0.000108308, 8.07222e-05, 6.57872e-05, 5.61694e-05, 4.9322e-05, 4.41192e-05, 3.99834e-05, 3.65854e-05, 3.3723e-05, 3.12644e-05, 2.912e-05, 2.72266e-05, 2.55378e-05, 2.4019e-05, 2.26434e-05, 
			0.000195534, 0.000118094, 8.88548e-05, 7.28008e-05, 6.2347e-05, 5.48516e-05, 4.91286e-05, 4.45632e-05, 4.08028e-05, 3.76294e-05, 3.49004e-05, 3.25184e-05, 3.04138e-05, 2.8536e-05, 2.68468e-05, 2.53168e-05, 
			0.000203236, 0.000124742, 9.46192e-05, 7.78802e-05, 6.69056e-05, 5.89832e-05, 5.2907e-05, 4.80438e-05, 4.4028e-05, 4.06326e-05, 3.77084e-05, 3.5153e-05, 3.28934e-05, 3.08762e-05, 2.90606e-05, 2.74158e-05, 
			0.000208808, 0.000129761, 9.90916e-05, 8.18954e-05, 7.05416e-05, 6.23094e-05, 5.59714e-05, 5.08832e-05, 4.66718e-05, 4.31048e-05, 4.00284e-05, 3.73372e-05, 3.49556e-05, 3.2828e-05, 3.0912e-05, 2.91756e-05, 
			0.000212728, 0.00013365, 0.000102653, 8.51448e-05, 7.3519e-05, 6.5058e-05, 5.85214e-05, 5.32582e-05, 4.88932e-05, 4.519e-05, 4.19922e-05, 3.9192e-05, 3.6712e-05, 3.4495e-05, 3.24976e-05, 3.06866e-05
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

CapTable	"metal4_C_TOP_GP_55MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.96871e-06, 6.18597e-06, 7.19737e-06, 8.07368e-06, 8.8589e-06, 9.57459e-06, 1.02362e-05, 1.08534e-05, 1.14326e-05, 1.19778e-05, 1.24923e-05, 1.29788e-05, 1.34391e-05, 1.3874e-05, 1.42857e-05, 1.46748e-05, 
			5.89107e-06, 7.00132e-06, 7.98077e-06, 8.86245e-06, 9.67037e-06, 1.04193e-05, 1.11197e-05, 1.17781e-05, 1.24006e-05, 1.29886e-05, 1.35456e-05, 1.40737e-05, 1.45745e-05, 1.50489e-05, 1.54987e-05, 1.59243e-05, 
			6.77675e-06, 7.82931e-06, 8.79017e-06, 9.67564e-06, 1.04997e-05, 1.12725e-05, 1.20007e-05, 1.26892e-05, 1.33421e-05, 1.39624e-05, 1.45508e-05, 1.51101e-05, 1.56408e-05, 1.61452e-05, 1.66226e-05, 1.70758e-05, 
			7.64565e-06, 8.6692e-06, 9.62119e-06, 1.05121e-05, 1.13499e-05, 1.21427e-05, 1.28932e-05, 1.36058e-05, 1.42837e-05, 1.4929e-05, 1.55428e-05, 1.61267e-05, 1.66816e-05, 1.72091e-05, 1.77097e-05, 1.81836e-05, 
			8.52072e-06, 9.5238e-06, 1.04729e-05, 1.13706e-05, 1.22213e-05, 1.30295e-05, 1.37993e-05, 1.45321e-05, 1.5231e-05, 1.58968e-05, 1.65317e-05, 1.71354e-05, 1.77104e-05, 1.82568e-05, 1.87747e-05, 1.9267e-05
		)
}

CapTable	"metal4_C_LATERAL_55MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181881, 0.000106674, 7.87422e-05, 6.3483e-05, 5.35594e-05, 4.64232e-05, 4.09484e-05, 3.65574e-05, 3.29214e-05, 2.98384e-05, 2.71768e-05, 2.4847e-05, 2.27854e-05, 2.09454e-05, 1.92916e-05, 1.7797e-05, 
			0.000193865, 0.000116035, 8.6426e-05, 7.00202e-05, 5.9232e-05, 5.142e-05, 4.53984e-05, 4.05534e-05, 3.65322e-05, 3.31178e-05, 3.01674e-05, 2.75832e-05, 2.52954e-05, 2.32532e-05, 2.14174e-05, 1.97582e-05, 
			0.000201132, 0.000122231, 9.17184e-05, 7.46056e-05, 6.32754e-05, 5.50164e-05, 4.86234e-05, 4.3464e-05, 3.91726e-05, 3.55228e-05, 3.23656e-05, 2.95978e-05, 2.71464e-05, 2.4957e-05, 2.29884e-05, 2.1209e-05, 
			0.000206242, 0.000126773, 9.5695e-05, 7.81078e-05, 6.63824e-05, 5.7799e-05, 5.1131e-05, 4.57354e-05, 4.12388e-05, 3.74088e-05, 3.40922e-05, 3.11826e-05, 2.86038e-05, 2.62996e-05, 2.42276e-05, 2.23538e-05, 
			0.000209674, 0.000130161, 9.8741e-05, 8.08288e-05, 6.88196e-05, 5.99972e-05, 5.31222e-05, 4.7544e-05, 4.28876e-05, 3.89166e-05, 3.54744e-05, 3.24526e-05, 2.9773e-05, 2.73778e-05, 2.5223e-05, 2.32742e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_56MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.07728e-05, 1.3242e-05, 1.5232e-05, 1.69158e-05, 1.839e-05, 1.97122e-05, 2.09184e-05, 2.20318e-05, 2.30686e-05, 2.40401e-05, 2.49549e-05, 2.58194e-05, 2.66383e-05, 2.74155e-05, 2.81543e-05, 2.88575e-05, 
			1.25494e-05, 1.47358e-05, 1.66132e-05, 1.82656e-05, 1.97507e-05, 2.11067e-05, 2.23593e-05, 2.35263e-05, 2.46208e-05, 2.56523e-05, 2.66277e-05, 2.75525e-05, 2.84312e-05, 2.92674e-05, 3.00638e-05, 3.08232e-05, 
			1.4191e-05, 1.62114e-05, 1.80108e-05, 1.96359e-05, 2.11216e-05, 2.24958e-05, 2.37772e-05, 2.49794e-05, 2.6113e-05, 2.71858e-05, 2.82038e-05, 2.91719e-05, 3.00937e-05, 3.09724e-05, 3.18108e-05, 3.26111e-05, 
			1.5755e-05, 1.76756e-05, 1.94204e-05, 2.10236e-05, 2.25094e-05, 2.38956e-05, 2.51972e-05, 2.64255e-05, 2.75886e-05, 2.86928e-05, 2.97436e-05, 3.07449e-05, 3.17e-05, 3.26117e-05, 3.3483e-05, 3.43154e-05, 
			1.729e-05, 1.91326e-05, 2.08388e-05, 2.24262e-05, 2.39108e-05, 2.53058e-05, 2.66231e-05, 2.78714e-05, 2.90574e-05, 3.01864e-05, 3.12631e-05, 3.22907e-05, 3.32723e-05, 3.42105e-05, 3.51078e-05, 3.5966e-05
		)
}

CapTable	"metal4_C_TOP_GP_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.4309e-06, 8.05641e-06, 9.42494e-06, 1.06253e-05, 1.17073e-05, 1.27001e-05, 1.36209e-05, 1.4481e-05, 1.52885e-05, 1.60471e-05, 1.6761e-05, 1.74316e-05, 1.80625e-05, 1.86558e-05, 1.92116e-05, 1.97325e-05, 
			7.70747e-06, 9.2138e-06, 1.05575e-05, 1.1779e-05, 1.29054e-05, 1.39541e-05, 1.49372e-05, 1.58628e-05, 1.67353e-05, 1.75582e-05, 1.83345e-05, 1.90657e-05, 1.97555e-05, 2.04024e-05, 2.10116e-05, 2.15816e-05, 
			8.95247e-06, 1.04009e-05, 1.17364e-05, 1.29758e-05, 1.4135e-05, 1.52257e-05, 1.62554e-05, 1.72286e-05, 1.81487e-05, 1.90188e-05, 1.98419e-05, 2.0618e-05, 2.13495e-05, 2.20371e-05, 2.26835e-05, 2.32906e-05, 
			1.01952e-05, 1.16213e-05, 1.29578e-05, 1.42159e-05, 1.54046e-05, 1.65299e-05, 1.75961e-05, 1.86071e-05, 1.95652e-05, 2.04738e-05, 2.13314e-05, 2.21426e-05, 2.29068e-05, 2.36269e-05, 2.4303e-05, 2.49373e-05, 
			1.14612e-05, 1.28736e-05, 1.42182e-05, 1.54962e-05, 1.67102e-05, 1.78637e-05, 1.89605e-05, 2.00035e-05, 2.09933e-05, 2.19308e-05, 2.28178e-05, 2.3656e-05, 2.44472e-05, 2.51917e-05, 2.58911e-05, 2.6548e-05
		)
}

CapTable	"metal4_C_LATERAL_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181265, 0.000105861, 7.77472e-05, 6.23188e-05, 5.22372e-05, 4.49546e-05, 3.93458e-05, 3.48336e-05, 3.10892e-05, 2.79114e-05, 2.51684e-05, 2.27704e-05, 2.06538e-05, 1.87711e-05, 1.70864e-05, 1.55722e-05, 
			0.000193024, 0.000114988, 8.5183e-05, 6.85932e-05, 5.76332e-05, 4.96622e-05, 4.34956e-05, 3.85196e-05, 3.43828e-05, 3.08676e-05, 2.78316e-05, 2.51766e-05, 2.28328e-05, 2.0748e-05, 1.8883e-05, 1.72067e-05, 
			0.00020005, 0.000120935, 9.02156e-05, 7.29088e-05, 6.13978e-05, 5.2972e-05, 4.6428e-05, 4.11332e-05, 3.67234e-05, 3.29716e-05, 2.97288e-05, 2.68914e-05, 2.4386e-05, 2.21574e-05, 2.01634e-05, 1.83716e-05, 
			0.000204906, 0.000125213, 9.39216e-05, 7.61336e-05, 6.42218e-05, 5.5468e-05, 4.86466e-05, 4.3115e-05, 3.85002e-05, 3.457e-05, 3.11704e-05, 2.8195e-05, 2.55666e-05, 2.32286e-05, 2.11364e-05, 1.92562e-05, 
			0.000208072, 0.000128328, 9.66896e-05, 7.85728e-05, 6.6375e-05, 5.73816e-05, 5.0354e-05, 4.46418e-05, 3.98702e-05, 3.5803e-05, 3.22828e-05, 2.92004e-05, 2.64772e-05, 2.4054e-05, 2.18866e-05, 1.99379e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_55MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.34649e-06, 9.13263e-06, 1.06113e-05, 1.18954e-05, 1.30421e-05, 1.40893e-05, 1.50583e-05, 1.59625e-05, 1.68107e-05, 1.76098e-05, 1.83641e-05, 1.90766e-05, 1.975e-05, 2.0387e-05, 2.0989e-05, 2.15579e-05, 
			8.72773e-06, 1.03563e-05, 1.17902e-05, 1.30821e-05, 1.42658e-05, 1.53643e-05, 1.63918e-05, 1.73584e-05, 1.82702e-05, 1.91333e-05, 1.99506e-05, 2.07249e-05, 2.14586e-05, 2.21535e-05, 2.28114e-05, 2.34341e-05, 
			1.00443e-05, 1.15923e-05, 1.30034e-05, 1.43038e-05, 1.55138e-05, 1.66488e-05, 1.77191e-05, 1.87313e-05, 1.96908e-05, 2.06006e-05, 2.14647e-05, 2.22847e-05, 2.3063e-05, 2.38005e-05, 2.45005e-05, 2.51625e-05, 
			1.13413e-05, 1.28498e-05, 1.42508e-05, 1.55621e-05, 1.67957e-05, 1.796e-05, 1.90646e-05, 2.01133e-05, 2.11102e-05, 2.20579e-05, 2.2959e-05, 2.38153e-05, 2.46292e-05, 2.54014e-05, 2.61334e-05, 2.68282e-05, 
			1.26483e-05, 1.41304e-05, 1.55301e-05, 1.68526e-05, 1.81067e-05, 1.92975e-05, 2.04298e-05, 2.15088e-05, 2.25361e-05, 2.35147e-05, 2.44458e-05, 2.53323e-05, 2.61744e-05, 2.69744e-05, 2.77346e-05, 2.84541e-05
		)
}

CapTable	"metal4_C_TOP_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.62206e-06, 1.09341e-05, 1.29235e-05, 1.46953e-05, 1.63058e-05, 1.7785e-05, 1.91521e-05, 2.04189e-05, 2.15931e-05, 2.268e-05, 2.36856e-05, 2.46127e-05, 2.5466e-05, 2.62524e-05, 2.69709e-05, 2.76284e-05, 
			1.0555e-05, 1.27611e-05, 1.47613e-05, 1.65972e-05, 1.82954e-05, 1.98729e-05, 2.13424e-05, 2.27094e-05, 2.39815e-05, 2.51601e-05, 2.62515e-05, 2.72598e-05, 2.81912e-05, 2.90446e-05, 2.983e-05, 3.05485e-05, 
			1.24994e-05, 1.46697e-05, 1.66915e-05, 1.8577e-05, 2.03396e-05, 2.19882e-05, 2.35284e-05, 2.49666e-05, 2.63052e-05, 2.75473e-05, 2.87008e-05, 2.97648e-05, 3.07455e-05, 3.16499e-05, 3.24799e-05, 3.32386e-05, 
			1.4485e-05, 1.66565e-05, 1.87035e-05, 2.06335e-05, 2.24472e-05, 2.41502e-05, 2.57443e-05, 2.72336e-05, 2.86217e-05, 2.99136e-05, 3.11094e-05, 3.22155e-05, 3.32364e-05, 3.4174e-05, 3.50355e-05, 3.58279e-05, 
			1.65339e-05, 1.87117e-05, 2.07868e-05, 2.27521e-05, 2.46073e-05, 2.63517e-05, 2.79863e-05, 2.95176e-05, 3.09432e-05, 3.22684e-05, 3.34989e-05, 3.46363e-05, 3.56843e-05, 3.66514e-05, 3.75366e-05, 3.8349e-05
		)
}

CapTable	"metal4_C_LATERAL_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180075, 0.000104277, 7.58048e-05, 6.0054e-05, 4.96884e-05, 4.21622e-05, 3.63508e-05, 3.16768e-05, 2.78106e-05, 2.45474e-05, 2.17544e-05, 1.93381e-05, 1.72296e-05, 1.53799e-05, 1.37487e-05, 1.23053e-05, 
			0.000191364, 0.000112917, 8.27374e-05, 6.58126e-05, 5.45612e-05, 4.63446e-05, 3.9978e-05, 3.48476e-05, 3.05986e-05, 2.70112e-05, 2.39402e-05, 2.12816e-05, 1.89634e-05, 1.69291e-05, 1.51368e-05, 1.35491e-05, 
			0.000197896, 0.000118363, 8.72662e-05, 6.96266e-05, 5.78312e-05, 4.9171e-05, 4.2441e-05, 3.70076e-05, 3.25038e-05, 2.86984e-05, 2.5439e-05, 2.26174e-05, 2.01562e-05, 1.79973e-05, 1.60922e-05, 1.44072e-05, 
			0.000202244, 0.000122138, 9.04774e-05, 7.23694e-05, 6.01898e-05, 5.12204e-05, 4.42336e-05, 3.85852e-05, 3.38972e-05, 2.9935e-05, 2.65388e-05, 2.36004e-05, 2.10346e-05, 1.87837e-05, 1.67985e-05, 1.50419e-05, 
			0.000204902, 0.000124761, 9.27716e-05, 7.43556e-05, 6.1913e-05, 5.2728e-05, 4.55594e-05, 3.9754e-05, 3.49324e-05, 3.08546e-05, 2.73598e-05, 2.43322e-05, 2.1691e-05, 1.93729e-05, 1.73281e-05, 1.5518e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_54MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.6465e-06, 8.30839e-06, 9.70176e-06, 1.09237e-05, 1.20261e-05, 1.30386e-05, 1.39792e-05, 1.48585e-05, 1.56832e-05, 1.64586e-05, 1.71879e-05, 1.78748e-05, 1.85197e-05, 1.91246e-05, 1.9693e-05, 2.02251e-05, 
			7.96853e-06, 9.5056e-06, 1.08745e-05, 1.21181e-05, 1.32667e-05, 1.43382e-05, 1.53432e-05, 1.6289e-05, 1.7181e-05, 1.80229e-05, 1.88169e-05, 1.95661e-05, 2.02699e-05, 2.09338e-05, 2.15553e-05, 2.21396e-05, 
			9.25053e-06, 1.07275e-05, 1.2089e-05, 1.33541e-05, 1.45382e-05, 1.56531e-05, 1.67052e-05, 1.77007e-05, 1.86426e-05, 1.95336e-05, 2.03743e-05, 2.11688e-05, 2.19173e-05, 2.26223e-05, 2.32848e-05, 2.39053e-05, 
			1.05268e-05, 1.19825e-05, 1.33486e-05, 1.46335e-05, 1.58483e-05, 1.69984e-05, 1.80897e-05, 1.91245e-05, 2.01062e-05, 2.10345e-05, 2.19145e-05, 2.27442e-05, 2.35275e-05, 2.42639e-05, 2.49572e-05, 2.56079e-05, 
			1.18268e-05, 1.32724e-05, 1.46472e-05, 1.5952e-05, 1.71938e-05, 1.83743e-05, 1.94971e-05, 2.05637e-05, 2.15766e-05, 2.25371e-05, 2.34466e-05, 2.43059e-05, 2.51156e-05, 2.58789e-05, 2.65958e-05, 2.72692e-05
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
			5.94354e-06, 7.5087e-06, 8.851e-06, 1.00475e-05, 1.11368e-05, 1.21409e-05, 1.30717e-05, 1.39358e-05, 1.47378e-05, 1.54828e-05, 1.61708e-05, 1.68067e-05, 1.73945e-05, 1.79325e-05, 1.84294e-05, 1.88852e-05, 
			7.2528e-06, 8.7359e-06, 1.00813e-05, 1.1318e-05, 1.24669e-05, 1.35386e-05, 1.45382e-05, 1.54712e-05, 1.63398e-05, 1.71488e-05, 1.78981e-05, 1.85927e-05, 1.92312e-05, 1.98225e-05, 2.03626e-05, 2.08611e-05, 
			8.5526e-06, 1.00075e-05, 1.13653e-05, 1.26374e-05, 1.38292e-05, 1.49484e-05, 1.59984e-05, 1.69797e-05, 1.78957e-05, 1.87502e-05, 1.95405e-05, 2.02754e-05, 2.09545e-05, 2.15772e-05, 2.21524e-05, 2.26808e-05, 
			9.871e-06, 1.13255e-05, 1.27031e-05, 1.40031e-05, 1.52312e-05, 1.63873e-05, 1.74753e-05, 1.84942e-05, 1.94473e-05, 2.03327e-05, 2.11582e-05, 2.19202e-05, 2.26267e-05, 2.32784e-05, 2.38778e-05, 2.44252e-05, 
			1.12301e-05, 1.26867e-05, 1.40826e-05, 1.54093e-05, 1.66657e-05, 1.78518e-05, 1.89695e-05, 2.00154e-05, 2.09962e-05, 2.19104e-05, 2.27572e-05, 2.35444e-05, 2.42721e-05, 2.49405e-05, 2.55579e-05, 2.61243e-05
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

CapTable	"metal3_C_BOTTOM_GP_17MAX" {
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

CapTable	"metal3_C_LATERAL_17MAX" {
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

CapTable	"metal3_C_BOTTOM_GP_16MAX" {
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

CapTable	"metal3_C_TOP_GP_16MAX" {
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

CapTable	"metal3_C_LATERAL_16MAX" {
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

CapTable	"metal3_C_BOTTOM_GP_15MAX" {
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

CapTable	"metal3_C_TOP_GP_15MAX" {
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

CapTable	"metal3_C_LATERAL_15MAX" {
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

CapTable	"metal3_C_BOTTOM_GP_14MAX" {
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

CapTable	"metal3_C_TOP_GP_14MAX" {
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

CapTable	"metal3_C_LATERAL_14MAX" {
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

CapTable	"metal3_C_LATERAL_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178459, 0.000102148, 7.32764e-05, 5.7241e-05, 4.67002e-05, 3.90964e-05, 3.32896e-05, 2.86862e-05, 2.4941e-05, 2.18364e-05, 1.9226e-05, 1.70071e-05, 1.51043e-05, 1.34607e-05, 1.20322e-05, 1.07843e-05, 
			0.000189065, 0.000110147, 7.96276e-05, 6.24898e-05, 5.11382e-05, 4.2917e-05, 3.66226e-05, 3.1623e-05, 2.75486e-05, 2.41654e-05, 2.13162e-05, 1.88898e-05, 1.68052e-05, 1.50012e-05, 1.34304e-05, 1.20555e-05, 
			0.00019497, 0.00011505, 8.37038e-05, 6.59406e-05, 5.41282e-05, 4.55364e-05, 3.89418e-05, 3.36926e-05, 2.94066e-05, 2.58412e-05, 2.28328e-05, 2.02664e-05, 1.80577e-05, 1.61427e-05, 1.44723e-05, 1.30076e-05, 
			0.000198798, 0.000118407, 8.65982e-05, 6.84574e-05, 5.63386e-05, 4.7503e-05, 4.07048e-05, 3.52826e-05, 3.08468e-05, 2.71502e-05, 2.40258e-05, 2.1356e-05, 1.90541e-05, 1.70551e-05, 1.53087e-05, 1.37748e-05, 
			0.000201066, 0.000120751, 8.87102e-05, 7.03436e-05, 5.80288e-05, 4.9031e-05, 4.20924e-05, 3.65452e-05, 3.19994e-05, 2.82048e-05, 2.49924e-05, 2.2243e-05, 1.98691e-05, 1.78043e-05, 1.59978e-05, 1.4409e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.5242e-05, 1.93928e-05, 2.29323e-05, 2.60247e-05, 2.87578e-05, 3.11869e-05, 3.33514e-05, 3.52829e-05, 3.70082e-05, 3.85505e-05, 3.99312e-05, 4.11688e-05, 4.228e-05, 4.32797e-05, 4.41811e-05, 4.49957e-05, 
			1.88854e-05, 2.28468e-05, 2.63694e-05, 2.95117e-05, 3.23224e-05, 3.48387e-05, 3.70923e-05, 3.91115e-05, 4.09215e-05, 4.25455e-05, 4.40039e-05, 4.5316e-05, 4.64983e-05, 4.75658e-05, 4.85318e-05, 4.9408e-05, 
			2.25146e-05, 2.6368e-05, 2.98582e-05, 3.30054e-05, 3.58374e-05, 3.83857e-05, 4.06768e-05, 4.27364e-05, 4.4589e-05, 4.62563e-05, 4.77588e-05, 4.91146e-05, 5.03402e-05, 5.14507e-05, 5.24588e-05, 5.33763e-05, 
			2.6138e-05, 2.9918e-05, 3.33658e-05, 3.64926e-05, 3.93214e-05, 4.18744e-05, 4.41775e-05, 4.62549e-05, 4.81286e-05, 4.98205e-05, 5.13494e-05, 5.27334e-05, 5.39886e-05, 5.51289e-05, 5.61677e-05, 5.71158e-05, 
			2.976e-05, 3.34556e-05, 3.68522e-05, 3.99462e-05, 4.27548e-05, 4.52976e-05, 4.75983e-05, 4.96798e-05, 5.1563e-05, 5.32677e-05, 5.48131e-05, 5.62158e-05, 5.74916e-05, 5.86542e-05, 5.97161e-05, 6.06884e-05
		)
}

CapTable	"metal3_C_LATERAL_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179618, 0.000103733, 7.52708e-05, 5.96268e-05, 4.94558e-05, 4.21966e-05, 3.67076e-05, 3.23938e-05, 2.89098e-05, 2.60386e-05, 2.36346e-05, 2.15964e-05, 1.98501e-05, 1.83403e-05, 1.70248e-05, 1.58705e-05, 
			0.000190745, 0.000112303, 8.22476e-05, 6.55546e-05, 5.46236e-05, 4.67944e-05, 4.08614e-05, 3.61912e-05, 3.2414e-05, 2.92962e-05, 2.66818e-05, 2.44608e-05, 2.2554e-05, 2.09018e-05, 1.94588e-05, 1.81895e-05, 
			0.00019724, 0.000117843, 8.70078e-05, 6.97336e-05, 5.83824e-05, 5.02202e-05, 4.40208e-05, 3.91316e-05, 3.51698e-05, 3.18936e-05, 2.91406e-05, 2.67974e-05, 2.47812e-05, 2.303e-05, 2.1497e-05, 2.0145e-05, 
			0.000201724, 0.000121901, 9.06432e-05, 7.30294e-05, 6.14066e-05, 5.30316e-05, 4.66566e-05, 4.16186e-05, 3.75288e-05, 3.41398e-05, 3.12866e-05, 2.88528e-05, 2.67538e-05, 2.4927e-05, 2.33236e-05, 2.19064e-05, 
			0.00020471, 0.000125, 9.35468e-05, 7.57398e-05, 6.39502e-05, 5.54394e-05, 4.89468e-05, 4.3804e-05, 3.9621e-05, 3.61486e-05, 3.3219e-05, 3.0715e-05, 2.8551e-05, 2.66632e-05, 2.50028e-05, 2.35316e-05
		)
}

CapTable	"metal3_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178193, 0.000101783, 7.28138e-05, 5.6685e-05, 4.60566e-05, 3.83718e-05, 3.2492e-05, 2.78244e-05, 2.4024e-05, 2.0873e-05, 1.8225e-05, 1.59769e-05, 1.40527e-05, 1.2395e-05, 1.0959e-05, 9.70952e-06, 
			0.000188678, 0.000109648, 7.90186e-05, 6.17752e-05, 5.03244e-05, 4.20122e-05, 3.56362e-05, 3.05652e-05, 2.64296e-05, 2.29956e-05, 2.01058e-05, 1.76484e-05, 1.5542e-05, 1.37243e-05, 1.21474e-05, 1.07732e-05, 
			0.000194446, 0.000114403, 8.29358e-05, 6.50572e-05, 5.3137e-05, 4.44472e-05, 3.77652e-05, 3.24402e-05, 2.809e-05, 2.4472e-05, 2.14226e-05, 1.88256e-05, 1.65961e-05, 1.46695e-05, 1.29958e-05, 1.15354e-05, 
			0.000198121, 0.000117598, 8.56592e-05, 6.73954e-05, 5.51628e-05, 4.62242e-05, 3.93352e-05, 3.38348e-05, 2.93338e-05, 2.55848e-05, 2.242e-05, 1.97212e-05, 1.74012e-05, 1.5394e-05, 1.36479e-05, 1.21226e-05, 
			0.000200224, 0.000119768, 8.75908e-05, 6.90954e-05, 5.66624e-05, 4.75588e-05, 4.05276e-05, 3.49018e-05, 3.02914e-05, 2.64456e-05, 2.3195e-05, 2.04196e-05, 1.80311e-05, 1.5962e-05, 1.41607e-05, 1.2585e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.34131e-05, 1.72375e-05, 2.05601e-05, 2.35145e-05, 2.6159e-05, 2.85335e-05, 3.06689e-05, 3.25874e-05, 3.43095e-05, 3.5854e-05, 3.72385e-05, 3.84789e-05, 3.95905e-05, 4.05861e-05, 4.14801e-05, 4.22809e-05, 
			1.69297e-05, 2.06778e-05, 2.40678e-05, 2.71372e-05, 2.99163e-05, 3.24297e-05, 3.47003e-05, 3.67472e-05, 3.85909e-05, 4.02495e-05, 4.17402e-05, 4.30803e-05, 4.42838e-05, 4.53658e-05, 4.63392e-05, 4.72143e-05, 
			2.05313e-05, 2.4268e-05, 2.76997e-05, 3.08388e-05, 3.36964e-05, 3.62922e-05, 3.86445e-05, 4.07718e-05, 4.26923e-05, 4.44246e-05, 4.59854e-05, 4.73927e-05, 4.86585e-05, 4.98001e-05, 5.08282e-05, 5.1755e-05, 
			2.42219e-05, 2.7967e-05, 3.1431e-05, 3.46128e-05, 3.75206e-05, 4.01693e-05, 4.25763e-05, 4.47578e-05, 4.6733e-05, 4.85173e-05, 5.01293e-05, 5.1585e-05, 5.28984e-05, 5.40842e-05, 5.51544e-05, 5.61215e-05, 
			2.79984e-05, 3.17381e-05, 3.52165e-05, 3.8425e-05, 4.13648e-05, 4.40487e-05, 4.64935e-05, 4.87138e-05, 5.07288e-05, 5.25522e-05, 5.42035e-05, 5.56959e-05, 5.70453e-05, 5.82661e-05, 5.93693e-05, 6.0368e-05
		)
}

CapTable	"metal3_C_TOP_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.26232e-06, 4.18806e-06, 5.00161e-06, 5.72455e-06, 6.37833e-06, 6.97111e-06, 7.50662e-06, 7.99047e-06, 8.42718e-06, 8.82065e-06, 9.17486e-06, 9.49388e-06, 9.78051e-06, 1.00389e-05, 1.02701e-05, 1.04795e-05, 
			4.06075e-06, 4.95475e-06, 5.77158e-06, 6.51893e-06, 7.20296e-06, 7.82738e-06, 8.39529e-06, 8.91181e-06, 9.37947e-06, 9.80277e-06, 1.01856e-05, 1.05309e-05, 1.08433e-05, 1.11247e-05, 1.13781e-05, 1.16073e-05, 
			4.86526e-06, 5.74421e-06, 6.56752e-06, 7.32864e-06, 8.03027e-06, 8.67453e-06, 9.26313e-06, 9.79986e-06, 1.02884e-05, 1.07316e-05, 1.1134e-05, 1.14971e-05, 1.18272e-05, 1.21246e-05, 1.23943e-05, 1.26384e-05, 
			5.67929e-06, 6.5555e-06, 7.38084e-06, 8.15082e-06, 8.86483e-06, 9.52276e-06, 1.0126e-05, 1.0678e-05, 1.11808e-05, 1.16395e-05, 1.20559e-05, 1.24332e-05, 1.27761e-05, 1.30866e-05, 1.33684e-05, 1.36236e-05, 
			6.50659e-06, 7.37794e-06, 8.20627e-06, 8.98242e-06, 9.70435e-06, 1.03723e-05, 1.09863e-05, 1.155e-05, 1.20638e-05, 1.25339e-05, 1.29608e-05, 1.335e-05, 1.37035e-05, 1.40242e-05, 1.4316e-05, 1.45804e-05
		)
}

CapTable	"metal3_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177742, 0.000101161, 7.20288e-05, 5.57464e-05, 4.4978e-05, 3.71694e-05, 3.11846e-05, 2.64314e-05, 2.25652e-05, 1.93673e-05, 1.66909e-05, 1.44308e-05, 1.25094e-05, 1.08672e-05, 9.45834e-06, 8.24508e-06, 
			0.000188016, 0.000108798, 7.79862e-05, 6.05726e-05, 4.8968e-05, 4.0522e-05, 3.40342e-05, 2.88744e-05, 2.4673e-05, 2.1195e-05, 1.82812e-05, 1.58188e-05, 1.37234e-05, 1.19316e-05, 1.03926e-05, 9.0665e-06, 
			0.00019355, 0.000113302, 8.16402e-05, 6.35812e-05, 5.15008e-05, 4.26738e-05, 3.58798e-05, 3.04688e-05, 2.60576e-05, 2.24026e-05, 1.93377e-05, 1.67455e-05, 1.45379e-05, 1.26487e-05, 1.10243e-05, 9.62396e-06, 
			0.000196969, 0.000116231, 8.40888e-05, 6.56398e-05, 5.32456e-05, 4.4172e-05, 3.71756e-05, 3.15956e-05, 2.70422e-05, 2.32654e-05, 2.00964e-05, 1.74138e-05, 1.51279e-05, 1.31699e-05, 1.14861e-05, 1.00329e-05, 
			0.0001988, 0.000118124, 8.574e-05, 6.70602e-05, 5.4469e-05, 4.52364e-05, 3.8106e-05, 3.24102e-05, 2.77582e-05, 2.38966e-05, 2.06542e-05, 1.79071e-05, 1.55652e-05, 1.35581e-05, 1.1831e-05, 1.03401e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.28011e-05, 1.64903e-05, 1.9709e-05, 2.25768e-05, 2.51521e-05, 2.74706e-05, 2.95571e-05, 3.14324e-05, 3.31164e-05, 3.4625e-05, 3.59739e-05, 3.71792e-05, 3.82568e-05, 3.922e-05, 4.0079e-05, 4.08463e-05, 
			1.62283e-05, 1.98606e-05, 2.31587e-05, 2.61533e-05, 2.88722e-05, 3.13358e-05, 3.35619e-05, 3.55704e-05, 3.73761e-05, 3.90012e-05, 4.04569e-05, 4.17628e-05, 4.29317e-05, 4.39786e-05, 4.49147e-05, 4.57526e-05, 
			1.97497e-05, 2.33883e-05, 2.67448e-05, 2.98199e-05, 3.26253e-05, 3.51782e-05, 3.74924e-05, 3.95835e-05, 4.14697e-05, 4.31691e-05, 4.46973e-05, 4.6069e-05, 4.73001e-05, 4.84036e-05, 4.9393e-05, 5.02792e-05, 
			2.33792e-05, 2.70424e-05, 3.04419e-05, 3.35697e-05, 3.64349e-05, 3.9045e-05, 4.14194e-05, 4.35691e-05, 4.55127e-05, 4.72657e-05, 4.88452e-05, 5.02652e-05, 5.15417e-05, 5.26874e-05, 5.37166e-05, 5.46398e-05, 
			2.71073e-05, 3.07797e-05, 3.42061e-05, 3.73704e-05, 4.02727e-05, 4.29253e-05, 4.53408e-05, 4.75336e-05, 4.95183e-05, 5.1312e-05, 5.29293e-05, 5.43862e-05, 5.56968e-05, 5.68758e-05, 5.79354e-05, 5.88875e-05
		)
}

CapTable	"metal3_C_TOP_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.20394e-06, 5.40785e-06, 6.46929e-06, 7.42197e-06, 8.28382e-06, 9.06489e-06, 9.77282e-06, 1.04128e-05, 1.09892e-05, 1.15086e-05, 1.19767e-05, 1.23974e-05, 1.27738e-05, 1.31101e-05, 1.34122e-05, 1.36822e-05, 
			5.25114e-06, 6.42396e-06, 7.49967e-06, 8.4877e-06, 9.39283e-06, 1.02198e-05, 1.09745e-05, 1.16594e-05, 1.2282e-05, 1.28421e-05, 1.33493e-05, 1.3805e-05, 1.42151e-05, 1.45831e-05, 1.4914e-05, 1.52106e-05, 
			6.32032e-06, 7.4811e-06, 8.56842e-06, 9.57886e-06, 1.05121e-05, 1.13688e-05, 1.21529e-05, 1.28691e-05, 1.35202e-05, 1.41092e-05, 1.46412e-05, 1.51222e-05, 1.55552e-05, 1.59455e-05, 1.62963e-05, 1.6612e-05, 
			7.40665e-06, 8.56836e-06, 9.66493e-06, 1.06919e-05, 1.16443e-05, 1.25252e-05, 1.33306e-05, 1.40685e-05, 1.47399e-05, 1.53496e-05, 1.59016e-05, 1.64013e-05, 1.68521e-05, 1.7259e-05, 1.76251e-05, 1.79549e-05, 
			8.51769e-06, 9.67834e-06, 1.07831e-05, 1.18222e-05, 1.27909e-05, 1.36869e-05, 1.45096e-05, 1.52628e-05, 1.59506e-05, 1.65758e-05, 1.71436e-05, 1.76575e-05, 1.81223e-05, 1.85418e-05, 1.89196e-05, 1.92604e-05
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
			1.21952e-05, 1.57675e-05, 1.89067e-05, 2.17169e-05, 2.42486e-05, 2.65324e-05, 2.85875e-05, 3.04305e-05, 3.20795e-05, 3.35512e-05, 3.48594e-05, 3.60192e-05, 3.70456e-05, 3.79549e-05, 3.87555e-05, 3.94637e-05, 
			1.55599e-05, 1.91084e-05, 2.23478e-05, 2.53003e-05, 2.79886e-05, 3.04256e-05, 3.2626e-05, 3.4606e-05, 3.63809e-05, 3.79659e-05, 3.93795e-05, 4.06336e-05, 4.17477e-05, 4.27316e-05, 4.36042e-05, 4.4371e-05, 
			1.90457e-05, 2.2625e-05, 2.59417e-05, 2.89897e-05, 3.17743e-05, 3.43071e-05, 3.66009e-05, 3.8667e-05, 4.05209e-05, 4.21787e-05, 4.36592e-05, 4.49743e-05, 4.61442e-05, 4.71776e-05, 4.80947e-05, 4.89052e-05, 
			2.26606e-05, 2.62859e-05, 2.96605e-05, 3.27735e-05, 3.56264e-05, 3.82248e-05, 4.05794e-05, 4.27054e-05, 4.46134e-05, 4.63241e-05, 4.78489e-05, 4.92093e-05, 5.04145e-05, 5.14862e-05, 5.24322e-05, 5.32712e-05, 
			2.63954e-05, 3.0045e-05, 3.34592e-05, 3.66183e-05, 3.95173e-05, 4.21601e-05, 4.4557e-05, 4.67239e-05, 4.86701e-05, 5.0417e-05, 5.19743e-05, 5.33645e-05, 5.46005e-05, 5.56944e-05, 5.66663e-05, 5.75259e-05
		)
}

CapTable	"metal3_C_TOP_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.37296e-06, 6.94308e-06, 8.33598e-06, 9.5938e-06, 1.07356e-05, 1.17716e-05, 1.27101e-05, 1.35581e-05, 1.43201e-05, 1.50019e-05, 1.5611e-05, 1.61542e-05, 1.66372e-05, 1.70635e-05, 1.74424e-05, 1.7775e-05, 
			6.76589e-06, 8.30941e-06, 9.73502e-06, 1.10494e-05, 1.22565e-05, 1.3361e-05, 1.43671e-05, 1.52779e-05, 1.60991e-05, 1.68374e-05, 1.74967e-05, 1.80867e-05, 1.861e-05, 1.90764e-05, 1.9487e-05, 1.98537e-05, 
			8.19952e-06, 9.74264e-06, 1.11941e-05, 1.25471e-05, 1.37989e-05, 1.49489e-05, 1.59971e-05, 1.69492e-05, 1.78102e-05, 1.85852e-05, 1.92781e-05, 1.98988e-05, 2.04495e-05, 2.09418e-05, 2.13766e-05, 2.1761e-05, 
			9.67295e-06, 1.12279e-05, 1.27027e-05, 1.40857e-05, 1.5369e-05, 1.65497e-05, 1.76303e-05, 1.86111e-05, 1.95003e-05, 2.02993e-05, 2.10181e-05, 2.16581e-05, 2.22322e-05, 2.27399e-05, 2.31934e-05, 2.35935e-05, 
			1.11892e-05, 1.27542e-05, 1.42488e-05, 1.56525e-05, 1.69587e-05, 1.81635e-05, 1.9267e-05, 2.02696e-05, 2.11791e-05, 2.19962e-05, 2.27327e-05, 2.33898e-05, 2.39754e-05, 2.44997e-05, 2.49625e-05, 2.53733e-05
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

CapTable	"metal3_C_LATERAL_37MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182505, 0.000107507, 7.97944e-05, 6.47754e-05, 5.51148e-05, 4.82638e-05, 4.30938e-05, 3.90228e-05, 3.5717e-05, 3.29692e-05, 3.06434e-05, 2.86454e-05, 2.6908e-05, 2.53816e-05, 2.40282e-05, 2.28188e-05, 
			0.000194701, 0.00011712, 8.77876e-05, 7.16894e-05, 6.12374e-05, 5.37862e-05, 4.81446e-05, 4.36922e-05, 4.00706e-05, 3.70562e-05, 3.45016e-05, 3.23044e-05, 3.03912e-05, 2.8708e-05, 2.72136e-05, 2.58762e-05, 
			0.000202236, 0.000123644, 9.34774e-05, 7.6746e-05, 6.5827e-05, 5.80016e-05, 5.2058e-05, 4.73558e-05, 4.35232e-05, 4.03276e-05, 3.76146e-05, 3.52774e-05, 3.3239e-05, 3.14424e-05, 2.98446e-05, 2.8412e-05, 
			0.000207698, 0.000128607, 9.79514e-05, 8.08216e-05, 6.95802e-05, 6.14992e-05, 5.53434e-05, 5.04616e-05, 4.64746e-05, 4.31438e-05, 4.03108e-05, 3.78656e-05, 3.57292e-05, 3.3843e-05, 3.21624e-05, 3.06532e-05, 
			0.000211574, 0.000132518, 0.000101598, 8.42166e-05, 7.27596e-05, 6.45012e-05, 5.81932e-05, 5.31774e-05, 4.90726e-05, 4.56368e-05, 4.27092e-05, 4.01778e-05, 3.7962e-05, 3.60022e-05, 3.4253e-05, 3.26794e-05
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

CapTable	"metal3_C_TOP_GP_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.62954e-06, 4.58954e-06, 5.41e-06, 6.14005e-06, 6.79808e-06, 7.39917e-06, 7.95218e-06, 8.4623e-06, 8.93328e-06, 9.36905e-06, 9.77116e-06, 1.01425e-05, 1.04855e-05, 1.08018e-05, 1.10936e-05, 1.13626e-05, 
			4.40883e-06, 5.31247e-06, 6.12879e-06, 6.8739e-06, 7.55991e-06, 8.19415e-06, 8.7821e-06, 9.32748e-06, 9.83327e-06, 1.03026e-05, 1.07378e-05, 1.11406e-05, 1.15136e-05, 1.18583e-05, 1.21771e-05, 1.24713e-05, 
			5.18226e-06, 6.05931e-06, 6.87259e-06, 7.62925e-06, 8.33333e-06, 8.98918e-06, 9.60111e-06, 1.01705e-05, 1.07005e-05, 1.11936e-05, 1.16516e-05, 1.20768e-05, 1.2471e-05, 1.28361e-05, 1.31743e-05, 1.34867e-05, 
			5.95563e-06, 6.82293e-06, 7.63855e-06, 8.40401e-06, 9.12154e-06, 9.79357e-06, 1.04226e-05, 1.10104e-05, 1.15587e-05, 1.20698e-05, 1.25452e-05, 1.29875e-05, 1.33978e-05, 1.37792e-05, 1.41316e-05, 1.44592e-05, 
			6.7427e-06, 7.60199e-06, 8.41959e-06, 9.19374e-06, 9.92198e-06, 1.06065e-05, 1.12491e-05, 1.18509e-05, 1.24136e-05, 1.29387e-05, 1.34281e-05, 1.3884e-05, 1.43072e-05, 1.4701e-05, 1.5066e-05, 1.54053e-05
		)
}

CapTable	"metal3_C_LATERAL_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180236, 0.000104507, 7.61158e-05, 6.04592e-05, 5.01992e-05, 4.27864e-05, 3.70928e-05, 3.2537e-05, 2.87856e-05, 2.56312e-05, 2.29372e-05, 2.06086e-05, 1.8577e-05, 1.67911e-05, 1.52115e-05, 1.38073e-05, 
			0.000191588, 0.000113231, 8.31592e-05, 6.63588e-05, 5.5243e-05, 4.71686e-05, 4.0946e-05, 3.59558e-05, 3.18402e-05, 2.83756e-05, 2.54136e-05, 2.28514e-05, 2.06138e-05, 1.86451e-05, 1.69024e-05, 1.53518e-05, 
			0.000198213, 0.000118798, 8.78398e-05, 7.03546e-05, 5.87228e-05, 5.02288e-05, 4.36626e-05, 3.83852e-05, 3.40254e-05, 3.03502e-05, 2.72044e-05, 2.44802e-05, 2.20988e-05, 2.00014e-05, 1.81431e-05, 1.64882e-05, 
			0.000202692, 0.000122735, 9.12444e-05, 7.33188e-05, 6.13264e-05, 5.25418e-05, 4.57326e-05, 4.02486e-05, 3.57108e-05, 3.18802e-05, 2.85974e-05, 2.57516e-05, 2.32612e-05, 2.1066e-05, 1.91194e-05, 1.73843e-05, 
			0.000205524, 0.000125563, 9.37716e-05, 7.55612e-05, 6.33232e-05, 5.43354e-05, 4.73516e-05, 4.17144e-05, 3.70428e-05, 3.30944e-05, 2.9707e-05, 2.67672e-05, 2.41924e-05, 2.19208e-05, 1.99046e-05, 1.81062e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_37MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.159e-05, 1.43564e-05, 1.66125e-05, 1.85326e-05, 2.02099e-05, 2.17004e-05, 2.30393e-05, 2.42511e-05, 2.53537e-05, 2.63616e-05, 2.7286e-05, 2.81367e-05, 2.8922e-05, 2.96487e-05, 3.03236e-05, 3.09519e-05, 
			1.36932e-05, 1.61844e-05, 1.83364e-05, 2.02272e-05, 2.19124e-05, 2.34284e-05, 2.48015e-05, 2.60518e-05, 2.7195e-05, 2.82442e-05, 2.92101e-05, 3.01022e-05, 3.09285e-05, 3.16959e-05, 3.24106e-05, 3.30782e-05, 
			1.5673e-05, 1.79968e-05, 2.00646e-05, 2.19177e-05, 2.35878e-05, 2.51034e-05, 2.64846e-05, 2.77486e-05, 2.89092e-05, 2.99783e-05, 3.09662e-05, 3.18814e-05, 3.27318e-05, 3.35243e-05, 3.42647e-05, 3.49585e-05, 
			1.757e-05, 1.97846e-05, 2.17826e-05, 2.35934e-05, 2.52398e-05, 2.67428e-05, 2.81198e-05, 2.93854e-05, 3.05518e-05, 3.16301e-05, 3.26298e-05, 3.35592e-05, 3.44255e-05, 3.52351e-05, 3.59938e-05, 3.67065e-05, 
			1.9425e-05, 2.15386e-05, 2.3474e-05, 2.52414e-05, 2.68599e-05, 2.83444e-05, 2.97104e-05, 3.0971e-05, 3.21369e-05, 3.32185e-05, 3.42242e-05, 3.51621e-05, 3.6039e-05, 3.68608e-05, 3.76331e-05, 3.83606e-05
		)
}

CapTable	"metal3_C_TOP_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.61349e-06, 5.85185e-06, 6.91913e-06, 7.8691e-06, 8.73104e-06, 9.5205e-06, 1.0248e-05, 1.09197e-05, 1.15403e-05, 1.21132e-05, 1.2642e-05, 1.31291e-05, 1.35777e-05, 1.39902e-05, 1.43683e-05, 1.47156e-05, 
			5.63575e-06, 6.81057e-06, 7.87757e-06, 8.85539e-06, 9.75875e-06, 1.05955e-05, 1.13727e-05, 1.20941e-05, 1.27637e-05, 1.33843e-05, 1.39581e-05, 1.44878e-05, 1.4977e-05, 1.54271e-05, 1.58411e-05, 1.62221e-05, 
			6.65554e-06, 7.80436e-06, 8.87536e-06, 9.87409e-06, 1.0806e-05, 1.16761e-05, 1.24879e-05, 1.32443e-05, 1.3948e-05, 1.46014e-05, 1.52071e-05, 1.57668e-05, 1.62842e-05, 1.67613e-05, 1.72015e-05, 1.7606e-05, 
			7.68678e-06, 8.82922e-06, 9.90719e-06, 1.09232e-05, 1.18777e-05, 1.27731e-05, 1.36114e-05, 1.43945e-05, 1.51237e-05, 1.58025e-05, 1.64319e-05, 1.70147e-05, 1.75547e-05, 1.80526e-05, 1.85124e-05, 1.8935e-05, 
			8.74153e-06, 9.8796e-06, 1.09672e-05, 1.19981e-05, 1.2971e-05, 1.38864e-05, 1.47451e-05, 1.55487e-05, 1.62978e-05, 1.69959e-05, 1.76443e-05, 1.82463e-05, 1.88031e-05, 1.93181e-05, 1.97925e-05, 2.02299e-05
		)
}

CapTable	"metal3_C_LATERAL_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179922, 0.000104084, 7.55892e-05, 5.98336e-05, 4.948e-05, 4.19798e-05, 3.62056e-05, 3.1577e-05, 2.77604e-05, 2.45494e-05, 2.1807e-05, 1.94382e-05, 1.73743e-05, 1.55637e-05, 1.39666e-05, 1.25516e-05, 
			0.000191146, 0.00011267, 8.24834e-05, 6.55722e-05, 5.43518e-05, 4.61798e-05, 3.98676e-05, 3.47966e-05, 3.06094e-05, 2.70828e-05, 2.40684e-05, 2.14628e-05, 1.91912e-05, 1.71972e-05, 1.54371e-05, 1.38769e-05, 
			0.000197629, 0.000118086, 8.70034e-05, 6.93984e-05, 5.76536e-05, 4.9055e-05, 4.23932e-05, 3.70302e-05, 3.25948e-05, 2.8855e-05, 2.56552e-05, 2.28872e-05, 2.0472e-05, 1.83504e-05, 1.64768e-05, 1.48146e-05, 
			0.000201954, 0.000121861, 9.02368e-05, 7.21844e-05, 6.00728e-05, 5.11784e-05, 4.42696e-05, 3.86974e-05, 3.40824e-05, 3.01864e-05, 2.68502e-05, 2.39614e-05, 2.14392e-05, 1.92222e-05, 1.72631e-05, 1.55242e-05, 
			0.000204618, 0.000124515, 9.2584e-05, 7.42414e-05, 6.188e-05, 5.27792e-05, 4.5694e-05, 3.99676e-05, 3.5219e-05, 3.12062e-05, 2.77666e-05, 2.47864e-05, 2.21824e-05, 1.98924e-05, 1.78676e-05, 1.60699e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.07583e-05, 1.35977e-05, 1.60221e-05, 1.81613e-05, 2.00915e-05, 2.18523e-05, 2.34677e-05, 2.49541e-05, 2.63239e-05, 2.75861e-05, 2.87502e-05, 2.9823e-05, 3.0811e-05, 3.1721e-05, 3.25586e-05, 3.33296e-05, 
			1.31664e-05, 1.58626e-05, 1.8285e-05, 2.0489e-05, 2.25113e-05, 2.43755e-05, 2.60978e-05, 2.76908e-05, 2.91643e-05, 3.05268e-05, 3.1786e-05, 3.2949e-05, 3.40227e-05, 3.50138e-05, 3.59276e-05, 3.67705e-05, 
			1.55631e-05, 1.82021e-05, 2.06376e-05, 2.28861e-05, 2.49699e-05, 2.69034e-05, 2.86972e-05, 3.03623e-05, 3.19065e-05, 3.33373e-05, 3.46627e-05, 3.58888e-05, 3.70229e-05, 3.80712e-05, 3.90393e-05, 3.99337e-05, 
			1.79924e-05, 2.06166e-05, 2.3066e-05, 2.53512e-05, 2.74801e-05, 2.94638e-05, 3.13103e-05, 3.3028e-05, 3.46244e-05, 3.61066e-05, 3.7482e-05, 3.8756e-05, 3.99365e-05, 4.10282e-05, 4.20387e-05, 4.29718e-05, 
			2.04763e-05, 2.30898e-05, 2.55538e-05, 2.78641e-05, 3.00278e-05, 3.20491e-05, 3.39349e-05, 3.56932e-05, 3.73298e-05, 3.88516e-05, 4.02653e-05, 4.15768e-05, 4.27934e-05, 4.39198e-05, 4.4963e-05, 4.59274e-05
		)
}

CapTable	"metal3_C_TOP_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.88608e-06, 7.50295e-06, 8.91063e-06, 1.01733e-05, 1.13245e-05, 1.23831e-05, 1.33583e-05, 1.42574e-05, 1.50856e-05, 1.58469e-05, 1.65439e-05, 1.71807e-05, 1.77607e-05, 1.82887e-05, 1.87672e-05, 1.92006e-05, 
			7.25371e-06, 8.80914e-06, 1.02327e-05, 1.15453e-05, 1.27624e-05, 1.38921e-05, 1.494e-05, 1.5911e-05, 1.68073e-05, 1.7632e-05, 1.83883e-05, 1.90806e-05, 1.97127e-05, 2.02878e-05, 2.08095e-05, 2.12823e-05, 
			8.63823e-06, 1.01763e-05, 1.16202e-05, 1.29717e-05, 1.42351e-05, 1.54154e-05, 1.65146e-05, 1.7534e-05, 1.84761e-05, 1.93441e-05, 2.0142e-05, 2.0872e-05, 2.15386e-05, 2.21453e-05, 2.26967e-05, 2.3196e-05, 
			1.00554e-05, 1.16005e-05, 1.30652e-05, 1.4448e-05, 1.57496e-05, 1.69681e-05, 1.81038e-05, 1.91583e-05, 2.01346e-05, 2.10351e-05, 2.18621e-05, 2.262e-05, 2.33115e-05, 2.39412e-05, 2.45138e-05, 2.50332e-05, 
			1.15203e-05, 1.30705e-05, 1.45567e-05, 1.59674e-05, 1.72973e-05, 1.85435e-05, 1.97071e-05, 2.07895e-05, 2.1791e-05, 2.27149e-05, 2.35637e-05, 2.43413e-05, 2.50516e-05, 2.56995e-05, 2.62881e-05, 2.68216e-05
		)
}

CapTable	"metal3_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179406, 0.000103385, 7.47164e-05, 5.87956e-05, 4.82874e-05, 4.06466e-05, 3.47484e-05, 3.0014e-05, 2.61114e-05, 2.28342e-05, 2.00456e-05, 1.76492e-05, 1.55753e-05, 1.37702e-05, 1.21923e-05, 1.08091e-05, 
			0.00019041, 0.000111735, 8.13544e-05, 6.42588e-05, 5.28674e-05, 4.45424e-05, 3.80976e-05, 3.29164e-05, 2.86424e-05, 2.50522e-05, 2.1997e-05, 1.93714e-05, 1.70988e-05, 1.51206e-05, 1.33921e-05, 1.18758e-05, 
			0.000196651, 0.000116892, 8.55992e-05, 6.7797e-05, 5.5873e-05, 4.71168e-05, 4.03218e-05, 3.48518e-05, 3.03358e-05, 2.6541e-05, 2.331e-05, 2.0533e-05, 1.81292e-05, 1.60363e-05, 1.42067e-05, 1.26024e-05, 
			0.00020071, 0.000120386, 8.85424e-05, 7.0287e-05, 5.79942e-05, 4.89446e-05, 4.19086e-05, 3.6238e-05, 3.15524e-05, 2.76132e-05, 2.42582e-05, 2.1374e-05, 1.88766e-05, 1.67027e-05, 1.48012e-05, 1.3133e-05, 
			0.000203088, 0.000122747, 9.05922e-05, 7.2047e-05, 5.95092e-05, 5.02612e-05, 4.30594e-05, 3.72464e-05, 3.24408e-05, 2.83988e-05, 2.4955e-05, 2.19936e-05, 1.94293e-05, 1.71955e-05, 1.5242e-05, 1.35283e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.01621e-05, 1.28791e-05, 1.52106e-05, 1.72807e-05, 1.91541e-05, 2.0868e-05, 2.24436e-05, 2.38947e-05, 2.52324e-05, 2.64647e-05, 2.7599e-05, 2.86424e-05, 2.96007e-05, 3.04801e-05, 3.12871e-05, 3.20259e-05, 
			1.24947e-05, 1.50932e-05, 1.7439e-05, 1.95818e-05, 2.15549e-05, 2.33789e-05, 2.50663e-05, 2.6628e-05, 2.80719e-05, 2.94056e-05, 3.06365e-05, 3.17713e-05, 3.28149e-05, 3.37747e-05, 3.46563e-05, 3.54642e-05, 
			1.48345e-05, 1.73924e-05, 1.97632e-05, 2.19615e-05, 2.40032e-05, 2.59018e-05, 2.76658e-05, 2.93031e-05, 3.0821e-05, 3.22255e-05, 3.35235e-05, 3.4722e-05, 3.5826e-05, 3.68422e-05, 3.77754e-05, 3.86331e-05, 
			1.72182e-05, 1.9777e-05, 2.2174e-05, 2.44164e-05, 2.65111e-05, 2.84657e-05, 3.02865e-05, 3.19798e-05, 3.3553e-05, 3.50104e-05, 3.63591e-05, 3.76058e-05, 3.87545e-05, 3.98132e-05, 4.07863e-05, 4.16814e-05, 
			1.96705e-05, 2.22294e-05, 2.46508e-05, 2.69285e-05, 2.9064e-05, 3.1061e-05, 3.29252e-05, 3.46621e-05, 3.62779e-05, 3.77763e-05, 3.91643e-05, 4.04468e-05, 4.16312e-05, 4.27221e-05, 4.3727e-05, 4.46504e-05
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
			9.53172e-06, 1.21351e-05, 1.43894e-05, 1.6406e-05, 1.82417e-05, 1.99258e-05, 2.14767e-05, 2.29042e-05, 2.42158e-05, 2.54179e-05, 2.65175e-05, 2.75209e-05, 2.84338e-05, 2.9262e-05, 3.0013e-05, 3.06913e-05, 
			1.18099e-05, 1.43249e-05, 1.66149e-05, 1.87214e-05, 2.06692e-05, 2.2473e-05, 2.41424e-05, 2.56834e-05, 2.7103e-05, 2.84068e-05, 2.96007e-05, 3.06908e-05, 3.16829e-05, 3.25849e-05, 3.34022e-05, 3.41421e-05, 
			1.41178e-05, 1.66191e-05, 1.89516e-05, 2.11273e-05, 2.31552e-05, 2.50412e-05, 2.6791e-05, 2.84098e-05, 2.9903e-05, 3.12747e-05, 3.25311e-05, 3.36795e-05, 3.47252e-05, 3.56765e-05, 3.6539e-05, 3.73196e-05, 
			1.64926e-05, 1.90135e-05, 2.13894e-05, 2.3621e-05, 2.57088e-05, 2.76554e-05, 2.94648e-05, 3.114e-05, 3.26857e-05, 3.41059e-05, 3.54083e-05, 3.65979e-05, 3.76827e-05, 3.86686e-05, 3.95635e-05, 4.03736e-05, 
			1.89527e-05, 2.14927e-05, 2.39061e-05, 2.61806e-05, 2.83135e-05, 3.03061e-05, 3.21584e-05, 3.38742e-05, 3.5458e-05, 3.69139e-05, 3.82494e-05, 3.94701e-05, 4.05823e-05, 4.15939e-05, 4.2512e-05, 4.33431e-05
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

CapTable	"metal3_C_BOTTOM_GP_47MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.2062e-05, 1.49806e-05, 1.73842e-05, 1.94516e-05, 2.12823e-05, 2.29342e-05, 2.44442e-05, 2.58362e-05, 2.7127e-05, 2.83289e-05, 2.94518e-05, 3.05029e-05, 3.14887e-05, 3.24142e-05, 3.32841e-05, 3.41022e-05, 
			1.43042e-05, 1.69542e-05, 1.92698e-05, 2.13328e-05, 2.32016e-05, 2.49136e-05, 2.64946e-05, 2.79633e-05, 2.9333e-05, 3.06147e-05, 3.18163e-05, 3.29448e-05, 3.40063e-05, 3.50051e-05, 3.59458e-05, 3.68325e-05, 
			1.6435e-05, 1.89352e-05, 2.11908e-05, 2.3246e-05, 2.51336e-05, 2.68808e-05, 2.85063e-05, 3.00248e-05, 3.14477e-05, 3.27836e-05, 3.40397e-05, 3.52227e-05, 3.63374e-05, 3.73883e-05, 3.838e-05, 3.93158e-05, 
			1.851e-05, 2.09251e-05, 2.3142e-05, 2.51886e-05, 2.70883e-05, 2.8859e-05, 3.05159e-05, 3.20707e-05, 3.35323e-05, 3.49087e-05, 3.62061e-05, 3.74299e-05, 3.85854e-05, 3.96766e-05, 4.07074e-05, 4.16812e-05, 
			2.0579e-05, 2.29246e-05, 2.51124e-05, 2.71518e-05, 2.90591e-05, 3.08467e-05, 3.25267e-05, 3.41085e-05, 3.55997e-05, 3.70071e-05, 3.83364e-05, 3.95925e-05, 4.07798e-05, 4.19025e-05, 4.29641e-05, 4.39681e-05
		)
}

CapTable	"metal3_C_LATERAL_47MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182103, 0.000106976, 7.9132e-05, 6.39716e-05, 5.41572e-05, 4.71404e-05, 4.17932e-05, 3.75358e-05, 3.40372e-05, 3.10932e-05, 2.857e-05, 2.63764e-05, 2.44472e-05, 2.27346e-05, 2.12026e-05, 1.98232e-05, 
			0.000194163, 0.000116431, 8.69342e-05, 7.06552e-05, 6.00066e-05, 5.23446e-05, 4.64808e-05, 4.1798e-05, 3.79416e-05, 3.46912e-05, 3.19024e-05, 2.94756e-05, 2.73396e-05, 2.54424e-05, 2.37444e-05, 2.22148e-05, 
			0.00020153, 0.000122754, 9.23822e-05, 7.54266e-05, 6.4266e-05, 5.61858e-05, 4.99778e-05, 4.50056e-05, 4.09014e-05, 3.74362e-05, 3.4459e-05, 3.1865e-05, 2.958e-05, 2.75488e-05, 2.57294e-05, 2.40896e-05, 
			0.000206778, 0.000127461, 9.6555e-05, 7.91554e-05, 6.76282e-05, 5.92502e-05, 5.2791e-05, 4.76038e-05, 4.33134e-05, 3.96848e-05, 3.65628e-05, 3.384e-05, 3.1439e-05, 2.93028e-05, 2.73882e-05, 2.56616e-05, 
			0.000210384, 0.000131055, 9.98386e-05, 8.21422e-05, 7.03574e-05, 6.17636e-05, 5.51176e-05, 4.9766e-05, 4.53314e-05, 4.15752e-05, 3.83392e-05, 3.5514e-05, 3.30206e-05, 3.08006e-05, 2.88096e-05, 2.7013e-05
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

CapTable	"metal3_C_BOTTOM_GP_46MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.2258e-06, 1.15528e-05, 1.35052e-05, 1.52128e-05, 1.67453e-05, 1.81447e-05, 1.94355e-05, 2.06327e-05, 2.17482e-05, 2.27894e-05, 2.37622e-05, 2.46722e-05, 2.55231e-05, 2.63191e-05, 2.70634e-05, 2.77589e-05, 
			1.11028e-05, 1.32622e-05, 1.51803e-05, 1.69191e-05, 1.85113e-05, 1.99854e-05, 2.13576e-05, 2.26392e-05, 2.38387e-05, 2.49633e-05, 2.60171e-05, 2.70051e-05, 2.79312e-05, 2.87991e-05, 2.96123e-05, 3.03731e-05, 
			1.29293e-05, 1.50081e-05, 1.6914e-05, 1.86737e-05, 2.03078e-05, 2.18342e-05, 2.32636e-05, 2.46049e-05, 2.58646e-05, 2.70483e-05, 2.81603e-05, 2.9205e-05, 3.01855e-05, 3.11062e-05, 3.19691e-05, 3.2778e-05, 
			1.47514e-05, 1.67949e-05, 1.86997e-05, 2.04796e-05, 2.21467e-05, 2.37131e-05, 2.51869e-05, 2.6574e-05, 2.78804e-05, 2.91101e-05, 3.02674e-05, 3.13563e-05, 3.23795e-05, 3.33411e-05, 3.42431e-05, 3.50897e-05, 
			1.65971e-05, 1.86185e-05, 2.05281e-05, 2.23263e-05, 2.40208e-05, 2.56195e-05, 2.71282e-05, 2.85521e-05, 2.98955e-05, 3.11621e-05, 3.23557e-05, 3.34797e-05, 3.45371e-05, 3.55313e-05, 3.6465e-05, 3.73419e-05
		)
}

CapTable	"metal3_C_TOP_GP_46MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.9668e-06, 4.97151e-06, 5.81784e-06, 6.55897e-06, 7.22578e-06, 7.83408e-06, 8.39512e-06, 8.9163e-06, 9.40211e-06, 9.85598e-06, 1.02809e-05, 1.06785e-05, 1.1051e-05, 1.13996e-05, 1.17257e-05, 1.20312e-05, 
			4.75302e-06, 5.68235e-06, 6.51185e-06, 7.25999e-06, 7.94989e-06, 8.58853e-06, 9.18346e-06, 9.74012e-06, 1.02618e-05, 1.0751e-05, 1.12107e-05, 1.16422e-05, 1.20475e-05, 1.24276e-05, 1.27838e-05, 1.3118e-05, 
			5.5165e-06, 6.40689e-06, 7.22543e-06, 7.98243e-06, 8.68715e-06, 9.3463e-06, 9.96483e-06, 1.05464e-05, 1.10937e-05, 1.16088e-05, 1.20937e-05, 1.25497e-05, 1.29789e-05, 1.33817e-05, 1.37603e-05, 1.41153e-05, 
			6.27259e-06, 7.14489e-06, 7.95947e-06, 8.72276e-06, 9.44031e-06, 1.01159e-05, 1.07526e-05, 1.13537e-05, 1.19208e-05, 1.24561e-05, 1.29606e-05, 1.34358e-05, 1.38837e-05, 1.43046e-05, 1.47006e-05, 1.50722e-05, 
			7.03893e-06, 7.89649e-06, 8.70989e-06, 9.47972e-06, 1.0208e-05, 1.08969e-05, 1.15486e-05, 1.21655e-05, 1.27486e-05, 1.33001e-05, 1.38203e-05, 1.43113e-05, 1.4774e-05, 1.52097e-05, 1.56195e-05, 1.60045e-05
		)
}

CapTable	"metal3_C_LATERAL_46MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181183, 0.000105763, 7.7644e-05, 6.22244e-05, 5.2165e-05, 4.4917e-05, 3.9353e-05, 3.4894e-05, 3.12088e-05, 2.8094e-05, 2.5416e-05, 2.3083e-05, 2.10298e-05, 1.92079e-05, 1.75807e-05, 1.61195e-05, 
			0.000192912, 0.000114869, 8.50748e-05, 6.85114e-05, 5.75922e-05, 4.96748e-05, 4.35714e-05, 3.8666e-05, 3.46044e-05, 3.11664e-05, 2.82076e-05, 2.56282e-05, 2.33566e-05, 2.134e-05, 1.9538e-05, 1.79193e-05, 
			0.000199923, 0.000120818, 9.01286e-05, 7.28684e-05, 6.14184e-05, 5.3065e-05, 4.66016e-05, 4.13926e-05, 3.70708e-05, 3.34072e-05, 3.02506e-05, 2.74962e-05, 2.50686e-05, 2.2912e-05, 2.0984e-05, 1.92512e-05, 
			0.000204786, 0.000125125, 9.38848e-05, 7.61646e-05, 6.43334e-05, 5.56692e-05, 4.89434e-05, 4.351e-05, 3.89936e-05, 3.51596e-05, 3.18526e-05, 2.89642e-05, 2.64166e-05, 2.4152e-05, 2.21264e-05, 2.03048e-05, 
			0.000207986, 0.000128298, 9.6733e-05, 7.8704e-05, 6.66042e-05, 5.77154e-05, 5.07954e-05, 4.5191e-05, 4.05254e-05, 3.65594e-05, 3.31352e-05, 3.01418e-05, 2.75e-05, 2.51502e-05, 2.30472e-05, 2.1155e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.63506e-06, 1.08464e-05, 1.27164e-05, 1.43609e-05, 1.58443e-05, 1.72032e-05, 1.84602e-05, 1.96277e-05, 2.07159e-05, 2.17316e-05, 2.26799e-05, 2.35649e-05, 2.43903e-05, 2.51597e-05, 2.58763e-05, 2.65434e-05, 
			1.04485e-05, 1.25175e-05, 1.43682e-05, 1.6052e-05, 1.76025e-05, 1.90419e-05, 2.03847e-05, 2.16405e-05, 2.28161e-05, 2.39173e-05, 2.49479e-05, 2.59116e-05, 2.68125e-05, 2.76539e-05, 2.8438e-05, 2.91694e-05, 
			1.22277e-05, 1.42335e-05, 1.60834e-05, 1.77988e-05, 1.93976e-05, 2.08948e-05, 2.22997e-05, 2.36187e-05, 2.48572e-05, 2.60195e-05, 2.71097e-05, 2.81306e-05, 2.90866e-05, 2.99794e-05, 3.08123e-05, 3.159e-05, 
			1.40127e-05, 1.59996e-05, 1.78579e-05, 1.96015e-05, 2.12413e-05, 2.27842e-05, 2.42374e-05, 2.56057e-05, 2.68929e-05, 2.8103e-05, 2.92396e-05, 3.0305e-05, 3.13035e-05, 3.22365e-05, 3.31082e-05, 3.39198e-05, 
			1.58363e-05, 1.78121e-05, 1.96842e-05, 2.14533e-05, 2.31262e-05, 2.47063e-05, 2.61981e-05, 2.76058e-05, 2.8932e-05, 3.01806e-05, 3.13538e-05, 3.24541e-05, 3.34861e-05, 3.44512e-05, 3.53516e-05, 3.61939e-05
		)
}

CapTable	"metal3_C_TOP_GP_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.99694e-06, 6.28482e-06, 7.37632e-06, 8.33887e-06, 9.20823e-06, 1.0005e-05, 1.07413e-05, 1.14266e-05, 1.20658e-05, 1.26628e-05, 1.32204e-05, 1.37415e-05, 1.42282e-05, 1.46824e-05, 1.51057e-05, 1.54998e-05, 
			6.02191e-06, 7.22371e-06, 8.30176e-06, 9.28308e-06, 1.01886e-05, 1.10301e-05, 1.18156e-05, 1.25511e-05, 1.32406e-05, 1.38868e-05, 1.44929e-05, 1.50606e-05, 1.55917e-05, 1.60879e-05, 1.65515e-05, 1.69829e-05, 
			7.02908e-06, 8.18927e-06, 9.26257e-06, 1.02592e-05, 1.11905e-05, 1.20641e-05, 1.28846e-05, 1.36564e-05, 1.43823e-05, 1.50646e-05, 1.57057e-05, 1.63071e-05, 1.687e-05, 1.7397e-05, 1.78899e-05, 1.83491e-05, 
			8.03629e-06, 9.18024e-06, 1.02551e-05, 1.12667e-05, 1.22195e-05, 1.31183e-05, 1.39663e-05, 1.47667e-05, 1.55213e-05, 1.6232e-05, 1.69001e-05, 1.75275e-05, 1.81154e-05, 1.86664e-05, 1.91814e-05, 1.96635e-05, 
			9.06172e-06, 1.01953e-05, 1.12758e-05, 1.23005e-05, 1.32718e-05, 1.4192e-05, 1.50627e-05, 1.58864e-05, 1.66642e-05, 1.73969e-05, 1.80867e-05, 1.87355e-05, 1.93436e-05, 1.99133e-05, 2.04476e-05, 2.09444e-05
		)
}

CapTable	"metal3_C_LATERAL_45MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180828, 0.00010529, 7.70612e-05, 6.15376e-05, 5.13802e-05, 4.40402e-05, 3.8391e-05, 3.38538e-05, 3.0098e-05, 2.692e-05, 2.41868e-05, 2.18066e-05, 1.97139e-05, 1.786e-05, 1.6208e-05, 1.47288e-05, 
			0.000192422, 0.000114254, 8.4339e-05, 6.76608e-05, 5.6633e-05, 4.86138e-05, 4.24162e-05, 3.74246e-05, 3.32852e-05, 2.97784e-05, 2.67596e-05, 2.41294e-05, 2.18158e-05, 1.97655e-05, 1.79382e-05, 1.63018e-05, 
			0.000199286, 0.000120048, 8.923e-05, 7.18466e-05, 6.02802e-05, 5.1818e-05, 4.5254e-05, 3.99538e-05, 3.55504e-05, 3.18152e-05, 2.85964e-05, 2.579e-05, 2.332e-05, 2.11306e-05, 1.91785e-05, 1.74296e-05, 
			0.000203992, 0.00012419, 9.2814e-05, 7.49638e-05, 6.30102e-05, 5.42324e-05, 4.74024e-05, 4.18746e-05, 3.72748e-05, 3.3368e-05, 2.99986e-05, 2.7059e-05, 2.44702e-05, 2.21746e-05, 2.0127e-05, 1.82926e-05, 
			0.000207024, 0.000127189, 9.5482e-05, 7.73182e-05, 6.5092e-05, 5.60864e-05, 4.90602e-05, 4.33604e-05, 3.86108e-05, 3.45728e-05, 3.10876e-05, 2.80448e-05, 2.5364e-05, 2.2986e-05, 2.08644e-05, 1.89631e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.04056e-06, 1.01526e-05, 1.19568e-05, 1.35591e-05, 1.50158e-05, 1.63574e-05, 1.75993e-05, 1.87543e-05, 1.98283e-05, 2.08256e-05, 2.17511e-05, 2.26077e-05, 2.33993e-05, 2.41306e-05, 2.48021e-05, 2.54203e-05, 
			9.8133e-06, 1.1814e-05, 1.36221e-05, 1.52795e-05, 1.68161e-05, 1.82473e-05, 1.95838e-05, 2.08317e-05, 2.19952e-05, 2.30786e-05, 2.40863e-05, 2.50201e-05, 2.58844e-05, 2.66809e-05, 2.7416e-05, 2.80906e-05, 
			1.15749e-05, 1.3537e-05, 1.53628e-05, 1.7067e-05, 1.86624e-05, 2.01596e-05, 2.15625e-05, 2.28764e-05, 2.41039e-05, 2.52483e-05, 2.63134e-05, 2.73001e-05, 2.82144e-05, 2.9058e-05, 2.9836e-05, 3.05512e-05, 
			1.33655e-05, 1.53275e-05, 1.71774e-05, 1.8922e-05, 2.05661e-05, 2.21133e-05, 2.35676e-05, 2.49319e-05, 2.62077e-05, 2.73984e-05, 2.85049e-05, 2.95328e-05, 3.04834e-05, 3.13624e-05, 3.21713e-05, 3.29163e-05, 
			1.52093e-05, 1.71782e-05, 1.90542e-05, 2.08329e-05, 2.25156e-05, 2.41029e-05, 2.55974e-05, 2.70003e-05, 2.83124e-05, 2.95374e-05, 3.06766e-05, 3.17346e-05, 3.27139e-05, 3.36178e-05, 3.44515e-05, 3.52184e-05
		)
}

CapTable	"metal3_C_TOP_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.32144e-06, 7.99684e-06, 9.43482e-06, 1.0715e-05, 1.18778e-05, 1.29475e-05, 1.39399e-05, 1.48615e-05, 1.57184e-05, 1.65155e-05, 1.72555e-05, 1.79411e-05, 1.85751e-05, 1.9159e-05, 1.96983e-05, 2.0193e-05, 
			7.6967e-06, 9.28436e-06, 1.07227e-05, 1.20431e-05, 1.32665e-05, 1.44068e-05, 1.54714e-05, 1.64661e-05, 1.73952e-05, 1.82609e-05, 1.90654e-05, 1.98117e-05, 2.05024e-05, 2.11416e-05, 2.17292e-05, 2.22703e-05, 
			9.07011e-06, 1.06236e-05, 1.20712e-05, 1.34254e-05, 1.4694e-05, 1.5884e-05, 1.70017e-05, 1.8049e-05, 1.90284e-05, 1.99419e-05, 2.07916e-05, 2.15816e-05, 2.23128e-05, 2.29879e-05, 2.36105e-05, 2.41836e-05, 
			1.04635e-05, 1.20122e-05, 1.34766e-05, 1.486e-05, 1.61653e-05, 1.73962e-05, 1.85542e-05, 1.96409e-05, 2.06578e-05, 2.16073e-05, 2.24923e-05, 2.33135e-05, 2.40745e-05, 2.47773e-05, 2.54252e-05, 2.60216e-05, 
			1.18977e-05, 1.34478e-05, 1.49294e-05, 1.63397e-05, 1.7676e-05, 1.89387e-05, 2.01275e-05, 2.12446e-05, 2.22918e-05, 2.32695e-05, 2.41796e-05, 2.50251e-05, 2.58089e-05, 2.65323e-05, 2.71998e-05, 2.78135e-05
		)
}

CapTable	"metal3_C_LATERAL_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180242, 0.000104507, 7.60922e-05, 6.03922e-05, 5.00694e-05, 4.2577e-05, 3.6791e-05, 3.21342e-05, 2.8278e-05, 2.5019e-05, 2.22236e-05, 1.98004e-05, 1.76823e-05, 1.58194e-05, 1.41732e-05, 1.2713e-05, 
			0.000191604, 0.000113224, 8.31032e-05, 6.62292e-05, 5.50188e-05, 4.68334e-05, 4.0489e-05, 3.5372e-05, 3.11294e-05, 2.7542e-05, 2.44644e-05, 2.17966e-05, 1.94648e-05, 1.74143e-05, 1.56027e-05, 1.39966e-05, 
			0.000198215, 0.000118748, 8.7709e-05, 7.01166e-05, 5.83578e-05, 4.97242e-05, 4.30116e-05, 3.7587e-05, 3.30846e-05, 2.92752e-05, 2.60062e-05, 2.31718e-05, 2.0694e-05, 1.8516e-05, 1.65912e-05, 1.48843e-05, 
			0.000202644, 0.0001226, 9.0992e-05, 7.2926e-05, 6.07776e-05, 5.18292e-05, 4.48546e-05, 3.92094e-05, 3.45196e-05, 3.05488e-05, 2.71406e-05, 2.41846e-05, 2.16012e-05, 1.93291e-05, 1.73227e-05, 1.55426e-05, 
			0.00020538, 0.000125294, 9.33514e-05, 7.49714e-05, 6.25534e-05, 5.33834e-05, 4.62218e-05, 4.04158e-05, 3.5588e-05, 3.14986e-05, 2.79882e-05, 2.49426e-05, 2.228e-05, 1.99397e-05, 1.78712e-05, 1.60372e-05
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

CapTable	"metal2_C_LATERAL_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167743, 8.91582e-05, 5.92586e-05, 4.3014e-05, 3.27744e-05, 2.57746e-05, 2.0739e-05, 1.69854e-05, 1.41126e-05, 1.18672e-05, 1.00819e-05, 8.64142e-06, 7.46446e-06, 6.49206e-06, 5.68058e-06, 4.99732e-06, 
			0.000174708, 9.44738e-05, 6.35864e-05, 4.6688e-05, 3.59408e-05, 2.85336e-05, 2.31602e-05, 1.9121e-05, 1.60039e-05, 1.35481e-05, 1.15805e-05, 9.98134e-06, 8.66568e-06, 7.57154e-06, 6.65286e-06, 5.87478e-06, 
			0.0001783, 9.7767e-05, 6.65022e-05, 4.9265e-05, 3.8248e-05, 3.05956e-05, 2.50066e-05, 2.07778e-05, 1.74928e-05, 1.48884e-05, 1.27889e-05, 1.10725e-05, 9.65254e-06, 8.46534e-06, 7.46342e-06, 6.61074e-06, 
			0.000180749, 0.000100194, 6.87482e-05, 5.1312e-05, 4.01e-05, 3.22774e-05, 2.65328e-05, 2.21624e-05, 1.87492e-05, 1.60289e-05, 1.38249e-05, 1.20143e-05, 1.05093e-05, 9.2453e-06, 8.17394e-06, 7.25836e-06, 
			0.000182242, 0.000102046, 7.05434e-05, 5.29858e-05, 4.16402e-05, 3.36958e-05, 2.78344e-05, 2.33518e-05, 1.98356e-05, 1.70209e-05, 1.47308e-05, 1.28416e-05, 1.1265e-05, 9.93564e-06, 8.80466e-06, 7.83456e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.0329e-05, 4.01444e-05, 4.78702e-05, 5.38748e-05, 5.85439e-05, 6.22003e-05, 6.50901e-05, 6.73977e-05, 6.926e-05, 7.07795e-05, 7.20328e-05, 7.30774e-05, 7.39574e-05, 7.47062e-05, 7.53498e-05, 7.59086e-05, 
			4.20324e-05, 5.14824e-05, 5.89922e-05, 6.48908e-05, 6.95362e-05, 7.32184e-05, 7.61624e-05, 7.85402e-05, 8.0481e-05, 8.20828e-05, 8.34172e-05, 8.45409e-05, 8.54972e-05, 8.63193e-05, 8.70327e-05, 8.76585e-05, 
			5.33646e-05, 6.24048e-05, 6.96452e-05, 7.539e-05, 7.9953e-05, 8.36056e-05, 8.65552e-05, 8.8959e-05, 9.09384e-05, 9.25864e-05, 9.39724e-05, 9.51494e-05, 9.61602e-05, 9.70374e-05, 9.78044e-05, 9.84839e-05, 
			6.42394e-05, 7.29284e-05, 7.99204e-05, 8.55074e-05, 8.99802e-05, 9.3587e-05, 9.65204e-05, 9.89308e-05, 0.000100932, 0.00010261, 0.000104032, 0.00010525, 0.000106304, 0.000107226, 0.00010804, 0.000108766, 
			7.4696e-05, 8.3036e-05, 8.9796e-05, 9.52298e-05, 9.9611e-05, 0.000103164, 0.000106073, 0.00010848, 0.000110492, 0.000112191, 0.000113642, 0.000114894, 0.000115985, 0.000116946, 0.000117802, 0.00011857
		)
}

CapTable	"metal2_C_LATERAL_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000169723, 9.20326e-05, 6.29368e-05, 4.73802e-05, 3.77124e-05, 3.11786e-05, 2.65178e-05, 2.30628e-05, 2.04252e-05, 1.83632e-05, 1.67186e-05, 1.53839e-05, 1.42838e-05, 1.33643e-05, 1.25857e-05, 1.19183e-05, 
			0.000178129, 9.89776e-05, 6.90458e-05, 5.29582e-05, 4.28828e-05, 3.60236e-05, 3.10916e-05, 2.74048e-05, 2.4566e-05, 2.23272e-05, 2.05258e-05, 1.90511e-05, 1.78248e-05, 1.67907e-05, 1.59073e-05, 1.51435e-05, 
			0.000183465, 0.000104176, 7.39948e-05, 5.7671e-05, 4.7408e-05, 4.03704e-05, 3.52768e-05, 3.1443e-05, 2.84696e-05, 2.61076e-05, 2.41926e-05, 2.26126e-05, 2.12888e-05, 2.01636e-05, 1.91946e-05, 1.83501e-05, 
			0.000187935, 0.000108766, 7.85156e-05, 6.20826e-05, 5.16968e-05, 4.4546e-05, 3.93416e-05, 3.54012e-05, 3.2326e-05, 2.9867e-05, 2.786e-05, 2.61928e-05, 2.47856e-05, 2.3581e-05, 2.25358e-05, 2.16182e-05, 
			0.000191689, 0.000113004, 8.2796e-05, 6.63202e-05, 5.5863e-05, 4.86382e-05, 4.33544e-05, 3.933e-05, 3.61718e-05, 3.36316e-05, 3.15456e-05, 2.98016e-05, 2.832e-05, 2.70428e-05, 2.59274e-05, 2.49408e-05
		)
}

CapTable	"metal2_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00016766, 8.90366e-05, 5.9098e-05, 4.2817e-05, 3.25456e-05, 2.55192e-05, 2.04626e-05, 1.66931e-05, 1.38087e-05, 1.15558e-05, 9.76624e-06, 8.32448e-06, 7.14868e-06, 6.17942e-06, 5.3729e-06, 4.69604e-06, 
			0.000174579, 9.43004e-05, 6.33678e-05, 4.64276e-05, 3.5644e-05, 2.82066e-05, 2.28092e-05, 1.87522e-05, 1.56226e-05, 1.31589e-05, 1.11874e-05, 9.5879e-06, 8.27486e-06, 7.1858e-06, 6.2743e-06, 5.50524e-06, 
			0.000178118, 9.75362e-05, 6.62216e-05, 4.89384e-05, 3.78816e-05, 3.01964e-05, 2.45822e-05, 2.03346e-05, 1.70371e-05, 1.44254e-05, 1.23231e-05, 1.06081e-05, 9.19282e-06, 8.01316e-06, 7.02122e-06, 6.1805e-06, 
			0.000180511, 9.99022e-05, 6.84022e-05, 5.09166e-05, 3.96624e-05, 3.1806e-05, 2.60352e-05, 2.16462e-05, 1.82211e-05, 1.54949e-05, 1.32901e-05, 1.14831e-05, 9.98546e-06, 8.73198e-06, 7.67384e-06, 6.77374e-06, 
			0.000181942, 0.000101689, 7.01292e-05, 5.252e-05, 4.1131e-05, 3.3152e-05, 2.72648e-05, 2.27646e-05, 1.9238e-05, 1.64195e-05, 1.4131e-05, 1.22483e-05, 1.06821e-05, 9.3668e-06, 8.25274e-06, 7.30202e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.05508e-05, 4.08987e-05, 4.91734e-05, 5.56765e-05, 6.07784e-05, 6.48017e-05, 6.79933e-05, 7.05451e-05, 7.2602e-05, 7.42752e-05, 7.56468e-05, 7.678e-05, 7.77241e-05, 7.85165e-05, 7.91869e-05, 7.97563e-05, 
			4.3448e-05, 5.37651e-05, 6.20665e-05, 6.8668e-05, 7.39052e-05, 7.80798e-05, 8.14284e-05, 8.41347e-05, 8.63367e-05, 8.81447e-05, 8.96399e-05, 9.08867e-05, 9.19319e-05, 9.28168e-05, 9.35687e-05, 9.42139e-05, 
			5.64433e-05, 6.66357e-05, 7.49027e-05, 8.15255e-05, 8.68218e-05, 9.10813e-05, 9.45271e-05, 9.73335e-05, 9.96351e-05, 0.000101537, 0.000103121, 0.00010445, 0.000105572, 0.000106526, 0.000107342, 0.000108045, 
			6.94155e-05, 7.95194e-05, 8.77425e-05, 9.43717e-05, 9.97107e-05, 0.000104029, 0.000107543, 0.000110424, 0.000112801, 0.000114777, 0.000116432, 0.000117825, 0.000119011, 0.000120021, 0.00012089, 0.000121642, 
			8.23555e-05, 9.2349e-05, 0.000100526, 0.000107153, 0.00011252, 0.00011688, 0.000120447, 0.000123387, 0.000125825, 0.00012786, 0.000129572, 0.000131023, 0.000132259, 0.000133321, 0.000134235, 0.000135029
		)
}

CapTable	"metal2_C_TOP_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.30876e-06, 3.09808e-06, 3.78399e-06, 4.37054e-06, 4.85827e-06, 5.25523e-06, 5.57932e-06, 5.84421e-06, 6.06136e-06, 6.23903e-06, 6.38628e-06, 6.50917e-06, 6.61212e-06, 6.6988e-06, 6.7719e-06, 6.83549e-06, 
			3.07761e-06, 3.8541e-06, 4.55806e-06, 5.15397e-06, 5.66001e-06, 6.07864e-06, 6.42339e-06, 6.7083e-06, 6.94445e-06, 7.14017e-06, 7.3036e-06, 7.44097e-06, 7.55738e-06, 7.65563e-06, 7.74043e-06, 7.81236e-06, 
			3.84809e-06, 4.62032e-06, 5.3171e-06, 5.92455e-06, 6.44019e-06, 6.87209e-06, 7.23028e-06, 7.52865e-06, 7.77804e-06, 7.98655e-06, 8.16177e-06, 8.30952e-06, 8.43643e-06, 8.54405e-06, 8.63688e-06, 8.71723e-06, 
			4.61109e-06, 5.37921e-06, 6.07834e-06, 6.68933e-06, 7.21232e-06, 7.65294e-06, 8.02173e-06, 8.33054e-06, 8.58986e-06, 8.80849e-06, 8.99256e-06, 9.15022e-06, 9.28365e-06, 9.4001e-06, 9.49968e-06, 9.58647e-06, 
			5.37493e-06, 6.13582e-06, 6.83622e-06, 7.45051e-06, 7.97906e-06, 8.4266e-06, 8.80318e-06, 9.1204e-06, 9.38726e-06, 9.61448e-06, 9.80669e-06, 9.9712e-06, 1.01125e-05, 1.02334e-05, 1.03401e-05, 1.04321e-05
		)
}

CapTable	"metal2_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000167403, 8.86602e-05, 5.86054e-05, 4.22182e-05, 3.18544e-05, 2.4751e-05, 1.96318e-05, 1.58138e-05, 1.28933e-05, 1.06149e-05, 8.8093e-06, 7.35942e-06, 6.18228e-06, 5.21738e-06, 4.42006e-06, 3.75646e-06, 
			0.000174153, 9.3729e-05, 6.26562e-05, 4.55884e-05, 3.46946e-05, 2.71654e-05, 2.16946e-05, 1.7581e-05, 1.44098e-05, 1.19178e-05, 9.9295e-06, 8.32294e-06, 7.01106e-06, 5.93028e-06, 5.03316e-06, 4.28306e-06, 
			0.000177487, 9.6735e-05, 6.5258e-05, 4.7829e-05, 3.6647e-05, 2.88592e-05, 2.31636e-05, 1.88543e-05, 1.55127e-05, 1.28723e-05, 1.07545e-05, 9.03542e-06, 7.6256e-06, 6.45962e-06, 5.4879e-06, 4.67316e-06, 
			0.000179639, 9.88364e-05, 6.71542e-05, 4.9507e-05, 3.81158e-05, 3.0148e-05, 2.42906e-05, 1.98373e-05, 1.63679e-05, 1.36145e-05, 1.13976e-05, 9.5912e-06, 8.10462e-06, 6.87128e-06, 5.84052e-06, 4.97392e-06, 
			0.000180794, 0.000100327, 6.85676e-05, 5.07838e-05, 3.92488e-05, 3.11526e-05, 2.51762e-05, 2.06112e-05, 1.7042e-05, 1.41998e-05, 1.19041e-05, 1.00278e-05, 8.4797e-06, 7.1918e-06, 6.11346e-06, 5.20474e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.00453e-05, 4.02331e-05, 4.83782e-05, 5.47784e-05, 5.98005e-05, 6.37583e-05, 6.68976e-05, 6.94066e-05, 7.14281e-05, 7.30701e-05, 7.44146e-05, 7.55234e-05, 7.64457e-05, 7.72164e-05, 7.78673e-05, 7.84172e-05, 
			4.27876e-05, 5.29553e-05, 6.1142e-05, 6.76415e-05, 7.28009e-05, 7.69129e-05, 8.02093e-05, 8.28721e-05, 8.50375e-05, 8.68122e-05, 8.82778e-05, 8.94961e-05, 9.05154e-05, 9.13753e-05, 9.21038e-05, 9.27267e-05, 
			5.56431e-05, 6.5701e-05, 7.38524e-05, 8.03819e-05, 8.5603e-05, 8.98026e-05, 9.31962e-05, 9.59584e-05, 9.8221e-05, 0.00010009, 0.00010164, 0.00010294, 0.000104031, 0.000104958, 0.000105746, 0.000106423, 
			6.8479e-05, 7.84581e-05, 8.65743e-05, 9.31153e-05, 9.8383e-05, 0.000102642, 0.000106106, 0.000108942, 0.00011128, 0.000113218, 0.000114838, 0.000116199, 0.000117352, 0.00011833, 0.000119171, 0.000119892, 
			8.1296e-05, 9.11697e-05, 9.92476e-05, 0.00010579, 0.000111088, 0.00011539, 0.000118909, 0.000121801, 0.000124199, 0.000126194, 0.00012787, 0.000129283, 0.000130484, 0.000131509, 0.000132392, 0.000133151
		)
}

CapTable	"metal2_C_TOP_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.91848e-06, 3.92434e-06, 4.79982e-06, 5.54658e-06, 6.16596e-06, 6.67326e-06, 7.08692e-06, 7.42439e-06, 7.7004e-06, 7.92691e-06, 8.11401e-06, 8.26995e-06, 8.3995e-06, 8.51011e-06, 8.60208e-06, 8.68247e-06, 
			3.90504e-06, 4.8963e-06, 5.78515e-06, 6.55092e-06, 7.19508e-06, 7.72952e-06, 8.17045e-06, 8.53366e-06, 8.83392e-06, 9.08386e-06, 9.29185e-06, 9.46598e-06, 9.61374e-06, 9.73791e-06, 9.84486e-06, 9.93502e-06, 
			4.88652e-06, 5.86879e-06, 6.76104e-06, 7.53774e-06, 8.1964e-06, 8.74795e-06, 9.2066e-06, 9.58797e-06, 9.90597e-06, 1.01706e-05, 1.0395e-05, 1.05822e-05, 1.07436e-05, 1.08783e-05, 1.09964e-05, 1.10968e-05, 
			5.86603e-06, 6.84367e-06, 7.73749e-06, 8.52111e-06, 9.18965e-06, 9.7528e-06, 1.02255e-05, 1.06205e-05, 1.09513e-05, 1.12306e-05, 1.14649e-05, 1.1665e-05, 1.18338e-05, 1.19805e-05, 1.2104e-05, 1.22133e-05, 
			6.84236e-06, 7.81547e-06, 8.71115e-06, 9.49998e-06, 1.01767e-05, 1.07501e-05, 1.12313e-05, 1.16384e-05, 1.1979e-05, 1.22696e-05, 1.25128e-05, 1.27229e-05, 1.29013e-05, 1.30547e-05, 1.31857e-05, 1.33009e-05
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
			2.95366e-05, 3.9609e-05, 4.76668e-05, 5.40096e-05, 5.89946e-05, 6.2926e-05, 6.60457e-05, 6.85386e-05, 7.05451e-05, 7.21715e-05, 7.34989e-05, 7.45897e-05, 7.54917e-05, 7.6242e-05, 7.68695e-05, 7.73977e-05, 
			4.22045e-05, 5.22927e-05, 6.0426e-05, 6.68934e-05, 7.20347e-05, 7.61354e-05, 7.94238e-05, 8.20778e-05, 8.42332e-05, 8.59944e-05, 8.74432e-05, 8.86422e-05, 8.9639e-05, 9.04747e-05, 9.11772e-05, 9.17696e-05, 
			5.50299e-05, 6.5045e-05, 7.31752e-05, 7.96969e-05, 8.49202e-05, 8.91228e-05, 9.25199e-05, 9.52795e-05, 9.7536e-05, 9.93926e-05, 0.000100927, 0.000102205, 0.000103273, 0.00010417, 0.000104927, 0.000105569, 
			6.78864e-05, 7.7858e-05, 8.5982e-05, 9.25391e-05, 9.78265e-05, 0.000102103, 0.000105578, 0.000108418, 0.000110751, 0.000112678, 0.000114282, 0.00011562, 0.000116743, 0.000117689, 0.00011849, 0.00011917, 
			8.07677e-05, 9.06665e-05, 9.878e-05, 0.000105361, 0.000110694, 0.000115025, 0.000118561, 0.000121464, 0.000123859, 0.000125846, 0.000127501, 0.000128888, 0.000130056, 0.000131041, 0.000131878, 0.000132591
		)
}

CapTable	"metal2_C_TOP_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.75404e-06, 5.05079e-06, 6.19177e-06, 7.16221e-06, 7.96743e-06, 8.62772e-06, 9.16639e-06, 9.60521e-06, 9.96359e-06, 1.02574e-05, 1.04997e-05, 1.07004e-05, 1.08673e-05, 1.10071e-05, 1.11244e-05, 1.12226e-05, 
			5.04405e-06, 6.33429e-06, 7.49383e-06, 8.49422e-06, 9.33568e-06, 1.00342e-05, 1.06106e-05, 1.10852e-05, 1.1477e-05, 1.18018e-05, 1.20713e-05, 1.22959e-05, 1.24849e-05, 1.2643e-05, 1.27756e-05, 1.28893e-05, 
			6.34105e-06, 7.62604e-06, 8.79483e-06, 9.81313e-06, 1.06768e-05, 1.14e-05, 1.20015e-05, 1.25012e-05, 1.29163e-05, 1.32621e-05, 1.35514e-05, 1.37939e-05, 1.39974e-05, 1.41693e-05, 1.43159e-05, 1.444e-05, 
			7.63897e-06, 8.92464e-06, 1.01008e-05, 1.11319e-05, 1.20127e-05, 1.27545e-05, 1.33758e-05, 1.38941e-05, 1.4327e-05, 1.46902e-05, 1.49936e-05, 1.52488e-05, 1.54655e-05, 1.56488e-05, 1.58053e-05, 1.59392e-05, 
			8.94373e-06, 1.02285e-05, 1.14114e-05, 1.24536e-05, 1.33479e-05, 1.41041e-05, 1.47395e-05, 1.52732e-05, 1.57203e-05, 1.60954e-05, 1.64108e-05, 1.66786e-05, 1.69046e-05, 1.7098e-05, 1.72614e-05, 1.74026e-05
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

CapTable	"metal2_C_LATERAL_28MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00017787, 0.000101542, 7.27932e-05, 5.69894e-05, 4.67548e-05, 3.95028e-05, 3.40714e-05, 2.98498e-05, 2.64808e-05, 2.37382e-05, 2.14704e-05, 1.95707e-05, 1.79622e-05, 1.65873e-05, 1.5402e-05, 1.43725e-05, 
			0.000188432, 0.000109673, 7.94388e-05, 6.26742e-05, 5.17494e-05, 4.39822e-05, 3.81496e-05, 3.36052e-05, 2.99694e-05, 2.70016e-05, 2.45406e-05, 2.24728e-05, 2.07164e-05, 1.92098e-05, 1.79066e-05, 1.67706e-05, 
			0.000194536, 0.000114947, 8.4033e-05, 6.67632e-05, 5.5476e-05, 4.7419e-05, 4.13522e-05, 3.66134e-05, 3.28118e-05, 2.97004e-05, 2.71126e-05, 2.4932e-05, 2.30738e-05, 2.14748e-05, 2.00872e-05, 1.88736e-05, 
			0.000198794, 0.000118887, 8.7632e-05, 7.0083e-05, 5.85682e-05, 5.0331e-05, 4.41126e-05, 3.9243e-05, 3.53268e-05, 3.21128e-05, 2.94326e-05, 2.71674e-05, 2.52316e-05, 2.3561e-05, 2.21066e-05, 2.08308e-05, 
			0.000201694, 0.000121988, 9.06004e-05, 7.29036e-05, 6.12548e-05, 5.29056e-05, 4.65872e-05, 4.16252e-05, 3.76252e-05, 3.43346e-05, 3.15832e-05, 2.9252e-05, 2.7254e-05, 2.5525e-05, 2.40156e-05, 2.26876e-05
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

CapTable	"metal2_C_TOP_GP_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			2.70478e-06, 3.50641e-06, 4.21647e-06, 4.85071e-06, 5.41425e-06, 5.91489e-06, 6.35806e-06, 6.75034e-06, 7.09601e-06, 7.40139e-06, 7.67045e-06, 7.90765e-06, 8.11753e-06, 8.30286e-06, 8.46664e-06, 8.61245e-06, 
			3.42148e-06, 4.20782e-06, 4.92516e-06, 5.57698e-06, 6.16346e-06, 6.68933e-06, 7.15859e-06, 7.57578e-06, 7.9459e-06, 8.27484e-06, 8.5658e-06, 8.82388e-06, 9.05298e-06, 9.2565e-06, 9.43709e-06, 9.59897e-06, 
			4.14972e-06, 4.92476e-06, 5.64587e-06, 6.30682e-06, 6.90605e-06, 7.44651e-06, 7.93181e-06, 8.36494e-06, 8.75108e-06, 9.09533e-06, 9.40164e-06, 9.67381e-06, 9.91677e-06, 1.01331e-05, 1.03261e-05, 1.04997e-05, 
			4.88179e-06, 5.65218e-06, 6.37378e-06, 7.04088e-06, 7.64835e-06, 8.19872e-06, 8.69503e-06, 9.13952e-06, 9.53746e-06, 9.89311e-06, 1.02109e-05, 1.04943e-05, 1.07485e-05, 1.09744e-05, 1.11781e-05, 1.13593e-05, 
			5.62105e-06, 6.3842e-06, 7.10604e-06, 7.77675e-06, 8.3905e-06, 8.94768e-06, 9.45167e-06, 9.90529e-06, 1.03119e-05, 1.06769e-05, 1.10036e-05, 1.12961e-05, 1.15593e-05, 1.17941e-05, 1.20052e-05, 1.21945e-05
		)
}

CapTable	"metal2_C_LATERAL_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176709, 9.99256e-05, 7.07386e-05, 5.45198e-05, 4.38998e-05, 3.62958e-05, 3.05466e-05, 2.60414e-05, 2.24218e-05, 1.94595e-05, 1.70007e-05, 1.49366e-05, 1.31876e-05, 1.16938e-05, 1.04093e-05, 9.29806e-06, 
			0.000186684, 0.000107404, 7.66652e-05, 5.9424e-05, 4.80566e-05, 3.98848e-05, 3.36866e-05, 2.88154e-05, 2.48904e-05, 2.16688e-05, 1.89867e-05, 1.67283e-05, 1.48088e-05, 1.31644e-05, 1.17461e-05, 1.05153e-05, 
			0.00019211, 0.000111941, 8.04664e-05, 6.26686e-05, 5.08922e-05, 4.23878e-05, 3.59174e-05, 3.08174e-05, 2.66964e-05, 2.33044e-05, 2.04726e-05, 1.80813e-05, 1.60433e-05, 1.42925e-05, 1.27784e-05, 1.14612e-05, 
			0.000195606, 0.000115064, 8.31998e-05, 6.50776e-05, 5.3033e-05, 4.4312e-05, 3.76572e-05, 3.23978e-05, 2.81366e-05, 2.46202e-05, 2.1677e-05, 1.91855e-05, 1.70568e-05, 1.52237e-05, 1.36346e-05, 1.22489e-05, 
			0.000197667, 0.000117279, 8.52378e-05, 6.6928e-05, 5.47134e-05, 4.58486e-05, 3.90658e-05, 3.36894e-05, 2.93232e-05, 2.57118e-05, 2.26824e-05, 2.01122e-05, 1.79113e-05, 1.6012e-05, 1.43622e-05, 1.29206e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_28MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.76652e-05, 2.27744e-05, 2.71374e-05, 3.09057e-05, 3.41744e-05, 3.70152e-05, 3.94866e-05, 4.16391e-05, 4.35162e-05, 4.51561e-05, 4.65919e-05, 4.78525e-05, 4.89625e-05, 4.99429e-05, 5.0812e-05, 5.15852e-05, 
			2.24888e-05, 2.7433e-05, 3.17872e-05, 3.5606e-05, 3.89503e-05, 4.1876e-05, 4.44352e-05, 4.66749e-05, 4.86374e-05, 5.036e-05, 5.1875e-05, 5.32114e-05, 5.43934e-05, 5.54425e-05, 5.63768e-05, 5.72118e-05, 
			2.731e-05, 3.21328e-05, 3.6435e-05, 4.02408e-05, 4.35911e-05, 4.65377e-05, 4.91269e-05, 5.14023e-05, 5.34046e-05, 5.51692e-05, 5.67279e-05, 5.81082e-05, 5.93343e-05, 6.04271e-05, 6.14042e-05, 6.2281e-05, 
			3.20986e-05, 3.68208e-05, 4.1052e-05, 4.4815e-05, 4.81438e-05, 5.1082e-05, 5.36749e-05, 5.59622e-05, 5.79824e-05, 5.97697e-05, 6.13542e-05, 6.2763e-05, 6.4019e-05, 6.51424e-05, 6.6151e-05, 6.70592e-05, 
			3.6843e-05, 4.14428e-05, 4.55936e-05, 4.92994e-05, 5.25912e-05, 5.55074e-05, 5.80888e-05, 6.03748e-05, 6.24008e-05, 6.41998e-05, 6.58001e-05, 6.72274e-05, 6.85048e-05, 6.96512e-05, 7.06837e-05, 7.16169e-05
		)
}

CapTable	"metal2_C_TOP_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.37757e-06, 4.38692e-06, 5.2847e-06, 6.08575e-06, 6.79942e-06, 7.43387e-06, 7.99631e-06, 8.49371e-06, 8.93289e-06, 9.31957e-06, 9.66072e-06, 9.96178e-06, 1.02267e-05, 1.04602e-05, 1.06668e-05, 1.08496e-05, 
			4.28804e-06, 5.28028e-06, 6.18879e-06, 7.01441e-06, 7.75973e-06, 8.42814e-06, 9.02488e-06, 9.55591e-06, 1.00274e-05, 1.04446e-05, 1.08146e-05, 1.11419e-05, 1.14318e-05, 1.16896e-05, 1.19169e-05, 1.21204e-05, 
			5.21266e-06, 6.19481e-06, 7.11007e-06, 7.95057e-06, 8.71434e-06, 9.40358e-06, 1.00214e-05, 1.0574e-05, 1.10671e-05, 1.15051e-05, 1.18945e-05, 1.22407e-05, 1.25483e-05, 1.28232e-05, 1.30661e-05, 1.32836e-05, 
			6.14714e-06, 7.1261e-06, 8.04561e-06, 8.89548e-06, 9.67183e-06, 1.03754e-05, 1.10082e-05, 1.15767e-05, 1.20848e-05, 1.25386e-05, 1.29441e-05, 1.3304e-05, 1.36265e-05, 1.3912e-05, 1.41687e-05, 1.43961e-05, 
			7.09201e-06, 8.06631e-06, 8.9886e-06, 9.84487e-06, 1.06304e-05, 1.13448e-05, 1.19896e-05, 1.25698e-05, 1.30904e-05, 1.35563e-05, 1.39743e-05, 1.43458e-05, 1.46792e-05, 1.49759e-05, 1.52418e-05, 1.54788e-05
		)
}

CapTable	"metal2_C_LATERAL_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176551, 9.97052e-05, 7.04564e-05, 5.41784e-05, 4.3503e-05, 3.58484e-05, 3.0054e-05, 2.55094e-05, 2.18562e-05, 1.88659e-05, 1.63845e-05, 1.43027e-05, 1.25407e-05, 1.10382e-05, 9.74858e-06, 8.63558e-06, 
			0.000186449, 0.000107097, 7.62876e-05, 5.89786e-05, 4.75478e-05, 3.93182e-05, 3.30686e-05, 2.81528e-05, 2.41898e-05, 2.09368e-05, 1.82296e-05, 1.59519e-05, 1.40186e-05, 1.23651e-05, 1.09421e-05, 9.71058e-06, 
			0.000191786, 0.000111537, 7.99842e-05, 6.21114e-05, 5.02654e-05, 4.1698e-05, 3.51718e-05, 3.00236e-05, 2.58618e-05, 2.24366e-05, 1.95784e-05, 1.71674e-05, 1.51156e-05, 1.33565e-05, 1.18389e-05, 1.05226e-05, 
			0.000195182, 0.000114554, 8.26042e-05, 6.44012e-05, 5.22818e-05, 4.34938e-05, 3.678e-05, 3.14698e-05, 2.71664e-05, 2.36158e-05, 2.06462e-05, 1.81353e-05, 1.59937e-05, 1.41537e-05, 1.2563e-05, 1.11804e-05, 
			0.000197134, 0.000116653, 8.45212e-05, 6.61258e-05, 5.38328e-05, 4.48978e-05, 3.80536e-05, 3.26254e-05, 2.82162e-05, 2.45708e-05, 2.15152e-05, 1.89267e-05, 1.67146e-05, 1.48104e-05, 1.31613e-05, 1.17254e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.6402e-05, 2.1355e-05, 2.56529e-05, 2.94134e-05, 3.27139e-05, 3.56088e-05, 3.8147e-05, 4.03701e-05, 4.23176e-05, 4.40233e-05, 4.55189e-05, 4.68316e-05, 4.79851e-05, 4.90011e-05, 4.98977e-05, 5.069e-05, 
			2.12741e-05, 2.61854e-05, 3.05746e-05, 3.44717e-05, 3.79229e-05, 4.09691e-05, 4.36532e-05, 4.60159e-05, 4.80947e-05, 4.9923e-05, 5.15332e-05, 5.29522e-05, 5.42044e-05, 5.53114e-05, 5.6292e-05, 5.71613e-05, 
			2.62703e-05, 3.11734e-05, 3.56047e-05, 3.95696e-05, 4.30977e-05, 4.62279e-05, 4.89963e-05, 5.14432e-05, 5.36037e-05, 5.55113e-05, 5.71967e-05, 5.86877e-05, 6.00075e-05, 6.11781e-05, 6.22182e-05, 6.31428e-05, 
			3.13612e-05, 3.62656e-05, 4.07154e-05, 4.47145e-05, 4.82886e-05, 5.14693e-05, 5.42928e-05, 5.67969e-05, 5.90148e-05, 6.09795e-05, 6.27204e-05, 6.42649e-05, 6.56354e-05, 6.68558e-05, 6.79413e-05, 6.89114e-05, 
			3.65258e-05, 4.1405e-05, 4.58562e-05, 4.98713e-05, 5.34711e-05, 5.66847e-05, 5.95455e-05, 6.20893e-05, 6.43499e-05, 6.63583e-05, 6.8142e-05, 6.97277e-05, 7.11394e-05, 7.23979e-05, 7.35217e-05, 7.45271e-05
		)
}

CapTable	"metal2_C_TOP_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.15637e-06, 5.41483e-06, 6.53523e-06, 7.5389e-06, 8.43545e-06, 9.23464e-06, 9.94417e-06, 1.05719e-05, 1.1126e-05, 1.16138e-05, 1.20425e-05, 1.24187e-05, 1.275e-05, 1.30411e-05, 1.32957e-05, 1.35205e-05, 
			5.30004e-06, 6.54075e-06, 7.68206e-06, 8.72325e-06, 9.66486e-06, 1.05112e-05, 1.12675e-05, 1.19404e-05, 1.25372e-05, 1.30651e-05, 1.35313e-05, 1.39418e-05, 1.43048e-05, 1.46235e-05, 1.49054e-05, 1.51525e-05, 
			6.46828e-06, 7.70356e-06, 8.85935e-06, 9.92424e-06, 1.08938e-05, 1.177e-05, 1.25566e-05, 1.32585e-05, 1.38836e-05, 1.44389e-05, 1.49311e-05, 1.53652e-05, 1.57506e-05, 1.60892e-05, 1.63888e-05, 1.66524e-05, 
			7.65543e-06, 8.89382e-06, 1.00605e-05, 1.11422e-05, 1.21322e-05, 1.30297e-05, 1.38376e-05, 1.45619e-05, 1.52075e-05, 1.57832e-05, 1.62935e-05, 1.67468e-05, 1.71468e-05, 1.75013e-05, 1.78144e-05, 1.80929e-05, 
			8.86424e-06, 1.01028e-05, 1.12786e-05, 1.23738e-05, 1.33778e-05, 1.4291e-05, 1.5116e-05, 1.58575e-05, 1.65191e-05, 1.7111e-05, 1.76355e-05, 1.8102e-05, 1.85147e-05, 1.88806e-05, 1.92066e-05, 1.94929e-05
		)
}

CapTable	"metal2_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176285, 9.93326e-05, 6.998e-05, 5.36022e-05, 4.28336e-05, 3.5094e-05, 2.92248e-05, 2.4616e-05, 2.09092e-05, 1.78763e-05, 1.53624e-05, 1.32582e-05, 1.14823e-05, 9.97394e-06, 8.6855e-06, 7.58e-06, 
			0.000186049, 0.000106576, 7.5647e-05, 5.82226e-05, 4.66846e-05, 3.8358e-05, 3.20234e-05, 2.70354e-05, 2.30134e-05, 1.97141e-05, 1.69729e-05, 1.46723e-05, 1.27264e-05, 1.10696e-05, 9.65152e-06, 8.43202e-06, 
			0.000191233, 0.000110849, 7.91622e-05, 6.11614e-05, 4.91974e-05, 4.05246e-05, 3.3907e-05, 2.86822e-05, 2.44592e-05, 2.09868e-05, 1.80954e-05, 1.56637e-05, 1.36026e-05, 1.18444e-05, 1.03371e-05, 9.03832e-06, 
			0.000194457, 0.00011368, 8.1584e-05, 6.32432e-05, 5.09978e-05, 4.20986e-05, 3.529e-05, 2.9902e-05, 2.5537e-05, 2.1941e-05, 1.89405e-05, 1.64129e-05, 1.42667e-05, 1.24334e-05, 1.08585e-05, 9.50032e-06, 
			0.000196218, 0.000115577, 8.32894e-05, 6.47486e-05, 5.23244e-05, 4.32754e-05, 3.63354e-05, 3.08296e-05, 2.63612e-05, 2.26734e-05, 1.95915e-05, 1.69916e-05, 1.47806e-05, 1.2889e-05, 1.12626e-05, 9.858e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.5925e-05, 2.07609e-05, 2.49619e-05, 2.86464e-05, 3.18841e-05, 3.47271e-05, 3.72213e-05, 3.9407e-05, 4.1321e-05, 4.29976e-05, 4.44659e-05, 4.57525e-05, 4.68821e-05, 4.78748e-05, 4.87483e-05, 4.95182e-05, 
			2.0706e-05, 2.55147e-05, 2.98206e-05, 3.36495e-05, 3.70437e-05, 4.00427e-05, 4.26869e-05, 4.50146e-05, 4.70619e-05, 4.88627e-05, 5.04459e-05, 5.18394e-05, 5.30666e-05, 5.41481e-05, 5.51045e-05, 5.59488e-05, 
			2.56245e-05, 3.04392e-05, 3.47977e-05, 3.8703e-05, 4.21813e-05, 4.52684e-05, 4.80019e-05, 5.04169e-05, 5.25481e-05, 5.4429e-05, 5.60887e-05, 5.75536e-05, 5.8848e-05, 5.99914e-05, 6.10057e-05, 6.1904e-05, 
			3.06519e-05, 3.54793e-05, 3.98652e-05, 4.38133e-05, 4.73434e-05, 5.04878e-05, 5.32808e-05, 5.57555e-05, 5.79469e-05, 5.98857e-05, 6.16002e-05, 6.31194e-05, 6.44632e-05, 6.56567e-05, 6.67141e-05, 6.76558e-05, 
			3.5764e-05, 4.05769e-05, 4.49742e-05, 4.89453e-05, 5.25078e-05, 5.56894e-05, 5.85228e-05, 6.10418e-05, 6.32774e-05, 6.52599e-05, 6.70175e-05, 6.85775e-05, 6.99622e-05, 7.11927e-05, 7.22859e-05, 7.32618e-05
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
			1.54788e-05, 2.02186e-05, 2.43548e-05, 2.79912e-05, 3.11946e-05, 3.40125e-05, 3.64864e-05, 3.86552e-05, 4.05535e-05, 4.22136e-05, 4.36649e-05, 4.49331e-05, 4.60409e-05, 4.70093e-05, 4.78578e-05, 4.85996e-05, 
			2.02036e-05, 2.49439e-05, 2.92009e-05, 3.2997e-05, 3.63694e-05, 3.93534e-05, 4.19863e-05, 4.43039e-05, 4.63402e-05, 4.81276e-05, 4.96949e-05, 5.10699e-05, 5.22742e-05, 5.33315e-05, 5.4258e-05, 5.50728e-05, 
			2.50895e-05, 2.98564e-05, 3.41834e-05, 3.80704e-05, 4.15388e-05, 4.46219e-05, 4.73514e-05, 4.97628e-05, 5.18874e-05, 5.37572e-05, 5.54009e-05, 5.68471e-05, 5.81164e-05, 5.92339e-05, 6.02154e-05, 6.10803e-05, 
			3.01046e-05, 3.49046e-05, 3.92765e-05, 4.32196e-05, 4.6752e-05, 4.99007e-05, 5.26964e-05, 5.51713e-05, 5.73593e-05, 5.92881e-05, 6.09891e-05, 6.2486e-05, 6.38057e-05, 6.49669e-05, 6.59906e-05, 6.68906e-05, 
			3.52266e-05, 4.00296e-05, 4.4427e-05, 4.84066e-05, 5.19818e-05, 5.51756e-05, 5.80176e-05, 6.05389e-05, 6.27727e-05, 6.47456e-05, 6.649e-05, 6.80264e-05, 6.93837e-05, 7.05804e-05, 7.16338e-05, 7.25651e-05
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

CapTable	"metal2_C_BOTTOM_GP_38MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.1494e-05, 1.42178e-05, 1.63992e-05, 1.8212e-05, 1.97547e-05, 2.10901e-05, 2.22602e-05, 2.3295e-05, 2.42177e-05, 2.50461e-05, 2.57943e-05, 2.64746e-05, 2.70959e-05, 2.76668e-05, 2.81938e-05, 2.86824e-05, 
			1.3583e-05, 1.59988e-05, 1.80356e-05, 1.97787e-05, 2.12908e-05, 2.26165e-05, 2.3789e-05, 2.48342e-05, 2.57721e-05, 2.6619e-05, 2.73884e-05, 2.80912e-05, 2.87364e-05, 2.93321e-05, 2.98844e-05, 3.03988e-05, 
			1.5495e-05, 1.77004e-05, 1.96132e-05, 2.12805e-05, 2.2745e-05, 2.40418e-05, 2.51975e-05, 2.62349e-05, 2.71713e-05, 2.80217e-05, 2.87981e-05, 2.9511e-05, 3.01684e-05, 3.0778e-05, 3.13454e-05, 3.18761e-05, 
			1.7266e-05, 1.93183e-05, 2.1123e-05, 2.2717e-05, 2.41307e-05, 2.53921e-05, 2.65243e-05, 2.75466e-05, 2.84748e-05, 2.93219e-05, 3.00992e-05, 3.08161e-05, 3.148e-05, 3.20984e-05, 3.2676e-05, 3.32183e-05, 
			1.8934e-05, 2.08508e-05, 2.2561e-05, 2.40858e-05, 2.54492e-05, 2.66743e-05, 2.77805e-05, 2.87851e-05, 2.97019e-05, 3.05425e-05, 3.13176e-05, 3.20353e-05, 3.27029e-05, 3.33264e-05, 3.39115e-05, 3.44626e-05
		)
}

CapTable	"metal2_C_LATERAL_38MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182723, 0.000107905, 8.04174e-05, 6.5648e-05, 5.62488e-05, 4.96606e-05, 4.47478e-05, 4.09234e-05, 3.78502e-05, 3.53194e-05, 3.31942e-05, 3.138e-05, 2.98104e-05, 2.8436e-05, 2.722e-05, 2.61346e-05, 
			0.00019516, 0.000117861, 8.88394e-05, 7.30616e-05, 6.29282e-05, 5.57856e-05, 5.04372e-05, 4.62594e-05, 4.28924e-05, 4.01122e-05, 3.77712e-05, 3.5768e-05, 3.40304e-05, 3.2505e-05, 3.11524e-05, 2.9942e-05, 
			0.000203076, 0.000124852, 9.50618e-05, 7.87024e-05, 6.81406e-05, 6.06526e-05, 5.50234e-05, 5.06108e-05, 4.70434e-05, 4.40888e-05, 4.1594e-05, 3.9453e-05, 3.7591e-05, 3.59522e-05, 3.44954e-05, 3.31886e-05, 
			0.000209032, 0.000130376, 0.000100145, 8.3422e-05, 7.25626e-05, 6.48354e-05, 5.90044e-05, 5.44186e-05, 5.06994e-05, 4.76102e-05, 4.49942e-05, 4.27432e-05, 4.07804e-05, 3.90484e-05, 3.75052e-05, 3.61176e-05, 
			0.000213492, 0.000134914, 0.000104451, 8.74972e-05, 7.64348e-05, 6.85372e-05, 6.25568e-05, 5.78366e-05, 5.39974e-05, 5.07996e-05, 4.80842e-05, 4.57418e-05, 4.3694e-05, 4.18832e-05, 4.02656e-05, 3.8808e-05
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

CapTable	"metal2_C_BOTTOM_GP_37MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.25809e-05, 1.60179e-05, 1.89441e-05, 2.15067e-05, 2.37887e-05, 2.58422e-05, 2.77021e-05, 2.93933e-05, 3.09338e-05, 3.23402e-05, 3.36245e-05, 3.47987e-05, 3.58723e-05, 3.68546e-05, 3.77533e-05, 3.8576e-05, 
			1.56315e-05, 1.89129e-05, 2.18323e-05, 2.44597e-05, 2.68407e-05, 2.90078e-05, 3.09868e-05, 3.2797e-05, 3.44552e-05, 3.59749e-05, 3.73684e-05, 3.86461e-05, 3.98181e-05, 4.08931e-05, 4.1879e-05, 4.27836e-05, 
			1.86587e-05, 2.18621e-05, 2.47856e-05, 2.74558e-05, 2.98993e-05, 3.2141e-05, 3.42003e-05, 3.60921e-05, 3.78318e-05, 3.94311e-05, 4.09013e-05, 4.22529e-05, 4.34951e-05, 4.4637e-05, 4.56861e-05, 4.66505e-05, 
			2.16941e-05, 2.48711e-05, 2.78016e-05, 3.05035e-05, 3.2994e-05, 3.52917e-05, 3.74102e-05, 3.93637e-05, 4.11646e-05, 4.28246e-05, 4.4354e-05, 4.57624e-05, 4.70596e-05, 4.82531e-05, 4.93521e-05, 5.03627e-05, 
			2.47722e-05, 2.7922e-05, 3.08609e-05, 3.35892e-05, 3.61163e-05, 3.84562e-05, 4.06206e-05, 4.26218e-05, 4.44709e-05, 4.61785e-05, 4.77545e-05, 4.92079e-05, 5.05485e-05, 5.17836e-05, 5.2922e-05, 5.397e-05
		)
}

CapTable	"metal2_C_TOP_GP_37MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.08546e-06, 3.92614e-06, 4.6482e-06, 5.28507e-06, 5.8563e-06, 6.37266e-06, 6.8419e-06, 7.2696e-06, 7.66071e-06, 8.01817e-06, 8.34578e-06, 8.64562e-06, 8.92049e-06, 9.17228e-06, 9.4033e-06, 9.61495e-06, 
			3.78851e-06, 4.58005e-06, 5.29874e-06, 5.94839e-06, 6.54081e-06, 7.08334e-06, 7.58085e-06, 8.03818e-06, 8.45825e-06, 8.84438e-06, 9.19945e-06, 9.52599e-06, 9.82612e-06, 1.01021e-05, 1.03557e-05, 1.05888e-05, 
			4.47889e-06, 5.25085e-06, 5.96275e-06, 6.62022e-06, 7.22669e-06, 7.7866e-06, 8.30308e-06, 8.78058e-06, 9.22079e-06, 9.62713e-06, 1.00018e-05, 1.03473e-05, 1.06658e-05, 1.09592e-05, 1.12294e-05, 1.1478e-05, 
			5.16892e-06, 5.92748e-06, 6.63865e-06, 7.30191e-06, 7.91945e-06, 8.49214e-06, 9.02316e-06, 9.51573e-06, 9.97158e-06, 1.03934e-05, 1.07833e-05, 1.11436e-05, 1.14761e-05, 1.17835e-05, 1.20663e-05, 1.23278e-05, 
			5.86278e-06, 6.61321e-06, 7.3243e-06, 7.9926e-06, 8.61869e-06, 9.20136e-06, 9.74399e-06, 1.02485e-05, 1.07167e-05, 1.11509e-05, 1.1553e-05, 1.19253e-05, 1.22692e-05, 1.25875e-05, 1.28812e-05, 1.31529e-05
		)
}

CapTable	"metal2_C_LATERAL_37MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179349, 0.000103439, 7.495e-05, 5.92524e-05, 4.899e-05, 4.1601e-05, 3.59476e-05, 3.14418e-05, 2.77458e-05, 2.46492e-05, 2.20136e-05, 1.97424e-05, 1.77666e-05, 1.60342e-05, 1.45058e-05, 1.31502e-05, 
			0.000190499, 0.000112048, 8.1941e-05, 6.51442e-05, 5.40564e-05, 4.6025e-05, 3.98538e-05, 3.4919e-05, 3.08606e-05, 2.7453e-05, 2.45468e-05, 2.20386e-05, 1.98529e-05, 1.79337e-05, 1.62383e-05, 1.47326e-05, 
			0.00019704, 0.0001176, 8.66536e-05, 6.9202e-05, 5.7616e-05, 4.91742e-05, 4.26624e-05, 3.74398e-05, 3.31338e-05, 2.95108e-05, 2.64156e-05, 2.37396e-05, 2.14044e-05, 1.93511e-05, 1.7535e-05, 1.59202e-05, 
			0.000201528, 0.000121593, 9.01438e-05, 7.22686e-05, 6.03296e-05, 5.15986e-05, 4.48416e-05, 3.94076e-05, 3.49176e-05, 3.11326e-05, 2.78936e-05, 2.50894e-05, 2.2639e-05, 2.0482e-05, 1.85719e-05, 1.6872e-05, 
			0.000204428, 0.000124521, 9.27868e-05, 7.46332e-05, 6.2449e-05, 5.35114e-05, 4.6574e-05, 4.09802e-05, 3.63492e-05, 3.2439e-05, 2.9088e-05, 2.61832e-05, 2.3642e-05, 2.14028e-05, 1.94178e-05, 1.76497e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.20918e-05, 1.54219e-05, 1.82639e-05, 2.07597e-05, 2.29883e-05, 2.49974e-05, 2.68195e-05, 2.84774e-05, 2.99887e-05, 3.1368e-05, 3.26268e-05, 3.37765e-05, 3.48263e-05, 3.57852e-05, 3.66605e-05, 3.74595e-05, 
			1.50716e-05, 1.82591e-05, 2.11088e-05, 2.36775e-05, 2.60101e-05, 2.81371e-05, 3.00816e-05, 3.18618e-05, 3.34924e-05, 3.49866e-05, 3.63556e-05, 3.76093e-05, 3.87575e-05, 3.98085e-05, 4.07703e-05, 4.16504e-05, 
			1.80365e-05, 2.11646e-05, 2.40252e-05, 2.66442e-05, 2.90461e-05, 3.12524e-05, 3.32812e-05, 3.51458e-05, 3.68601e-05, 3.84353e-05, 3.98825e-05, 4.12108e-05, 4.2429e-05, 4.3547e-05, 4.45705e-05, 4.5509e-05, 
			2.1024e-05, 2.4135e-05, 2.7013e-05, 2.96707e-05, 3.21262e-05, 3.43924e-05, 3.64839e-05, 3.8413e-05, 4.01913e-05, 4.18289e-05, 4.33359e-05, 4.47215e-05, 4.59951e-05, 4.71633e-05, 4.82363e-05, 4.92192e-05, 
			2.40607e-05, 2.71581e-05, 3.00523e-05, 3.27429e-05, 3.52394e-05, 3.75522e-05, 3.96934e-05, 4.16733e-05, 4.35014e-05, 4.5188e-05, 4.67427e-05, 4.81732e-05, 4.94898e-05, 5.06989e-05, 5.18102e-05, 5.28298e-05
		)
}

CapTable	"metal2_C_TOP_GP_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			3.81938e-06, 4.86847e-06, 5.77454e-06, 6.57639e-06, 7.29608e-06, 7.94801e-06, 8.54138e-06, 9.08256e-06, 9.57769e-06, 1.00303e-05, 1.04448e-05, 1.0824e-05, 1.11711e-05, 1.14884e-05, 1.17787e-05, 1.20444e-05, 
			4.70335e-06, 5.70172e-06, 6.60358e-06, 7.42388e-06, 8.17385e-06, 8.86147e-06, 9.49296e-06, 1.00733e-05, 1.0607e-05, 1.10975e-05, 1.15481e-05, 1.1962e-05, 1.23417e-05, 1.26901e-05, 1.30093e-05, 1.33015e-05, 
			5.58054e-06, 6.55203e-06, 7.45361e-06, 8.28683e-06, 9.05655e-06, 9.76866e-06, 1.04262e-05, 1.1034e-05, 1.15949e-05, 1.21121e-05, 1.25883e-05, 1.3027e-05, 1.34306e-05, 1.38008e-05, 1.41418e-05, 1.44541e-05, 
			6.45804e-06, 7.41903e-06, 8.3214e-06, 9.1651e-06, 9.95104e-06, 1.06816e-05, 1.13597e-05, 1.19884e-05, 1.25702e-05, 1.31079e-05, 1.36043e-05, 1.40622e-05, 1.44836e-05, 1.48724e-05, 1.52291e-05, 1.55579e-05, 
			7.34628e-06, 8.29911e-06, 9.20493e-06, 1.00577e-05, 1.08568e-05, 1.16024e-05, 1.22968e-05, 1.29419e-05, 1.35405e-05, 1.40947e-05, 1.46069e-05, 1.50806e-05, 1.55171e-05, 1.592e-05, 1.62901e-05, 1.66309e-05
		)
}

CapTable	"metal2_C_LATERAL_36MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179151, 0.000103171, 7.46136e-05, 5.88512e-05, 4.85276e-05, 4.10814e-05, 3.53752e-05, 3.08218e-05, 2.70828e-05, 2.39486e-05, 2.12804e-05, 1.89818e-05, 1.69833e-05, 1.52329e-05, 1.36909e-05, 1.23258e-05, 
			0.000190217, 0.000111688, 8.15056e-05, 6.46358e-05, 5.3479e-05, 4.5383e-05, 3.91522e-05, 3.41638e-05, 3.00572e-05, 2.66074e-05, 2.3665e-05, 2.11264e-05, 1.89159e-05, 1.69773e-05, 1.52675e-05, 1.37522e-05, 
			0.000196665, 0.00011714, 8.61112e-05, 6.858e-05, 5.69188e-05, 4.84066e-05, 4.18304e-05, 3.65498e-05, 3.21922e-05, 2.85244e-05, 2.53908e-05, 2.26828e-05, 2.03222e-05, 1.82493e-05, 1.64191e-05, 1.47955e-05, 
			0.00020105, 0.000121025, 8.94866e-05, 7.15262e-05, 5.95068e-05, 5.07012e-05, 4.38762e-05, 3.83812e-05, 3.38372e-05, 3.00058e-05, 2.67276e-05, 2.38912e-05, 2.14154e-05, 1.92396e-05, 1.73165e-05, 1.56092e-05, 
			0.00020384, 0.000123836, 9.20078e-05, 7.37644e-05, 6.14958e-05, 5.24804e-05, 4.54726e-05, 3.98158e-05, 3.51298e-05, 3.11726e-05, 2.77824e-05, 2.4846e-05, 2.22802e-05, 2.00234e-05, 1.80273e-05, 1.62538e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.15942e-05, 1.48273e-05, 1.76065e-05, 2.00607e-05, 2.22641e-05, 2.42581e-05, 2.60696e-05, 2.77175e-05, 2.92165e-05, 3.05784e-05, 3.18147e-05, 3.29356e-05, 3.3951e-05, 3.48701e-05, 3.57001e-05, 3.64505e-05, 
			1.45255e-05, 1.7647e-05, 2.04555e-05, 2.30025e-05, 2.53252e-05, 2.74487e-05, 2.93906e-05, 3.11654e-05, 3.27845e-05, 3.42603e-05, 3.56034e-05, 3.68239e-05, 3.79315e-05, 3.89349e-05, 3.98439e-05, 4.06656e-05, 
			1.74678e-05, 2.05562e-05, 2.33986e-05, 2.60131e-05, 2.84175e-05, 3.06282e-05, 3.26577e-05, 3.45175e-05, 3.62186e-05, 3.77722e-05, 3.91886e-05, 4.04766e-05, 4.16477e-05, 4.27098e-05, 4.36733e-05, 4.4546e-05, 
			2.04598e-05, 2.35545e-05, 2.64313e-05, 2.90989e-05, 3.15644e-05, 3.38386e-05, 3.59316e-05, 3.78541e-05, 3.96157e-05, 4.12264e-05, 4.26956e-05, 4.40348e-05, 4.52524e-05, 4.63591e-05, 4.73627e-05, 4.82736e-05, 
			2.35253e-05, 2.6625e-05, 2.95321e-05, 3.22399e-05, 3.47503e-05, 3.70718e-05, 3.92123e-05, 4.11812e-05, 4.29871e-05, 4.46405e-05, 4.61502e-05, 4.75274e-05, 4.87813e-05, 4.9921e-05, 5.09571e-05, 5.18956e-05
		)
}

CapTable	"metal2_C_TOP_GP_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.79143e-06, 6.1297e-06, 7.29051e-06, 8.32518e-06, 9.25801e-06, 1.01059e-05, 1.08789e-05, 1.15839e-05, 1.2227e-05, 1.28134e-05, 1.33471e-05, 1.3832e-05, 1.42723e-05, 1.46708e-05, 1.50326e-05, 1.53595e-05, 
			5.93754e-06, 7.22001e-06, 8.38746e-06, 9.45501e-06, 1.04348e-05, 1.13348e-05, 1.21613e-05, 1.29197e-05, 1.36152e-05, 1.42508e-05, 1.48309e-05, 1.53592e-05, 1.58399e-05, 1.62771e-05, 1.66735e-05, 1.70333e-05, 
			7.08523e-06, 8.34537e-06, 9.52125e-06, 1.06129e-05, 1.16241e-05, 1.25598e-05, 1.34235e-05, 1.42191e-05, 1.49498e-05, 1.56195e-05, 1.62313e-05, 1.67906e-05, 1.73001e-05, 1.7764e-05, 1.8185e-05, 1.85672e-05, 
			8.24517e-06, 9.5021e-06, 1.06877e-05, 1.17987e-05, 1.28348e-05, 1.37979e-05, 1.46895e-05, 1.55119e-05, 1.62685e-05, 1.69633e-05, 1.76005e-05, 1.81821e-05, 1.87134e-05, 1.91969e-05, 1.96372e-05, 2.00363e-05, 
			9.42968e-06, 1.06844e-05, 1.18805e-05, 1.30081e-05, 1.40643e-05, 1.50478e-05, 1.596e-05, 1.6803e-05, 1.75806e-05, 1.82954e-05, 1.8951e-05, 1.95504e-05, 2.00979e-05, 2.05973e-05, 2.10506e-05, 2.14641e-05
		)
}

CapTable	"metal2_C_LATERAL_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178782, 0.000102678, 7.3998e-05, 5.81106e-05, 4.76638e-05, 4.01012e-05, 3.4291e-05, 2.9649e-05, 2.58388e-05, 2.26512e-05, 1.9947e-05, 1.76287e-05, 1.56249e-05, 1.38825e-05, 1.23594e-05, 1.10224e-05, 
			0.000189703, 0.000111033, 8.0702e-05, 6.36822e-05, 5.23818e-05, 4.41552e-05, 3.78118e-05, 3.2731e-05, 2.85538e-05, 2.50546e-05, 2.20826e-05, 1.95323e-05, 1.73261e-05, 1.54057e-05, 1.37255e-05, 1.22498e-05, 
			0.000195982, 0.000116291, 8.50902e-05, 6.7391e-05, 5.55752e-05, 4.6928e-05, 4.02398e-05, 3.48714e-05, 3.04506e-05, 2.67422e-05, 2.35894e-05, 2.08812e-05, 1.8536e-05, 1.6493e-05, 1.47042e-05, 1.31314e-05, 
			0.000200164, 0.00011995, 8.8224e-05, 7.00874e-05, 5.79118e-05, 4.89748e-05, 4.20448e-05, 3.6472e-05, 3.18762e-05, 2.80166e-05, 2.47316e-05, 2.19072e-05, 1.94597e-05, 1.73256e-05, 1.54558e-05, 1.38106e-05, 
			0.000202722, 0.000122514, 9.04914e-05, 7.2073e-05, 5.96544e-05, 5.05174e-05, 4.34166e-05, 3.76954e-05, 3.2971e-05, 2.8999e-05, 2.56156e-05, 2.27042e-05, 2.01792e-05, 1.79763e-05, 1.60448e-05, 1.43445e-05
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

CapTable	"metal1_C_LATERAL_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000172089, 9.09972e-05, 5.95034e-05, 4.23266e-05, 3.1568e-05, 2.4308e-05, 1.9172e-05, 1.54151e-05, 1.25953e-05, 1.0434e-05, 8.74796e-06, 7.41234e-06, 6.33998e-06, 5.46856e-06, 4.75276e-06, 4.159e-06, 
			0.000179869, 9.6749e-05, 6.4112e-05, 4.61796e-05, 3.48522e-05, 2.7141e-05, 2.16352e-05, 1.75692e-05, 1.44883e-05, 1.21049e-05, 1.02286e-05, 8.72938e-06, 7.5156e-06, 6.52144e-06, 5.69862e-06, 5.01122e-06, 
			0.000183638, 0.000100176, 6.71378e-05, 4.88574e-05, 3.72318e-05, 2.9258e-05, 2.35212e-05, 1.92525e-05, 1.59933e-05, 1.34532e-05, 1.14391e-05, 9.81854e-06, 8.4978e-06, 7.40916e-06, 6.50274e-06, 5.7411e-06, 
			0.000185784, 0.000102598, 6.94236e-05, 5.0949e-05, 3.91384e-05, 3.09924e-05, 2.50898e-05, 2.06702e-05, 1.7275e-05, 1.46127e-05, 1.24892e-05, 1.07709e-05, 9.3627e-06, 8.19588e-06, 7.21944e-06, 6.39506e-06, 
			0.000187593, 0.000104593, 7.1338e-05, 5.2729e-05, 4.07726e-05, 3.248e-05, 2.6448e-05, 2.19078e-05, 1.84021e-05, 1.56392e-05, 1.34246e-05, 1.16239e-05, 1.01415e-05, 8.90772e-06, 7.8709e-06, 6.99202e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_19MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.27292e-05, 5.70196e-05, 6.82348e-05, 7.68678e-05, 8.34808e-05, 8.85568e-05, 9.24781e-05, 9.55312e-05, 9.79314e-05, 9.98382e-05, 0.000101367, 0.000102606, 0.000103618, 0.000104455, 0.000105153, 0.000105739, 
			6.09024e-05, 7.52444e-05, 8.65754e-05, 9.53802e-05, 0.000102201, 0.000107496, 0.000111633, 0.00011489, 0.000117478, 0.000119554, 0.000121235, 0.00012261, 0.000123744, 0.000124688, 0.000125481, 0.000126153, 
			7.92958e-05, 9.3491e-05, 0.000104774, 0.000113615, 0.00012052, 0.00012593, 0.000130192, 0.000133576, 0.000136287, 0.00013848, 0.000140268, 0.000141742, 0.000142967, 0.000143992, 0.00014486, 0.000145598, 
			9.7658e-05, 0.000111661, 0.000122858, 0.00013169, 0.000138632, 0.000144105, 0.000148449, 0.000151922, 0.000154723, 0.000157002, 0.000158874, 0.000160424, 0.00016172, 0.000162813, 0.000163741, 0.000164537, 
			0.000115998, 0.000129882, 0.000141019, 0.000149844, 0.000156817, 0.000162347, 0.000166757, 0.000170302, 0.000173177, 0.000175529, 0.000177471, 0.000179088, 0.000180447, 0.000181598, 0.00018258, 0.000183426
		)
}

CapTable	"metal1_C_LATERAL_19MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.00017215, 9.10444e-05, 5.95282e-05, 4.23222e-05, 3.15302e-05, 2.42352e-05, 1.90649e-05, 1.52748e-05, 1.24236e-05, 1.02328e-05, 8.51908e-06, 7.15746e-06, 6.0606e-06, 5.16606e-06, 4.42828e-06, 3.81354e-06, 
			0.000180083, 9.69706e-05, 6.43236e-05, 4.63698e-05, 3.50144e-05, 2.72726e-05, 2.17356e-05, 1.76395e-05, 1.45297e-05, 1.21189e-05, 1.02167e-05, 8.6928e-06, 7.45546e-06, 6.43866e-06, 5.59394e-06, 4.88518e-06, 
			0.000184002, 0.000100557, 6.75176e-05, 4.9224e-05, 3.75776e-05, 2.95794e-05, 2.38172e-05, 1.95229e-05, 1.62388e-05, 1.36744e-05, 1.16369e-05, 9.9935e-06, 8.6504e-06, 7.53966e-06, 6.61128e-06, 5.82772e-06, 
			0.000186296, 0.00010314, 6.99788e-05, 5.15042e-05, 3.96848e-05, 3.1525e-05, 2.56058e-05, 2.1168e-05, 1.77539e-05, 1.50724e-05, 1.29294e-05, 1.11911e-05, 9.76254e-06, 8.57478e-06, 7.5768e-06, 6.7302e-06, 
			0.000188244, 0.000105285, 7.2054e-05, 5.34552e-05, 4.14994e-05, 3.3201e-05, 2.71586e-05, 2.26056e-05, 1.9085e-05, 1.63058e-05, 1.40735e-05, 1.2254e-05, 1.07514e-05, 9.49614e-06, 8.4366e-06, 7.53372e-06
		)
}

CapTable	"metal1_C_LATERAL_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000172044, 9.09314e-05, 5.9412e-05, 4.22084e-05, 3.14244e-05, 2.41422e-05, 1.89884e-05, 1.52178e-05, 1.23879e-05, 1.02198e-05, 8.52942e-06, 7.19152e-06, 6.11842e-06, 5.24744e-06, 4.53296e-06, 3.94118e-06, 
			0.000179802, 9.66514e-05, 6.39782e-05, 4.601e-05, 3.46502e-05, 2.69118e-05, 2.13846e-05, 1.73026e-05, 1.42104e-05, 1.18195e-05, 9.93898e-06, 8.43786e-06, 7.22406e-06, 6.23126e-06, 5.41084e-06, 4.72658e-06, 
			0.000183535, 0.00010003, 6.69476e-05, 4.86252e-05, 3.69628e-05, 2.8959e-05, 2.31992e-05, 1.89136e-05, 1.56428e-05, 1.30955e-05, 1.10776e-05, 9.4559e-06, 8.13606e-06, 7.04982e-06, 6.14692e-06, 5.38964e-06, 
			0.000185629, 0.000102392, 6.9167e-05, 5.06466e-05, 3.87968e-05, 3.06196e-05, 2.46932e-05, 2.02566e-05, 1.68501e-05, 1.4181e-05, 1.20545e-05, 1.03359e-05, 8.92964e-06, 7.76632e-06, 6.79456e-06, 5.97572e-06, 
			0.000187374, 0.000104317, 7.10076e-05, 5.23502e-05, 4.03534e-05, 3.2029e-05, 2.5973e-05, 2.1416e-05, 1.78995e-05, 1.51306e-05, 1.29138e-05, 1.11139e-05, 9.6344e-06, 8.40534e-06, 7.3744e-06, 6.50238e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.10569e-05, 5.46959e-05, 6.53391e-05, 7.34961e-05, 7.97134e-05, 8.44649e-05, 8.81297e-05, 9.09707e-05, 9.31968e-05, 9.49566e-05, 9.63658e-05, 9.7501e-05, 9.84293e-05, 9.9191e-05, 9.98229e-05, 0.000100351, 
			5.88173e-05, 7.25576e-05, 8.33431e-05, 9.16836e-05, 9.81108e-05, 0.000103083, 0.000106955, 0.000109993, 0.0001124, 0.000114323, 0.000115877, 0.000117143, 0.000118184, 0.000119048, 0.00011977, 0.000120378, 
			7.68088e-05, 9.04367e-05, 0.000101197, 0.000109591, 0.000116114, 0.000121205, 0.000125202, 0.000128367, 0.000130894, 0.000132933, 0.000134592, 0.000135953, 0.000137081, 0.000138022, 0.000138814, 0.000139486, 
			9.47812e-05, 0.000108256, 0.000118964, 0.00012737, 0.000133948, 0.000139115, 0.000143203, 0.000146463, 0.000149082, 0.000151209, 0.00015295, 0.000154389, 0.000155587, 0.000156593, 0.000157444, 0.000158168, 
			0.000112735, 0.000126121, 0.000136796, 0.000145208, 0.000151831, 0.000157063, 0.000161223, 0.000164558, 0.000167254, 0.000169453, 0.000171263, 0.000172766, 0.000174023, 0.000175084, 0.000175985, 0.000176756
		)
}

CapTable	"metal1_C_TOP_GP_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.72872e-06, 2.34886e-06, 2.88351e-06, 3.31933e-06, 3.67164e-06, 3.95406e-06, 4.16931e-06, 4.34325e-06, 4.48094e-06, 4.59238e-06, 4.68022e-06, 4.75368e-06, 4.8117e-06, 4.86043e-06, 4.90131e-06, 4.93529e-06, 
			2.31911e-06, 2.93644e-06, 3.47891e-06, 3.92784e-06, 4.29703e-06, 4.59231e-06, 4.8271e-06, 5.01468e-06, 5.16598e-06, 5.28863e-06, 5.38826e-06, 5.47038e-06, 5.53796e-06, 5.59451e-06, 5.64176e-06, 5.68128e-06, 
			2.91084e-06, 3.52553e-06, 4.07314e-06, 4.52676e-06, 4.90333e-06, 5.20721e-06, 5.45421e-06, 5.65131e-06, 5.81361e-06, 5.94339e-06, 6.05087e-06, 6.14017e-06, 6.21417e-06, 6.27665e-06, 6.32907e-06, 6.37396e-06, 
			3.50139e-06, 4.11274e-06, 4.65891e-06, 5.11884e-06, 5.49932e-06, 5.81081e-06, 6.06398e-06, 6.26919e-06, 6.43775e-06, 6.57512e-06, 6.68952e-06, 6.78402e-06, 6.863e-06, 6.93055e-06, 6.98681e-06, 7.03606e-06, 
			4.0925e-06, 4.70094e-06, 5.2436e-06, 5.71213e-06, 6.09669e-06, 6.41483e-06, 6.67265e-06, 6.8842e-06, 7.05817e-06, 7.20141e-06, 7.32086e-06, 7.42038e-06, 7.50456e-06, 7.57504e-06, 7.63651e-06, 7.68812e-06
		)
}

CapTable	"metal1_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000171963, 9.08028e-05, 5.92346e-05, 4.19852e-05, 3.11614e-05, 2.38468e-05, 1.86675e-05, 1.48779e-05, 1.20346e-05, 9.85756e-06, 8.16208e-06, 6.8221e-06, 5.74934e-06, 4.8807e-06, 4.17016e-06, 3.5836e-06, 
			0.000179672, 9.64628e-05, 6.37312e-05, 4.57098e-05, 3.4305e-05, 2.65306e-05, 2.0976e-05, 1.68741e-05, 1.37684e-05, 1.13693e-05, 9.48476e-06, 7.9831e-06, 6.77154e-06, 5.78322e-06, 4.96912e-06, 4.29258e-06, 
			0.000183338, 9.97656e-05, 6.66174e-05, 4.8237e-05, 3.6527e-05, 2.84858e-05, 2.26982e-05, 1.83931e-05, 1.51099e-05, 1.25556e-05, 1.05356e-05, 8.91556e-06, 7.60026e-06, 6.52102e-06, 5.627e-06, 4.88024e-06, 
			0.000185352, 0.000102041, 6.87462e-05, 5.01654e-05, 3.82668e-05, 3.00524e-05, 2.40992e-05, 1.96446e-05, 1.62274e-05, 1.35537e-05, 1.14274e-05, 9.71294e-06, 8.31386e-06, 7.16032e-06, 6.2003e-06, 5.39492e-06, 
			0.000187006, 0.00010387, 7.04874e-05, 5.17686e-05, 3.97228e-05, 3.13616e-05, 2.528e-05, 2.07068e-05, 1.71816e-05, 1.44103e-05, 1.21963e-05, 1.04031e-05, 8.93382e-06, 7.71736e-06, 6.70136e-06, 5.84588e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.07158e-05, 5.42348e-05, 6.4787e-05, 7.28775e-05, 7.90456e-05, 8.37644e-05, 8.73981e-05, 9.02172e-05, 9.24255e-05, 9.41724e-05, 9.55675e-05, 9.66919e-05, 9.76077e-05, 9.83598e-05, 9.89831e-05, 9.9503e-05, 
			5.83686e-05, 7.20049e-05, 8.2712e-05, 9.09884e-05, 9.73727e-05, 0.000102311, 0.000106156, 0.000109173, 0.000111562, 0.00011347, 0.000115009, 0.000116261, 0.00011729, 0.000118142, 0.000118853, 0.000119451, 
			7.62713e-05, 8.98054e-05, 0.000100498, 0.000108834, 0.000115316, 0.000120375, 0.000124348, 0.000127493, 0.000130001, 0.000132022, 0.000133665, 0.000135012, 0.000136126, 0.000137053, 0.000137833, 0.000138492, 
			9.41652e-05, 0.000107562, 0.000118205, 0.000126561, 0.000133101, 0.000138238, 0.000142302, 0.00014554, 0.000148141, 0.000150251, 0.000151974, 0.000153397, 0.00015458, 0.000155571, 0.000156408, 0.000157118, 
			0.000112059, 0.00012537, 0.000135985, 0.000144354, 0.000150941, 0.000156147, 0.000160282, 0.000163596, 0.000166272, 0.000168453, 0.000170245, 0.000171732, 0.000172971, 0.000174017, 0.000174901, 0.000175658
		)
}

CapTable	"metal1_C_TOP_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.13823e-06, 2.91177e-06, 3.57599e-06, 4.11509e-06, 4.55299e-06, 4.89943e-06, 5.17147e-06, 5.38702e-06, 5.5586e-06, 5.69584e-06, 5.80611e-06, 5.89556e-06, 5.96889e-06, 6.02973e-06, 6.07993e-06, 6.12182e-06, 
			2.87475e-06, 3.64069e-06, 4.31182e-06, 4.87356e-06, 5.33009e-06, 5.69864e-06, 5.99029e-06, 6.22463e-06, 6.41296e-06, 6.56551e-06, 6.68951e-06, 6.79096e-06, 6.87486e-06, 6.94503e-06, 7.00346e-06, 7.05196e-06, 
			3.60849e-06, 4.37424e-06, 5.05062e-06, 5.61918e-06, 6.08728e-06, 6.46692e-06, 6.77315e-06, 7.01984e-06, 7.21981e-06, 7.38308e-06, 7.51717e-06, 7.62751e-06, 7.71928e-06, 7.79688e-06, 7.86094e-06, 7.91708e-06, 
			4.34557e-06, 5.10269e-06, 5.78266e-06, 6.35746e-06, 6.83248e-06, 7.2207e-06, 7.53615e-06, 7.79245e-06, 8.00141e-06, 8.17297e-06, 8.31493e-06, 8.43247e-06, 8.53008e-06, 8.61404e-06, 8.68383e-06, 8.74386e-06, 
			5.08045e-06, 5.83854e-06, 6.51809e-06, 7.09878e-06, 7.57971e-06, 7.97502e-06, 8.29798e-06, 8.56189e-06, 8.77826e-06, 8.95642e-06, 9.10522e-06, 9.22813e-06, 9.33328e-06, 9.42027e-06, 9.49616e-06, 9.56002e-06
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
			4.04394e-05, 5.39251e-05, 6.44517e-05, 7.25228e-05, 7.86855e-05, 8.3402e-05, 8.70328e-05, 8.98498e-05, 9.20558e-05, 9.37982e-05, 9.5189e-05, 9.63075e-05, 9.72171e-05, 9.79618e-05, 9.85761e-05, 9.90887e-05, 
			5.79901e-05, 7.15936e-05, 8.2282e-05, 9.05519e-05, 9.69352e-05, 0.000101873, 0.000105719, 0.000108734, 0.000111119, 0.000113022, 0.000114555, 0.0001158, 0.00011682, 0.000117662, 0.000118362, 0.000118949, 
			7.57998e-05, 8.93186e-05, 0.000100003, 0.000108337, 0.000114822, 0.000119883, 0.000123857, 0.000126999, 0.000129505, 0.000131521, 0.000133154, 0.000134491, 0.000135593, 0.00013651, 0.000137276, 0.000137921, 
			9.3627e-05, 0.000107013, 0.000117657, 0.000126018, 0.000132562, 0.000137702, 0.000141768, 0.000145003, 0.000147599, 0.0001497, 0.000151414, 0.000152824, 0.000153993, 0.000154968, 0.00015579, 0.000156483, 
			0.000111468, 0.000124781, 0.000135404, 0.000143782, 0.000150376, 0.000155586, 0.000159724, 0.000163034, 0.000165703, 0.000167875, 0.000169655, 0.000171127, 0.000172351, 0.000173379, 0.000174246, 0.000174983
		)
}

CapTable	"metal1_C_TOP_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.51456e-06, 3.38911e-06, 4.14874e-06, 4.77502e-06, 5.2781e-06, 5.67725e-06, 5.99268e-06, 6.24231e-06, 6.44062e-06, 6.5992e-06, 6.7269e-06, 6.83036e-06, 6.91455e-06, 6.9845e-06, 7.0427e-06, 7.0907e-06, 
			3.41633e-06, 4.29547e-06, 5.06878e-06, 5.71634e-06, 6.2438e-06, 6.6689e-06, 7.00733e-06, 7.27911e-06, 7.49756e-06, 7.67419e-06, 7.81793e-06, 7.93583e-06, 8.03245e-06, 8.11323e-06, 8.18094e-06, 8.23709e-06, 
			4.32521e-06, 5.20081e-06, 5.97981e-06, 6.63895e-06, 7.18113e-06, 7.62097e-06, 7.97614e-06, 8.26278e-06, 8.49519e-06, 8.68386e-06, 8.83918e-06, 8.96746e-06, 9.07331e-06, 9.16242e-06, 9.23652e-06, 9.30018e-06, 
			5.23379e-06, 6.10646e-06, 6.89059e-06, 7.55595e-06, 8.10781e-06, 8.55865e-06, 8.92513e-06, 9.22307e-06, 9.4664e-06, 9.6651e-06, 9.82953e-06, 9.96611e-06, 1.00793e-05, 1.01753e-05, 1.02557e-05, 1.03251e-05, 
			6.13889e-06, 7.01171e-06, 7.79751e-06, 8.47019e-06, 9.02978e-06, 9.48933e-06, 9.86423e-06, 1.01713e-05, 1.04232e-05, 1.06301e-05, 1.08021e-05, 1.09447e-05, 1.1065e-05, 1.1166e-05, 1.12519e-05, 1.13238e-05
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

CapTable	"metal1_C_LATERAL_29MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000187026, 0.000109032, 7.88754e-05, 6.18952e-05, 5.06396e-05, 4.2487e-05, 3.62564e-05, 3.13252e-05, 2.7327e-05, 2.40284e-05, 2.12706e-05, 1.8941e-05, 1.69567e-05, 1.52546e-05, 1.37859e-05, 1.25118e-05, 
			0.000200106, 0.000118841, 8.66878e-05, 6.83794e-05, 5.61702e-05, 4.73022e-05, 4.05144e-05, 3.51364e-05, 3.07714e-05, 2.7166e-05, 2.41478e-05, 2.15942e-05, 1.94153e-05, 1.75426e-05, 1.59231e-05, 1.45151e-05, 
			0.000207338, 0.000124803, 9.16686e-05, 7.26486e-05, 5.9909e-05, 5.0629e-05, 4.35126e-05, 3.78654e-05, 3.32752e-05, 2.94778e-05, 2.62936e-05, 2.35952e-05, 2.12884e-05, 1.93018e-05, 1.75805e-05, 1.60808e-05, 
			0.00021165, 0.00012879, 9.516e-05, 7.57334e-05, 6.26802e-05, 5.31508e-05, 4.58254e-05, 4.0003e-05, 3.52632e-05, 3.13358e-05, 2.80376e-05, 2.52376e-05, 2.28398e-05, 2.07714e-05, 1.89757e-05, 1.74081e-05, 
			0.00021479, 0.00013177, 9.78572e-05, 7.8178e-05, 6.49146e-05, 5.52086e-05, 4.77386e-05, 4.17918e-05, 3.69434e-05, 3.29202e-05, 2.9536e-05, 2.66588e-05, 2.41908e-05, 2.20584e-05, 2.02038e-05, 1.85823e-05
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

CapTable	"metal1_C_TOP_GP_28MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.12194e-06, 2.73317e-06, 3.26779e-06, 3.73806e-06, 4.16316e-06, 4.5412e-06, 4.8831e-06, 5.19014e-06, 5.4631e-06, 5.70775e-06, 5.92738e-06, 6.12272e-06, 6.29786e-06, 6.45383e-06, 6.59362e-06, 6.71836e-06, 
			2.63466e-06, 3.22959e-06, 3.77208e-06, 4.26256e-06, 4.71086e-06, 5.11157e-06, 5.47628e-06, 5.80509e-06, 6.10142e-06, 6.36657e-06, 6.60543e-06, 6.81829e-06, 7.01023e-06, 7.18146e-06, 7.33586e-06, 7.47359e-06, 
			3.16097e-06, 3.7518e-06, 4.29519e-06, 4.79791e-06, 5.25717e-06, 5.67513e-06, 6.05351e-06, 6.39752e-06, 6.70654e-06, 6.98627e-06, 7.23725e-06, 7.46343e-06, 7.66655e-06, 7.84914e-06, 8.01348e-06, 8.16102e-06, 
			3.69801e-06, 4.28539e-06, 4.83141e-06, 5.33977e-06, 5.80654e-06, 6.2351e-06, 6.62403e-06, 6.97817e-06, 7.2974e-06, 7.58697e-06, 7.84738e-06, 8.0831e-06, 8.29455e-06, 8.4859e-06, 8.65781e-06, 8.81322e-06, 
			4.24114e-06, 4.82561e-06, 5.37729e-06, 5.88949e-06, 6.36483e-06, 6.79847e-06, 7.19619e-06, 7.55718e-06, 7.8856e-06, 8.18263e-06, 8.45157e-06, 8.69449e-06, 8.91386e-06, 9.11207e-06, 9.29084e-06, 9.45265e-06
		)
}

CapTable	"metal1_C_LATERAL_28MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000186601, 0.000108476, 7.81884e-05, 6.1081e-05, 4.97038e-05, 4.14358e-05, 3.50958e-05, 3.00614e-05, 2.59658e-05, 2.25756e-05, 1.97317e-05, 1.73214e-05, 1.52613e-05, 1.34883e-05, 1.19531e-05, 1.0617e-05, 
			0.000199493, 0.00011806, 8.57402e-05, 6.72706e-05, 5.49068e-05, 4.58918e-05, 3.89648e-05, 3.3456e-05, 2.89684e-05, 2.52484e-05, 2.21232e-05, 1.94706e-05, 1.71996e-05, 1.52418e-05, 1.35438e-05, 1.20634e-05, 
			0.00020654, 0.000123807, 9.04774e-05, 7.12684e-05, 5.83472e-05, 4.88946e-05, 4.16146e-05, 3.58138e-05, 3.10798e-05, 2.71486e-05, 2.38404e-05, 2.10272e-05, 1.86144e-05, 1.65306e-05, 1.47201e-05, 1.31387e-05, 
			0.000210672, 0.000127589, 9.37384e-05, 7.40976e-05, 6.08384e-05, 5.11128e-05, 4.36018e-05, 3.76052e-05, 3.27026e-05, 2.86242e-05, 2.51862e-05, 2.22576e-05, 1.97418e-05, 1.75651e-05, 1.56707e-05, 1.40134e-05, 
			0.000213624, 0.000130357, 9.61992e-05, 7.62816e-05, 6.27886e-05, 5.28642e-05, 4.51874e-05, 3.90468e-05, 3.40174e-05, 2.98264e-05, 2.62876e-05, 2.32678e-05, 2.06696e-05, 1.84178e-05, 1.6455e-05, 1.47351e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_29MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.01992e-05, 2.58028e-05, 3.06246e-05, 3.48727e-05, 3.86496e-05, 4.20163e-05, 4.50167e-05, 4.76874e-05, 5.00615e-05, 5.21695e-05, 5.404e-05, 5.56992e-05, 5.71709e-05, 5.8477e-05, 5.96366e-05, 6.06674e-05, 
			2.53e-05, 3.07887e-05, 3.57042e-05, 4.01176e-05, 4.40808e-05, 4.76338e-05, 5.08127e-05, 5.36514e-05, 5.61823e-05, 5.8436e-05, 6.04413e-05, 6.22255e-05, 6.38128e-05, 6.52258e-05, 6.64845e-05, 6.76069e-05, 
			3.0595e-05, 3.6044e-05, 4.10044e-05, 4.54974e-05, 4.9553e-05, 5.3202e-05, 5.64763e-05, 5.94075e-05, 6.20272e-05, 6.43658e-05, 6.6452e-05, 6.83125e-05, 6.99721e-05, 7.14533e-05, 7.27762e-05, 7.3959e-05, 
			3.6074e-05, 4.14862e-05, 4.6457e-05, 5.09826e-05, 5.50798e-05, 5.87762e-05, 6.21006e-05, 6.5084e-05, 6.77548e-05, 7.01452e-05, 7.22814e-05, 7.41909e-05, 7.58982e-05, 7.74252e-05, 7.87923e-05, 8.00176e-05, 
			4.1658e-05, 4.70488e-05, 5.20128e-05, 5.6545e-05, 6.06594e-05, 6.43794e-05, 6.77314e-05, 7.07442e-05, 7.34486e-05, 7.58728e-05, 7.8044e-05, 7.99892e-05, 8.17312e-05, 8.32926e-05, 8.46932e-05, 8.59507e-05
		)
}

CapTable	"metal1_C_TOP_GP_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.57836e-06, 3.32301e-06, 3.96899e-06, 4.5479e-06, 5.06625e-06, 5.53135e-06, 5.94951e-06, 6.32512e-06, 6.6609e-06, 6.96188e-06, 7.23078e-06, 7.47098e-06, 7.68554e-06, 7.87712e-06, 8.04835e-06, 8.20115e-06, 
			3.20236e-06, 3.93043e-06, 4.5926e-06, 5.19185e-06, 5.73915e-06, 6.2341e-06, 6.68187e-06, 7.08576e-06, 7.44876e-06, 7.77568e-06, 8.06864e-06, 8.33135e-06, 8.56661e-06, 8.77777e-06, 8.96634e-06, 9.13603e-06, 
			3.84741e-06, 4.56825e-06, 5.23663e-06, 5.85218e-06, 6.41558e-06, 6.92873e-06, 7.39558e-06, 7.81798e-06, 8.19941e-06, 8.54306e-06, 8.85272e-06, 9.13104e-06, 9.38086e-06, 9.60591e-06, 9.80745e-06, 9.98921e-06, 
			4.50568e-06, 5.2231e-06, 5.89633e-06, 6.52154e-06, 7.09653e-06, 7.62207e-06, 8.10207e-06, 8.53785e-06, 8.9324e-06, 9.28868e-06, 9.61079e-06, 9.90029e-06, 1.01619e-05, 1.03974e-05, 1.06091e-05, 1.08004e-05, 
			5.17477e-06, 5.89186e-06, 6.5694e-06, 7.20192e-06, 7.78606e-06, 8.32222e-06, 8.81205e-06, 9.25867e-06, 9.66385e-06, 1.00306e-05, 1.03628e-05, 1.06623e-05, 1.09334e-05, 1.11776e-05, 1.13983e-05, 1.15972e-05
		)
}

CapTable	"metal1_C_LATERAL_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000186494, 0.00010833, 7.8005e-05, 6.08624e-05, 4.94518e-05, 4.11526e-05, 3.47838e-05, 2.97226e-05, 2.5603e-05, 2.21908e-05, 1.93275e-05, 1.69001e-05, 1.48251e-05, 1.30394e-05, 1.14937e-05, 1.01488e-05, 
			0.000199341, 0.000117864, 8.55026e-05, 6.69928e-05, 5.45906e-05, 4.55392e-05, 3.85784e-05, 3.3038e-05, 2.85216e-05, 2.47756e-05, 2.16272e-05, 1.8954e-05, 1.66652e-05, 1.46922e-05, 1.29814e-05, 1.14906e-05, 
			0.000206338, 0.000123558, 9.01824e-05, 7.09284e-05, 5.79638e-05, 4.847e-05, 4.11514e-05, 3.53148e-05, 3.05482e-05, 2.65872e-05, 2.32526e-05, 2.04162e-05, 1.79834e-05, 1.58825e-05, 1.40577e-05, 1.24648e-05, 
			0.000210418, 0.000127283, 9.33818e-05, 7.3691e-05, 6.03838e-05, 5.06126e-05, 4.30586e-05, 3.70222e-05, 3.20836e-05, 2.79726e-05, 2.45056e-05, 2.15516e-05, 1.90138e-05, 1.68187e-05, 1.4909e-05, 1.32394e-05, 
			0.000213312, 0.000129988, 9.57746e-05, 7.5802e-05, 6.22562e-05, 5.22814e-05, 4.45578e-05, 3.83738e-05, 3.33052e-05, 2.9079e-05, 2.5509e-05, 2.24622e-05, 1.98404e-05, 1.75693e-05, 1.55905e-05, 1.38579e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_28MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.85783e-05, 2.37626e-05, 2.82438e-05, 3.22131e-05, 3.57506e-05, 3.89171e-05, 4.17445e-05, 4.42673e-05, 4.65179e-05, 4.85207e-05, 5.03019e-05, 5.1887e-05, 5.32965e-05, 5.45516e-05, 5.56692e-05, 5.66659e-05, 
			2.33847e-05, 2.85314e-05, 3.31557e-05, 3.73248e-05, 4.10783e-05, 4.44589e-05, 4.74898e-05, 5.02033e-05, 5.26285e-05, 5.47945e-05, 5.67262e-05, 5.84498e-05, 5.99863e-05, 6.1358e-05, 6.25822e-05, 6.36769e-05, 
			2.8375e-05, 3.35354e-05, 3.82494e-05, 4.25317e-05, 4.64106e-05, 4.99113e-05, 5.30629e-05, 5.58909e-05, 5.84267e-05, 6.06947e-05, 6.27238e-05, 6.45372e-05, 6.61587e-05, 6.76088e-05, 6.89065e-05, 7.00691e-05, 
			3.3535e-05, 3.8701e-05, 4.34662e-05, 4.78166e-05, 5.17691e-05, 5.53441e-05, 5.85722e-05, 6.14746e-05, 6.4084e-05, 6.64228e-05, 6.85194e-05, 7.03963e-05, 7.20787e-05, 7.35863e-05, 7.49383e-05, 7.61512e-05, 
			3.88059e-05, 4.39932e-05, 4.87865e-05, 5.31789e-05, 5.71776e-05, 6.08083e-05, 6.40884e-05, 6.7048e-05, 6.9711e-05, 7.2104e-05, 7.42518e-05, 7.61807e-05, 7.79115e-05, 7.94661e-05, 8.08621e-05, 8.21173e-05
		)
}

CapTable	"metal1_C_TOP_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.19564e-06, 4.11388e-06, 4.91449e-06, 5.62843e-06, 6.26874e-06, 6.84303e-06, 7.35927e-06, 7.82179e-06, 8.23534e-06, 8.60403e-06, 8.93256e-06, 9.22472e-06, 9.48438e-06, 9.71514e-06, 9.92009e-06, 1.01024e-05, 
			3.98643e-06, 4.88199e-06, 5.70038e-06, 6.44541e-06, 7.1222e-06, 7.73515e-06, 8.28846e-06, 8.78659e-06, 9.23357e-06, 9.63378e-06, 9.99172e-06, 1.03111e-05, 1.0596e-05, 1.08494e-05, 1.10759e-05, 1.12778e-05, 
			4.79721e-06, 5.68934e-06, 6.51741e-06, 7.28061e-06, 7.97918e-06, 8.61555e-06, 9.19216e-06, 9.71284e-06, 1.01816e-05, 1.06025e-05, 1.09797e-05, 1.13175e-05, 1.16195e-05, 1.18893e-05, 1.21308e-05, 1.23464e-05, 
			5.62913e-06, 6.51844e-06, 7.35484e-06, 8.13059e-06, 8.84372e-06, 9.49536e-06, 1.00879e-05, 1.06246e-05, 1.11089e-05, 1.15446e-05, 1.19358e-05, 1.22873e-05, 1.2602e-05, 1.28843e-05, 1.31368e-05, 1.33631e-05, 
			6.47482e-06, 7.3657e-06, 8.20865e-06, 8.99313e-06, 9.71696e-06, 1.03801e-05, 1.09846e-05, 1.15329e-05, 1.2029e-05, 1.24765e-05, 1.28792e-05, 1.32416e-05, 1.35665e-05, 1.38585e-05, 1.41202e-05, 1.43552e-05
		)
}

CapTable	"metal1_C_LATERAL_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000186442, 0.000108269, 7.79314e-05, 6.07758e-05, 4.93534e-05, 4.10452e-05, 3.46714e-05, 2.96104e-05, 2.54962e-05, 2.20948e-05, 1.92475e-05, 1.68404e-05, 1.47898e-05, 1.30315e-05, 1.15158e-05, 1.02031e-05, 
			0.000199247, 0.000117754, 8.53718e-05, 6.68418e-05, 5.44218e-05, 4.53568e-05, 3.8388e-05, 3.28462e-05, 2.83346e-05, 2.45994e-05, 2.14676e-05, 1.88158e-05, 1.65528e-05, 1.4609e-05, 1.29301e-05, 1.14732e-05, 
			0.000206196, 0.000123392, 8.99892e-05, 7.071e-05, 5.77246e-05, 4.82158e-05, 4.08894e-05, 3.5052e-05, 3.02918e-05, 2.63442e-05, 2.30286e-05, 2.02164e-05, 1.78122e-05, 1.57434e-05, 1.39535e-05, 1.23976e-05, 
			0.000210218, 0.000127051, 9.31174e-05, 7.33984e-05, 6.0069e-05, 5.0283e-05, 4.27222e-05, 3.6687e-05, 3.17568e-05, 2.76616e-05, 2.42162e-05, 2.12892e-05, 1.87826e-05, 1.66224e-05, 1.47503e-05, 1.31205e-05, 
			0.000213046, 0.000129686, 9.54386e-05, 7.5438e-05, 6.18718e-05, 5.18854e-05, 4.41584e-05, 3.79798e-05, 3.29242e-05, 2.8718e-05, 2.5174e-05, 2.21588e-05, 1.95728e-05, 1.73409e-05, 1.54039e-05, 1.37153e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_27MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.82552e-05, 2.33646e-05, 2.7792e-05, 3.17091e-05, 3.52074e-05, 3.83379e-05, 4.11368e-05, 4.36356e-05, 4.5864e-05, 4.7848e-05, 4.96134e-05, 5.11838e-05, 5.25806e-05, 5.38235e-05, 5.493e-05, 5.59163e-05, 
			2.3013e-05, 2.80932e-05, 3.26648e-05, 3.67903e-05, 4.05083e-05, 4.38545e-05, 4.68587e-05, 4.95501e-05, 5.19573e-05, 5.41061e-05, 5.60239e-05, 5.77339e-05, 5.92593e-05, 6.06194e-05, 6.1834e-05, 6.29182e-05, 
			2.79556e-05, 3.30596e-05, 3.7725e-05, 4.19674e-05, 4.58136e-05, 4.92873e-05, 5.2415e-05, 5.52249e-05, 5.77437e-05, 5.99988e-05, 6.20152e-05, 6.38178e-05, 6.54292e-05, 6.68692e-05, 6.81578e-05, 6.93103e-05, 
			3.30713e-05, 3.81909e-05, 4.29119e-05, 4.72275e-05, 5.11507e-05, 5.47053e-05, 5.79133e-05, 6.0802e-05, 6.3397e-05, 6.57247e-05, 6.78106e-05, 6.96801e-05, 7.13533e-05, 7.28519e-05, 7.41951e-05, 7.53986e-05, 
			3.83032e-05, 4.34507e-05, 4.8209e-05, 5.25711e-05, 5.65487e-05, 6.01604e-05, 6.34271e-05, 6.63745e-05, 6.9027e-05, 7.14124e-05, 7.35532e-05, 7.54745e-05, 7.71982e-05, 7.87451e-05, 8.01322e-05, 8.13789e-05
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
			1.77164e-05, 2.26651e-05, 2.69561e-05, 3.07575e-05, 3.4153e-05, 3.71915e-05, 3.99059e-05, 4.23264e-05, 4.44804e-05, 4.6394e-05, 4.80914e-05, 4.95961e-05, 5.09291e-05, 5.21101e-05, 5.31566e-05, 5.4084e-05, 
			2.2367e-05, 2.73044e-05, 3.17488e-05, 3.57598e-05, 3.9377e-05, 4.26317e-05, 4.55511e-05, 4.81625e-05, 5.04933e-05, 5.25695e-05, 5.44162e-05, 5.60576e-05, 5.75155e-05, 5.88109e-05, 5.99611e-05, 6.09834e-05, 
			2.72118e-05, 3.21811e-05, 3.67254e-05, 4.08604e-05, 4.46072e-05, 4.79897e-05, 5.10314e-05, 5.37604e-05, 5.62009e-05, 5.83799e-05, 6.03228e-05, 6.20531e-05, 6.35936e-05, 6.4965e-05, 6.61854e-05, 6.72725e-05, 
			3.22359e-05, 3.7231e-05, 4.18378e-05, 4.6049e-05, 4.98763e-05, 5.33396e-05, 5.64629e-05, 5.92684e-05, 6.17843e-05, 6.40338e-05, 6.6045e-05, 6.78385e-05, 6.94384e-05, 7.08653e-05, 7.21379e-05, 7.32731e-05, 
			3.73842e-05, 4.24109e-05, 4.70578e-05, 5.13189e-05, 5.52012e-05, 5.87215e-05, 6.1901e-05, 6.47643e-05, 6.73338e-05, 6.96375e-05, 7.16988e-05, 7.35406e-05, 7.51877e-05, 7.66576e-05, 7.79709e-05, 7.91445e-05
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

CapTable	"poly_C_BOTTOM_GP_110MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.6603e-05, 3.39594e-05, 4.03734e-05, 4.60026e-05, 5.09508e-05, 5.53004e-05, 5.91214e-05, 6.24762e-05, 6.54213e-05, 6.80071e-05, 7.02792e-05, 7.22773e-05, 7.4037e-05, 7.55888e-05, 7.69597e-05, 7.81729e-05, 
			3.5441e-05, 4.27408e-05, 4.92938e-05, 5.51298e-05, 6.03112e-05, 6.48972e-05, 6.89506e-05, 7.25306e-05, 7.56888e-05, 7.84766e-05, 8.0938e-05, 8.3113e-05, 8.50377e-05, 8.67423e-05, 8.82547e-05, 8.95983e-05, 
			4.458e-05, 5.1847e-05, 5.84392e-05, 6.43584e-05, 6.96412e-05, 7.43454e-05, 7.85224e-05, 8.22276e-05, 8.55116e-05, 8.84226e-05, 9.10022e-05, 9.32904e-05, 9.53226e-05, 9.7129e-05, 9.8737e-05, 0.000100171, 
			5.3902e-05, 6.11334e-05, 6.77276e-05, 7.36796e-05, 7.902e-05, 8.37936e-05, 8.80496e-05, 9.1838e-05, 9.52076e-05, 9.82044e-05, 0.000100869, 0.000103241, 0.000105354, 0.000107237, 0.000108919, 0.000110422, 
			6.3278e-05, 7.0441e-05, 7.70102e-05, 8.29628e-05, 8.8324e-05, 9.31316e-05, 9.74308e-05, 0.000101268, 0.000104692, 0.000107746, 0.000110469, 0.000112898, 0.000115068, 0.000117006, 0.000118741, 0.000120296
		)
}

CapTable	"poly_C_LATERAL_110MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217364, 0.000124719, 8.90586e-05, 6.90104e-05, 5.57662e-05, 4.62216e-05, 3.897e-05, 3.3266e-05, 2.86686e-05, 2.48962e-05, 2.17574e-05, 1.91174e-05, 1.68765e-05, 1.496e-05, 1.33102e-05, 1.18819e-05, 
			0.000231068, 0.000135247, 9.75222e-05, 7.60872e-05, 6.18238e-05, 5.14998e-05, 4.36284e-05, 3.74164e-05, 3.23932e-05, 2.82574e-05, 2.4805e-05, 2.1891e-05, 1.94093e-05, 1.72797e-05, 1.54403e-05, 1.38427e-05, 
			0.000238146, 0.000141356, 0.000102746, 8.06246e-05, 6.58458e-05, 5.50986e-05, 4.68746e-05, 4.03634e-05, 3.50814e-05, 3.07194e-05, 2.70668e-05, 2.39746e-05, 2.13334e-05, 1.906e-05, 1.7091e-05, 1.53759e-05, 
			0.000242784, 0.000145573, 0.0001065, 8.39874e-05, 6.8881e-05, 5.78584e-05, 4.94014e-05, 4.2686e-05, 3.72234e-05, 3.26996e-05, 2.89016e-05, 2.56778e-05, 2.2917e-05, 2.05348e-05, 1.84663e-05, 1.66602e-05, 
			0.000244816, 0.000148214, 0.000109096, 8.64412e-05, 7.1173e-05, 6.00004e-05, 5.14082e-05, 4.45682e-05, 3.89856e-05, 3.43518e-05, 3.04522e-05, 2.71346e-05, 2.4287e-05, 2.18248e-05, 1.96821e-05, 1.78072e-05
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

CapTable	"poly_C_BOTTOM_GP_19MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.51916e-05, 3.21399e-05, 3.81929e-05, 4.35065e-05, 4.81683e-05, 5.22651e-05, 5.58587e-05, 5.90106e-05, 6.17711e-05, 6.419e-05, 6.63161e-05, 6.81805e-05, 6.98148e-05, 7.12578e-05, 7.25278e-05, 7.36484e-05, 
			3.36379e-05, 4.05562e-05, 4.67608e-05, 5.22771e-05, 5.71693e-05, 6.14942e-05, 6.53105e-05, 6.86743e-05, 7.16417e-05, 7.42527e-05, 7.65494e-05, 7.85803e-05, 8.03715e-05, 8.19535e-05, 8.33532e-05, 8.45952e-05, 
			4.23994e-05, 4.92978e-05, 5.55478e-05, 6.11499e-05, 6.61467e-05, 7.05838e-05, 7.45218e-05, 7.80041e-05, 8.1083e-05, 8.38102e-05, 8.62218e-05, 8.8354e-05, 9.0243e-05, 9.19202e-05, 9.34085e-05, 9.47321e-05, 
			5.13479e-05, 5.82177e-05, 6.44809e-05, 7.01188e-05, 7.51669e-05, 7.96703e-05, 8.36757e-05, 8.72374e-05, 9.03985e-05, 9.32019e-05, 9.56887e-05, 9.78995e-05, 9.98608e-05, 0.000101607, 0.000103163, 0.000104551, 
			6.03706e-05, 6.71931e-05, 7.34291e-05, 7.90711e-05, 8.41411e-05, 8.86809e-05, 9.27307e-05, 9.63382e-05, 9.95498e-05, 0.000102408, 0.000104951, 0.000107214, 0.000109232, 0.00011103, 0.000112637, 0.000114075
		)
}

CapTable	"poly_C_TOP_GP_19MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			1.41741e-06, 1.80066e-06, 2.14173e-06, 2.43926e-06, 2.70892e-06, 2.94545e-06, 3.15605e-06, 3.3421e-06, 3.50831e-06, 3.65572e-06, 3.78067e-06, 3.89246e-06, 3.99461e-06, 4.07965e-06, 4.15622e-06, 4.2244e-06, 
			1.85211e-06, 2.22703e-06, 2.56936e-06, 2.88371e-06, 3.16553e-06, 3.41783e-06, 3.64449e-06, 3.84567e-06, 4.01985e-06, 4.17794e-06, 4.32117e-06, 4.44174e-06, 4.55014e-06, 4.64691e-06, 4.73334e-06, 4.8088e-06, 
			2.2936e-06, 2.66618e-06, 3.01502e-06, 3.33449e-06, 3.62094e-06, 3.88261e-06, 4.11302e-06, 4.32246e-06, 4.51099e-06, 4.67376e-06, 4.81903e-06, 4.9502e-06, 5.0668e-06, 5.1685e-06, 5.26084e-06, 5.34341e-06, 
			2.74213e-06, 3.11854e-06, 3.46226e-06, 3.78301e-06, 4.07586e-06, 4.34227e-06, 4.58229e-06, 4.79424e-06, 4.98393e-06, 5.15488e-06, 5.3075e-06, 5.4415e-06, 5.56324e-06, 5.67156e-06, 5.76702e-06, 5.8534e-06, 
			3.19443e-06, 3.56207e-06, 3.91453e-06, 4.23792e-06, 4.53451e-06, 4.80089e-06, 5.04167e-06, 5.25855e-06, 5.454e-06, 5.62685e-06, 5.78328e-06, 5.92314e-06, 6.04672e-06, 6.15847e-06, 6.25872e-06, 6.34738e-06
		)
}

CapTable	"poly_C_LATERAL_19MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217368, 0.000124743, 8.90984e-05, 6.90602e-05, 5.58238e-05, 4.62864e-05, 3.90432e-05, 3.33492e-05, 2.87642e-05, 2.50062e-05, 2.18842e-05, 1.92624e-05, 1.70414e-05, 1.51457e-05, 1.35173e-05, 1.21106e-05, 
			0.000231042, 0.000135227, 9.75028e-05, 7.60672e-05, 6.18042e-05, 5.1483e-05, 4.3618e-05, 3.7416e-05, 3.24064e-05, 2.82874e-05, 2.48544e-05, 2.1962e-05, 1.95033e-05, 1.73976e-05, 1.55824e-05, 1.4009e-05, 
			0.000238068, 0.000141272, 0.000102653, 8.05256e-05, 6.57444e-05, 5.49996e-05, 4.67832e-05, 4.02844e-05, 3.5019e-05, 3.0677e-05, 2.70472e-05, 2.39798e-05, 2.13642e-05, 1.91173e-05, 1.71747e-05, 1.54855e-05, 
			0.00024264, 0.000145415, 0.000106331, 8.38112e-05, 6.87042e-05, 5.76874e-05, 4.9242e-05, 4.25434e-05, 3.71016e-05, 3.26022e-05, 2.88308e-05, 2.5635e-05, 2.2903e-05, 2.05496e-05, 1.85097e-05, 1.67312e-05, 
			0.000244584, 0.000147962, 0.00010883, 8.6169e-05, 7.09014e-05, 5.97362e-05, 5.11576e-05, 4.43362e-05, 3.87762e-05, 3.41678e-05, 3.02958e-05, 2.7007e-05, 2.41886e-05, 2.17552e-05, 1.96408e-05, 1.7793e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.4944e-05, 3.18395e-05, 3.78562e-05, 4.31334e-05, 4.77662e-05, 5.18409e-05, 5.54147e-05, 5.85504e-05, 6.13001e-05, 6.37111e-05, 6.5825e-05, 6.76815e-05, 6.93119e-05, 7.07471e-05, 7.20107e-05, 7.31272e-05, 
			3.33281e-05, 4.0199e-05, 4.63612e-05, 5.18462e-05, 5.67098e-05, 6.10111e-05, 6.48103e-05, 6.81601e-05, 7.11112e-05, 7.37123e-05, 7.60033e-05, 7.80246e-05, 7.98081e-05, 8.13854e-05, 8.27796e-05, 8.40172e-05, 
			4.20321e-05, 4.88864e-05, 5.50985e-05, 6.06665e-05, 6.56362e-05, 7.00545e-05, 7.39711e-05, 7.74409e-05, 8.05096e-05, 8.32257e-05, 8.56271e-05, 8.77533e-05, 8.96365e-05, 9.13075e-05, 9.27907e-05, 9.41105e-05, 
			5.09278e-05, 5.7755e-05, 6.39822e-05, 6.9588e-05, 7.46126e-05, 7.90983e-05, 8.30894e-05, 8.66369e-05, 8.97854e-05, 9.25807e-05, 9.50605e-05, 9.72632e-05, 9.92209e-05, 0.000100962, 0.000102513, 0.000103898, 
			5.99001e-05, 6.66797e-05, 7.28837e-05, 7.84994e-05, 8.35457e-05, 8.80668e-05, 9.20998e-05, 9.56949e-05, 9.88971e-05, 0.000101747, 0.000104283, 0.000106541, 0.000108553, 0.000110347, 0.000111951, 0.000113384
		)
}

CapTable	"poly_C_TOP_GP_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			1.73901e-06, 2.20927e-06, 2.62158e-06, 2.98995e-06, 3.32181e-06, 3.61326e-06, 3.87413e-06, 4.10385e-06, 4.30664e-06, 4.48511e-06, 4.64302e-06, 4.78093e-06, 4.90339e-06, 5.01075e-06, 5.1064e-06, 5.18984e-06, 
			2.27093e-06, 2.73304e-06, 3.15676e-06, 3.53942e-06, 3.88662e-06, 4.19892e-06, 4.47527e-06, 4.72154e-06, 4.94117e-06, 5.1345e-06, 5.30712e-06, 5.4584e-06, 5.59345e-06, 5.7123e-06, 5.81831e-06, 5.91213e-06, 
			2.81593e-06, 3.27438e-06, 3.70235e-06, 4.09631e-06, 4.44998e-06, 4.7691e-06, 5.05789e-06, 5.3135e-06, 5.54344e-06, 5.74614e-06, 5.92754e-06, 6.08812e-06, 6.23129e-06, 6.35843e-06, 6.47184e-06, 6.57286e-06, 
			3.36823e-06, 3.83095e-06, 4.25562e-06, 4.65344e-06, 5.01284e-06, 5.33831e-06, 5.63321e-06, 5.89626e-06, 6.13244e-06, 6.34269e-06, 6.53049e-06, 6.69797e-06, 6.84709e-06, 6.98057e-06, 7.09917e-06, 7.2058e-06, 
			3.92588e-06, 4.38112e-06, 4.81214e-06, 5.2098e-06, 5.5749e-06, 5.9052e-06, 6.20357e-06, 6.47173e-06, 6.71212e-06, 6.9278e-06, 7.12013e-06, 7.29276e-06, 7.44625e-06, 7.58432e-06, 7.70751e-06, 7.81808e-06
		)
}

CapTable	"poly_C_LATERAL_18MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217308, 0.000124659, 8.89892e-05, 6.89276e-05, 5.5669e-05, 4.61108e-05, 3.88484e-05, 3.31372e-05, 2.85364e-05, 2.47644e-05, 2.163e-05, 1.89975e-05, 1.6767e-05, 1.48631e-05, 1.32276e-05, 1.18149e-05, 
			0.000230956, 0.000135113, 9.7363e-05, 7.59024e-05, 6.16156e-05, 5.1272e-05, 4.33864e-05, 3.71654e-05, 3.21386e-05, 2.80042e-05, 2.45576e-05, 2.1653e-05, 1.91834e-05, 1.70683e-05, 1.52451e-05, 1.36646e-05, 
			0.00023795, 0.000141126, 0.00010248, 8.03262e-05, 6.55198e-05, 5.47514e-05, 4.6513e-05, 3.99936e-05, 3.471e-05, 3.03512e-05, 2.67064e-05, 2.36256e-05, 2.09982e-05, 1.87411e-05, 1.67895e-05, 1.50926e-05, 
			0.000242488, 0.000145234, 0.000106121, 8.35736e-05, 6.84396e-05, 5.73974e-05, 4.89284e-05, 4.22078e-05, 3.67462e-05, 3.22286e-05, 2.8441e-05, 2.52308e-05, 2.2486e-05, 2.01214e-05, 1.80716e-05, 1.62847e-05, 
			0.000244398, 0.000147747, 0.000108586, 8.58958e-05, 7.06004e-05, 5.9409e-05, 5.08056e-05, 4.39614e-05, 3.83808e-05, 3.37536e-05, 2.98644e-05, 2.65604e-05, 2.37286e-05, 2.12834e-05, 1.91585e-05, 1.73018e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.46599e-05, 3.14861e-05, 3.74386e-05, 4.26529e-05, 4.72313e-05, 5.125e-05, 5.47791e-05, 5.78706e-05, 6.05796e-05, 6.29535e-05, 6.50361e-05, 6.68628e-05, 6.8469e-05, 6.98819e-05, 7.1128e-05, 7.22282e-05, 
			3.29782e-05, 3.97825e-05, 4.5878e-05, 5.12961e-05, 5.61062e-05, 6.03558e-05, 6.41046e-05, 6.74105e-05, 7.03223e-05, 7.28867e-05, 7.51488e-05, 7.71419e-05, 7.8903e-05, 8.04591e-05, 8.18377e-05, 8.30598e-05, 
			4.16147e-05, 4.83998e-05, 5.45457e-05, 6.00575e-05, 6.49676e-05, 6.93319e-05, 7.3203e-05, 7.66299e-05, 7.96627e-05, 8.23444e-05, 8.47189e-05, 8.6819e-05, 8.86823e-05, 9.03345e-05, 9.18034e-05, 9.311e-05, 
			5.04393e-05, 5.7206e-05, 6.3363e-05, 6.89112e-05, 7.38802e-05, 7.83156e-05, 8.22642e-05, 8.57707e-05, 8.88866e-05, 9.16513e-05, 9.41063e-05, 9.62855e-05, 9.8224e-05, 9.99487e-05, 0.000101486, 0.000102857, 
			5.93437e-05, 6.60609e-05, 7.22058e-05, 7.77656e-05, 8.27636e-05, 8.7239e-05, 9.12348e-05, 9.47944e-05, 9.79675e-05, 0.000100789, 0.000103304, 0.000105541, 0.000107536, 0.000109315, 0.000110905, 0.000112327
		)
}

CapTable	"poly_C_TOP_GP_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.06613e-06, 2.62249e-06, 3.1144e-06, 3.55647e-06, 3.94946e-06, 4.29981e-06, 4.60515e-06, 4.87725e-06, 5.11741e-06, 5.32932e-06, 5.51475e-06, 5.67948e-06, 5.82361e-06, 5.95159e-06, 6.06404e-06, 6.16384e-06, 
			2.70079e-06, 3.24489e-06, 3.75023e-06, 4.2117e-06, 4.62001e-06, 4.98836e-06, 5.31819e-06, 5.6109e-06, 5.8699e-06, 6.10054e-06, 6.30343e-06, 6.48451e-06, 6.64375e-06, 6.78579e-06, 6.91135e-06, 7.02316e-06, 
			3.34426e-06, 3.89082e-06, 4.39969e-06, 4.86371e-06, 5.28644e-06, 5.66766e-06, 6.00865e-06, 6.31413e-06, 6.58491e-06, 6.82738e-06, 7.04154e-06, 7.23325e-06, 7.40285e-06, 7.55442e-06, 7.68905e-06, 7.80942e-06, 
			4.00171e-06, 4.54381e-06, 5.05585e-06, 5.5256e-06, 5.95516e-06, 6.34363e-06, 6.69239e-06, 7.00633e-06, 7.28562e-06, 7.5363e-06, 7.75892e-06, 7.95851e-06, 8.13585e-06, 8.2947e-06, 8.4364e-06, 8.56327e-06, 
			4.66534e-06, 5.20448e-06, 5.71722e-06, 6.19058e-06, 6.62379e-06, 7.01758e-06, 7.37142e-06, 7.69082e-06, 7.97633e-06, 8.23307e-06, 8.46185e-06, 8.66734e-06, 8.85062e-06, 9.01493e-06, 9.16213e-06, 9.29419e-06
		)
}

CapTable	"poly_C_LATERAL_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217268, 0.000124606, 8.893e-05, 6.88676e-05, 5.56132e-05, 4.60622e-05, 3.88088e-05, 3.31066e-05, 2.85144e-05, 2.475e-05, 2.1622e-05, 1.89942e-05, 1.67671e-05, 1.48652e-05, 1.32305e-05, 1.18176e-05, 
			0.000230882, 0.000135034, 9.72828e-05, 7.58262e-05, 6.15458e-05, 5.12098e-05, 4.33312e-05, 3.71166e-05, 3.20948e-05, 2.79638e-05, 2.45188e-05, 2.16146e-05, 1.91442e-05, 1.70271e-05, 1.5201e-05, 1.3617e-05, 
			0.000237856, 0.00014103, 0.000102388, 8.02388e-05, 6.5438e-05, 5.46744e-05, 4.64394e-05, 3.9922e-05, 3.46384e-05, 3.02782e-05, 2.66306e-05, 2.35458e-05, 2.09138e-05, 1.8651e-05, 1.66935e-05, 1.49906e-05, 
			0.00024238, 0.000145128, 0.000106019, 8.34752e-05, 6.83436e-05, 5.73018e-05, 4.88314e-05, 4.2108e-05, 3.66418e-05, 3.21184e-05, 2.83238e-05, 2.5106e-05, 2.23532e-05, 1.99806e-05, 1.79227e-05, 1.6128e-05, 
			0.000244278, 0.000147628, 0.000108466, 8.57738e-05, 7.04746e-05, 5.92774e-05, 5.06668e-05, 4.38138e-05, 3.82232e-05, 3.35854e-05, 2.96856e-05, 2.63706e-05, 2.35278e-05, 2.10724e-05, 1.89377e-05, 1.70721e-05
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

CapModel	"metal9Config21" {
		refLayer				= "M9"
		groundPlaneBelow		= "M6"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal9_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal9_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal9_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal9_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal9_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal9_C_LATERAL_31MAX"
}

CapModel	"metal9Config31" {
		refLayer				= "M9"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal9_C_BOTTOM_GP_41MAX"
		bottomCapDataNom		= "metal9_C_BOTTOM_GP_41MAX"
		bottomCapDataMax		= "metal9_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal9_C_LATERAL_41MAX"
		lateralCapDataNom		= "metal9_C_LATERAL_41MAX"
		lateralCapDataMax		= "metal9_C_LATERAL_41MAX"
}

CapModel	"metal9Config41" {
		refLayer				= "M9"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal9_C_BOTTOM_GP_51MAX"
		bottomCapDataNom		= "metal9_C_BOTTOM_GP_51MAX"
		bottomCapDataMax		= "metal9_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal9_C_LATERAL_51MAX"
		lateralCapDataNom		= "metal9_C_LATERAL_51MAX"
		lateralCapDataMax		= "metal9_C_LATERAL_51MAX"
}

CapModel	"metal9Config51" {
		refLayer				= "M9"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal9_C_BOTTOM_GP_61MAX"
		bottomCapDataNom		= "metal9_C_BOTTOM_GP_61MAX"
		bottomCapDataMax		= "metal9_C_BOTTOM_GP_61MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal9_C_LATERAL_61MAX"
		lateralCapDataNom		= "metal9_C_LATERAL_61MAX"
		lateralCapDataMax		= "metal9_C_LATERAL_61MAX"
}

CapModel	"metal9Config61" {
		refLayer				= "M9"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal9_C_BOTTOM_GP_71MAX"
		bottomCapDataNom		= "metal9_C_BOTTOM_GP_71MAX"
		bottomCapDataMax		= "metal9_C_BOTTOM_GP_71MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal9_C_LATERAL_71MAX"
		lateralCapDataNom		= "metal9_C_LATERAL_71MAX"
		lateralCapDataMax		= "metal9_C_LATERAL_71MAX"
}

CapModel	"metal9Config71" {
		refLayer				= "M9"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal9_C_BOTTOM_GP_81MAX"
		bottomCapDataNom		= "metal9_C_BOTTOM_GP_81MAX"
		bottomCapDataMax		= "metal9_C_BOTTOM_GP_81MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal9_C_LATERAL_81MAX"
		lateralCapDataNom		= "metal9_C_LATERAL_81MAX"
		lateralCapDataMax		= "metal9_C_LATERAL_81MAX"
}

CapModel	"metal9Config81" {
		refLayer				= "M9"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal9_C_BOTTOM_GP_91MAX"
		bottomCapDataNom		= "metal9_C_BOTTOM_GP_91MAX"
		bottomCapDataMax		= "metal9_C_BOTTOM_GP_91MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal9_C_LATERAL_91MAX"
		lateralCapDataNom		= "metal9_C_LATERAL_91MAX"
		lateralCapDataMax		= "metal9_C_LATERAL_91MAX"
}

CapModel	"metal9Config91" {
		refLayer				= "M9"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal9_C_BOTTOM_GP_101MAX"
		bottomCapDataNom		= "metal9_C_BOTTOM_GP_101MAX"
		bottomCapDataMax		= "metal9_C_BOTTOM_GP_101MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal9_C_LATERAL_101MAX"
		lateralCapDataNom		= "metal9_C_LATERAL_101MAX"
		lateralCapDataMax		= "metal9_C_LATERAL_101MAX"
}

CapModel	"metal6Config44" {
		refLayer				= "M6"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_54MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_54MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_54MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_54MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_54MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_54MAX"
}

CapModel	"metal6Config51" {
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

CapModel	"metal6Config52" {
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

CapModel	"metal6Config53" {
		refLayer				= "M6"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_63MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_63MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_63MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_63MAX"
		topCapDataNom			= "metal6_C_TOP_GP_63MAX"
		topCapDataMax			= "metal6_C_TOP_GP_63MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_63MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_63MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_63MAX"
}

CapModel	"metal6Config54" {
		refLayer				= "M6"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_64MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_64MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_64MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_64MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_64MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_64MAX"
}

CapModel	"metal6Config61" {
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

CapModel	"metal6Config62" {
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

CapModel	"metal6Config63" {
		refLayer				= "M6"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_73MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_73MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_73MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_73MAX"
		topCapDataNom			= "metal6_C_TOP_GP_73MAX"
		topCapDataMax			= "metal6_C_TOP_GP_73MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_73MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_73MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_73MAX"
}

CapModel	"metal6Config64" {
		refLayer				= "M6"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_74MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_74MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_74MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_74MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_74MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_74MAX"
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
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_12MAX"
		topCapDataNom			= "metal7_C_TOP_GP_12MAX"
		topCapDataMax			= "metal7_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_12MAX"
}

CapModel	"metal7Config3" {
		refLayer				= "M7"
		groundPlaneBelow		= "M6"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_13MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_13MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_13MAX"
}

CapModel	"metal7Config11" {
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

CapModel	"metal7Config12" {
		refLayer				= "M7"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_22MAX"
		topCapDataNom			= "metal7_C_TOP_GP_22MAX"
		topCapDataMax			= "metal7_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_22MAX"
}

CapModel	"metal7Config13" {
		refLayer				= "M7"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_23MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_23MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_23MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_23MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_23MAX"
}

CapModel	"metal7Config21" {
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

CapModel	"metal7Config22" {
		refLayer				= "M7"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_32MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_32MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_32MAX"
		topCapDataNom			= "metal7_C_TOP_GP_32MAX"
		topCapDataMax			= "metal7_C_TOP_GP_32MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_32MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_32MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_32MAX"
}

CapModel	"metal7Config23" {
		refLayer				= "M7"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_33MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_33MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_33MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_33MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_33MAX"
}

CapModel	"metal7Config31" {
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

CapModel	"metal7Config32" {
		refLayer				= "M7"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_42MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_42MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_42MAX"
		topCapDataNom			= "metal7_C_TOP_GP_42MAX"
		topCapDataMax			= "metal7_C_TOP_GP_42MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_42MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_42MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_42MAX"
}

CapModel	"metal7Config33" {
		refLayer				= "M7"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_43MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_43MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_43MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_43MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_43MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_43MAX"
}

CapModel	"metal7Config41" {
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

CapModel	"metal7Config42" {
		refLayer				= "M7"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_52MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_52MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_52MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_52MAX"
		topCapDataNom			= "metal7_C_TOP_GP_52MAX"
		topCapDataMax			= "metal7_C_TOP_GP_52MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_52MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_52MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_52MAX"
}

CapModel	"metal7Config43" {
		refLayer				= "M7"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_53MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_53MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_53MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_53MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_53MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_53MAX"
}

CapModel	"metal7Config51" {
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

CapModel	"metal7Config52" {
		refLayer				= "M7"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_62MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_62MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_62MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_62MAX"
		topCapDataNom			= "metal7_C_TOP_GP_62MAX"
		topCapDataMax			= "metal7_C_TOP_GP_62MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_62MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_62MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_62MAX"
}

CapModel	"metal7Config53" {
		refLayer				= "M7"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_63MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_63MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_63MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_63MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_63MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_63MAX"
}

CapModel	"metal7Config61" {
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

CapModel	"metal7Config62" {
		refLayer				= "M7"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_72MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_72MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_72MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_72MAX"
		topCapDataNom			= "metal7_C_TOP_GP_72MAX"
		topCapDataMax			= "metal7_C_TOP_GP_72MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_72MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_72MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_72MAX"
}

CapModel	"metal7Config63" {
		refLayer				= "M7"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_73MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_73MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_73MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_73MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_73MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_73MAX"
}

CapModel	"metal7Config71" {
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

CapModel	"metal7Config72" {
		refLayer				= "M7"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_82MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_82MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_82MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal7_C_TOP_GP_82MAX"
		topCapDataNom			= "metal7_C_TOP_GP_82MAX"
		topCapDataMax			= "metal7_C_TOP_GP_82MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_82MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_82MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_82MAX"
}

CapModel	"metal7Config73" {
		refLayer				= "M7"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal7_C_BOTTOM_GP_83MAX"
		bottomCapDataNom		= "metal7_C_BOTTOM_GP_83MAX"
		bottomCapDataMax		= "metal7_C_BOTTOM_GP_83MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal7_C_LATERAL_83MAX"
		lateralCapDataNom		= "metal7_C_LATERAL_83MAX"
		lateralCapDataMax		= "metal7_C_LATERAL_83MAX"
}

CapModel	"metal8Config1" {
		refLayer				= "M8"
		groundPlaneBelow		= "M7"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal8_C_TOP_GPMAX"
		topCapDataNom			= "metal8_C_TOP_GPMAX"
		topCapDataMax			= "metal8_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERALMAX"
		lateralCapDataNom		= "metal8_C_LATERALMAX"
		lateralCapDataMax		= "metal8_C_LATERALMAX"
}

CapModel	"metal8Config2" {
		refLayer				= "M8"
		groundPlaneBelow		= "M7"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_12MAX"
}

CapModel	"metal8Config11" {
		refLayer				= "M8"
		groundPlaneBelow		= "M6"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal8_C_TOP_GP_21MAX"
		topCapDataNom			= "metal8_C_TOP_GP_21MAX"
		topCapDataMax			= "metal8_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_21MAX"
}

CapModel	"metal8Config12" {
		refLayer				= "M8"
		groundPlaneBelow		= "M6"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_22MAX"
}

CapModel	"metal8Config21" {
		refLayer				= "M8"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal8_C_TOP_GP_31MAX"
		topCapDataNom			= "metal8_C_TOP_GP_31MAX"
		topCapDataMax			= "metal8_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_31MAX"
}

CapModel	"metal8Config22" {
		refLayer				= "M8"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_32MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_32MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_32MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_32MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_32MAX"
}

CapModel	"metal8Config31" {
		refLayer				= "M8"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_41MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_41MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal8_C_TOP_GP_41MAX"
		topCapDataNom			= "metal8_C_TOP_GP_41MAX"
		topCapDataMax			= "metal8_C_TOP_GP_41MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_41MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_41MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_41MAX"
}

CapModel	"metal8Config32" {
		refLayer				= "M8"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_42MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_42MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_42MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_42MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_42MAX"
}

CapModel	"metal8Config41" {
		refLayer				= "M8"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_51MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_51MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal8_C_TOP_GP_51MAX"
		topCapDataNom			= "metal8_C_TOP_GP_51MAX"
		topCapDataMax			= "metal8_C_TOP_GP_51MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_51MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_51MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_51MAX"
}

CapModel	"metal8Config42" {
		refLayer				= "M8"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_52MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_52MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_52MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_52MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_52MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_52MAX"
}

CapModel	"metal8Config51" {
		refLayer				= "M8"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_61MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_61MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_61MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal8_C_TOP_GP_61MAX"
		topCapDataNom			= "metal8_C_TOP_GP_61MAX"
		topCapDataMax			= "metal8_C_TOP_GP_61MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_61MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_61MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_61MAX"
}

CapModel	"metal8Config52" {
		refLayer				= "M8"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_62MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_62MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_62MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_62MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_62MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_62MAX"
}

CapModel	"metal8Config61" {
		refLayer				= "M8"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_71MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_71MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_71MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal8_C_TOP_GP_71MAX"
		topCapDataNom			= "metal8_C_TOP_GP_71MAX"
		topCapDataMax			= "metal8_C_TOP_GP_71MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_71MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_71MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_71MAX"
}

CapModel	"metal8Config62" {
		refLayer				= "M8"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_72MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_72MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_72MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_72MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_72MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_72MAX"
}

CapModel	"metal8Config71" {
		refLayer				= "M8"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_81MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_81MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_81MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal8_C_TOP_GP_81MAX"
		topCapDataNom			= "metal8_C_TOP_GP_81MAX"
		topCapDataMax			= "metal8_C_TOP_GP_81MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_81MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_81MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_81MAX"
}

CapModel	"metal8Config72" {
		refLayer				= "M8"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_82MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_82MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_82MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_82MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_82MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_82MAX"
}

CapModel	"metal8Config81" {
		refLayer				= "M8"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_91MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_91MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_91MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal8_C_TOP_GP_91MAX"
		topCapDataNom			= "metal8_C_TOP_GP_91MAX"
		topCapDataMax			= "metal8_C_TOP_GP_91MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_91MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_91MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_91MAX"
}

CapModel	"metal8Config82" {
		refLayer				= "M8"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal8_C_BOTTOM_GP_92MAX"
		bottomCapDataNom		= "metal8_C_BOTTOM_GP_92MAX"
		bottomCapDataMax		= "metal8_C_BOTTOM_GP_92MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal8_C_LATERAL_92MAX"
		lateralCapDataNom		= "metal8_C_LATERAL_92MAX"
		lateralCapDataMax		= "metal8_C_LATERAL_92MAX"
}

CapModel	"metal9Config1" {
		refLayer				= "M9"
		groundPlaneBelow		= "M8"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal9_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal9_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal9_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal9_C_LATERALMAX"
		lateralCapDataNom		= "metal9_C_LATERALMAX"
		lateralCapDataMax		= "metal9_C_LATERALMAX"
}

CapModel	"metal9Config11" {
		refLayer				= "M9"
		groundPlaneBelow		= "M7"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal9_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal9_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal9_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal9_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal9_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal9_C_LATERAL_21MAX"
}

CapModel	"metal4Config43" {
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

CapModel	"metal4Config44" {
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

CapModel	"metal4Config45" {
		refLayer				= "M4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_55MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_55MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_55MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_55MAX"
		topCapDataNom			= "metal4_C_TOP_GP_55MAX"
		topCapDataMax			= "metal4_C_TOP_GP_55MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_55MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_55MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_55MAX"
}

CapModel	"metal4Config46" {
		refLayer				= "M4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_56MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_56MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_56MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_56MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_56MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_56MAX"
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
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_14MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_14MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_14MAX"
		topCapDataNom			= "metal5_C_TOP_GP_14MAX"
		topCapDataMax			= "metal5_C_TOP_GP_14MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_14MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_14MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_14MAX"
}

CapModel	"metal5Config5" {
		refLayer				= "M5"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_15MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_15MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_15MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_15MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_15MAX"
}

CapModel	"metal5Config11" {
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

CapModel	"metal5Config12" {
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

CapModel	"metal5Config13" {
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

CapModel	"metal5Config14" {
		refLayer				= "M5"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_24MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_24MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_24MAX"
		topCapDataNom			= "metal5_C_TOP_GP_24MAX"
		topCapDataMax			= "metal5_C_TOP_GP_24MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_24MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_24MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_24MAX"
}

CapModel	"metal5Config15" {
		refLayer				= "M5"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_25MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_25MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_25MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_25MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_25MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_25MAX"
}

CapModel	"metal5Config21" {
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

CapModel	"metal5Config22" {
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

CapModel	"metal5Config23" {
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

CapModel	"metal5Config24" {
		refLayer				= "M5"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_34MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_34MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_34MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_34MAX"
		topCapDataNom			= "metal5_C_TOP_GP_34MAX"
		topCapDataMax			= "metal5_C_TOP_GP_34MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_34MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_34MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_34MAX"
}

CapModel	"metal5Config25" {
		refLayer				= "M5"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_35MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_35MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_35MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_35MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_35MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_35MAX"
}

CapModel	"metal5Config31" {
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

CapModel	"metal5Config32" {
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

CapModel	"metal5Config33" {
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

CapModel	"metal5Config34" {
		refLayer				= "M5"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_44MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_44MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_44MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_44MAX"
		topCapDataNom			= "metal5_C_TOP_GP_44MAX"
		topCapDataMax			= "metal5_C_TOP_GP_44MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_44MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_44MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_44MAX"
}

CapModel	"metal5Config35" {
		refLayer				= "M5"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_45MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_45MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_45MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_45MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_45MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_45MAX"
}

CapModel	"metal5Config41" {
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

CapModel	"metal5Config42" {
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

CapModel	"metal5Config43" {
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

CapModel	"metal5Config44" {
		refLayer				= "M5"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_54MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_54MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_54MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_54MAX"
		topCapDataNom			= "metal5_C_TOP_GP_54MAX"
		topCapDataMax			= "metal5_C_TOP_GP_54MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_54MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_54MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_54MAX"
}

CapModel	"metal5Config45" {
		refLayer				= "M5"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_55MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_55MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_55MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_55MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_55MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_55MAX"
}

CapModel	"metal5Config51" {
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

CapModel	"metal5Config52" {
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

CapModel	"metal5Config53" {
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

CapModel	"metal5Config54" {
		refLayer				= "M5"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_64MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_64MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_64MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal5_C_TOP_GP_64MAX"
		topCapDataNom			= "metal5_C_TOP_GP_64MAX"
		topCapDataMax			= "metal5_C_TOP_GP_64MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_64MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_64MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_64MAX"
}

CapModel	"metal5Config55" {
		refLayer				= "M5"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_65MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_65MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_65MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_65MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_65MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_65MAX"
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
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_13MAX"
		topCapDataNom			= "metal6_C_TOP_GP_13MAX"
		topCapDataMax			= "metal6_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_13MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_13MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_13MAX"
}

CapModel	"metal6Config4" {
		refLayer				= "M6"
		groundPlaneBelow		= "M5"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_14MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_14MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_14MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_14MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_14MAX"
}

CapModel	"metal6Config11" {
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

CapModel	"metal6Config12" {
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

CapModel	"metal6Config13" {
		refLayer				= "M6"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_23MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_23MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_23MAX"
		topCapDataNom			= "metal6_C_TOP_GP_23MAX"
		topCapDataMax			= "metal6_C_TOP_GP_23MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_23MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_23MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_23MAX"
}

CapModel	"metal6Config14" {
		refLayer				= "M6"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_24MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_24MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_24MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_24MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_24MAX"
}

CapModel	"metal6Config21" {
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

CapModel	"metal6Config22" {
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

CapModel	"metal6Config23" {
		refLayer				= "M6"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_33MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_33MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_33MAX"
		topCapDataNom			= "metal6_C_TOP_GP_33MAX"
		topCapDataMax			= "metal6_C_TOP_GP_33MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_33MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_33MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_33MAX"
}

CapModel	"metal6Config24" {
		refLayer				= "M6"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_34MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_34MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_34MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_34MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_34MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_34MAX"
}

CapModel	"metal6Config31" {
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

CapModel	"metal6Config32" {
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

CapModel	"metal6Config33" {
		refLayer				= "M6"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_43MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_43MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_43MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_43MAX"
		topCapDataNom			= "metal6_C_TOP_GP_43MAX"
		topCapDataMax			= "metal6_C_TOP_GP_43MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_43MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_43MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_43MAX"
}

CapModel	"metal6Config34" {
		refLayer				= "M6"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_44MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_44MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_44MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_44MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_44MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_44MAX"
}

CapModel	"metal6Config41" {
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

CapModel	"metal6Config42" {
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

CapModel	"metal6Config43" {
		refLayer				= "M6"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal6_C_BOTTOM_GP_53MAX"
		bottomCapDataNom		= "metal6_C_BOTTOM_GP_53MAX"
		bottomCapDataMax		= "metal6_C_BOTTOM_GP_53MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal6_C_TOP_GP_53MAX"
		topCapDataNom			= "metal6_C_TOP_GP_53MAX"
		topCapDataMax			= "metal6_C_TOP_GP_53MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal6_C_LATERAL_53MAX"
		lateralCapDataNom		= "metal6_C_LATERAL_53MAX"
		lateralCapDataMax		= "metal6_C_LATERAL_53MAX"
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
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_16MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_16MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_16MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_16MAX"
		topCapDataNom			= "metal3_C_TOP_GP_16MAX"
		topCapDataMax			= "metal3_C_TOP_GP_16MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_16MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_16MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_16MAX"
}

CapModel	"metal3Config7" {
		refLayer				= "M3"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_17MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_17MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_17MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_17MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_17MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_17MAX"
}

CapModel	"metal3Config11" {
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

CapModel	"metal3Config12" {
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

CapModel	"metal3Config13" {
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

CapModel	"metal3Config14" {
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

CapModel	"metal3Config15" {
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

CapModel	"metal3Config16" {
		refLayer				= "M3"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_26MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_26MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_26MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_26MAX"
		topCapDataNom			= "metal3_C_TOP_GP_26MAX"
		topCapDataMax			= "metal3_C_TOP_GP_26MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_26MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_26MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_26MAX"
}

CapModel	"metal3Config17" {
		refLayer				= "M3"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_27MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_27MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_27MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_27MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_27MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_27MAX"
}

CapModel	"metal3Config21" {
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

CapModel	"metal3Config22" {
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

CapModel	"metal3Config23" {
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

CapModel	"metal3Config24" {
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

CapModel	"metal3Config25" {
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

CapModel	"metal3Config26" {
		refLayer				= "M3"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_36MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_36MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_36MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_36MAX"
		topCapDataNom			= "metal3_C_TOP_GP_36MAX"
		topCapDataMax			= "metal3_C_TOP_GP_36MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_36MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_36MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_36MAX"
}

CapModel	"metal3Config27" {
		refLayer				= "M3"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_37MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_37MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_37MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_37MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_37MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_37MAX"
}

CapModel	"metal3Config31" {
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

CapModel	"metal3Config32" {
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

CapModel	"metal3Config33" {
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

CapModel	"metal3Config34" {
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

CapModel	"metal3Config35" {
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

CapModel	"metal3Config36" {
		refLayer				= "M3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_46MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_46MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_46MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_46MAX"
		topCapDataNom			= "metal3_C_TOP_GP_46MAX"
		topCapDataMax			= "metal3_C_TOP_GP_46MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_46MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_46MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_46MAX"
}

CapModel	"metal3Config37" {
		refLayer				= "M3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_47MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_47MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_47MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_47MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_47MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_47MAX"
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
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_15MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_15MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_15MAX"
		topCapDataNom			= "metal4_C_TOP_GP_15MAX"
		topCapDataMax			= "metal4_C_TOP_GP_15MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_15MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_15MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_15MAX"
}

CapModel	"metal4Config6" {
		refLayer				= "M4"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_16MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_16MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_16MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_16MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_16MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_16MAX"
}

CapModel	"metal4Config11" {
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

CapModel	"metal4Config12" {
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

CapModel	"metal4Config13" {
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

CapModel	"metal4Config14" {
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

CapModel	"metal4Config15" {
		refLayer				= "M4"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_25MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_25MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_25MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_25MAX"
		topCapDataNom			= "metal4_C_TOP_GP_25MAX"
		topCapDataMax			= "metal4_C_TOP_GP_25MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_25MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_25MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_25MAX"
}

CapModel	"metal4Config16" {
		refLayer				= "M4"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_26MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_26MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_26MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_26MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_26MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_26MAX"
}

CapModel	"metal4Config21" {
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

CapModel	"metal4Config22" {
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

CapModel	"metal4Config23" {
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

CapModel	"metal4Config24" {
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

CapModel	"metal4Config25" {
		refLayer				= "M4"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_35MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_35MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_35MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_35MAX"
		topCapDataNom			= "metal4_C_TOP_GP_35MAX"
		topCapDataMax			= "metal4_C_TOP_GP_35MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_35MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_35MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_35MAX"
}

CapModel	"metal4Config26" {
		refLayer				= "M4"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_36MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_36MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_36MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_36MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_36MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_36MAX"
}

CapModel	"metal4Config31" {
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

CapModel	"metal4Config32" {
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

CapModel	"metal4Config33" {
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

CapModel	"metal4Config34" {
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

CapModel	"metal4Config35" {
		refLayer				= "M4"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_45MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_45MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_45MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal4_C_TOP_GP_45MAX"
		topCapDataNom			= "metal4_C_TOP_GP_45MAX"
		topCapDataMax			= "metal4_C_TOP_GP_45MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_45MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_45MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_45MAX"
}

CapModel	"metal4Config36" {
		refLayer				= "M4"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_46MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_46MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_46MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_46MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_46MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_46MAX"
}

CapModel	"metal4Config41" {
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

CapModel	"metal4Config42" {
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
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_19MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_19MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_19MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_19MAX"
		topCapDataNom			= "poly_C_TOP_GP_19MAX"
		topCapDataMax			= "poly_C_TOP_GP_19MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_19MAX"
		lateralCapDataNom		= "poly_C_LATERAL_19MAX"
		lateralCapDataMax		= "poly_C_LATERAL_19MAX"
}

CapModel	"polyConfig10" {
		refLayer				= "POLY1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_110MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_110MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_110MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_110MAX"
		lateralCapDataNom		= "poly_C_LATERAL_110MAX"
		lateralCapDataMax		= "poly_C_LATERAL_110MAX"
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
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_18MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_18MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_18MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_18MAX"
		topCapDataNom			= "metal1_C_TOP_GP_18MAX"
		topCapDataMax			= "metal1_C_TOP_GP_18MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_18MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_18MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_18MAX"
}

CapModel	"metal1Config9" {
		refLayer				= "M1"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_19MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_19MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_19MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_19MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_19MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_19MAX"
}

CapModel	"metal1Config11" {
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

CapModel	"metal1Config12" {
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

CapModel	"metal1Config13" {
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

CapModel	"metal1Config14" {
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

CapModel	"metal1Config15" {
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

CapModel	"metal1Config16" {
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

CapModel	"metal1Config17" {
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

CapModel	"metal1Config18" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_28MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_28MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_28MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_28MAX"
		topCapDataNom			= "metal1_C_TOP_GP_28MAX"
		topCapDataMax			= "metal1_C_TOP_GP_28MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_28MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_28MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_28MAX"
}

CapModel	"metal1Config19" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_29MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_29MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_29MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_29MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_29MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_29MAX"
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
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_17MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_17MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_17MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_17MAX"
		topCapDataNom			= "metal2_C_TOP_GP_17MAX"
		topCapDataMax			= "metal2_C_TOP_GP_17MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_17MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_17MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_17MAX"
}

CapModel	"metal2Config8" {
		refLayer				= "M2"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_18MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_18MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_18MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_18MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_18MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_18MAX"
}

CapModel	"metal2Config11" {
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

CapModel	"metal2Config12" {
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

CapModel	"metal2Config13" {
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

CapModel	"metal2Config14" {
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

CapModel	"metal2Config15" {
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

CapModel	"metal2Config16" {
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

CapModel	"metal2Config17" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_27MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_27MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_27MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_27MAX"
		topCapDataNom			= "metal2_C_TOP_GP_27MAX"
		topCapDataMax			= "metal2_C_TOP_GP_27MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_27MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_27MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_27MAX"
}

CapModel	"metal2Config18" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_28MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_28MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_28MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_28MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_28MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_28MAX"
}

CapModel	"metal2Config21" {
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

CapModel	"metal2Config22" {
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

CapModel	"metal2Config23" {
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

CapModel	"metal2Config24" {
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

CapModel	"metal2Config25" {
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

CapModel	"metal2Config26" {
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

CapModel	"metal2Config27" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "M9"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_37MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_37MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_37MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_37MAX"
		topCapDataNom			= "metal2_C_TOP_GP_37MAX"
		topCapDataMax			= "metal2_C_TOP_GP_37MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_37MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_37MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_37MAX"
}

CapModel	"metal2Config28" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_38MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_38MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_38MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_38MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_38MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_38MAX"
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

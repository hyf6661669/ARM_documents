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
   $Id: tsmc090_6lm_2thick.tf,v 1.1 2006/05/11 06:33:49 Exp $
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

Layer		"M6" {
		layerNumber			= 36
		maskName			= "metal6"
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
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.36
		minWidth			= 0.36
		minSpacing			= 0.34
		maxCurrDensity			= 1.12037e+06
		fatTblDimension			= 3
		fatTblThreshold			= (0,1.805,3.005)
		fatTblExtensionRange		= (0,0,5)
		fatTblFatContactNumber		= (5,5,55)
		fatTblFatContactMinCuts		= (1,2,2)
		fatTblExtensionContactNumber	= (0,0,5)
		fatTblExtensionMinCuts		= (1,1,2)
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.56
}

Layer		"VIA5" {
		layerNumber			= 55
		maskName			= "via5"
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
		minSpacing			= 0.54
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
			5.1546e-05, 6.8047e-05, 8.05368e-05, 8.99194e-05, 9.70592e-05, 0.000102605, 0.000107009, 0.00011058, 0.000113529, 0.000116004, 0.000118107, 0.000119911, 0.000121473, 0.000122831, 0.000124019, 0.000125059, 
			7.2688e-05, 8.88722e-05, 0.000101336, 0.000110895, 0.000118334, 0.00012424, 0.000129026, 0.000132975, 0.000136288, 0.000139101, 0.000141513, 0.000143599, 0.00014541, 0.000146993, 0.000148377, 0.000149589, 
			9.3652e-05, 0.000109541, 0.000121944, 0.000131618, 0.000139273, 0.000145449, 0.000150524, 0.000154764, 0.000158352, 0.000161423, 0.00016407, 0.000166366, 0.000168367, 0.000170115, 0.000171646, 0.000172986, 
			0.000114481, 0.000130157, 0.000142545, 0.000152334, 0.000160183, 0.000166582, 0.000171897, 0.000176371, 0.000180182, 0.000183456, 0.000186286, 0.000188747, 0.000190891, 0.000192765, 0.000194404, 0.000195839, 
			0.000135327, 0.000150929, 0.000163352, 0.000173262, 0.000181281, 0.000187876, 0.000193384, 0.000198046, 0.000202031, 0.000205465, 0.000208439, 0.000211025, 0.000213282, 0.000215252, 0.000216976, 0.000218484
		)
}

CapTable	"metal6_C_LATERALMAX" {
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

CapTable	"metal6_C_LATERAL_31MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal6_C_LATERAL_21MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_41MAX" {
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

CapTable	"metal6_C_LATERAL_41MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal6_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000238642, 0.000143893, 0.000108712, 8.9391e-05, 7.66874e-05, 6.74062e-05, 6.01466e-05, 5.41996e-05, 4.91696e-05, 4.48182e-05, 4.09934e-05, 3.75928e-05, 3.45438e-05, 3.1793e-05, 2.92996e-05, 2.70314e-05, 
			0.000257838, 0.000158878, 0.000121, 9.97694e-05, 8.5597e-05, 7.5144e-05, 6.69248e-05, 6.01788e-05, 5.44754e-05, 4.95516e-05, 4.52364e-05, 4.14126e-05, 3.79962e-05, 3.49244e-05, 3.21488e-05, 2.96312e-05, 
			0.00026989, 0.000168883, 0.00012939, 0.000106897, 9.1723e-05, 8.0451e-05, 7.15562e-05, 6.42474e-05, 5.80718e-05, 5.2749e-05, 4.80942e-05, 4.39794e-05, 4.03118e-05, 3.7022e-05, 3.4056e-05, 3.1371e-05, 
			0.000277966, 0.000175968, 0.000135408, 0.000112021, 9.61168e-05, 8.42514e-05, 7.48606e-05, 6.71406e-05, 6.06218e-05, 5.50108e-05, 5.01122e-05, 4.57898e-05, 4.19444e-05, 3.85006e-05, 3.54006e-05, 3.25982e-05, 
			0.00028414, 0.000181308, 0.000139942, 0.00011587, 9.9405e-05, 8.70774e-05, 7.73114e-05, 6.9282e-05, 6.25066e-05, 5.66814e-05, 5.16026e-05, 4.71274e-05, 4.31514e-05, 3.95952e-05, 3.63974e-05, 3.35094e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_51MAX" {
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

CapTable	"metal6_C_LATERAL_51MAX" {
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

CapTable	"metal6_C_BOTTOM_GP_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.447e-05, 1.74428e-05, 1.9745e-05, 2.16734e-05, 2.3391e-05, 2.49912e-05, 2.65239e-05, 2.80161e-05, 2.94801e-05, 3.09197e-05, 3.23341e-05, 3.37199e-05, 3.50732e-05, 3.63895e-05, 3.76655e-05, 3.88978e-05, 
			1.6339e-05, 1.89062e-05, 2.10832e-05, 2.30264e-05, 2.4835e-05, 2.65668e-05, 2.82529e-05, 2.99074e-05, 3.15353e-05, 3.31357e-05, 3.47049e-05, 3.62385e-05, 3.77318e-05, 3.91805e-05, 4.05808e-05, 4.19299e-05, 
			1.8035e-05, 2.04123e-05, 2.25531e-05, 2.45464e-05, 2.64536e-05, 2.83072e-05, 3.0126e-05, 3.19136e-05, 3.36712e-05, 3.53953e-05, 3.7081e-05, 3.87234e-05, 4.03176e-05, 4.18601e-05, 4.33476e-05, 4.47778e-05, 
			1.9718e-05, 2.20222e-05, 2.4185e-05, 2.62534e-05, 2.8261e-05, 3.02264e-05, 3.2158e-05, 3.40566e-05, 3.59181e-05, 3.7739e-05, 3.95138e-05, 4.1238e-05, 4.29073e-05, 4.45184e-05, 4.6069e-05, 4.75572e-05, 
			2.1465e-05, 2.37792e-05, 2.59962e-05, 2.8148e-05, 3.02508e-05, 3.2315e-05, 3.4342e-05, 3.63298e-05, 3.82736e-05, 4.01692e-05, 4.20121e-05, 4.37977e-05, 4.55226e-05, 4.71845e-05, 4.87811e-05, 5.03116e-05
		)
}

CapTable	"metal6_C_LATERAL_71MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000239164, 0.000144554, 0.00010949, 9.02696e-05, 7.7653e-05, 6.84464e-05, 6.12498e-05, 5.53554e-05, 5.0368e-05, 4.60504e-05, 4.22514e-05, 3.88696e-05, 3.58334e-05, 3.30904e-05, 3.06e-05, 2.8331e-05, 
			0.000258514, 0.000159686, 0.000121923, 0.000100791, 8.6702e-05, 7.63192e-05, 6.8158e-05, 6.14588e-05, 5.57922e-05, 5.08964e-05, 4.66018e-05, 4.27922e-05, 3.93846e-05, 3.6317e-05, 3.3542e-05, 3.10218e-05, 
			0.000270712, 0.000169832, 0.000130448, 0.000108047, 9.29494e-05, 8.17398e-05, 7.2895e-05, 6.56256e-05, 5.948e-05, 5.4179e-05, 4.95396e-05, 4.54348e-05, 4.1773e-05, 3.8485e-05, 3.55176e-05, 3.28286e-05, 
			0.00027893, 0.00017705, 0.000136589, 0.000113285, 9.7447e-05, 8.56346e-05, 7.6285e-05, 6.85964e-05, 6.21008e-05, 5.6506e-05, 5.16184e-05, 4.73026e-05, 4.346e-05, 4.00164e-05, 3.6914e-05, 3.4107e-05, 
			0.000285238, 0.000182512, 0.000141233, 0.000117232, 0.000100823, 8.8539e-05, 7.8806e-05, 7.08012e-05, 6.40434e-05, 5.82302e-05, 5.31592e-05, 4.86884e-05, 4.4714e-05, 4.1157e-05, 3.79568e-05, 3.50644e-05
		)
}

CapTable	"metal6_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.5126e-05, 1.83098e-05, 2.0803e-05, 2.2907e-05, 2.47896e-05, 2.65448e-05, 2.82234e-05, 2.98525e-05, 3.1444e-05, 3.30017e-05, 3.45247e-05, 3.60098e-05, 3.74532e-05, 3.88511e-05, 4.02001e-05, 4.14974e-05, 
			1.7209e-05, 1.99898e-05, 2.23688e-05, 2.45016e-05, 2.6491e-05, 2.8392e-05, 3.02374e-05, 3.20407e-05, 3.38067e-05, 3.55346e-05, 3.72211e-05, 3.88619e-05, 4.04526e-05, 4.19895e-05, 4.34694e-05, 4.48899e-05, 
			1.9125e-05, 2.17253e-05, 2.40789e-05, 2.62732e-05, 2.8371e-05, 3.0403e-05, 3.23888e-05, 3.43322e-05, 3.62343e-05, 3.80914e-05, 3.98995e-05, 4.16538e-05, 4.33505e-05, 4.49858e-05, 4.65572e-05, 4.80628e-05, 
			2.1043e-05, 2.3578e-05, 2.59624e-05, 2.82388e-05, 3.04432e-05, 3.25926e-05, 3.46964e-05, 3.67544e-05, 3.87641e-05, 4.07214e-05, 4.2622e-05, 4.44614e-05, 4.6236e-05, 4.79434e-05, 4.95812e-05, 5.11481e-05, 
			2.3039e-05, 2.55896e-05, 2.80334e-05, 3.0398e-05, 3.2701e-05, 3.49526e-05, 3.71536e-05, 3.9304e-05, 4.13984e-05, 4.34336e-05, 4.54044e-05, 4.73082e-05, 4.91415e-05, 5.09024e-05, 5.25895e-05, 5.42018e-05
		)
}

CapTable	"metal5_C_LATERALMAX" {
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

CapTable	"metal5_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal5_C_LATERAL_12MAX" {
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

CapTable	"metal5_C_LATERAL_22MAX" {
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

CapTable	"metal5_C_BOTTOM_GPMAX" {
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

CapTable	"metal5_C_TOP_GPMAX" {
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

CapTable	"metal5_C_TOP_GP_21MAX" {
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

CapTable	"metal5_C_LATERAL_21MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_22MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_32MAX" {
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

CapTable	"metal5_C_LATERAL_32MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal5_C_TOP_GP_31MAX" {
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

CapTable	"metal5_C_LATERAL_31MAX" {
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

CapTable	"metal5_C_LATERAL_41MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_42MAX" {
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

CapTable	"metal5_C_LATERAL_42MAX" {
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

CapTable	"metal5_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.00023669, 0.000138696, 0.00010204, 8.1835e-05, 6.86188e-05, 5.91e-05, 5.18118e-05, 4.59928e-05, 4.1204e-05, 3.71726e-05, 3.37186e-05, 3.07184e-05, 2.80834e-05, 2.57484e-05, 2.36636e-05, 2.17912e-05, 
			0.000252866, 0.000150936, 0.000111905, 9.01282e-05, 7.57708e-05, 6.5382e-05, 5.74024e-05, 5.10162e-05, 4.57508e-05, 4.13112e-05, 3.75022e-05, 3.41896e-05, 3.12768e-05, 2.86928e-05, 2.63838e-05, 2.4308e-05, 
			0.000262436, 0.000158801, 0.000118529, 9.58432e-05, 8.07994e-05, 6.98618e-05, 6.1432e-05, 5.46674e-05, 4.90774e-05, 4.4355e-05, 4.0297e-05, 3.67628e-05, 3.36512e-05, 3.0888e-05, 2.84162e-05, 2.61922e-05, 
			0.000268558, 0.000164328, 0.000123361, 0.000100108, 8.46074e-05, 7.32986e-05, 6.4549e-05, 5.75094e-05, 5.16796e-05, 4.67458e-05, 4.24996e-05, 3.87962e-05, 3.55322e-05, 3.26304e-05, 3.00324e-05, 2.7693e-05, 
			0.000273378, 0.000168661, 0.000127216, 0.000103551, 8.77072e-05, 7.61048e-05, 6.71066e-05, 5.98502e-05, 5.38294e-05, 4.87254e-05, 4.43264e-05, 4.04856e-05, 3.70968e-05, 3.40814e-05, 3.13798e-05, 2.89452e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_41MAX" {
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

CapTable	"metal5_C_TOP_GP_41MAX" {
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

CapTable	"metal5_C_TOP_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.46902e-05, 6.01398e-05, 7.22382e-05, 8.15547e-05, 8.86727e-05, 9.40668e-05, 9.81375e-05, 0.000101214, 0.000103417, 0.000105198, 0.000106538, 0.000107561, 0.000108405, 0.000108959, 0.000109375, 0.000109659, 
			6.5223e-05, 8.08997e-05, 9.33064e-05, 0.00010294, 0.000110341, 0.000115994, 0.000120291, 0.000123459, 0.000125961, 0.00012787, 0.000129397, 0.000130451, 0.000131238, 0.00013179, 0.000132261, 0.000132623, 
			8.62098e-05, 0.000101972, 0.000114496, 0.000124271, 0.000131825, 0.000137505, 0.000141959, 0.000145347, 0.000147935, 0.00014999, 0.000151439, 0.000152532, 0.000153319, 0.000153964, 0.000154462, 0.000154822, 
			0.00010743, 0.000123176, 0.000135759, 0.00014562, 0.000153166, 0.000159076, 0.000163618, 0.000167187, 0.000169774, 0.000171722, 0.000173147, 0.000174292, 0.000175171, 0.000175823, 0.000176322, 0.000176697, 
			0.00012882, 0.00014461, 0.000157126, 0.000167077, 0.000174807, 0.000180777, 0.000185457, 0.000188902, 0.000191519, 0.000193457, 0.000195, 0.000196165, 0.00019703, 0.00019771, 0.000198203, 0.00019859
		)
}

CapTable	"metal5_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000212404, 0.000108793, 6.88238e-05, 4.69176e-05, 3.31348e-05, 2.38766e-05, 1.74164e-05, 1.28043e-05, 9.47986e-06, 7.03072e-06, 5.22432e-06, 3.88168e-06, 2.8825e-06, 2.1349e-06, 1.57324e-06, 1.15017e-06, 
			0.000220186, 0.000114075, 7.26092e-05, 4.97316e-05, 3.5264e-05, 2.54914e-05, 1.86431e-05, 1.37465e-05, 1.01712e-05, 7.54454e-06, 5.60194e-06, 4.15754e-06, 3.07962e-06, 2.26912e-06, 1.65807e-06, 1.19525e-06, 
			0.000223364, 0.000116532, 7.44904e-05, 5.117e-05, 3.63752e-05, 2.63594e-05, 1.93036e-05, 1.42322e-05, 1.05303e-05, 7.80964e-06, 5.79082e-06, 4.28502e-06, 3.15656e-06, 2.30756e-06, 1.66498e-06, 1.18334e-06, 
			0.000224432, 0.000117714, 7.5458e-05, 5.19344e-05, 3.69826e-05, 2.68146e-05, 1.9643e-05, 1.44786e-05, 1.07081e-05, 7.93174e-06, 5.86486e-06, 4.32028e-06, 3.15756e-06, 2.28838e-06, 1.62995e-06, 1.13226e-06, 
			0.000225108, 0.000118394, 7.6047e-05, 5.23954e-05, 3.73224e-05, 2.70608e-05, 1.98293e-05, 1.46097e-05, 1.07899e-05, 7.9682e-06, 5.86272e-06, 4.2928e-06, 3.11906e-06, 2.22632e-06, 1.56083e-06, 1.05133e-06
		)
}

CapTable	"metal5_C_BOTTOM_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.7373e-05, 2.1732e-05, 2.54228e-05, 2.8666e-05, 3.15772e-05, 3.42219e-05, 3.66451e-05, 3.8877e-05, 4.09411e-05, 4.28555e-05, 4.46355e-05, 4.6293e-05, 4.78388e-05, 4.92818e-05, 5.06302e-05, 5.18908e-05, 
			2.0802e-05, 2.49114e-05, 2.8578e-05, 3.18888e-05, 3.49082e-05, 3.7681e-05, 4.02406e-05, 4.26121e-05, 4.48158e-05, 4.68684e-05, 4.8784e-05, 5.05739e-05, 5.22482e-05, 5.38156e-05, 5.52837e-05, 5.66595e-05, 
			2.4261e-05, 2.82456e-05, 3.1888e-05, 3.52288e-05, 3.83076e-05, 4.11562e-05, 4.3802e-05, 4.62646e-05, 4.85629e-05, 5.07113e-05, 5.27221e-05, 5.46062e-05, 5.63729e-05, 5.80301e-05, 5.95856e-05, 6.10456e-05, 
			2.7778e-05, 3.16774e-05, 3.5299e-05, 3.86548e-05, 4.17706e-05, 4.46714e-05, 4.7377e-05, 4.99076e-05, 5.22764e-05, 5.44972e-05, 5.6581e-05, 5.8538e-05, 6.03762e-05, 6.21037e-05, 6.37275e-05, 6.52536e-05, 
			3.1327e-05, 3.518e-05, 3.8785e-05, 4.2151e-05, 4.52948e-05, 4.82362e-05, 5.09914e-05, 5.35748e-05, 5.60016e-05, 5.82816e-05, 6.04256e-05, 6.24424e-05, 6.43402e-05, 6.61266e-05, 6.78067e-05, 6.9388e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.6298e-05, 2.025e-05, 2.3561e-05, 2.64588e-05, 2.90602e-05, 3.14338e-05, 3.36213e-05, 3.56515e-05, 3.75446e-05, 3.9316e-05, 4.09773e-05, 4.25378e-05, 4.40058e-05, 4.53874e-05, 4.66882e-05, 4.79137e-05, 
			1.9282e-05, 2.29622e-05, 2.62276e-05, 2.91748e-05, 3.18716e-05, 3.43608e-05, 3.66746e-05, 3.88355e-05, 4.08603e-05, 4.27626e-05, 4.45528e-05, 4.62391e-05, 4.78293e-05, 4.93292e-05, 5.07447e-05, 5.208e-05, 
			2.2261e-05, 2.5801e-05, 2.90338e-05, 3.20054e-05, 3.47568e-05, 3.73188e-05, 3.97152e-05, 4.19649e-05, 4.40809e-05, 4.60752e-05, 4.79569e-05, 4.97336e-05, 5.14119e-05, 5.29981e-05, 5.44969e-05, 5.5913e-05, 
			2.5273e-05, 2.87252e-05, 3.19356e-05, 3.49224e-05, 3.77122e-05, 4.03264e-05, 4.27838e-05, 4.5099e-05, 4.7285e-05, 4.93494e-05, 5.13017e-05, 5.31483e-05, 5.48956e-05, 5.65488e-05, 5.8113e-05, 5.95922e-05, 
			2.8307e-05, 3.17156e-05, 3.49146e-05, 3.79148e-05, 4.07344e-05, 4.33908e-05, 4.58986e-05, 4.82676e-05, 5.05092e-05, 5.26318e-05, 5.46426e-05, 5.6547e-05, 5.8351e-05, 6.00598e-05, 6.16779e-05, 6.32096e-05
		)
}

CapTable	"metal5_C_LATERAL_62MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000237536, 0.000139794, 0.000103343, 8.32982e-05, 7.02028e-05, 6.07698e-05, 5.35384e-05, 4.7752e-05, 4.29762e-05, 3.89418e-05, 3.54726e-05, 3.24474e-05, 2.97796e-05, 2.7406e-05, 2.52788e-05, 2.33606e-05, 
			0.00025401, 0.000152311, 0.000113462, 9.18222e-05, 7.75624e-05, 6.72382e-05, 5.92962e-05, 5.29262e-05, 4.76598e-05, 4.32054e-05, 3.93712e-05, 3.60254e-05, 3.30732e-05, 3.04454e-05, 2.8089e-05, 2.59638e-05, 
			0.000263858, 0.000160423, 0.000120301, 9.77226e-05, 8.27502e-05, 7.18552e-05, 6.34448e-05, 5.6681e-05, 5.10778e-05, 4.6331e-05, 4.224e-05, 3.86664e-05, 3.55108e-05, 3.26996e-05, 3.01776e-05, 2.79016e-05, 
			0.000270224, 0.000166157, 0.000125306, 0.000102132, 8.66778e-05, 7.53916e-05, 6.66452e-05, 5.9594e-05, 5.3741e-05, 4.87752e-05, 4.449e-05, 4.0743e-05, 3.74314e-05, 3.44794e-05, 3.18292e-05, 2.94366e-05, 
			0.000275248, 0.000170654, 0.000129293, 0.00010568, 8.98626e-05, 7.82662e-05, 6.92584e-05, 6.19804e-05, 5.59288e-05, 5.07872e-05, 4.63454e-05, 4.24578e-05, 3.90194e-05, 3.59524e-05, 3.31978e-05, 3.07094e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			9.3538e-06, 1.27824e-05, 1.579e-05, 1.82837e-05, 2.02845e-05, 2.18436e-05, 2.30431e-05, 2.39537e-05, 2.47371e-05, 2.52223e-05, 2.55867e-05, 2.58493e-05, 2.59695e-05, 2.61421e-05, 2.62738e-05, 2.64058e-05, 
			1.294e-05, 1.64807e-05, 1.96304e-05, 2.22574e-05, 2.437e-05, 2.60276e-05, 2.73069e-05, 2.83625e-05, 2.90748e-05, 2.95895e-05, 2.98951e-05, 3.02215e-05, 3.04714e-05, 3.07099e-05, 3.08329e-05, 3.09238e-05, 
			1.66872e-05, 2.03086e-05, 2.35276e-05, 2.6223e-05, 2.83918e-05, 3.01966e-05, 3.14874e-05, 3.24738e-05, 3.32117e-05, 3.36664e-05, 3.41182e-05, 3.4462e-05, 3.47664e-05, 3.49444e-05, 3.5075e-05, 3.51787e-05, 
			2.0539e-05, 2.42012e-05, 2.7463e-05, 3.01936e-05, 3.24784e-05, 3.41834e-05, 3.5478e-05, 3.63654e-05, 3.71639e-05, 3.77743e-05, 3.82991e-05, 3.86287e-05, 3.88734e-05, 3.90606e-05, 3.92011e-05, 3.93077e-05, 
			2.445e-05, 2.8145e-05, 3.1529e-05, 3.42556e-05, 3.64516e-05, 3.81692e-05, 3.93737e-05, 4.04313e-05, 4.12431e-05, 4.19158e-05, 4.23593e-05, 4.26952e-05, 4.29529e-05, 4.31407e-05, 4.32902e-05, 4.33977e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			8.1452e-06, 1.11183e-05, 1.3733e-05, 1.59075e-05, 1.76587e-05, 1.90356e-05, 2.01037e-05, 2.09246e-05, 2.15467e-05, 2.23177e-05, 2.26063e-05, 2.28112e-05, 2.2894e-05, 2.24386e-05, 2.25624e-05, 2.31502e-05, 
			1.12162e-05, 1.42746e-05, 1.7002e-05, 1.9293e-05, 2.11454e-05, 2.26124e-05, 2.37459e-05, 2.50101e-05, 2.56044e-05, 2.60467e-05, 2.62447e-05, 2.65708e-05, 2.60608e-05, 2.62437e-05, 2.69384e-05, 2.69796e-05, 
			1.44057e-05, 1.75256e-05, 2.0318e-05, 2.26686e-05, 2.45786e-05, 2.60852e-05, 2.76428e-05, 2.84764e-05, 2.91003e-05, 2.94798e-05, 2.90563e-05, 2.93801e-05, 3.03138e-05, 3.04327e-05, 3.05099e-05, 3.0398e-05, 
			1.7681e-05, 2.08378e-05, 2.36668e-05, 2.60408e-05, 2.843e-05, 2.98864e-05, 3.10104e-05, 3.17099e-05, 3.24693e-05, 3.20716e-05, 3.251e-05, 3.3576e-05, 3.37541e-05, 3.38829e-05, 3.385e-05, 3.3225e-05, 
			2.1003e-05, 2.4195e-05, 2.70402e-05, 2.98734e-05, 3.1749e-05, 3.32208e-05, 3.42554e-05, 3.41741e-05, 3.49173e-05, 3.63535e-05, 3.67077e-05, 3.69694e-05, 3.71617e-05, 3.72948e-05, 3.6529e-05, 3.5882e-05
		)
}

CapTable	"metal5_C_TOP_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.52748e-05, 6.08445e-05, 7.30344e-05, 8.24433e-05, 8.96849e-05, 9.52166e-05, 9.94452e-05, 0.000102687, 0.000105174, 0.000106748, 0.000108308, 0.00010953, 0.000110561, 0.00011189, 0.000112433, 0.000112358, 
			6.58948e-05, 8.16704e-05, 9.41872e-05, 0.000103944, 0.000111504, 0.000117343, 0.000121859, 0.000124893, 0.00012768, 0.000129844, 0.00013168, 0.000132917, 0.000134671, 0.00013544, 0.00013548, 0.000136033, 
			8.69713e-05, 0.000102853, 0.000115506, 0.000125448, 0.000133204, 0.000139245, 0.000143492, 0.000147221, 0.000150139, 0.00015252, 0.000155109, 0.000156448, 0.000156797, 0.000157706, 0.000158444, 0.000159021, 
			0.000108314, 0.000124206, 0.000136964, 0.000147059, 0.000154438, 0.000160715, 0.000165616, 0.000169636, 0.000172527, 0.00017581, 0.000177594, 0.000178248, 0.00017945, 0.000180395, 0.000181158, 0.00018177, 
			0.000129884, 0.000145864, 0.000158735, 0.000168442, 0.000176572, 0.000182959, 0.000188095, 0.000193021, 0.000196028, 0.000197496, 0.000199455, 0.000201004, 0.000202221, 0.000203218, 0.000203994, 0.000204631
		)
}

CapTable	"metal5_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000212868, 0.000109448, 6.96246e-05, 4.77972e-05, 3.40174e-05, 2.47058e-05, 1.81481e-05, 1.34104e-05, 9.92932e-06, 7.37632e-06, 5.41268e-06, 3.91976e-06, 2.76802e-06, 1.87439e-06, 1.19256e-06, 6.71824e-07, 
			0.000220916, 0.000114991, 7.36358e-05, 5.0788e-05, 3.62726e-05, 2.63906e-05, 1.93871e-05, 1.43539e-05, 1.05736e-05, 7.7423e-06, 5.57932e-06, 3.94822e-06, 2.66424e-06, 1.68628e-06, 9.36562e-07, 3.33366e-07, 
			0.00022434, 0.000117645, 7.5661e-05, 5.23094e-05, 3.74044e-05, 2.72008e-05, 1.99912e-05, 1.46706e-05, 1.07127e-05, 7.71922e-06, 5.42868e-06, 3.6889e-06, 2.36116e-06, 1.30834e-06, 4.81114e-07, 0, 
			0.000225586, 0.000118941, 7.66732e-05, 5.30452e-05, 3.7971e-05, 2.75536e-05, 2.01016e-05, 1.46111e-05, 1.05397e-05, 7.42136e-06, 5.06402e-06, 3.26702e-06, 1.84789e-06, 7.46046e-07, 0, 0, 
			0.000226348, 0.000119629, 7.71738e-05, 5.34136e-05, 3.8076e-05, 2.75052e-05, 1.99016e-05, 1.42879e-05, 1.01087e-05, 6.96446e-06, 4.52232e-06, 2.6396e-06, 1.18028e-06, 2.92432e-08, 0, 0
		)
}

CapTable	"metal4_C_LATERAL_12MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal4_C_LATERAL_13MAX" {
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

CapTable	"metal4_C_LATERALMAX" {
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

CapTable	"metal4_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal4_C_TOP_GP_12MAX" {
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

CapTable	"metal4_C_LATERAL_23MAX" {
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

CapTable	"metal4_C_BOTTOM_GPMAX" {
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

CapTable	"metal4_C_TOP_GPMAX" {
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

CapTable	"metal4_C_TOP_GP_22MAX" {
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

CapTable	"metal4_C_LATERAL_22MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_23MAX" {
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

CapTable	"metal4_C_TOP_GP_21MAX" {
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

CapTable	"metal4_C_LATERAL_21MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_22MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_33MAX" {
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

CapTable	"metal4_C_LATERAL_33MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_32MAX" {
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

CapTable	"metal4_C_TOP_GP_32MAX" {
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

CapTable	"metal4_C_LATERAL_32MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal4_C_TOP_GP_31MAX" {
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

CapTable	"metal4_C_LATERAL_31MAX" {
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

CapTable	"metal4_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182882, 0.000107921, 7.967e-05, 6.39606e-05, 5.35648e-05, 4.59714e-05, 4.00706e-05, 3.52914e-05, 3.13078e-05, 2.79186e-05, 2.49916e-05, 2.2435e-05, 2.01836e-05, 1.81884e-05, 1.6411e-05, 1.4822e-05, 
			0.000197071, 0.000118917, 8.86144e-05, 7.14826e-05, 6.00056e-05, 5.15622e-05, 4.49704e-05, 3.96168e-05, 3.51468e-05, 3.13404e-05, 2.80512e-05, 2.5178e-05, 2.26482e-05, 2.04056e-05, 1.84088e-05, 1.66234e-05, 
			0.000205668, 0.000126066, 9.46168e-05, 7.6596e-05, 6.44354e-05, 5.54302e-05, 4.83738e-05, 4.26282e-05, 3.78236e-05, 3.3728e-05, 3.01874e-05, 2.70936e-05, 2.43684e-05, 2.1953e-05, 1.9803e-05, 1.78797e-05, 
			0.000211608, 0.000131172, 9.89856e-05, 8.03634e-05, 6.77084e-05, 5.83e-05, 5.09048e-05, 4.4871e-05, 3.98186e-05, 3.55084e-05, 3.17796e-05, 2.85212e-05, 2.56502e-05, 2.31062e-05, 2.08396e-05, 1.88137e-05, 
			0.000215508, 0.000134845, 0.0001022, 8.31666e-05, 7.01602e-05, 6.04596e-05, 5.28148e-05, 4.65654e-05, 4.13264e-05, 3.68536e-05, 3.29828e-05, 2.95998e-05, 2.66176e-05, 2.39746e-05, 2.16222e-05, 1.95183e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.3122e-05, 1.59898e-05, 1.82672e-05, 2.01726e-05, 2.18239e-05, 2.3292e-05, 2.46202e-05, 2.58364e-05, 2.69598e-05, 2.80039e-05, 2.89786e-05, 2.98917e-05, 3.07489e-05, 3.15552e-05, 3.23149e-05, 3.30314e-05, 
			1.5192e-05, 1.77324e-05, 1.98902e-05, 2.17698e-05, 2.34444e-05, 2.49598e-05, 2.63477e-05, 2.763e-05, 2.88222e-05, 2.99358e-05, 3.09793e-05, 3.19598e-05, 3.28827e-05, 3.37528e-05, 3.4574e-05, 3.53496e-05, 
			1.7091e-05, 1.94412e-05, 2.15152e-05, 2.33684e-05, 2.50484e-05, 2.65874e-05, 2.80096e-05, 2.93318e-05, 3.05671e-05, 3.17251e-05, 3.28136e-05, 3.38385e-05, 3.48054e-05, 3.57181e-05, 3.65809e-05, 3.73967e-05, 
			1.8901e-05, 2.1134e-05, 2.31468e-05, 2.4977e-05, 2.66564e-05, 2.82083e-05, 2.96516e-05, 3.1e-05, 3.22643e-05, 3.3453e-05, 3.45729e-05, 3.56295e-05, 3.66272e-05, 3.75707e-05, 3.84634e-05, 3.93084e-05, 
			2.0678e-05, 2.2818e-05, 2.47836e-05, 2.65936e-05, 2.8268e-05, 2.9826e-05, 3.12819e-05, 3.26475e-05, 3.39317e-05, 3.51416e-05, 3.62836e-05, 3.73623e-05, 3.83828e-05, 3.93483e-05, 4.02627e-05, 4.11292e-05
		)
}

CapTable	"metal4_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000185844, 0.000111761, 8.43078e-05, 6.93362e-05, 5.96264e-05, 5.26706e-05, 4.73598e-05, 4.3123e-05, 3.9634e-05, 3.66918e-05, 3.4165e-05, 3.19634e-05, 3.0023e-05, 2.82968e-05, 2.6749e-05, 2.53522e-05, 
			0.000201064, 0.000123828, 9.43868e-05, 7.80642e-05, 6.73458e-05, 5.96096e-05, 5.36734e-05, 4.8922e-05, 4.5001e-05, 4.169e-05, 3.88442e-05, 3.63636e-05, 3.4177e-05, 3.22316e-05, 3.04874e-05, 2.89138e-05, 
			0.00021074, 0.0001321, 0.000101564, 8.44066e-05, 7.30566e-05, 6.48072e-05, 5.84494e-05, 5.3345e-05, 4.91232e-05, 4.55528e-05, 4.24804e-05, 3.98004e-05, 3.74364e-05, 3.53326e-05, 3.34458e-05, 3.17432e-05, 
			0.00021782, 0.000138386, 0.000107156, 8.9439e-05, 7.76326e-05, 6.90138e-05, 6.23466e-05, 5.6979e-05, 5.25308e-05, 4.8763e-05, 4.55172e-05, 4.26834e-05, 4.01826e-05, 3.79556e-05, 3.59578e-05, 3.41544e-05, 
			0.000222918, 0.00014329, 0.000111635, 9.35364e-05, 8.1405e-05, 7.2516e-05, 6.5618e-05, 6.00492e-05, 5.54258e-05, 5.15046e-05, 4.8123e-05, 4.51686e-05, 4.25592e-05, 4.02348e-05, 3.81486e-05, 3.62646e-05
		)
}

CapTable	"metal4_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176713, 9.97376e-05, 6.98438e-05, 5.28766e-05, 4.15892e-05, 3.3433e-05, 2.7252e-05, 2.24232e-05, 1.85827e-05, 1.54766e-05, 1.29503e-05, 1.0867e-05, 9.1447e-06, 7.7145e-06, 6.52346e-06, 5.52458e-06, 
			0.000188128, 0.000107992, 7.61308e-05, 5.78582e-05, 4.56204e-05, 3.67492e-05, 3.0008e-05, 2.4738e-05, 2.05282e-05, 1.71297e-05, 1.43461e-05, 1.20554e-05, 1.01593e-05, 8.58186e-06, 7.26276e-06, 6.15622e-06, 
			0.000194029, 0.000112615, 7.97916e-05, 6.08132e-05, 4.80634e-05, 3.87902e-05, 3.17266e-05, 2.61954e-05, 2.17672e-05, 1.81805e-05, 1.52464e-05, 1.2828e-05, 1.08208e-05, 9.14828e-06, 7.74794e-06, 6.5732e-06, 
			0.000197493, 0.000115473, 8.2133e-05, 6.27494e-05, 4.96838e-05, 4.01558e-05, 3.28934e-05, 2.7186e-05, 2.26174e-05, 1.89121e-05, 1.5876e-05, 1.33686e-05, 1.12864e-05, 9.54798e-06, 8.09278e-06, 6.86998e-06, 
			0.000199209, 0.000117213, 8.36364e-05, 6.40296e-05, 5.07758e-05, 4.10942e-05, 3.36972e-05, 2.788e-05, 2.32182e-05, 1.94301e-05, 1.63229e-05, 1.37533e-05, 1.16186e-05, 9.83576e-06, 8.3428e-06, 7.08404e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			7.62044e-06, 9.5231e-06, 1.1118e-05, 1.25086e-05, 1.37574e-05, 1.48954e-05, 1.59444e-05, 1.69179e-05, 1.78236e-05, 1.86681e-05, 1.94535e-05, 2.01858e-05, 2.08661e-05, 2.14976e-05, 2.20849e-05, 2.26269e-05, 
			9.1783e-06, 1.09597e-05, 1.2548e-05, 1.39856e-05, 1.53046e-05, 1.65253e-05, 1.76635e-05, 1.87263e-05, 1.97214e-05, 2.06499e-05, 2.15174e-05, 2.23276e-05, 2.30815e-05, 2.37837e-05, 2.44338e-05, 2.50384e-05, 
			1.06991e-05, 1.24345e-05, 1.40284e-05, 1.55037e-05, 1.68752e-05, 1.81593e-05, 1.93627e-05, 2.04903e-05, 2.15484e-05, 2.25385e-05, 2.34648e-05, 2.43311e-05, 2.51371e-05, 2.58882e-05, 2.65855e-05, 2.72322e-05, 
			1.22331e-05, 1.39559e-05, 1.5566e-05, 1.70757e-05, 1.84939e-05, 1.98272e-05, 2.10802e-05, 2.22583e-05, 2.33658e-05, 2.44041e-05, 2.53767e-05, 2.62839e-05, 2.71317e-05, 2.79193e-05, 2.86518e-05, 2.9332e-05, 
			1.38054e-05, 1.55255e-05, 1.7156e-05, 1.8698e-05, 2.01532e-05, 2.15267e-05, 2.28206e-05, 2.40389e-05, 2.51858e-05, 2.62606e-05, 2.72681e-05, 2.82095e-05, 2.90876e-05, 2.99055e-05, 3.06652e-05, 3.13702e-05
		)
}

CapTable	"metal4_C_TOP_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.20816e-06, 1.14427e-05, 1.3312e-05, 1.49479e-05, 1.64173e-05, 1.77634e-05, 1.90077e-05, 2.01635e-05, 2.12406e-05, 2.2244e-05, 2.3181e-05, 2.40533e-05, 2.48657e-05, 2.56207e-05, 2.632e-05, 2.69696e-05, 
			1.10609e-05, 1.31625e-05, 1.50296e-05, 1.67228e-05, 1.82819e-05, 1.97305e-05, 2.10818e-05, 2.2346e-05, 2.35283e-05, 2.46363e-05, 2.56723e-05, 2.66389e-05, 2.754e-05, 2.83783e-05, 2.91584e-05, 2.98805e-05, 
			1.28719e-05, 1.49181e-05, 1.67988e-05, 1.85413e-05, 2.01664e-05, 2.16886e-05, 2.31168e-05, 2.44597e-05, 2.57197e-05, 2.69023e-05, 2.80092e-05, 2.90428e-05, 3.00091e-05, 3.09079e-05, 3.17426e-05, 3.25189e-05, 
			1.46949e-05, 1.67303e-05, 1.86334e-05, 2.04189e-05, 2.20977e-05, 2.36788e-05, 2.51696e-05, 2.65739e-05, 2.78938e-05, 2.9133e-05, 3.02944e-05, 3.13813e-05, 3.23948e-05, 3.33399e-05, 3.42193e-05, 3.50345e-05, 
			1.65676e-05, 1.86009e-05, 2.05288e-05, 2.23514e-05, 2.40766e-05, 2.57067e-05, 2.72476e-05, 2.87001e-05, 3.0067e-05, 3.13528e-05, 3.25575e-05, 3.36835e-05, 3.47369e-05, 3.57174e-05, 3.6628e-05, 3.74741e-05
		)
}

CapTable	"metal4_C_LATERAL_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000185853, 0.000111774, 8.43198e-05, 6.93424e-05, 5.96202e-05, 5.2646e-05, 4.731e-05, 4.30416e-05, 3.95152e-05, 3.65304e-05, 3.39562e-05, 3.17034e-05, 2.97082e-05, 2.79244e-05, 2.6317e-05, 2.48592e-05, 
			0.00020108, 0.000123844, 9.43968e-05, 7.80602e-05, 6.732e-05, 5.9554e-05, 5.35804e-05, 4.87846e-05, 4.4813e-05, 4.14458e-05, 3.8539e-05, 3.59934e-05, 3.37384e-05, 3.17222e-05, 2.99054e-05, 2.82578e-05, 
			0.000210758, 0.000132112, 0.000101561, 8.43792e-05, 7.29956e-05, 6.47034e-05, 5.82952e-05, 5.31328e-05, 4.8847e-05, 4.52068e-05, 4.20602e-05, 3.9302e-05, 3.68574e-05, 3.46704e-05, 3.26994e-05, 3.09118e-05, 
			0.000217834, 0.000138383, 0.000107127, 8.93718e-05, 7.75182e-05, 6.88428e-05, 6.21112e-05, 5.6672e-05, 5.21458e-05, 4.82952e-05, 4.49624e-05, 4.20384e-05, 3.94448e-05, 3.71236e-05, 3.50308e-05, 3.31324e-05, 
			0.000222914, 0.000143257, 0.000111562, 9.34108e-05, 8.12176e-05, 7.2258e-05, 6.52812e-05, 5.96268e-05, 5.49124e-05, 5.08956e-05, 4.74148e-05, 4.43584e-05, 4.16456e-05, 3.92166e-05, 3.70258e-05, 3.50378e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.6583e-06, 7.3743e-06, 8.8953e-06, 1.02455e-05, 1.14429e-05, 1.24948e-05, 1.34126e-05, 1.42159e-05, 1.4903e-05, 1.55023e-05, 1.60086e-05, 1.6451e-05, 1.68287e-05, 1.71513e-05, 1.74244e-05, 1.76597e-05, 
			7.2835e-06, 8.9992e-06, 1.05749e-05, 1.20038e-05, 1.32818e-05, 1.44127e-05, 1.54128e-05, 1.6279e-05, 1.70374e-05, 1.76859e-05, 1.8252e-05, 1.8738e-05, 1.9155e-05, 1.95095e-05, 1.98152e-05, 2.00769e-05, 
			8.9561e-06, 1.06892e-05, 1.23056e-05, 1.37805e-05, 1.51149e-05, 1.62948e-05, 1.73429e-05, 1.82528e-05, 1.90523e-05, 1.97456e-05, 2.03436e-05, 2.0856e-05, 2.12987e-05, 2.16791e-05, 2.2004e-05, 2.22814e-05, 
			1.06802e-05, 1.24364e-05, 1.40825e-05, 1.55995e-05, 1.69629e-05, 1.81846e-05, 1.92578e-05, 2.02066e-05, 2.10344e-05, 2.17519e-05, 2.23701e-05, 2.29049e-05, 2.33665e-05, 2.37614e-05, 2.4101e-05, 2.43915e-05, 
			1.24474e-05, 1.42227e-05, 1.589e-05, 1.74327e-05, 1.88208e-05, 2.00688e-05, 2.11723e-05, 2.21422e-05, 2.29853e-05, 2.37217e-05, 2.43594e-05, 2.49081e-05, 2.53809e-05, 2.57879e-05, 2.61386e-05, 2.64208e-05
		)
}

CapTable	"metal4_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.92495e-05, 2.50341e-05, 3.00869e-05, 3.45149e-05, 3.83767e-05, 4.17286e-05, 4.46213e-05, 4.71017e-05, 4.92254e-05, 5.10354e-05, 5.25782e-05, 5.38889e-05, 5.50034e-05, 5.59479e-05, 5.67509e-05, 5.74329e-05, 
			2.52873e-05, 3.12234e-05, 3.65453e-05, 4.1257e-05, 4.53958e-05, 4.90011e-05, 5.21157e-05, 5.4801e-05, 5.71043e-05, 5.90739e-05, 6.0756e-05, 6.21877e-05, 6.34049e-05, 6.44444e-05, 6.53277e-05, 6.60806e-05, 
			3.16443e-05, 3.77112e-05, 4.31928e-05, 4.80703e-05, 5.23577e-05, 5.6104e-05, 5.93495e-05, 6.21538e-05, 6.45645e-05, 6.66289e-05, 6.8391e-05, 6.99e-05, 7.11855e-05, 7.22806e-05, 7.32171e-05, 7.40144e-05, 
			3.82552e-05, 4.4423e-05, 5.00015e-05, 5.49691e-05, 5.93533e-05, 6.31876e-05, 6.65198e-05, 6.93984e-05, 7.18762e-05, 7.4e-05, 7.58239e-05, 7.73815e-05, 7.87111e-05, 7.98496e-05, 8.08202e-05, 8.16485e-05, 
			4.5063e-05, 5.12683e-05, 5.69006e-05, 6.19267e-05, 6.63704e-05, 7.0261e-05, 7.36445e-05, 7.65698e-05, 7.90965e-05, 8.12662e-05, 8.31257e-05, 8.47216e-05, 8.60845e-05, 8.72493e-05, 8.82406e-05, 8.91102e-05
		)
}

CapTable	"metal4_C_TOP_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.64516e-06, 1.19487e-05, 1.3862e-05, 1.55261e-05, 1.70179e-05, 1.83774e-05, 1.96299e-05, 2.08049e-05, 2.19042e-05, 2.2928e-05, 2.38885e-05, 2.47864e-05, 2.56276e-05, 2.64137e-05, 2.71481e-05, 2.78328e-05, 
			1.15242e-05, 1.36729e-05, 1.55706e-05, 1.72851e-05, 1.88563e-05, 2.03117e-05, 2.16728e-05, 2.29592e-05, 2.41625e-05, 2.52904e-05, 2.63502e-05, 2.73461e-05, 2.82787e-05, 2.91527e-05, 2.99654e-05, 3.07311e-05, 
			1.33453e-05, 1.54248e-05, 1.73238e-05, 1.90721e-05, 2.0711e-05, 2.2248e-05, 2.36884e-05, 2.50461e-05, 2.63242e-05, 2.75287e-05, 2.86621e-05, 2.97273e-05, 3.07271e-05, 3.16607e-05, 3.25398e-05, 3.33538e-05, 
			1.51677e-05, 1.72229e-05, 1.91333e-05, 2.09236e-05, 2.26183e-05, 2.42107e-05, 2.57119e-05, 2.71304e-05, 2.84708e-05, 2.97341e-05, 3.09251e-05, 3.20397e-05, 3.30944e-05, 3.40812e-05, 3.49987e-05, 3.5864e-05, 
			1.70221e-05, 1.9072e-05, 2.10119e-05, 2.2841e-05, 2.45723e-05, 2.62101e-05, 2.77621e-05, 2.92314e-05, 3.062e-05, 3.19311e-05, 3.31633e-05, 3.43289e-05, 3.54156e-05, 3.64411e-05, 3.74043e-05, 3.82938e-05
		)
}

CapTable	"metal4_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000183311, 0.000108489, 8.03632e-05, 6.47674e-05, 5.44724e-05, 4.69674e-05, 4.11416e-05, 3.64246e-05, 3.249e-05, 2.9138e-05, 2.62362e-05, 2.36954e-05, 2.14496e-05, 1.94511e-05, 1.76635e-05, 1.60572e-05, 
			0.000197668, 0.00011966, 8.9492e-05, 7.24812e-05, 6.11114e-05, 5.27604e-05, 4.62466e-05, 4.0956e-05, 3.65352e-05, 3.27646e-05, 2.94986e-05, 2.66376e-05, 2.41092e-05, 2.18592e-05, 1.98474e-05, 1.80393e-05, 
			0.000206442, 0.000126992, 9.5681e-05, 7.77842e-05, 6.5732e-05, 5.68188e-05, 4.98384e-05, 4.41534e-05, 3.93946e-05, 3.53308e-05, 3.18084e-05, 2.87216e-05, 2.59928e-05, 2.3565e-05, 2.1393e-05, 1.94426e-05, 
			0.000212568, 0.000132284, 0.000100237, 8.17376e-05, 6.91884e-05, 5.98688e-05, 5.25456e-05, 4.65676e-05, 4.15556e-05, 3.72714e-05, 3.35554e-05, 3.02986e-05, 2.74178e-05, 2.48542e-05, 2.25616e-05, 2.05014e-05, 
			0.000216656, 0.000136144, 0.000103635, 8.47202e-05, 7.18146e-05, 6.21978e-05, 5.4619e-05, 4.84184e-05, 4.32136e-05, 3.87602e-05, 3.48966e-05, 3.15074e-05, 2.85108e-05, 2.58428e-05, 2.3456e-05, 2.13136e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_53MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.31054e-05, 1.59582e-05, 1.82222e-05, 2.01163e-05, 2.17606e-05, 2.32261e-05, 2.45571e-05, 2.57821e-05, 2.692e-05, 2.79842e-05, 2.89845e-05, 2.99279e-05, 3.08204e-05, 3.16661e-05, 3.24687e-05, 3.32311e-05, 
			1.5154e-05, 1.7676e-05, 1.98192e-05, 2.16883e-05, 2.33576e-05, 2.4874e-05, 2.62698e-05, 2.75668e-05, 2.87804e-05, 2.9922e-05, 3.09996e-05, 3.20198e-05, 3.29876e-05, 3.39068e-05, 3.47811e-05, 3.56131e-05, 
			1.7029e-05, 1.93596e-05, 2.14188e-05, 2.32648e-05, 2.49434e-05, 2.64893e-05, 2.79258e-05, 2.92704e-05, 3.05352e-05, 3.173e-05, 3.28617e-05, 3.3936e-05, 3.4957e-05, 3.59289e-05, 3.68543e-05, 3.77361e-05, 
			1.8812e-05, 2.10285e-05, 2.30304e-05, 2.48572e-05, 2.65418e-05, 2.81075e-05, 2.95731e-05, 3.09524e-05, 3.22556e-05, 3.34903e-05, 3.4663e-05, 3.57783e-05, 3.68403e-05, 3.78523e-05, 3.88171e-05, 3.97371e-05, 
			2.0566e-05, 2.2692e-05, 2.46534e-05, 2.64662e-05, 2.81544e-05, 2.9734e-05, 3.12215e-05, 3.26275e-05, 3.396e-05, 3.52257e-05, 3.64303e-05, 3.75777e-05, 3.86715e-05, 3.97148e-05, 4.07104e-05, 4.16606e-05
		)
}

CapTable	"metal4_C_TOP_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.96721e-05, 2.55398e-05, 3.0651e-05, 3.51166e-05, 3.90121e-05, 4.23927e-05, 4.53111e-05, 4.78246e-05, 4.99789e-05, 5.18272e-05, 5.34085e-05, 5.47595e-05, 5.59177e-05, 5.69067e-05, 5.77526e-05, 5.84802e-05, 
			2.57577e-05, 3.17543e-05, 3.71176e-05, 4.18597e-05, 4.60233e-05, 4.9653e-05, 5.2794e-05, 5.55097e-05, 5.78486e-05, 5.98576e-05, 6.15833e-05, 6.30628e-05, 6.433e-05, 6.54189e-05, 6.63556e-05, 6.71612e-05, 
			3.21416e-05, 3.82522e-05, 4.37619e-05, 4.86575e-05, 5.29667e-05, 5.67303e-05, 6.00059e-05, 6.28403e-05, 6.52898e-05, 6.7399e-05, 6.92107e-05, 7.07709e-05, 7.21139e-05, 7.32677e-05, 7.42626e-05, 7.51174e-05, 
			3.87643e-05, 4.49595e-05, 5.05559e-05, 5.55372e-05, 5.99362e-05, 6.37902e-05, 6.71469e-05, 7.00612e-05, 7.25814e-05, 7.47541e-05, 7.66301e-05, 7.82483e-05, 7.96406e-05, 8.08426e-05, 8.18768e-05, 8.2769e-05, 
			4.55665e-05, 5.17895e-05, 5.74265e-05, 6.24664e-05, 6.69202e-05, 7.08315e-05, 7.42439e-05, 7.7207e-05, 7.97771e-05, 8.2002e-05, 8.3922e-05, 8.55819e-05, 8.7011e-05, 8.82453e-05, 8.93064e-05, 9.02265e-05
		)
}

CapTable	"metal4_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176997, 0.000100135, 7.03494e-05, 5.348e-05, 4.22778e-05, 3.41896e-05, 2.80568e-05, 2.3266e-05, 1.94401e-05, 1.63473e-05, 1.38088e-05, 1.17221e-05, 9.97668e-06, 8.51776e-06, 7.29264e-06, 6.26038e-06, 
			0.000188562, 0.000108555, 7.68154e-05, 5.8651e-05, 4.65046e-05, 3.77056e-05, 3.10164e-05, 2.57818e-05, 2.15878e-05, 1.81844e-05, 1.5399e-05, 1.30853e-05, 1.11584e-05, 9.54296e-06, 8.18434e-06, 7.0326e-06, 
			0.00019463, 0.000113357, 8.06634e-05, 6.17952e-05, 4.91408e-05, 3.99338e-05, 3.2925e-05, 2.74158e-05, 2.30078e-05, 1.94139e-05, 1.64597e-05, 1.40093e-05, 1.19656e-05, 1.0247e-05, 8.79624e-06, 7.5681e-06, 
			0.000198278, 0.000116404, 8.31966e-05, 6.39256e-05, 5.09518e-05, 4.14896e-05, 3.42648e-05, 2.85872e-05, 2.40198e-05, 2.02994e-05, 1.72342e-05, 1.46896e-05, 1.25594e-05, 1.07667e-05, 9.25298e-06, 7.96874e-06, 
			0.000200182, 0.000118336, 8.48864e-05, 6.53942e-05, 5.22192e-05, 4.26066e-05, 3.52434e-05, 2.94382e-05, 2.47684e-05, 2.09594e-05, 1.78147e-05, 1.51972e-05, 1.30062e-05, 1.11611e-05, 9.60168e-06, 8.276e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.64264e-06, 8.2717e-06, 9.6248e-06, 1.08005e-05, 1.18515e-05, 1.28123e-05, 1.3703e-05, 1.45212e-05, 1.5284e-05, 1.6002e-05, 1.66733e-05, 1.73024e-05, 1.78907e-05, 1.84411e-05, 1.89544e-05, 1.94339e-05, 
			7.9476e-06, 9.4572e-06, 1.07944e-05, 1.20007e-05, 1.3109e-05, 1.41384e-05, 1.50971e-05, 1.59849e-05, 1.68229e-05, 1.76125e-05, 1.83543e-05, 1.90489e-05, 1.97012e-05, 2.03114e-05, 2.08856e-05, 2.1416e-05, 
			9.2087e-06, 1.0665e-05, 1.20022e-05, 1.32417e-05, 1.4384e-05, 1.54535e-05, 1.64623e-05, 1.74108e-05, 1.8305e-05, 1.91463e-05, 1.99382e-05, 2.0682e-05, 2.13802e-05, 2.20372e-05, 2.26466e-05, 2.32228e-05, 
			1.04673e-05, 1.19077e-05, 1.32549e-05, 1.45158e-05, 1.56903e-05, 1.68015e-05, 1.7852e-05, 1.8844e-05, 1.97792e-05, 2.06619e-05, 2.1493e-05, 2.22785e-05, 2.30097e-05, 2.36969e-05, 2.43455e-05, 2.49449e-05, 
			1.17619e-05, 1.3187e-05, 1.45377e-05, 1.58188e-05, 1.70301e-05, 1.81761e-05, 1.92609e-05, 2.02869e-05, 2.12566e-05, 2.21722e-05, 2.30378e-05, 2.38466e-05, 2.46139e-05, 2.53278e-05, 2.59928e-05, 2.66235e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_14MAX" {
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

CapTable	"metal3_C_LATERAL_14MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.8749e-06, 6.3382e-06, 7.6296e-06, 8.7791e-06, 9.7915e-06, 1.06832e-05, 1.14685e-05, 1.21469e-05, 1.27413e-05, 1.32477e-05, 1.36926e-05, 1.40673e-05, 1.43991e-05, 1.46848e-05, 1.49313e-05, 1.51402e-05, 
			6.2475e-06, 7.7017e-06, 9.035e-06, 1.02423e-05, 1.13211e-05, 1.22772e-05, 1.31258e-05, 1.38604e-05, 1.45095e-05, 1.50735e-05, 1.55539e-05, 1.59785e-05, 1.63455e-05, 1.66625e-05, 1.69334e-05, 1.71699e-05, 
			7.652e-06, 9.113e-06, 1.04737e-05, 1.17223e-05, 1.28415e-05, 1.38449e-05, 1.47241e-05, 1.55059e-05, 1.61804e-05, 1.67771e-05, 1.72966e-05, 1.77468e-05, 1.81345e-05, 1.84723e-05, 1.87652e-05, 1.90195e-05, 
			9.0899e-06, 1.05659e-05, 1.19475e-05, 1.32232e-05, 1.4368e-05, 1.54012e-05, 1.63173e-05, 1.71166e-05, 1.78258e-05, 1.84455e-05, 1.89847e-05, 1.94511e-05, 1.9859e-05, 2.02127e-05, 2.05192e-05, 2.07863e-05, 
			1.05625e-05, 1.20465e-05, 1.34501e-05, 1.47374e-05, 1.59126e-05, 1.69559e-05, 1.78927e-05, 1.87198e-05, 1.94465e-05, 2.00796e-05, 2.06353e-05, 2.11189e-05, 2.15398e-05, 2.19046e-05, 2.22229e-05, 2.24985e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal3_C_TOP_GP_13MAX" {
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

CapTable	"metal3_C_LATERAL_13MAX" {
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

CapTable	"metal3_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal3_C_TOP_GP_12MAX" {
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

CapTable	"metal3_C_LATERAL_12MAX" {
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
			0.000177522, 0.000100898, 7.1759e-05, 5.55054e-05, 4.4794e-05, 3.70628e-05, 3.1167e-05, 2.65076e-05, 2.27342e-05, 1.96246e-05, 1.70285e-05, 1.48393e-05, 1.29785e-05, 1.13864e-05, 1.00168e-05, 8.83298e-06, 
			0.000187745, 0.000108527, 7.77544e-05, 6.04118e-05, 4.89006e-05, 4.05608e-05, 3.41844e-05, 2.91346e-05, 2.50368e-05, 2.16536e-05, 1.88234e-05, 1.64321e-05, 1.43951e-05, 1.26489e-05, 1.11436e-05, 9.8401e-06, 
			0.000193288, 0.000113091, 8.15136e-05, 6.35624e-05, 5.16036e-05, 4.29034e-05, 3.62342e-05, 3.09408e-05, 2.6637e-05, 2.30764e-05, 2.00922e-05, 1.7566e-05, 1.541e-05, 1.35585e-05, 1.19596e-05, 1.05727e-05, 
			0.000196785, 0.000116145, 8.41248e-05, 6.58118e-05, 5.35584e-05, 4.46228e-05, 3.7757e-05, 3.22964e-05, 2.78478e-05, 2.41606e-05, 2.1065e-05, 1.84398e-05, 1.6196e-05, 1.42656e-05, 1.25965e-05, 1.11461e-05, 
			0.000198756, 0.000118216, 8.59822e-05, 6.74564e-05, 5.50162e-05, 4.59262e-05, 3.89258e-05, 3.33452e-05, 2.8791e-05, 2.50102e-05, 2.18312e-05, 1.91311e-05, 1.68202e-05, 1.48292e-05, 1.31051e-05, 1.16055e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_24MAX" {
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

CapTable	"metal3_C_LATERAL_24MAX" {
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

CapTable	"metal3_C_LATERAL_22MAX" {
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

CapTable	"metal3_C_BOTTOM_GP_23MAX" {
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

CapTable	"metal3_C_TOP_GP_23MAX" {
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
			1.09535e-05, 1.43528e-05, 1.73967e-05, 2.0143e-05, 2.26136e-05, 2.48184e-05, 2.67697e-05, 2.84827e-05, 2.99739e-05, 3.12642e-05, 3.23754e-05, 3.33257e-05, 3.41368e-05, 3.48243e-05, 3.54082e-05, 3.59009e-05, 
			1.42955e-05, 1.775e-05, 2.09397e-05, 2.38551e-05, 2.64908e-05, 2.88503e-05, 3.09418e-05, 3.27779e-05, 3.43778e-05, 3.57637e-05, 3.69557e-05, 3.79773e-05, 3.88474e-05, 3.95876e-05, 4.02144e-05, 4.07444e-05, 
			1.78171e-05, 2.13524e-05, 2.46476e-05, 2.76709e-05, 3.04092e-05, 3.28601e-05, 3.50324e-05, 3.69413e-05, 3.86044e-05, 4.00449e-05, 4.12835e-05, 4.23456e-05, 4.32511e-05, 4.40206e-05, 4.46735e-05, 4.52239e-05, 
			2.15039e-05, 2.51154e-05, 2.84846e-05, 3.15804e-05, 3.43842e-05, 3.68929e-05, 3.91171e-05, 4.10698e-05, 4.2772e-05, 4.42449e-05, 4.55133e-05, 4.65994e-05, 4.75266e-05, 4.83148e-05, 4.89791e-05, 4.95498e-05, 
			2.53263e-05, 2.89823e-05, 3.24014e-05, 3.55421e-05, 3.83864e-05, 4.09308e-05, 4.31861e-05, 4.51646e-05, 4.68907e-05, 4.83846e-05, 4.96698e-05, 5.07718e-05, 5.17112e-05, 5.25107e-05, 5.31859e-05, 5.37578e-05
		)
}

CapTable	"metal3_C_TOP_GP_22MAX" {
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

CapTable	"metal3_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181522, 0.000106257, 7.83362e-05, 6.31564e-05, 5.33742e-05, 4.6433e-05, 4.11972e-05, 3.70788e-05, 3.37398e-05, 3.09696e-05, 2.86296e-05, 2.66234e-05, 2.48822e-05, 2.33554e-05, 2.20042e-05, 2.07988e-05, 
			0.000193425, 0.000115616, 8.61092e-05, 6.98784e-05, 5.93278e-05, 5.18038e-05, 4.61088e-05, 4.16176e-05, 3.79682e-05, 3.49344e-05, 3.23664e-05, 3.01604e-05, 2.8242e-05, 2.6556e-05, 2.50608e-05, 2.3724e-05, 
			0.000200718, 0.000121941, 9.16346e-05, 7.47988e-05, 6.38016e-05, 5.59182e-05, 4.99314e-05, 4.51968e-05, 4.13398e-05, 3.8126e-05, 3.53994e-05, 3.30516e-05, 3.10054e-05, 2.92028e-05, 2.76006e-05, 2.6165e-05, 
			0.00020599, 0.000126756, 9.59918e-05, 7.87804e-05, 6.74774e-05, 5.93492e-05, 5.3157e-05, 4.82466e-05, 4.42366e-05, 4.0887e-05, 3.80386e-05, 3.55804e-05, 3.34328e-05, 3.1537e-05, 2.98478e-05, 2.8331e-05, 
			0.000209728, 0.000130563, 9.95594e-05, 8.2114e-05, 7.06068e-05, 6.23088e-05, 5.59682e-05, 5.09252e-05, 4.6797e-05, 4.33408e-05, 4.03948e-05, 3.78468e-05, 3.5616e-05, 3.36422e-05, 3.188e-05, 3.02944e-05
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
			5.92584e-06, 7.56852e-06, 8.99416e-06, 1.02623e-05, 1.1407e-05, 1.24472e-05, 1.33954e-05, 1.42628e-05, 1.50555e-05, 1.57794e-05, 1.64397e-05, 1.70424e-05, 1.75913e-05, 1.80905e-05, 1.85443e-05, 1.89577e-05, 
			7.33414e-06, 8.91278e-06, 1.03443e-05, 1.1652e-05, 1.28507e-05, 1.39515e-05, 1.4963e-05, 1.58934e-05, 1.67479e-05, 1.75312e-05, 1.82476e-05, 1.89033e-05, 1.95016e-05, 2.00473e-05, 2.05456e-05, 2.09984e-05, 
			8.75123e-06, 1.03021e-05, 1.17418e-05, 1.30745e-05, 1.43091e-05, 1.54516e-05, 1.65067e-05, 1.74797e-05, 1.83764e-05, 1.92004e-05, 1.99561e-05, 2.06484e-05, 2.12832e-05, 2.18615e-05, 2.23911e-05, 2.28734e-05, 
			1.01849e-05, 1.17281e-05, 1.31758e-05, 1.45292e-05, 1.57914e-05, 1.69646e-05, 1.80522e-05, 1.90577e-05, 1.99861e-05, 2.08406e-05, 2.1626e-05, 2.23478e-05, 2.30082e-05, 2.36138e-05, 2.41662e-05, 2.46719e-05, 
			1.16456e-05, 1.31818e-05, 1.46398e-05, 1.60112e-05, 1.72942e-05, 1.84916e-05, 1.96038e-05, 2.06341e-05, 2.15871e-05, 2.24671e-05, 2.32754e-05, 2.40199e-05, 2.47022e-05, 2.5327e-05, 2.58989e-05, 2.64201e-05
		)
}

CapTable	"metal3_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000179196, 0.000103139, 7.4472e-05, 5.85886e-05, 4.81464e-05, 4.05912e-05, 3.47898e-05, 3.01558e-05, 2.6352e-05, 2.31676e-05, 2.04624e-05, 1.81392e-05, 1.61268e-05, 1.43718e-05, 1.28333e-05, 1.14783e-05, 
			0.00019016, 0.000111494, 8.11644e-05, 6.4152e-05, 5.28658e-05, 4.46576e-05, 3.83328e-05, 3.32686e-05, 2.91038e-05, 2.56116e-05, 2.2641e-05, 2.00868e-05, 1.78717e-05, 1.59378e-05, 1.42404e-05, 1.2744e-05, 
			0.000196423, 0.000116728, 8.55352e-05, 6.7856e-05, 5.6067e-05, 4.74484e-05, 4.0787e-05, 3.54404e-05, 3.10352e-05, 2.73356e-05, 2.41844e-05, 2.14714e-05, 1.91159e-05, 1.70574e-05, 1.52489e-05, 1.3653e-05, 
			0.000200578, 0.000120369, 8.86654e-05, 7.0562e-05, 5.84236e-05, 4.95226e-05, 4.2624e-05, 3.70754e-05, 3.24958e-05, 2.86444e-05, 2.53596e-05, 2.25284e-05, 2.00678e-05, 1.79156e-05, 1.60229e-05, 1.43518e-05, 
			0.000203118, 0.000122933, 9.0947e-05, 7.25718e-05, 6.0197e-05, 5.10996e-05, 4.40314e-05, 3.8334e-05, 3.36244e-05, 2.96586e-05, 2.62726e-05, 2.33514e-05, 2.08102e-05, 1.85855e-05, 1.66284e-05, 1.48988e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.2848e-05, 1.60626e-05, 1.87249e-05, 2.10081e-05, 2.30072e-05, 2.47804e-05, 2.63668e-05, 2.7795e-05, 2.90864e-05, 3.0259e-05, 3.13272e-05, 3.2304e-05, 3.31999e-05, 3.40242e-05, 3.4785e-05, 3.54895e-05, 
			1.54168e-05, 1.83605e-05, 2.09258e-05, 2.31891e-05, 2.52058e-05, 2.70154e-05, 2.86477e-05, 3.01265e-05, 3.14711e-05, 3.26979e-05, 3.38207e-05, 3.48518e-05, 3.58014e-05, 3.66788e-05, 3.74918e-05, 3.82476e-05, 
			1.7866e-05, 2.0641e-05, 2.31224e-05, 2.53482e-05, 2.73538e-05, 2.9168e-05, 3.08148e-05, 3.23148e-05, 3.36855e-05, 3.49412e-05, 3.60954e-05, 3.71596e-05, 3.81434e-05, 3.90559e-05, 3.99045e-05, 4.06959e-05, 
			2.023e-05, 2.2889e-05, 2.52972e-05, 2.74806e-05, 2.94639e-05, 3.12687e-05, 3.29158e-05, 3.44233e-05, 3.58064e-05, 3.70791e-05, 3.82532e-05, 3.93398e-05, 4.03481e-05, 4.12861e-05, 4.21618e-05, 4.29811e-05, 
			2.2544e-05, 2.5095e-05, 2.74366e-05, 2.9575e-05, 3.15302e-05, 3.33186e-05, 3.49587e-05, 3.64661e-05, 3.78546e-05, 3.9137e-05, 4.03246e-05, 4.14272e-05, 4.24536e-05, 4.3412e-05, 4.43091e-05, 4.51508e-05
		)
}

CapTable	"metal3_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.50424e-06, 1.23429e-05, 1.48672e-05, 1.71465e-05, 1.92145e-05, 2.10881e-05, 2.27802e-05, 2.43016e-05, 2.56612e-05, 2.68706e-05, 2.79441e-05, 2.88878e-05, 2.97188e-05, 3.04454e-05, 3.10805e-05, 3.16351e-05, 
			1.21201e-05, 1.49514e-05, 1.75637e-05, 1.99681e-05, 2.21699e-05, 2.4178e-05, 2.59973e-05, 2.7635e-05, 2.91009e-05, 3.04086e-05, 3.1565e-05, 3.25873e-05, 3.34858e-05, 3.42741e-05, 3.49619e-05, 3.55618e-05, 
			1.48522e-05, 1.77145e-05, 2.03981e-05, 2.28884e-05, 2.5181e-05, 2.72742e-05, 2.91735e-05, 3.08874e-05, 3.242e-05, 3.37867e-05, 3.49972e-05, 3.60676e-05, 3.70091e-05, 3.78339e-05, 3.85546e-05, 3.91844e-05, 
			1.76964e-05, 2.06036e-05, 2.3345e-05, 2.58992e-05, 2.82538e-05, 3.04067e-05, 3.23623e-05, 3.41236e-05, 3.57026e-05, 3.71087e-05, 3.83579e-05, 3.94593e-05, 4.04287e-05, 4.12774e-05, 4.20218e-05, 4.26692e-05, 
			2.06471e-05, 2.35892e-05, 2.63733e-05, 2.89722e-05, 3.13732e-05, 3.35672e-05, 3.55592e-05, 3.73541e-05, 3.89641e-05, 4.03988e-05, 4.16707e-05, 4.27934e-05, 4.3783e-05, 4.46489e-05, 4.5405e-05, 4.60649e-05
		)
}

CapTable	"metal3_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177461, 0.000100763, 7.15042e-05, 5.509e-05, 4.41898e-05, 3.62568e-05, 3.01602e-05, 2.53114e-05, 2.13676e-05, 1.81127e-05, 1.53974e-05, 1.3116e-05, 1.119e-05, 9.5563e-06, 8.1675e-06, 6.98494e-06, 
			0.000187618, 0.000108261, 7.72972e-05, 5.97254e-05, 4.79668e-05, 3.93782e-05, 3.27654e-05, 2.75022e-05, 2.32198e-05, 1.96839e-05, 1.67343e-05, 1.42564e-05, 1.21624e-05, 1.03879e-05, 8.87836e-06, 7.59236e-06, 
			0.000193005, 0.000112594, 8.07552e-05, 6.25178e-05, 5.02674e-05, 4.12882e-05, 3.4365e-05, 2.88498e-05, 2.43604e-05, 2.06538e-05, 1.75599e-05, 1.49594e-05, 1.27634e-05, 1.09006e-05, 9.31662e-06, 7.96676e-06, 
			0.000196246, 0.00011532, 8.29808e-05, 6.43394e-05, 5.17682e-05, 4.25396e-05, 3.54156e-05, 2.97364e-05, 2.51128e-05, 2.1292e-05, 1.81039e-05, 1.54235e-05, 1.31589e-05, 1.12383e-05, 9.60466e-06, 8.21262e-06, 
			0.000197866, 0.000116983, 8.43894e-05, 6.5511e-05, 5.27418e-05, 4.33578e-05, 3.61072e-05, 3.0321e-05, 2.56072e-05, 2.1713e-05, 1.84617e-05, 1.57286e-05, 1.34186e-05, 1.14596e-05, 9.79376e-06, 8.37376e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.79776e-06, 1.24967e-05, 1.48276e-05, 1.69018e-05, 1.87733e-05, 2.04749e-05, 2.20271e-05, 2.34427e-05, 2.47339e-05, 2.59113e-05, 2.69844e-05, 2.79601e-05, 2.88475e-05, 2.96542e-05, 3.03865e-05, 3.10502e-05, 
			1.21761e-05, 1.47768e-05, 1.71343e-05, 1.9284e-05, 2.12548e-05, 2.30636e-05, 2.4724e-05, 2.62453e-05, 2.76379e-05, 2.89118e-05, 3.00763e-05, 3.11378e-05, 3.21057e-05, 3.2987e-05, 3.37878e-05, 3.45167e-05, 
			1.45698e-05, 1.71417e-05, 1.9525e-05, 2.17305e-05, 2.37669e-05, 2.56465e-05, 2.73785e-05, 2.89721e-05, 3.04343e-05, 3.17749e-05, 3.30024e-05, 3.41242e-05, 3.51468e-05, 3.60809e-05, 3.69299e-05, 3.77035e-05, 
			1.70081e-05, 1.95836e-05, 2.19938e-05, 2.42398e-05, 2.6326e-05, 2.82575e-05, 3.00424e-05, 3.16887e-05, 3.32027e-05, 3.45932e-05, 3.58682e-05, 3.70337e-05, 3.81e-05, 3.90717e-05, 3.9959e-05, 4.07656e-05, 
			1.95104e-05, 2.2086e-05, 2.45172e-05, 2.6795e-05, 2.89188e-05, 3.08888e-05, 3.27148e-05, 3.44016e-05, 3.59552e-05, 3.73827e-05, 3.86944e-05, 3.9894e-05, 4.09923e-05, 4.19959e-05, 4.29105e-05, 4.37461e-05
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
			8.40436e-06, 1.08687e-05, 1.30549e-05, 1.50327e-05, 1.68322e-05, 1.84682e-05, 1.99487e-05, 2.12813e-05, 2.24761e-05, 2.35396e-05, 2.44806e-05, 2.53145e-05, 2.60453e-05, 2.66884e-05, 2.725e-05, 2.77379e-05, 
			1.06897e-05, 1.31382e-05, 1.54011e-05, 1.74893e-05, 1.94115e-05, 2.1167e-05, 2.27614e-05, 2.42001e-05, 2.54912e-05, 2.66406e-05, 2.7663e-05, 2.85642e-05, 2.93591e-05, 3.00541e-05, 3.06642e-05, 3.1196e-05, 
			1.30544e-05, 1.55321e-05, 1.78617e-05, 2.00298e-05, 2.20324e-05, 2.38686e-05, 2.55373e-05, 2.7042e-05, 2.83954e-05, 2.95999e-05, 3.06722e-05, 3.16189e-05, 3.24508e-05, 3.31824e-05, 3.3822e-05, 3.43792e-05, 
			1.55128e-05, 1.80372e-05, 2.04212e-05, 2.26484e-05, 2.4711e-05, 2.66019e-05, 2.83202e-05, 2.98741e-05, 3.12667e-05, 3.25116e-05, 3.3614e-05, 3.45909e-05, 3.54507e-05, 3.6205e-05, 3.6864e-05, 3.74401e-05, 
			1.80691e-05, 2.06222e-05, 2.30503e-05, 2.53228e-05, 2.7425e-05, 2.9355e-05, 3.11086e-05, 3.26939e-05, 3.4117e-05, 3.53848e-05, 3.65123e-05, 3.75084e-05, 3.83849e-05, 3.91549e-05, 3.98289e-05, 4.04172e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.33696e-05, 1.67686e-05, 1.96126e-05, 2.20799e-05, 2.42691e-05, 2.62407e-05, 2.80336e-05, 2.96751e-05, 3.1185e-05, 3.25786e-05, 3.38683e-05, 3.50638e-05, 3.61735e-05, 3.72051e-05, 3.81646e-05, 3.90576e-05, 
			1.6119e-05, 1.9263e-05, 2.20354e-05, 2.45164e-05, 2.67626e-05, 2.88133e-05, 3.06966e-05, 3.24339e-05, 3.40416e-05, 3.55328e-05, 3.69184e-05, 3.82074e-05, 3.94079e-05, 4.05265e-05, 4.15696e-05, 4.25424e-05, 
			1.8774e-05, 2.17726e-05, 2.4495e-05, 2.69768e-05, 2.92533e-05, 3.13512e-05, 3.3292e-05, 3.50925e-05, 3.67663e-05, 3.83244e-05, 3.97768e-05, 4.11316e-05, 4.23963e-05, 4.35771e-05, 4.46798e-05, 4.57101e-05, 
			2.1378e-05, 2.42964e-05, 2.69834e-05, 2.9464e-05, 3.17607e-05, 3.38916e-05, 3.58737e-05, 3.77204e-05, 3.94431e-05, 4.10518e-05, 4.25547e-05, 4.39597e-05, 4.52733e-05, 4.65019e-05, 4.76509e-05, 4.87254e-05, 
			2.398e-05, 2.68288e-05, 2.94904e-05, 3.19702e-05, 3.42802e-05, 3.64355e-05, 3.84483e-05, 4.03305e-05, 4.20909e-05, 4.37384e-05, 4.52806e-05, 4.67245e-05, 4.80767e-05, 4.93425e-05, 5.05278e-05, 5.16375e-05
		)
}

CapTable	"metal3_C_LATERAL_44MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181082, 0.000105668, 7.75936e-05, 6.22506e-05, 5.22942e-05, 4.51678e-05, 3.97376e-05, 3.54186e-05, 3.18756e-05, 2.89014e-05, 2.636e-05, 2.41584e-05, 2.223e-05, 2.05254e-05, 1.90079e-05, 1.76487e-05, 
			0.000192819, 0.000114834, 8.51356e-05, 6.86986e-05, 5.79266e-05, 5.0169e-05, 4.4232e-05, 3.94942e-05, 3.55976e-05, 3.23198e-05, 2.95144e-05, 2.70804e-05, 2.49456e-05, 2.3057e-05, 2.13738e-05, 1.9865e-05, 
			0.000199907, 0.000120916, 9.0375e-05, 7.32852e-05, 6.2019e-05, 5.38558e-05, 4.7583e-05, 4.25612e-05, 3.84206e-05, 3.49304e-05, 3.19378e-05, 2.93376e-05, 2.70542e-05, 2.50318e-05, 2.3228e-05, 2.16096e-05, 
			0.000204924, 0.00012543, 9.43816e-05, 7.6868e-05, 6.52492e-05, 5.67978e-05, 5.02802e-05, 4.50478e-05, 4.07236e-05, 3.70714e-05, 3.39352e-05, 3.12066e-05, 2.88078e-05, 2.6681e-05, 2.47824e-05, 2.3078e-05, 
			0.000208344, 0.000128869, 9.75326e-05, 7.97378e-05, 6.78718e-05, 5.92116e-05, 5.25122e-05, 4.71182e-05, 4.26516e-05, 3.8873e-05, 3.56238e-05, 3.27936e-05, 3.03028e-05, 2.8093e-05, 2.61186e-05, 2.43448e-05
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
			8.24014e-06, 1.04222e-05, 1.22833e-05, 1.39262e-05, 1.54055e-05, 1.67534e-05, 1.79891e-05, 1.91272e-05, 2.01775e-05, 2.11496e-05, 2.20489e-05, 2.28756e-05, 2.36468e-05, 2.43451e-05, 2.49953e-05, 2.55967e-05, 
			1.00864e-05, 1.21503e-05, 1.40042e-05, 1.56898e-05, 1.72364e-05, 1.86626e-05, 1.99841e-05, 2.12118e-05, 2.23461e-05, 2.33971e-05, 2.43692e-05, 2.52698e-05, 2.61074e-05, 2.68789e-05, 2.75948e-05, 2.82549e-05, 
			1.19099e-05, 1.3922e-05, 1.57782e-05, 1.74962e-05, 1.90885e-05, 2.05698e-05, 2.19504e-05, 2.32365e-05, 2.44288e-05, 2.55457e-05, 2.65681e-05, 2.75242e-05, 2.84125e-05, 2.92349e-05, 2.99961e-05, 3.06994e-05, 
			1.37415e-05, 1.57382e-05, 1.76035e-05, 1.93496e-05, 2.09853e-05, 2.251e-05, 2.39332e-05, 2.52597e-05, 2.64968e-05, 2.76536e-05, 2.87267e-05, 2.97269e-05, 3.06544e-05, 3.15147e-05, 3.23115e-05, 3.30493e-05, 
			1.56085e-05, 1.75924e-05, 1.94696e-05, 2.12405e-05, 2.29044e-05, 2.44617e-05, 2.59296e-05, 2.72863e-05, 2.85619e-05, 2.97539e-05, 3.08638e-05, 3.18965e-05, 3.2856e-05, 3.37466e-05, 3.45721e-05, 3.53359e-05
		)
}

CapTable	"metal3_C_TOP_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.39626e-06, 8.10821e-06, 9.57209e-06, 1.08637e-05, 1.20246e-05, 1.30805e-05, 1.40485e-05, 1.49392e-05, 1.57611e-05, 1.65183e-05, 1.72172e-05, 1.78677e-05, 1.84615e-05, 1.9024e-05, 1.95375e-05, 2.00096e-05, 
			7.82183e-06, 9.44094e-06, 1.08948e-05, 1.22146e-05, 1.34236e-05, 1.45379e-05, 1.55662e-05, 1.65158e-05, 1.74012e-05, 1.8224e-05, 1.89896e-05, 1.96997e-05, 2.0354e-05, 2.09634e-05, 2.15247e-05, 2.20444e-05, 
			9.23491e-06, 1.0807e-05, 1.22572e-05, 1.35972e-05, 1.48392e-05, 1.59933e-05, 1.70651e-05, 1.80618e-05, 1.89947e-05, 1.98548e-05, 2.06705e-05, 2.14216e-05, 2.21172e-05, 2.27628e-05, 2.33612e-05, 2.39154e-05, 
			1.06495e-05, 1.22025e-05, 1.36543e-05, 1.50096e-05, 1.62724e-05, 1.74569e-05, 1.85659e-05, 1.96044e-05, 2.05745e-05, 2.14756e-05, 2.23186e-05, 2.31005e-05, 2.38285e-05, 2.45045e-05, 2.51314e-05, 2.57117e-05, 
			1.20845e-05, 1.36236e-05, 1.5081e-05, 1.64511e-05, 1.77376e-05, 1.89501e-05, 2.00785e-05, 2.11528e-05, 2.21501e-05, 2.30802e-05, 2.39487e-05, 2.47582e-05, 2.55116e-05, 2.62115e-05, 2.68612e-05, 2.74632e-05
		)
}

CapTable	"metal3_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000180056, 0.000104293, 7.58882e-05, 6.02334e-05, 4.99834e-05, 4.25826e-05, 3.68988e-05, 3.23476e-05, 2.85944e-05, 2.54324e-05, 2.27254e-05, 2.03792e-05, 1.83265e-05, 1.65171e-05, 1.49129e-05, 1.34838e-05, 
			0.000191388, 0.000113027, 8.2967e-05, 6.6185e-05, 5.50876e-05, 4.7026e-05, 4.08082e-05, 3.58142e-05, 3.16862e-05, 2.82016e-05, 2.5214e-05, 2.26216e-05, 2.03512e-05, 1.83482e-05, 1.65709e-05, 1.49868e-05, 
			0.000198033, 0.000118642, 8.77126e-05, 7.02526e-05, 5.86378e-05, 5.01496e-05, 4.35776e-05, 3.82838e-05, 3.3898e-05, 3.01896e-05, 2.70052e-05, 2.42388e-05, 2.18136e-05, 1.96725e-05, 1.77711e-05, 1.60752e-05, 
			0.000202572, 0.000122654, 9.11972e-05, 7.32938e-05, 6.13092e-05, 5.2518e-05, 4.56886e-05, 4.01734e-05, 3.55952e-05, 3.17178e-05, 2.83844e-05, 2.54856e-05, 2.29422e-05, 2.06948e-05, 1.86981e-05, 1.69161e-05, 
			0.000205482, 0.000125566, 9.38034e-05, 7.56044e-05, 6.336e-05, 5.435e-05, 4.73304e-05, 4.1647e-05, 3.69214e-05, 3.2914e-05, 2.94652e-05, 2.64632e-05, 2.38272e-05, 2.14968e-05, 1.94251e-05, 1.75758e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.9629e-06, 8.9434e-06, 1.06846e-05, 1.22529e-05, 1.36807e-05, 1.49829e-05, 1.61706e-05, 1.72498e-05, 1.82277e-05, 1.91103e-05, 1.9906e-05, 2.06171e-05, 2.12555e-05, 2.18217e-05, 2.23289e-05, 2.27795e-05, 
			8.7436e-06, 1.06814e-05, 1.24633e-05, 1.41066e-05, 1.56223e-05, 1.7017e-05, 1.82945e-05, 1.94615e-05, 2.05205e-05, 2.14799e-05, 2.23425e-05, 2.31193e-05, 2.3812e-05, 2.4434e-05, 2.49879e-05, 2.54775e-05, 
			1.05586e-05, 1.24989e-05, 1.43188e-05, 1.60189e-05, 1.75966e-05, 1.9054e-05, 2.03931e-05, 2.16185e-05, 2.27308e-05, 2.37406e-05, 2.46487e-05, 2.54681e-05, 2.62026e-05, 2.6856e-05, 2.74411e-05, 2.79613e-05, 
			1.24275e-05, 1.43888e-05, 1.62452e-05, 1.79886e-05, 1.9614e-05, 2.1118e-05, 2.25027e-05, 2.3768e-05, 2.49217e-05, 2.5965e-05, 2.69096e-05, 2.77591e-05, 2.8518e-05, 2.91992e-05, 2.98068e-05, 3.03465e-05, 
			1.43595e-05, 1.63387e-05, 1.82253e-05, 2.00031e-05, 2.16647e-05, 2.32016e-05, 2.46194e-05, 2.59145e-05, 2.70975e-05, 2.817e-05, 2.91356e-05, 3.0007e-05, 3.07883e-05, 3.14872e-05, 3.21098e-05, 3.26644e-05
		)
}

CapTable	"metal3_C_TOP_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.00197e-05, 1.2932e-05, 1.54965e-05, 1.78002e-05, 1.98864e-05, 2.17829e-05, 2.35041e-05, 2.5064e-05, 2.64736e-05, 2.7742e-05, 2.88802e-05, 2.99003e-05, 3.08094e-05, 3.16209e-05, 3.23399e-05, 3.2977e-05, 
			1.26524e-05, 1.5524e-05, 1.81565e-05, 2.05719e-05, 2.27881e-05, 2.48152e-05, 2.66652e-05, 2.83456e-05, 2.98669e-05, 3.12392e-05, 3.24738e-05, 3.35797e-05, 3.45692e-05, 3.54488e-05, 3.6231e-05, 3.69277e-05, 
			1.5374e-05, 1.82545e-05, 2.09452e-05, 2.34397e-05, 2.57416e-05, 2.78569e-05, 2.97904e-05, 3.155e-05, 3.3147e-05, 3.4587e-05, 3.58849e-05, 3.70471e-05, 3.80851e-05, 3.90139e-05, 3.98378e-05, 4.05695e-05, 
			1.81891e-05, 2.11032e-05, 2.3842e-05, 2.6397e-05, 2.8762e-05, 3.09386e-05, 3.29319e-05, 3.47489e-05, 3.63973e-05, 3.78867e-05, 3.92261e-05, 4.04281e-05, 4.15054e-05, 4.24634e-05, 4.33165e-05, 4.4076e-05, 
			2.11035e-05, 2.40403e-05, 2.68201e-05, 2.94201e-05, 3.18311e-05, 3.40548e-05, 3.60905e-05, 3.79492e-05, 3.96343e-05, 4.11563e-05, 4.25296e-05, 4.37593e-05, 4.48599e-05, 4.5843e-05, 4.67177e-05, 4.7495e-05
		)
}

CapTable	"metal3_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178189, 0.000101761, 7.2746e-05, 5.65454e-05, 4.58228e-05, 3.80272e-05, 3.20282e-05, 2.72396e-05, 2.33218e-05, 2.0063e-05, 1.73179e-05, 1.49871e-05, 1.29938e-05, 1.12826e-05, 9.80624e-06, 8.53008e-06, 
			0.000188694, 0.000109624, 7.89162e-05, 6.1563e-05, 4.99792e-05, 4.15208e-05, 3.49942e-05, 2.97758e-05, 2.55034e-05, 2.19452e-05, 1.89482e-05, 1.64003e-05, 1.42224e-05, 1.23501e-05, 1.07353e-05, 9.339e-06, 
			0.000194451, 0.000114332, 8.2746e-05, 6.47174e-05, 5.26284e-05, 4.37622e-05, 3.69066e-05, 3.1417e-05, 2.69178e-05, 2.31686e-05, 2.00086e-05, 1.7321e-05, 1.50221e-05, 1.30458e-05, 1.134e-05, 9.86416e-06, 
			0.000198069, 0.000117426, 8.53268e-05, 6.68764e-05, 5.4445e-05, 4.53086e-05, 3.82298e-05, 3.2556e-05, 2.79e-05, 2.40198e-05, 2.0746e-05, 1.79613e-05, 1.55782e-05, 1.35282e-05, 1.1759e-05, 1.02275e-05, 
			0.000200058, 0.000119438, 8.70626e-05, 6.83518e-05, 5.56992e-05, 4.63836e-05, 3.91552e-05, 3.33532e-05, 2.8589e-05, 2.46154e-05, 2.12626e-05, 1.84092e-05, 1.59661e-05, 1.3864e-05, 1.20504e-05, 1.04798e-05
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
			0.000167261, 8.84562e-05, 5.83538e-05, 4.19366e-05, 3.15608e-05, 2.44618e-05, 1.93609e-05, 1.5572e-05, 1.26887e-05, 1.04535e-05, 8.69482e-06, 7.2941e-06, 6.1669e-06, 5.25184e-06, 4.50322e-06, 3.88648e-06, 
			0.000173914, 9.3425e-05, 6.2308e-05, 4.5219e-05, 3.4325e-05, 2.6815e-05, 2.13784e-05, 1.73109e-05, 1.41947e-05, 1.17637e-05, 9.83986e-06, 8.2996e-06, 7.05422e-06, 6.03886e-06, 5.20494e-06, 4.51548e-06, 
			0.000177143, 9.63324e-05, 6.4822e-05, 4.73856e-05, 3.62208e-05, 2.847e-05, 2.28278e-05, 1.85843e-05, 1.5317e-05, 1.27564e-05, 1.07216e-05, 9.08616e-06, 7.75922e-06, 6.6739e-06, 5.77974e-06, 5.03858e-06, 
			0.000179194, 9.83454e-05, 6.66462e-05, 4.90106e-05, 3.76568e-05, 2.97478e-05, 2.39654e-05, 1.95989e-05, 1.62245e-05, 1.35707e-05, 1.14553e-05, 9.75e-06, 8.3626e-06, 7.2249e-06, 6.28546e-06, 5.50474e-06, 
			0.000180263, 9.97668e-05, 6.80116e-05, 5.02622e-05, 3.8788e-05, 3.07742e-05, 2.48956e-05, 2.044e-05, 1.69869e-05, 1.42642e-05, 1.20885e-05, 1.03305e-05, 8.89726e-06, 7.71934e-06, 6.74466e-06, 5.93276e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_15MAX" {
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

CapTable	"metal2_C_LATERAL_15MAX" {
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

CapTable	"metal2_C_LATERAL_13MAX" {
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

CapTable	"metal2_C_BOTTOM_GP_14MAX" {
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

CapTable	"metal2_C_TOP_GP_14MAX" {
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
			2.85737e-05, 3.8425e-05, 4.63237e-05, 5.25478e-05, 5.74312e-05, 6.12652e-05, 6.42841e-05, 6.66687e-05, 6.85581e-05, 7.00603e-05, 7.12586e-05, 7.2217e-05, 7.29858e-05, 7.36021e-05, 7.40982e-05, 7.44965e-05, 
			4.10948e-05, 5.10191e-05, 5.90335e-05, 6.54029e-05, 7.04507e-05, 7.44502e-05, 7.76233e-05, 8.01467e-05, 8.21592e-05, 8.37654e-05, 8.50532e-05, 8.60855e-05, 8.69138e-05, 8.7581e-05, 8.81157e-05, 8.85468e-05, 
			5.38349e-05, 6.37309e-05, 7.17678e-05, 7.82046e-05, 8.3334e-05, 8.74221e-05, 9.06828e-05, 9.32865e-05, 9.53697e-05, 9.70389e-05, 9.83766e-05, 9.94518e-05, 0.000100315, 0.000101009, 0.000101567, 0.000102013, 
			6.66508e-05, 7.65325e-05, 8.45794e-05, 9.10527e-05, 9.62337e-05, 0.000100376, 0.000103689, 0.000106343, 0.000108469, 0.000110174, 0.000111543, 0.000112642, 0.000113525, 0.000114233, 0.000114797, 0.000115256, 
			7.95186e-05, 8.93445e-05, 9.73838e-05, 0.00010387, 0.000109079, 0.00011325, 0.000116593, 0.000119274, 0.000121424, 0.000123149, 0.000124535, 0.000125646, 0.000126536, 0.000127254, 0.000127823, 0.000128279
		)
}

CapTable	"metal2_C_TOP_GP_13MAX" {
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
			0.000177881, 0.000101563, 7.28306e-05, 5.70496e-05, 4.68438e-05, 3.96252e-05, 3.42294e-05, 3.0044e-05, 2.67098e-05, 2.39994e-05, 2.17604e-05, 1.98855e-05, 1.82973e-05, 1.69378e-05, 1.57634e-05, 1.474e-05, 
			0.00018846, 0.000109723, 7.95186e-05, 6.2791e-05, 5.19084e-05, 4.41858e-05, 3.8398e-05, 3.38968e-05, 3.03008e-05, 2.73686e-05, 2.4938e-05, 2.2895e-05, 2.11576e-05, 1.96642e-05, 1.83685e-05, 1.72342e-05, 
			0.000194597, 0.000115046, 8.4177e-05, 6.6958e-05, 5.5724e-05, 4.77204e-05, 4.17048e-05, 3.7013e-05, 3.32534e-05, 3.01778e-05, 2.76194e-05, 2.54612e-05, 2.36184e-05, 2.20282e-05, 2.06426e-05, 1.94247e-05, 
			0.000198911, 0.000119058, 8.78618e-05, 7.03746e-05, 5.89216e-05, 5.07434e-05, 4.45794e-05, 3.9758e-05, 3.5883e-05, 3.27028e-05, 3.00484e-05, 2.78012e-05, 2.58756e-05, 2.42072e-05, 2.2748e-05, 2.14602e-05, 
			0.000201888, 0.000122251, 9.09336e-05, 7.33068e-05, 6.17248e-05, 5.3437e-05, 4.71734e-05, 4.22582e-05, 3.82966e-05, 3.50354e-05, 3.23044e-05, 2.99848e-05, 2.79898e-05, 2.62554e-05, 2.47328e-05, 2.3384e-05
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
			4.14098e-06, 5.40371e-06, 6.51886e-06, 7.51977e-06, 8.4127e-06, 9.20626e-06, 9.90806e-06, 1.05276e-05, 1.10721e-05, 1.15509e-05, 1.19695e-05, 1.23362e-05, 1.26583e-05, 1.29387e-05, 1.31864e-05, 1.34036e-05, 
			5.2905e-06, 6.5294e-06, 7.66859e-06, 8.70559e-06, 9.64165e-06, 1.04799e-05, 1.12268e-05, 1.18887e-05, 1.24734e-05, 1.29897e-05, 1.3444e-05, 1.38436e-05, 1.41955e-05, 1.45042e-05, 1.47768e-05, 1.50164e-05, 
			6.45958e-06, 7.69466e-06, 8.84687e-06, 9.90494e-06, 1.08662e-05, 1.17315e-05, 1.25071e-05, 1.31962e-05, 1.38076e-05, 1.43492e-05, 1.48261e-05, 1.52492e-05, 1.56219e-05, 1.59499e-05, 1.624e-05, 1.64955e-05, 
			7.64861e-06, 8.88425e-06, 1.00451e-05, 1.11183e-05, 1.2097e-05, 1.2981e-05, 1.37752e-05, 1.44843e-05, 1.51153e-05, 1.56758e-05, 1.61713e-05, 1.66107e-05, 1.69991e-05, 1.73419e-05, 1.76456e-05, 1.79138e-05, 
			8.85615e-06, 1.00895e-05, 1.12564e-05, 1.2341e-05, 1.33317e-05, 1.42296e-05, 1.50383e-05, 1.57612e-05, 1.6408e-05, 1.69828e-05, 1.74922e-05, 1.79446e-05, 1.83451e-05, 1.87003e-05, 1.90144e-05, 1.92918e-05
		)
}

CapTable	"metal2_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000176237, 9.92702e-05, 6.99082e-05, 5.35284e-05, 4.27658e-05, 3.50398e-05, 2.91904e-05, 2.46062e-05, 2.09274e-05, 1.79244e-05, 1.54413e-05, 1.33671e-05, 1.16203e-05, 1.01391e-05, 8.87574e-06, 7.79266e-06, 
			0.000185983, 0.0001065, 7.55686e-05, 5.81516e-05, 4.66296e-05, 3.83268e-05, 3.20218e-05, 2.70678e-05, 2.3082e-05, 1.98201e-05, 1.71157e-05, 1.48508e-05, 1.29384e-05, 1.13125e-05, 9.92208e-06, 8.72718e-06, 
			0.000191155, 0.000110769, 7.90914e-05, 6.11094e-05, 4.91726e-05, 4.05338e-05, 3.39552e-05, 2.87728e-05, 2.4593e-05, 2.1164e-05, 1.83143e-05, 1.5922e-05, 1.38973e-05, 1.2172e-05, 1.06934e-05, 9.4197e-06, 
			0.000194379, 0.000113612, 8.1538e-05, 6.32276e-05, 5.10206e-05, 4.21652e-05, 3.5404e-05, 3.0065e-05, 2.57492e-05, 2.22008e-05, 1.92456e-05, 1.67597e-05, 1.46514e-05, 1.28513e-05, 1.13058e-05, 9.97192e-06, 
			0.000196156, 0.000115539, 8.32856e-05, 6.47868e-05, 5.2411e-05, 4.34142e-05, 3.65286e-05, 3.10774e-05, 2.66622e-05, 2.30252e-05, 1.99905e-05, 1.74331e-05, 1.52603e-05, 1.34021e-05, 1.18038e-05, 1.04229e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.7656e-05, 2.2759e-05, 2.71135e-05, 3.08684e-05, 3.41187e-05, 3.69359e-05, 3.93801e-05, 4.15029e-05, 4.33497e-05, 4.496e-05, 4.63677e-05, 4.76029e-05, 4.86905e-05, 4.96525e-05, 5.05069e-05, 5.12696e-05, 
			2.24676e-05, 2.73982e-05, 3.17344e-05, 3.55291e-05, 3.88445e-05, 4.17372e-05, 4.42607e-05, 4.64637e-05, 4.83902e-05, 5.00786e-05, 5.15625e-05, 5.28716e-05, 5.40306e-05, 5.50615e-05, 5.59823e-05, 5.6809e-05, 
			2.72646e-05, 3.2063e-05, 3.6336e-05, 4.0106e-05, 4.34185e-05, 4.63236e-05, 4.88703e-05, 5.1104e-05, 5.30666e-05, 5.47948e-05, 5.63213e-05, 5.76744e-05, 5.88788e-05, 5.99552e-05, 6.09219e-05, 6.1794e-05, 
			3.20132e-05, 3.66984e-05, 4.08892e-05, 4.46064e-05, 4.78884e-05, 5.07796e-05, 5.33247e-05, 5.55671e-05, 5.75459e-05, 5.92963e-05, 6.08495e-05, 6.22328e-05, 6.34694e-05, 6.45804e-05, 6.55826e-05, 6.64911e-05, 
			3.6699e-05, 4.12514e-05, 4.53514e-05, 4.90032e-05, 5.22422e-05, 5.5106e-05, 5.76366e-05, 5.98768e-05, 6.18614e-05, 6.36244e-05, 6.51955e-05, 6.66007e-05, 6.78628e-05, 6.90013e-05, 7.00329e-05, 7.09724e-05
		)
}

CapTable	"metal2_C_TOP_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.07259e-06, 7.96571e-06, 9.66514e-06, 1.11949e-05, 1.2566e-05, 1.37856e-05, 1.48639e-05, 1.58109e-05, 1.66381e-05, 1.7357e-05, 1.79807e-05, 1.85197e-05, 1.89837e-05, 1.93836e-05, 1.97254e-05, 2.00205e-05, 
			7.84109e-06, 9.73529e-06, 1.14898e-05, 1.30937e-05, 1.45457e-05, 1.58457e-05, 1.69999e-05, 1.80169e-05, 1.8909e-05, 1.96864e-05, 2.03627e-05, 2.09483e-05, 2.14531e-05, 2.18892e-05, 2.22637e-05, 2.25863e-05, 
			9.67602e-06, 1.15867e-05, 1.33804e-05, 1.50338e-05, 1.65365e-05, 1.78864e-05, 1.9088e-05, 2.01505e-05, 2.10838e-05, 2.18988e-05, 2.26082e-05, 2.32223e-05, 2.37553e-05, 2.42144e-05, 2.46106e-05, 2.49508e-05, 
			1.15655e-05, 1.34997e-05, 1.5324e-05, 1.70128e-05, 1.85507e-05, 1.99357e-05, 2.11705e-05, 2.2264e-05, 2.3226e-05, 2.4066e-05, 2.47991e-05, 2.54352e-05, 2.59863e-05, 2.6462e-05, 2.68722e-05, 2.72261e-05, 
			1.35086e-05, 1.54576e-05, 1.73046e-05, 1.90182e-05, 2.05826e-05, 2.19928e-05, 2.32514e-05, 2.43661e-05, 2.5347e-05, 2.62071e-05, 2.69563e-05, 2.76079e-05, 2.81718e-05, 2.86589e-05, 2.90793e-05, 2.94427e-05
		)
}

CapTable	"metal2_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000175559, 9.83166e-05, 6.8688e-05, 5.206e-05, 4.10762e-05, 3.31614e-05, 2.71582e-05, 2.2456e-05, 1.86938e-05, 1.56391e-05, 1.31327e-05, 1.10602e-05, 9.33616e-06, 7.89562e-06, 6.68754e-06, 5.67118e-06, 
			0.000184954, 0.000105159, 7.39276e-05, 5.6234e-05, 4.44692e-05, 3.59624e-05, 2.9495e-05, 2.442e-05, 2.03524e-05, 1.70447e-05, 1.43269e-05, 1.20763e-05, 1.02018e-05, 8.63362e-06, 7.31658e-06, 6.2076e-06, 
			0.000189728, 0.000109002, 7.70012e-05, 5.87262e-05, 4.65362e-05, 3.76896e-05, 3.09496e-05, 2.56514e-05, 2.1399e-05, 1.79362e-05, 1.50874e-05, 1.27257e-05, 1.07566e-05, 9.10714e-06, 7.72104e-06, 6.55256e-06, 
			0.000192515, 0.000111389, 7.89782e-05, 6.03676e-05, 4.79062e-05, 3.88462e-05, 3.19312e-05, 2.64876e-05, 2.21128e-05, 1.85467e-05, 1.56098e-05, 1.31725e-05, 1.11388e-05, 9.43384e-06, 7.99988e-06, 6.79046e-06, 
			0.00019383, 0.000112842, 8.02468e-05, 6.14486e-05, 4.88238e-05, 3.9632e-05, 3.26052e-05, 2.70646e-05, 2.26074e-05, 1.89706e-05, 1.59729e-05, 1.34837e-05, 1.14049e-05, 9.66128e-06, 8.19432e-06, 6.95618e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.55586e-05, 2.03231e-05, 2.44899e-05, 2.81499e-05, 3.13694e-05, 3.41963e-05, 3.66736e-05, 3.8839e-05, 4.07294e-05, 4.23767e-05, 4.38132e-05, 4.50651e-05, 4.61557e-05, 4.71089e-05, 4.79397e-05, 4.86663e-05, 
			2.03115e-05, 2.50838e-05, 2.93668e-05, 3.31828e-05, 3.65672e-05, 3.95561e-05, 4.21864e-05, 4.44956e-05, 4.65193e-05, 4.82894e-05, 4.98379e-05, 5.11919e-05, 5.23759e-05, 5.34131e-05, 5.43209e-05, 5.51175e-05, 
			2.52296e-05, 3.00239e-05, 3.43737e-05, 3.82757e-05, 4.17512e-05, 4.48331e-05, 4.75535e-05, 4.99504e-05, 5.2057e-05, 5.39053e-05, 5.55281e-05, 5.6949e-05, 5.81958e-05, 5.92908e-05, 6.02519e-05, 6.10978e-05, 
			3.02714e-05, 3.50934e-05, 3.94819e-05, 4.34341e-05, 4.69664e-05, 5.01078e-05, 5.28898e-05, 5.53457e-05, 5.75099e-05, 5.94137e-05, 6.10886e-05, 6.25597e-05, 6.38533e-05, 6.49917e-05, 6.59931e-05, 6.68762e-05, 
			3.54114e-05, 4.02315e-05, 4.4639e-05, 4.86192e-05, 5.21883e-05, 5.53682e-05, 5.81911e-05, 6.06904e-05, 6.28958e-05, 6.4841e-05, 6.65553e-05, 6.80653e-05, 6.93946e-05, 7.05666e-05, 7.15998e-05, 7.25133e-05
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
			1.44788e-05, 1.90157e-05, 2.30099e-05, 2.65435e-05, 2.9663e-05, 3.24065e-05, 3.48071e-05, 3.68983e-05, 3.87124e-05, 4.02813e-05, 4.16331e-05, 4.27957e-05, 4.37948e-05, 4.46509e-05, 4.53858e-05, 4.60133e-05, 
			1.90845e-05, 2.36765e-05, 2.78266e-05, 3.15433e-05, 3.48478e-05, 3.77665e-05, 4.03293e-05, 4.25682e-05, 4.45148e-05, 4.6202e-05, 4.76585e-05, 4.89141e-05, 4.99951e-05, 5.09226e-05, 5.17193e-05, 5.24015e-05, 
			2.38962e-05, 2.85551e-05, 3.28054e-05, 3.6632e-05, 4.00463e-05, 4.30695e-05, 4.57302e-05, 4.80579e-05, 5.00853e-05, 5.18454e-05, 5.33677e-05, 5.46828e-05, 5.58135e-05, 5.67872e-05, 5.76226e-05, 5.83403e-05, 
			2.88761e-05, 3.35981e-05, 3.79148e-05, 4.18136e-05, 4.53001e-05, 4.83911e-05, 5.11163e-05, 5.35034e-05, 5.55842e-05, 5.73943e-05, 5.89605e-05, 6.03142e-05, 6.14806e-05, 6.24853e-05, 6.33489e-05, 6.40897e-05, 
			3.39888e-05, 3.87386e-05, 4.30996e-05, 4.70452e-05, 5.05776e-05, 5.37132e-05, 5.64804e-05, 5.89073e-05, 6.10276e-05, 6.28693e-05, 6.44668e-05, 6.58474e-05, 6.70393e-05, 6.80658e-05, 6.89484e-05, 6.97051e-05
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
			1.16756e-05, 1.4462e-05, 1.66991e-05, 1.85593e-05, 2.01416e-05, 2.15085e-05, 2.27032e-05, 2.37571e-05, 2.4694e-05, 2.55332e-05, 2.62893e-05, 2.69755e-05, 2.76017e-05, 2.81764e-05, 2.87072e-05, 2.91998e-05, 
			1.3829e-05, 1.63058e-05, 1.83962e-05, 2.0185e-05, 2.17341e-05, 2.3089e-05, 2.42841e-05, 2.53466e-05, 2.62975e-05, 2.71542e-05, 2.79313e-05, 2.86401e-05, 2.92908e-05, 2.98912e-05, 3.04485e-05, 3.0968e-05, 
			1.5803e-05, 1.80662e-05, 2.00292e-05, 2.17378e-05, 2.32356e-05, 2.45583e-05, 2.57346e-05, 2.67874e-05, 2.77359e-05, 2.85957e-05, 2.93796e-05, 3.0099e-05, 3.07626e-05, 3.13781e-05, 3.19519e-05, 3.24896e-05, 
			1.7631e-05, 1.97364e-05, 2.1587e-05, 2.32172e-05, 2.4661e-05, 2.59458e-05, 2.70965e-05, 2.8133e-05, 2.90725e-05, 2.99288e-05, 3.07142e-05, 3.14383e-05, 3.21094e-05, 3.2735e-05, 3.33209e-05, 3.38721e-05, 
			1.9349e-05, 2.13142e-05, 2.30648e-05, 2.46222e-05, 2.60128e-05, 2.7259e-05, 2.83823e-05, 2.94003e-05, 3.03283e-05, 3.11786e-05, 3.19623e-05, 3.26884e-05, 3.33647e-05, 3.39977e-05, 3.45927e-05, 3.51549e-05
		)
}

CapTable	"metal2_C_LATERAL_35MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00018258, 0.000107725, 8.02104e-05, 6.54248e-05, 5.60186e-05, 4.94314e-05, 4.45252e-05, 4.0711e-05, 3.76502e-05, 3.51326e-05, 3.30206e-05, 3.12188e-05, 2.96602e-05, 2.82952e-05, 2.70866e-05, 2.60064e-05, 
			0.000194976, 0.000117648, 8.86098e-05, 7.28264e-05, 6.26962e-05, 5.55632e-05, 5.02286e-05, 4.60668e-05, 4.27166e-05, 3.99528e-05, 3.76268e-05, 3.5637e-05, 3.39102e-05, 3.23936e-05, 3.1047e-05, 2.98402e-05, 
			0.000202862, 0.000124621, 9.48268e-05, 7.84732e-05, 6.7924e-05, 6.04534e-05, 5.48434e-05, 5.0451e-05, 4.69028e-05, 4.39658e-05, 4.14864e-05, 3.93582e-05, 3.75058e-05, 3.58738e-05, 3.44206e-05, 3.31144e-05, 
			0.000208804, 0.000130145, 9.9922e-05, 8.32148e-05, 7.23756e-05, 6.46712e-05, 5.88632e-05, 5.42996e-05, 5.06006e-05, 4.7529e-05, 4.49272e-05, 4.26872e-05, 4.07318e-05, 3.90038e-05, 3.74608e-05, 3.60702e-05, 
			0.000213268, 0.0001347, 0.000104255, 8.73248e-05, 7.62882e-05, 6.84168e-05, 6.24612e-05, 5.77638e-05, 5.3944e-05, 5.07622e-05, 4.8059e-05, 4.57248e-05, 4.3681e-05, 4.18702e-05, 4.02492e-05, 3.87844e-05
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
			1.17004e-05, 1.49668e-05, 1.77713e-05, 2.02446e-05, 2.24571e-05, 2.44532e-05, 2.62619e-05, 2.7904e-05, 2.9396e-05, 3.07524e-05, 3.19844e-05, 3.31074e-05, 3.41193e-05, 3.5047e-05, 3.58802e-05, 3.66418e-05, 
			1.46592e-05, 1.78102e-05, 2.06378e-05, 2.31928e-05, 2.55166e-05, 2.76353e-05, 2.95697e-05, 3.13359e-05, 3.29477e-05, 3.44185e-05, 3.57607e-05, 3.69867e-05, 3.80919e-05, 3.91052e-05, 4.00223e-05, 4.08557e-05, 
			1.76248e-05, 2.07303e-05, 2.35819e-05, 2.61964e-05, 2.85949e-05, 3.07966e-05, 3.28166e-05, 3.4668e-05, 3.6367e-05, 3.79132e-05, 3.93362e-05, 4.06258e-05, 4.18081e-05, 4.28754e-05, 4.3855e-05, 4.47379e-05, 
			2.06257e-05, 2.37276e-05, 2.6603e-05, 2.92637e-05, 3.17201e-05, 3.39835e-05, 3.60677e-05, 3.79848e-05, 3.97486e-05, 4.13531e-05, 4.28307e-05, 4.41768e-05, 4.54062e-05, 4.65229e-05, 4.75457e-05, 4.84783e-05, 
			2.36879e-05, 2.6784e-05, 2.96824e-05, 3.23796e-05, 3.48803e-05, 3.71954e-05, 3.93251e-05, 4.12969e-05, 4.31005e-05, 4.47629e-05, 4.62754e-05, 4.76683e-05, 4.89324e-05, 5.00969e-05, 5.11451e-05, 5.21067e-05
		)
}

CapTable	"metal2_C_TOP_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			4.669e-06, 5.97362e-06, 7.10581e-06, 8.11061e-06, 9.01495e-06, 9.83374e-06, 1.0578e-05, 1.12558e-05, 1.18734e-05, 1.24356e-05, 1.29477e-05, 1.34096e-05, 1.38371e-05, 1.42158e-05, 1.45679e-05, 1.48811e-05, 
			5.7876e-06, 7.03645e-06, 8.17075e-06, 9.20548e-06, 1.01519e-05, 1.10187e-05, 1.18129e-05, 1.25406e-05, 1.32073e-05, 1.38166e-05, 1.43716e-05, 1.48744e-05, 1.53435e-05, 1.57622e-05, 1.6147e-05, 1.64966e-05, 
			6.90497e-06, 8.12965e-06, 9.26812e-06, 1.03222e-05, 1.12965e-05, 1.21959e-05, 1.30244e-05, 1.37869e-05, 1.44834e-05, 1.51301e-05, 1.57118e-05, 1.62529e-05, 1.674e-05, 1.71943e-05, 1.76e-05, 1.79773e-05, 
			8.02934e-06, 9.24741e-06, 1.03924e-05, 1.14627e-05, 1.24585e-05, 1.33824e-05, 1.42369e-05, 1.50238e-05, 1.57441e-05, 1.64181e-05, 1.70269e-05, 1.75888e-05, 1.81022e-05, 1.85754e-05, 1.90018e-05, 1.93887e-05, 
			9.17314e-06, 1.03854e-05, 1.1538e-05, 1.2622e-05, 1.36355e-05, 1.45746e-05, 1.54537e-05, 1.6256e-05, 1.70054e-05, 1.76878e-05, 1.83254e-05, 1.89012e-05, 1.94371e-05, 1.99158e-05, 2.0367e-05, 2.07717e-05
		)
}

CapTable	"metal2_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178787, 0.000102679, 7.40046e-05, 5.81368e-05, 4.77212e-05, 4.0197e-05, 3.44272e-05, 2.98238e-05, 2.60482e-05, 2.28894e-05, 2.02076e-05, 1.79052e-05, 1.59114e-05, 1.41733e-05, 1.26496e-05, 1.13082e-05, 
			0.000189698, 0.000111035, 8.07294e-05, 6.37496e-05, 5.24976e-05, 4.4322e-05, 3.8027e-05, 3.29894e-05, 2.88478e-05, 2.5376e-05, 2.24236e-05, 1.98852e-05, 1.7684e-05, 1.57627e-05, 1.40766e-05, 1.25904e-05, 
			0.000195983, 0.000116322, 8.5168e-05, 6.75264e-05, 5.5771e-05, 4.7181e-05, 4.05436e-05, 3.52172e-05, 3.08288e-05, 2.71434e-05, 2.40044e-05, 2.13018e-05, 1.89558e-05, 1.69055e-05, 1.51044e-05, 1.35155e-05, 
			0.000200202, 0.00012004, 8.83786e-05, 7.03106e-05, 5.82004e-05, 4.93214e-05, 4.24394e-05, 3.6904e-05, 3.23344e-05, 2.84908e-05, 2.52128e-05, 2.23872e-05, 1.99315e-05, 1.77836e-05, 1.58952e-05, 1.42281e-05, 
			0.000202824, 0.000122688, 9.07406e-05, 7.23944e-05, 6.00402e-05, 5.0957e-05, 4.3898e-05, 3.82066e-05, 3.35008e-05, 2.95374e-05, 2.61532e-05, 2.3233e-05, 2.0693e-05, 1.84699e-05, 1.65136e-05, 1.47854e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.06819e-05, 1.37533e-05, 1.6423e-05, 1.87986e-05, 2.09381e-05, 2.28745e-05, 2.46293e-05, 2.62187e-05, 2.76548e-05, 2.895e-05, 3.01162e-05, 3.11626e-05, 3.20985e-05, 3.29367e-05, 3.36818e-05, 3.43476e-05, 
			1.35363e-05, 1.65414e-05, 1.92683e-05, 2.17518e-05, 2.40212e-05, 2.60938e-05, 2.79832e-05, 2.97011e-05, 3.12588e-05, 3.26676e-05, 3.39392e-05, 3.50799e-05, 3.61022e-05, 3.70195e-05, 3.78385e-05, 3.85658e-05, 
			1.64362e-05, 1.94382e-05, 2.22164e-05, 2.47814e-05, 2.7141e-05, 2.93069e-05, 3.12879e-05, 3.30953e-05, 3.47368e-05, 3.62218e-05, 3.7564e-05, 3.87694e-05, 3.98539e-05, 4.0822e-05, 4.16892e-05, 4.24623e-05, 
			1.9408e-05, 2.2437e-05, 2.52656e-05, 2.78936e-05, 3.03224e-05, 3.25582e-05, 3.46083e-05, 3.64818e-05, 3.81826e-05, 3.97238e-05, 4.1118e-05, 4.23734e-05, 4.34982e-05, 4.45079e-05, 4.54068e-05, 4.62109e-05, 
			2.24678e-05, 2.55183e-05, 2.83894e-05, 3.10669e-05, 3.35516e-05, 3.58408e-05, 3.79407e-05, 3.98628e-05, 4.16088e-05, 4.31945e-05, 4.46247e-05, 4.5915e-05, 4.70736e-05, 4.81083e-05, 4.90358e-05, 4.98622e-05
		)
}

CapTable	"metal2_C_TOP_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			6.68848e-06, 8.6233e-06, 1.03235e-05, 1.18491e-05, 1.32291e-05, 1.44822e-05, 1.56205e-05, 1.66532e-05, 1.75886e-05, 1.84336e-05, 1.91937e-05, 1.98766e-05, 2.04898e-05, 2.10364e-05, 2.15261e-05, 2.196e-05, 
			8.40405e-06, 1.02926e-05, 1.20251e-05, 1.36163e-05, 1.50774e-05, 1.64164e-05, 1.7641e-05, 1.87575e-05, 1.9772e-05, 2.06901e-05, 2.15173e-05, 2.22642e-05, 2.29351e-05, 2.35329e-05, 2.40669e-05, 2.45445e-05, 
			1.0153e-05, 1.2034e-05, 1.3797e-05, 1.54364e-05, 1.69539e-05, 1.83533e-05, 1.9638e-05, 2.08107e-05, 2.18781e-05, 2.28474e-05, 2.37215e-05, 2.4511e-05, 2.52177e-05, 2.58525e-05, 2.64183e-05, 2.69222e-05, 
			1.1944e-05, 1.38392e-05, 1.56304e-05, 1.73096e-05, 1.88722e-05, 2.03169e-05, 2.16447e-05, 2.28583e-05, 2.3967e-05, 2.49734e-05, 2.58814e-05, 2.66993e-05, 2.74358e-05, 2.80936e-05, 2.86843e-05, 2.92091e-05, 
			1.37902e-05, 1.56967e-05, 1.75154e-05, 1.92285e-05, 2.08242e-05, 2.23022e-05, 2.36645e-05, 2.49106e-05, 2.6049e-05, 2.708e-05, 2.80142e-05, 2.88551e-05, 2.96101e-05, 3.02896e-05, 3.08938e-05, 3.14332e-05
		)
}

CapTable	"metal2_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177986, 0.00010158, 7.26242e-05, 5.64938e-05, 4.58402e-05, 3.81064e-05, 3.21582e-05, 2.74082e-05, 2.35182e-05, 2.02756e-05, 1.75388e-05, 1.52081e-05, 1.32097e-05, 1.14874e-05, 9.9981e-06, 8.70598e-06, 
			0.000188531, 0.000109541, 7.89236e-05, 6.16552e-05, 5.01438e-05, 4.17426e-05, 3.52582e-05, 3.0068e-05, 2.58102e-05, 2.2257e-05, 1.92552e-05, 1.66968e-05, 1.45019e-05, 1.26096e-05, 1.09722e-05, 9.552e-06, 
			0.00019441, 0.000114399, 8.29136e-05, 6.49682e-05, 5.29436e-05, 4.41228e-05, 3.72948e-05, 3.18186e-05, 2.73202e-05, 2.35622e-05, 2.0385e-05, 1.76755e-05, 1.53496e-05, 1.33445e-05, 1.16082e-05, 1.01017e-05, 
			0.00019819, 0.000117663, 8.5659e-05, 6.72808e-05, 5.48994e-05, 4.57918e-05, 3.87256e-05, 3.30492e-05, 2.83808e-05, 2.44776e-05, 2.11754e-05, 1.83582e-05, 1.59398e-05, 1.38533e-05, 1.20474e-05, 1.04795e-05, 
			0.000200352, 0.000119842, 8.75492e-05, 6.88936e-05, 5.62732e-05, 4.697e-05, 3.97378e-05, 3.39182e-05, 2.91282e-05, 2.51208e-05, 2.17298e-05, 1.88349e-05, 1.63492e-05, 1.42047e-05, 1.23482e-05, 1.07367e-05
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
			0.000172038, 9.09214e-05, 5.93918e-05, 4.21738e-05, 3.13734e-05, 2.40742e-05, 1.89036e-05, 1.51171e-05, 1.22729e-05, 1.00921e-05, 8.39094e-06, 7.04412e-06, 5.96392e-06, 5.08758e-06, 4.36932e-06, 3.7752e-06, 
			0.000179768, 9.66098e-05, 6.39212e-05, 4.59322e-05, 3.45488e-05, 2.67858e-05, 2.12342e-05, 1.71296e-05, 1.4017e-05, 1.16085e-05, 9.71322e-06, 8.20032e-06, 6.9775e-06, 5.97838e-06, 5.15406e-06, 4.46806e-06, 
			0.000183455, 9.99388e-05, 6.6835e-05, 4.8485e-05, 3.67922e-05, 2.8757e-05, 2.29672e-05, 1.86538e-05, 1.53587e-05, 1.27906e-05, 1.07561e-05, 9.12156e-06, 7.7925e-06, 6.70052e-06, 5.79494e-06, 5.03774e-06, 
			0.000185485, 0.00010223, 6.8977e-05, 5.04224e-05, 3.8536e-05, 3.03222e-05, 2.43614e-05, 1.9894e-05, 1.6461e-05, 1.37702e-05, 1.16268e-05, 9.89594e-06, 8.48184e-06, 7.31472e-06, 6.34276e-06, 5.52692e-06, 
			0.000187155, 0.000104074, 7.073e-05, 5.20324e-05, 3.99936e-05, 3.16284e-05, 2.5535e-05, 2.09456e-05, 1.74016e-05, 1.4611e-05, 1.23783e-05, 1.05678e-05, 9.08282e-06, 7.85264e-06, 6.8247e-06, 5.95912e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.27858e-05, 5.71612e-05, 6.8484e-05, 7.72436e-05, 8.39976e-05, 8.92234e-05, 9.32968e-05, 9.6501e-05, 9.90475e-05, 0.000101092, 0.000102751, 0.000104109, 0.00010523, 0.000106164, 0.000106948, 0.000107609, 
			6.09262e-05, 7.53454e-05, 8.67836e-05, 9.57204e-05, 0.000102689, 0.000108142, 0.000112438, 0.000115852, 0.000118591, 0.000120809, 0.000122623, 0.000124118, 0.000125362, 0.000126406, 0.000127285, 0.000128033, 
			7.93044e-05, 9.3576e-05, 0.000104971, 0.000113949, 0.000121007, 0.000126579, 0.000131005, 0.000134551, 0.000137415, 0.000139752, 0.000141675, 0.000143269, 0.000144605, 0.000145729, 0.000146684, 0.000147498, 
			9.76622e-05, 0.000111737, 0.000123044, 0.000132011, 0.000139106, 0.000144739, 0.000149246, 0.000152877, 0.000155828, 0.000158248, 0.000160251, 0.00016192, 0.000163324, 0.000164512, 0.000165525, 0.000166393, 
			0.000116016, 0.000129978, 0.000141233, 0.000150202, 0.000157336, 0.000163035, 0.000167614, 0.000171321, 0.000174352, 0.000176848, 0.000178923, 0.000180661, 0.000182129, 0.000183376, 0.000184444, 0.000185364
		)
}

CapTable	"metal1_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.0001721, 9.09238e-05, 5.9317e-05, 4.20024e-05, 3.10894e-05, 2.36666e-05, 1.83662e-05, 1.4448e-05, 1.14735e-05, 9.16624e-06, 7.34424e-06, 5.88338e-06, 4.69672e-06, 3.72188e-06, 2.91326e-06, 2.23692e-06, 
			0.000180057, 9.68696e-05, 6.41214e-05, 4.60476e-05, 3.45608e-05, 2.66824e-05, 2.1009e-05, 1.67803e-05, 1.35443e-05, 1.10153e-05, 9.00424e-06, 7.38114e-06, 6.05456e-06, 4.95842e-06, 4.04404e-06, 3.275e-06, 
			0.000183983, 0.000100451, 6.7299e-05, 4.88752e-05, 3.70896e-05, 2.8949e-05, 2.30466e-05, 1.86173e-05, 1.52058e-05, 1.25232e-05, 1.03772e-05, 8.63558e-06, 7.20448e-06, 6.01586e-06, 5.01938e-06, 4.17718e-06, 
			0.000186269, 0.000103021, 6.9742e-05, 5.11346e-05, 3.91748e-05, 3.08738e-05, 2.48164e-05, 2.02468e-05, 1.67089e-05, 1.39129e-05, 1.16654e-05, 9.83274e-06, 8.31992e-06, 7.0578e-06, 5.99502e-06, 5.09276e-06, 
			0.000188194, 0.000105129, 7.17692e-05, 5.30284e-05, 4.0925e-05, 3.24798e-05, 2.62954e-05, 2.16076e-05, 1.79613e-05, 1.50665e-05, 1.27292e-05, 1.08153e-05, 9.22886e-06, 7.9e-06, 6.77664e-06, 5.81934e-06
		)
}

CapTable	"metal1_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000171841, 9.06302e-05, 5.901e-05, 4.17116e-05, 3.08446e-05, 2.3493e-05, 1.82834e-05, 1.44697e-05, 1.16083e-05, 9.41856e-06, 7.7152e-06, 6.37168e-06, 5.29926e-06, 4.43426e-06, 3.73026e-06, 3.15272e-06, 
			0.000179443, 9.6173e-05, 6.33768e-05, 4.52926e-05, 3.38306e-05, 2.6006e-05, 2.04094e-05, 1.62739e-05, 1.31426e-05, 1.07255e-05, 8.82982e-06, 7.32336e-06, 6.11254e-06, 5.12978e-06, 4.32538e-06, 3.66228e-06, 
			0.000182982, 9.93362e-05, 6.61096e-05, 4.76524e-05, 3.58718e-05, 2.7769e-05, 2.19304e-05, 1.75846e-05, 1.42712e-05, 1.16966e-05, 9.665e-06, 8.04136e-06, 6.7296e-06, 5.65998e-06, 4.78092e-06, 4.05328e-06, 
			0.00018484, 0.000101442, 6.80534e-05, 4.93816e-05, 3.74006e-05, 2.91154e-05, 2.31042e-05, 1.86048e-05, 1.51555e-05, 1.24616e-05, 1.03257e-05, 8.61138e-06, 7.2208e-06, 6.08286e-06, 5.14444e-06, 4.36574e-06, 
			0.000186321, 0.000103083, 6.95918e-05, 5.07692e-05, 3.86312e-05, 3.01924e-05, 2.4049e-05, 1.94295e-05, 1.58731e-05, 1.30842e-05, 1.0865e-05, 9.0776e-06, 7.62318e-06, 6.42972e-06, 5.4432e-06, 4.62262e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.04006e-05, 5.38411e-05, 6.43284e-05, 7.23598e-05, 7.85006e-05, 8.31978e-05, 8.68157e-05, 8.96287e-05, 9.18329e-05, 9.35775e-05, 9.49711e-05, 9.60953e-05, 9.70105e-05, 9.77622e-05, 9.83839e-05, 9.89014e-05, 
			5.79359e-05, 7.14832e-05, 8.21221e-05, 9.03542e-05, 9.67105e-05, 0.000101632, 0.000105468, 0.000108481, 0.00011087, 0.00011278, 0.000114321, 0.000115575, 0.000116604, 0.000117456, 0.000118165, 0.00011876, 
			7.57264e-05, 8.91888e-05, 9.98175e-05, 0.00010811, 0.000114568, 0.000119617, 0.000123586, 0.000126731, 0.000129242, 0.000131269, 0.000132915, 0.000134263, 0.000135377, 0.000136304, 0.00013708, 0.000137736, 
			9.35563e-05, 0.000106872, 0.00011746, 0.000125779, 0.000132299, 0.000137429, 0.000141494, 0.000144735, 0.000147342, 0.000149456, 0.000151184, 0.000152607, 0.000153789, 0.000154777, 0.000155609, 0.000156311, 
			0.000111386, 0.000124624, 0.00013519, 0.000143529, 0.000150101, 0.000155303, 0.000159444, 0.000162761, 0.000165445, 0.000167631, 0.000169426, 0.000170911, 0.00017215, 0.000173189, 0.000174066, 0.000174811
		)
}

CapTable	"metal1_C_TOP_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.45296e-06, 3.30448e-06, 4.04177e-06, 4.65638e-06, 5.141e-06, 5.52905e-06, 5.83678e-06, 6.0782e-06, 6.27123e-06, 6.42546e-06, 6.54993e-06, 6.65162e-06, 6.73362e-06, 6.80217e-06, 6.85879e-06, 6.90642e-06, 
			3.33309e-06, 4.18901e-06, 4.94073e-06, 5.56862e-06, 6.08071e-06, 6.49329e-06, 6.82364e-06, 7.08837e-06, 7.30053e-06, 7.47248e-06, 7.61259e-06, 7.72771e-06, 7.82238e-06, 7.90129e-06, 7.96752e-06, 8.02286e-06, 
			4.22619e-06, 5.06835e-06, 5.82547e-06, 6.46727e-06, 6.99244e-06, 7.41952e-06, 7.76485e-06, 8.04401e-06, 8.27094e-06, 8.45465e-06, 8.60645e-06, 8.7313e-06, 8.83565e-06, 8.92239e-06, 8.99579e-06, 9.05765e-06, 
			5.10406e-06, 5.95032e-06, 6.71117e-06, 7.35895e-06, 7.89494e-06, 8.33238e-06, 8.68881e-06, 8.9791e-06, 9.21595e-06, 9.41011e-06, 9.57042e-06, 9.70381e-06, 9.81484e-06, 9.90888e-06, 9.98759e-06, 1.0056e-05, 
			5.98678e-06, 6.83174e-06, 7.59327e-06, 8.24691e-06, 8.79023e-06, 9.23734e-06, 9.60152e-06, 9.90089e-06, 1.01458e-05, 1.03484e-05, 1.05159e-05, 1.06562e-05, 1.07734e-05, 1.08727e-05, 1.09573e-05, 1.10291e-05
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
			3.96341e-05, 5.28473e-05, 6.31567e-05, 7.10602e-05, 7.70932e-05, 8.1712e-05, 8.52702e-05, 8.80305e-05, 9.01903e-05, 9.18961e-05, 9.32532e-05, 9.43436e-05, 9.5226e-05, 9.59473e-05, 9.65378e-05, 9.70263e-05, 
			5.69752e-05, 7.03257e-05, 8.08089e-05, 8.89206e-05, 9.51839e-05, 0.000100034, 0.000103812, 0.000106775, 0.000109117, 0.000110983, 0.000112486, 0.0001137, 0.000114691, 0.000115505, 0.000116177, 0.000116738, 
			7.46119e-05, 8.78922e-05, 9.83873e-05, 0.000106579, 0.000112957, 0.000117941, 0.000121855, 0.000124949, 0.000127414, 0.000129394, 0.000130996, 0.0001323, 0.000133369, 0.000134254, 0.000134986, 0.000135598, 
			9.22982e-05, 0.000105468, 0.000115943, 0.000124176, 0.000130628, 0.000135699, 0.000139711, 0.000142905, 0.000145461, 0.000147527, 0.000149206, 0.00015058, 0.000151714, 0.00015265, 0.000153431, 0.000154084, 
			0.000110025, 0.000123141, 0.000133613, 0.000141881, 0.000148394, 0.000153542, 0.000157632, 0.000160902, 0.000163533, 0.000165667, 0.00016741, 0.000168839, 0.000170022, 0.000171002, 0.000171823, 0.000172512
		)
}

CapTable	"metal1_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.47507e-06, 4.6935e-06, 5.75031e-06, 6.62217e-06, 7.32523e-06, 7.88197e-06, 8.32147e-06, 8.66878e-06, 8.94437e-06, 9.16438e-06, 9.34162e-06, 9.48575e-06, 9.60273e-06, 9.69742e-06, 9.7769e-06, 9.843e-06, 
			4.72758e-06, 5.95317e-06, 7.03231e-06, 7.93682e-06, 8.67545e-06, 9.26906e-06, 9.7434e-06, 1.01229e-05, 1.04281e-05, 1.06743e-05, 1.08723e-05, 1.10359e-05, 1.11698e-05, 1.12793e-05, 1.13718e-05, 1.1446e-05, 
			5.99152e-06, 7.21756e-06, 8.30805e-06, 9.23076e-06, 9.99019e-06, 1.06065e-05, 1.11035e-05, 1.15052e-05, 1.18308e-05, 1.20948e-05, 1.23092e-05, 1.24865e-05, 1.26333e-05, 1.2753e-05, 1.28543e-05, 1.29379e-05, 
			7.26263e-06, 8.48672e-06, 9.58541e-06, 1.05207e-05, 1.12961e-05, 1.19295e-05, 1.24442e-05, 1.28604e-05, 1.3201e-05, 1.34789e-05, 1.37063e-05, 1.38944e-05, 1.40482e-05, 1.41786e-05, 1.42862e-05, 1.43782e-05, 
			8.53324e-06, 9.75926e-06, 1.08642e-05, 1.181e-05, 1.25977e-05, 1.32452e-05, 1.3773e-05, 1.42022e-05, 1.45545e-05, 1.4844e-05, 1.50803e-05, 1.52771e-05, 1.54399e-05, 1.55778e-05, 1.56912e-05, 1.5786e-05
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
			0.000187402, 0.000109567, 7.95616e-05, 6.2723e-05, 5.15992e-05, 4.35684e-05, 3.74492e-05, 3.26184e-05, 2.871e-05, 2.549e-05, 2.28006e-05, 2.05296e-05, 1.85945e-05, 1.69329e-05, 1.54965e-05, 1.42475e-05, 
			0.000200398, 0.000119318, 8.7341e-05, 6.91978e-05, 5.71426e-05, 4.84174e-05, 4.1761e-05, 3.65026e-05, 3.22456e-05, 2.8736e-05, 2.58022e-05, 2.3322e-05, 2.1206e-05, 1.93863e-05, 1.78108e-05, 1.64383e-05, 
			0.000207358, 0.000124996, 9.20428e-05, 7.31996e-05, 6.06312e-05, 5.15146e-05, 4.45518e-05, 3.90472e-05, 3.45882e-05, 3.091e-05, 2.7833e-05, 2.52296e-05, 2.30066e-05, 2.10928e-05, 1.9434e-05, 1.79872e-05, 
			0.000211138, 0.000128388, 9.49214e-05, 7.56754e-05, 6.28108e-05, 5.34696e-05, 4.6328e-05, 4.06818e-05, 3.61078e-05, 3.23346e-05, 2.91778e-05, 2.65066e-05, 2.4225e-05, 2.22602e-05, 2.05562e-05, 1.90695e-05, 
			0.000213288, 0.000130287, 9.65196e-05, 7.70462e-05, 6.40158e-05, 5.45586e-05, 4.73386e-05, 4.16364e-05, 3.70216e-05, 3.32182e-05, 3.00382e-05, 2.73486e-05, 2.50518e-05, 2.30742e-05, 2.1359e-05, 1.9862e-05
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
			3.16121e-06, 4.06652e-06, 4.85906e-06, 5.55897e-06, 6.19038e-06, 6.75796e-06, 7.26634e-06, 7.72199e-06, 8.12925e-06, 8.49284e-06, 8.81711e-06, 9.10523e-06, 9.36183e-06, 9.59031e-06, 9.79301e-06, 9.97397e-06, 
			3.94432e-06, 4.82925e-06, 5.63512e-06, 6.3691e-06, 7.0362e-06, 7.6401e-06, 8.18528e-06, 8.67647e-06, 9.11693e-06, 9.51168e-06, 9.86451e-06, 1.01801e-05, 1.04615e-05, 1.07123e-05, 1.09366e-05, 1.11349e-05, 
			4.74301e-06, 5.62576e-06, 6.44327e-06, 7.19547e-06, 7.88387e-06, 8.51058e-06, 9.07863e-06, 9.59191e-06, 1.00541e-05, 1.04693e-05, 1.0842e-05, 1.11752e-05, 1.14742e-05, 1.17403e-05, 1.19795e-05, 1.21928e-05, 
			5.56984e-06, 6.44658e-06, 7.2708e-06, 8.03513e-06, 8.7383e-06, 9.38027e-06, 9.96408e-06, 1.04928e-05, 1.09707e-05, 1.14006e-05, 1.17868e-05, 1.21342e-05, 1.24438e-05, 1.27243e-05, 1.29708e-05, 1.31981e-05, 
			6.40558e-06, 7.2847e-06, 8.11393e-06, 8.88666e-06, 9.59982e-06, 1.02538e-05, 1.08494e-05, 1.13905e-05, 1.18794e-05, 1.23215e-05, 1.27185e-05, 1.30767e-05, 1.3398e-05, 1.36838e-05, 1.39455e-05, 1.41715e-05
		)
}

CapTable	"metal1_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000186452, 0.000108287, 7.79576e-05, 6.08112e-05, 4.93982e-05, 4.1099e-05, 3.4733e-05, 2.96782e-05, 2.55682e-05, 2.2169e-05, 1.93219e-05, 1.69136e-05, 1.48604e-05, 1.30986e-05, 1.15785e-05, 1.0261e-05, 
			0.000199258, 0.000117774, 8.54032e-05, 6.6885e-05, 5.44766e-05, 4.54222e-05, 3.84618e-05, 3.29262e-05, 2.84188e-05, 2.46854e-05, 2.15538e-05, 1.89006e-05, 1.66349e-05, 1.46875e-05, 1.30045e-05, 1.15432e-05, 
			0.00020621, 0.000123418, 9.0029e-05, 7.07638e-05, 5.77912e-05, 4.82934e-05, 4.09752e-05, 3.51438e-05, 3.0387e-05, 2.64408e-05, 2.3125e-05, 2.0311e-05, 1.79041e-05, 1.58319e-05, 1.40381e-05, 1.24779e-05, 
			0.000210236, 0.000127084, 9.3167e-05, 7.3463e-05, 6.01466e-05, 5.03712e-05, 4.28182e-05, 3.67884e-05, 3.18614e-05, 2.77674e-05, 2.43216e-05, 2.1393e-05, 1.88842e-05, 1.67208e-05, 1.48454e-05, 1.32117e-05, 
			0.000213072, 0.000129731, 9.55012e-05, 7.5516e-05, 6.19624e-05, 5.19858e-05, 4.4266e-05, 3.8092e-05, 3.30392e-05, 2.88338e-05, 2.52894e-05, 2.22724e-05, 1.96841e-05, 1.74494e-05, 1.55092e-05, 1.38173e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_26MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.97878e-05, 2.51286e-05, 2.97164e-05, 3.37459e-05, 3.73167e-05, 4.04903e-05, 4.33114e-05, 4.58177e-05, 4.80422e-05, 5.00159e-05, 5.17667e-05, 5.33203e-05, 5.46999e-05, 5.59264e-05, 5.70183e-05, 5.79919e-05, 
			2.5069e-05, 3.0245e-05, 3.4878e-05, 3.90302e-05, 4.27495e-05, 4.60734e-05, 4.90386e-05, 5.16794e-05, 5.40287e-05, 5.61177e-05, 5.79746e-05, 5.96262e-05, 6.10962e-05, 6.24062e-05, 6.35753e-05, 6.46206e-05, 
			3.0799e-05, 3.5951e-05, 4.06182e-05, 4.48304e-05, 4.86138e-05, 5.20014e-05, 5.5026e-05, 5.7722e-05, 6.01219e-05, 6.22574e-05, 6.41575e-05, 6.58492e-05, 6.73564e-05, 6.87013e-05, 6.99031e-05, 7.09791e-05, 
			3.7087e-05, 4.23032e-05, 4.70096e-05, 5.12496e-05, 5.50502e-05, 5.84464e-05, 6.1475e-05, 6.41712e-05, 6.65682e-05, 6.87004e-05, 7.05965e-05, 7.22839e-05, 7.37872e-05, 7.51285e-05, 7.63275e-05, 7.74008e-05, 
			4.4211e-05, 4.9542e-05, 5.42694e-05, 5.84798e-05, 6.22292e-05, 6.55584e-05, 6.85134e-05, 7.11346e-05, 7.34594e-05, 7.55228e-05, 7.73548e-05, 7.89844e-05, 8.04352e-05, 8.17288e-05, 8.2885e-05, 8.392e-05
		)
}

CapTable	"metal1_C_TOP_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.32618e-06, 5.57544e-06, 6.67412e-06, 7.65541e-06, 8.53762e-06, 9.33179e-06, 1.00451e-05, 1.06842e-05, 1.12555e-05, 1.17646e-05, 1.22172e-05, 1.26192e-05, 1.29749e-05, 1.32909e-05, 1.35694e-05, 1.38168e-05, 
			5.41972e-06, 6.65133e-06, 7.78016e-06, 8.80972e-06, 9.74728e-06, 1.05974e-05, 1.13658e-05, 1.20572e-05, 1.26773e-05, 1.32319e-05, 1.37271e-05, 1.41663e-05, 1.45584e-05, 1.49061e-05, 1.52142e-05, 1.54874e-05, 
			6.55262e-06, 7.78439e-06, 8.93294e-06, 9.99337e-06, 1.09654e-05, 1.18514e-05, 1.26551e-05, 1.33803e-05, 1.40326e-05, 1.46169e-05, 1.51402e-05, 1.56059e-05, 1.60219e-05, 1.6391e-05, 1.67195e-05, 1.70106e-05, 
			7.72111e-06, 8.95601e-06, 1.01203e-05, 1.12027e-05, 1.21994e-05, 1.31103e-05, 1.39385e-05, 1.46883e-05, 1.53624e-05, 1.59697e-05, 1.65131e-05, 1.69982e-05, 1.74315e-05, 1.78166e-05, 1.81593e-05, 1.8463e-05, 
			8.91485e-06, 1.01575e-05, 1.13349e-05, 1.24339e-05, 1.34491e-05, 1.43791e-05, 1.5226e-05, 1.59943e-05, 1.66866e-05, 1.73107e-05, 1.78694e-05, 1.837e-05, 1.88164e-05, 1.9214e-05, 1.95678e-05, 1.9884e-05
		)
}

CapTable	"metal1_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000186138, 0.00010785, 7.74016e-05, 6.01422e-05, 4.86244e-05, 4.02298e-05, 3.37794e-05, 2.86516e-05, 2.448e-05, 2.10308e-05, 1.81446e-05, 1.57073e-05, 1.36347e-05, 1.18621e-05, 1.03389e-05, 9.0251e-06, 
			0.000198795, 0.000117172, 8.46654e-05, 6.6018e-05, 5.349e-05, 4.4327e-05, 3.72714e-05, 3.16536e-05, 2.70776e-05, 2.32892e-05, 2.01152e-05, 1.74317e-05, 1.51467e-05, 1.319e-05, 1.15066e-05, 1.00528e-05, 
			0.000205578, 0.000122631, 8.90926e-05, 6.96856e-05, 5.65824e-05, 4.69672e-05, 3.95464e-05, 3.36276e-05, 2.8799e-05, 2.47958e-05, 2.14374e-05, 1.85941e-05, 1.61702e-05, 1.40919e-05, 1.2302e-05, 1.07545e-05, 
			0.000209412, 0.000126095, 9.2017e-05, 7.21616e-05, 5.87064e-05, 4.88076e-05, 4.11478e-05, 3.5028e-05, 3.00282e-05, 2.58776e-05, 2.23912e-05, 1.94361e-05, 1.69141e-05, 1.47495e-05, 1.28834e-05, 1.12686e-05, 
			0.000212042, 0.000128525, 9.41242e-05, 7.398e-05, 6.0282e-05, 5.0178e-05, 4.23494e-05, 3.6085e-05, 3.09602e-05, 2.67006e-05, 2.31186e-05, 2.00796e-05, 1.74831e-05, 1.52529e-05, 1.33283e-05, 1.16616e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			1.77304e-05, 2.26815e-05, 2.69703e-05, 3.07746e-05, 3.41677e-05, 3.72017e-05, 3.99137e-05, 4.23319e-05, 4.44848e-05, 4.63981e-05, 4.80962e-05, 4.96031e-05, 5.09391e-05, 5.21233e-05, 5.31743e-05, 5.41059e-05, 
			2.23821e-05, 2.73188e-05, 3.17627e-05, 3.57719e-05, 3.93852e-05, 4.26352e-05, 4.55512e-05, 4.81597e-05, 5.04891e-05, 5.2565e-05, 5.44128e-05, 5.60559e-05, 5.75167e-05, 5.88154e-05, 5.99694e-05, 6.09975e-05, 
			2.7233e-05, 3.21966e-05, 3.67367e-05, 4.08667e-05, 4.46089e-05, 4.7987e-05, 5.10252e-05, 5.3751e-05, 5.61903e-05, 5.8369e-05, 6.03123e-05, 6.2045e-05, 6.35876e-05, 6.49628e-05, 6.61866e-05, 6.72779e-05, 
			3.22552e-05, 3.72456e-05, 4.18472e-05, 4.60529e-05, 4.98741e-05, 5.33325e-05, 5.64517e-05, 5.92558e-05, 6.17689e-05, 6.4019e-05, 6.60296e-05, 6.78248e-05, 6.9429e-05, 7.08569e-05, 7.21355e-05, 7.32709e-05, 
			3.74044e-05, 4.24231e-05, 4.70639e-05, 5.13183e-05, 5.51948e-05, 5.87094e-05, 6.18846e-05, 6.47445e-05, 6.73134e-05, 6.96157e-05, 7.16781e-05, 7.35209e-05, 7.51689e-05, 7.66448e-05, 7.79583e-05, 7.91402e-05
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
			1.69576e-05, 2.17418e-05, 2.59013e-05, 2.95991e-05, 3.29092e-05, 3.58744e-05, 3.85264e-05, 4.08919e-05, 4.29964e-05, 4.48644e-05, 4.65194e-05, 4.79832e-05, 4.92771e-05, 5.04184e-05, 5.14267e-05, 5.2315e-05, 
			2.14945e-05, 2.62887e-05, 3.06174e-05, 3.45353e-05, 3.80737e-05, 4.1263e-05, 4.41248e-05, 4.66854e-05, 4.89695e-05, 5.10017e-05, 5.28054e-05, 5.4406e-05, 5.58213e-05, 5.70735e-05, 5.81807e-05, 5.91589e-05, 
			2.62404e-05, 3.10878e-05, 3.55315e-05, 3.9584e-05, 4.32632e-05, 4.65874e-05, 4.95785e-05, 5.22611e-05, 5.46582e-05, 5.67952e-05, 5.86949e-05, 6.0383e-05, 6.18784e-05, 6.32042e-05, 6.43769e-05, 6.54151e-05, 
			3.11869e-05, 3.60758e-05, 4.05967e-05, 4.47377e-05, 4.85072e-05, 5.19211e-05, 5.49987e-05, 5.77637e-05, 6.02384e-05, 6.24467e-05, 6.44137e-05, 6.61627e-05, 6.77154e-05, 6.90929e-05, 7.03133e-05, 7.13944e-05, 
			3.62732e-05, 4.12107e-05, 4.57859e-05, 4.99891e-05, 5.38219e-05, 5.72999e-05, 6.04406e-05, 6.32647e-05, 6.57962e-05, 6.80577e-05, 7.0076e-05, 7.18704e-05, 7.34665e-05, 7.48831e-05, 7.61409e-05, 7.72534e-05
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
			2.6601e-05, 3.394e-05, 4.03408e-05, 4.59564e-05, 5.08926e-05, 5.523e-05, 5.90404e-05, 6.23851e-05, 6.53206e-05, 6.78977e-05, 7.01612e-05, 7.21511e-05, 7.39027e-05, 7.54467e-05, 7.68099e-05, 7.80154e-05, 
			3.5461e-05, 4.27526e-05, 4.92976e-05, 5.51248e-05, 6.02976e-05, 6.48748e-05, 6.89202e-05, 7.2491e-05, 7.56408e-05, 7.84198e-05, 8.08722e-05, 8.30388e-05, 8.49551e-05, 8.66509e-05, 8.81543e-05, 8.94897e-05, 
			4.4631e-05, 5.18932e-05, 5.84822e-05, 6.43956e-05, 6.9673e-05, 7.43702e-05, 7.85404e-05, 8.22382e-05, 8.55142e-05, 8.84156e-05, 9.09862e-05, 9.3265e-05, 9.52876e-05, 9.70848e-05, 9.86825e-05, 0.000100106, 
			5.3984e-05, 6.1216e-05, 6.78092e-05, 7.3758e-05, 7.90932e-05, 8.38616e-05, 8.81102e-05, 9.18904e-05, 9.5252e-05, 9.8239e-05, 0.000100895, 0.000103256, 0.000105357, 0.00010723, 0.000108899, 0.000110391, 
			6.3404e-05, 7.05718e-05, 7.71436e-05, 8.30964e-05, 8.84548e-05, 9.32594e-05, 9.75522e-05, 0.000101383, 0.000104798, 0.000107843, 0.000110556, 0.000112974, 0.000115132, 0.00011706, 0.000118782, 0.000120324
		)
}

CapTable	"poly_C_LATERAL_17MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217368, 0.000124734, 8.90832e-05, 6.90426e-05, 5.58054e-05, 4.6267e-05, 3.90214e-05, 3.3323e-05, 2.8731e-05, 2.49636e-05, 2.18302e-05, 1.91954e-05, 1.69599e-05, 1.50489e-05, 1.34047e-05, 1.19822e-05, 
			0.000231054, 0.000135239, 9.75194e-05, 7.60892e-05, 6.18304e-05, 5.15112e-05, 4.36448e-05, 3.7438e-05, 3.24202e-05, 2.82902e-05, 2.48438e-05, 2.19362e-05, 1.94609e-05, 1.73381e-05, 1.55057e-05, 1.39153e-05, 
			0.000238108, 0.000141322, 0.000102714, 8.05954e-05, 6.582e-05, 5.50768e-05, 4.68576e-05, 4.03518e-05, 3.50758e-05, 3.07204e-05, 2.70748e-05, 2.399e-05, 2.13564e-05, 1.90912e-05, 1.71305e-05, 1.5424e-05, 
			0.000242722, 0.000145511, 0.00010644, 8.3929e-05, 6.88258e-05, 5.78074e-05, 4.93558e-05, 4.26466e-05, 3.7191e-05, 3.2675e-05, 2.88854e-05, 2.56704e-05, 2.29188e-05, 2.05464e-05, 1.84878e-05, 1.66921e-05, 
			0.000244722, 0.000148117, 0.000108998, 8.63446e-05, 7.10792e-05, 5.99106e-05, 5.13238e-05, 4.44904e-05, 3.89156e-05, 3.429e-05, 3.03996e-05, 2.7092e-05, 2.42548e-05, 2.18034e-05, 1.9672e-05, 1.78089e-05
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
			2.50089e-05, 3.20662e-05, 3.82431e-05, 4.36807e-05, 4.8467e-05, 5.26798e-05, 5.63763e-05, 5.96214e-05, 6.24586e-05, 6.49426e-05, 6.71142e-05, 6.90107e-05, 7.06719e-05, 7.21243e-05, 7.33979e-05, 7.45142e-05, 
			3.3402e-05, 4.04281e-05, 4.67505e-05, 5.23932e-05, 5.74059e-05, 6.18491e-05, 6.57711e-05, 6.92281e-05, 7.22707e-05, 7.49436e-05, 7.72935e-05, 7.93565e-05, 8.11711e-05, 8.27667e-05, 8.41716e-05, 8.54092e-05, 
			4.21169e-05, 4.91248e-05, 5.54942e-05, 6.12222e-05, 6.63415e-05, 7.08955e-05, 7.49376e-05, 7.85128e-05, 8.16739e-05, 8.44625e-05, 8.69227e-05, 8.90919e-05, 9.10068e-05, 9.26969e-05, 9.4191e-05, 9.55128e-05, 
			5.1037e-05, 5.80266e-05, 6.4415e-05, 7.01825e-05, 7.53627e-05, 7.99879e-05, 8.41073e-05, 8.77654e-05, 9.10074e-05, 9.38787e-05, 9.64202e-05, 9.86681e-05, 0.000100659, 0.000102421, 0.000103983, 0.000105369, 
			5.99901e-05, 6.69197e-05, 7.32828e-05, 7.90523e-05, 8.42487e-05, 8.89074e-05, 9.30634e-05, 9.67662e-05, 0.000100058, 0.000102982, 0.000105577, 0.000107881, 0.000109924, 0.00011174, 0.000113353, 0.000114788
		)
}

CapTable	"poly_C_TOP_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.08507e-06, 2.66184e-06, 3.17395e-06, 3.63012e-06, 4.04056e-06, 4.40376e-06, 4.72821e-06, 5.00975e-06, 5.26118e-06, 5.47973e-06, 5.67163e-06, 5.84205e-06, 5.98934e-06, 6.12015e-06, 6.23382e-06, 6.33448e-06, 
			2.72802e-06, 3.29549e-06, 3.82073e-06, 4.29799e-06, 4.73167e-06, 5.11735e-06, 5.46174e-06, 5.76731e-06, 6.03694e-06, 6.27698e-06, 6.48707e-06, 6.67354e-06, 6.83694e-06, 6.98162e-06, 7.10868e-06, 7.22116e-06, 
			3.3861e-06, 3.953e-06, 4.48637e-06, 4.97544e-06, 5.41673e-06, 5.81794e-06, 6.17463e-06, 6.4942e-06, 6.77692e-06, 7.02866e-06, 7.2511e-06, 7.44825e-06, 7.62235e-06, 7.77649e-06, 7.91268e-06, 8.03324e-06, 
			4.05405e-06, 4.6274e-06, 5.16219e-06, 5.65931e-06, 6.10927e-06, 6.51887e-06, 6.88548e-06, 7.21365e-06, 7.50665e-06, 7.76688e-06, 7.99837e-06, 8.2035e-06, 8.38572e-06, 8.54685e-06, 8.69024e-06, 8.81702e-06, 
			4.73089e-06, 5.30093e-06, 5.83982e-06, 6.33868e-06, 6.79512e-06, 7.2082e-06, 7.58144e-06, 7.91519e-06, 8.21464e-06, 8.48097e-06, 8.71874e-06, 8.92957e-06, 9.11778e-06, 9.28424e-06, 9.43299e-06, 9.5649e-06
		)
}

CapTable	"poly_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000216958, 0.000124114, 8.8269e-05, 6.80512e-05, 5.46564e-05, 4.49824e-05, 3.76244e-05, 3.1836e-05, 2.71756e-05, 2.33594e-05, 2.01944e-05, 1.7543e-05, 1.53038e-05, 1.33997e-05, 1.17714e-05, 1.03718e-05, 
			0.000230504, 0.000134478, 9.65618e-05, 7.49528e-05, 6.05364e-05, 5.00826e-05, 4.21052e-05, 3.58106e-05, 3.07264e-05, 2.65494e-05, 2.30734e-05, 2.0151e-05, 1.76739e-05, 1.55597e-05, 1.37447e-05, 1.21786e-05, 
			0.000237404, 0.000140409, 0.000101606, 7.93124e-05, 6.43838e-05, 5.35106e-05, 4.51848e-05, 3.8595e-05, 3.32562e-05, 2.88568e-05, 2.51842e-05, 2.20868e-05, 1.94528e-05, 1.71976e-05, 1.52553e-05, 1.35739e-05, 
			0.000241852, 0.000144431, 0.000105167, 8.24832e-05, 6.723e-05, 5.60852e-05, 4.75302e-05, 4.074e-05, 3.5224e-05, 3.06664e-05, 2.68514e-05, 2.36254e-05, 2.08748e-05, 1.85134e-05, 1.64742e-05, 1.47043e-05, 
			0.000243718, 0.000146916, 0.000107615, 8.4799e-05, 6.93922e-05, 5.81044e-05, 4.94202e-05, 4.25106e-05, 3.68786e-05, 3.22136e-05, 2.8299e-05, 2.49806e-05, 2.21442e-05, 1.97028e-05, 1.75893e-05, 1.57502e-05
		)
}

CapTable	"poly_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.42414e-05, 3.10002e-05, 3.69083e-05, 4.20925e-05, 4.66465e-05, 5.06427e-05, 5.41455e-05, 5.72117e-05, 5.98942e-05, 6.2239e-05, 6.42899e-05, 6.60849e-05, 6.76582e-05, 6.90376e-05, 7.02504e-05, 7.1318e-05, 
			3.24871e-05, 3.92428e-05, 4.53091e-05, 5.0707e-05, 5.54913e-05, 5.9719e-05, 6.34458e-05, 6.67244e-05, 6.96077e-05, 7.21424e-05, 7.43683e-05, 7.63276e-05, 7.80522e-05, 7.9571e-05, 8.09118e-05, 8.20976e-05, 
			4.10618e-05, 4.78161e-05, 5.39407e-05, 5.9433e-05, 6.43261e-05, 6.86707e-05, 7.25186e-05, 7.59207e-05, 7.89227e-05, 8.1572e-05, 8.39109e-05, 8.59748e-05, 8.7798e-05, 8.94121e-05, 9.084e-05, 9.21078e-05, 
			4.9838e-05, 5.65852e-05, 6.27288e-05, 6.82628e-05, 7.32175e-05, 7.76365e-05, 8.15617e-05, 8.50435e-05, 8.81293e-05, 9.0861e-05, 9.32796e-05, 9.54204e-05, 9.73183e-05, 9.90022e-05, 0.000100498, 0.000101827, 
			5.86911e-05, 6.5393e-05, 7.15312e-05, 7.70802e-05, 8.2066e-05, 8.65257e-05, 9.05002e-05, 9.40351e-05, 9.71781e-05, 9.99673e-05, 0.000102445, 0.000104643, 0.000106597, 0.000108334, 0.000109881, 0.00011126
		)
}

CapTable	"poly_C_TOP_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.77259e-06, 3.52623e-06, 4.19112e-06, 4.78651e-06, 5.31689e-06, 5.78811e-06, 6.20512e-06, 6.57281e-06, 6.89556e-06, 7.18043e-06, 7.43041e-06, 7.64993e-06, 7.84234e-06, 8.01237e-06, 8.16142e-06, 8.29267e-06, 
			3.63891e-06, 4.38205e-06, 5.06435e-06, 5.68518e-06, 6.24452e-06, 6.74437e-06, 7.18963e-06, 7.5856e-06, 7.93585e-06, 8.2444e-06, 8.51834e-06, 8.75963e-06, 8.97209e-06, 9.16064e-06, 9.32758e-06, 9.47455e-06, 
			4.52715e-06, 5.2691e-06, 5.95987e-06, 6.59225e-06, 7.16626e-06, 7.68345e-06, 8.14579e-06, 8.55695e-06, 8.92406e-06, 9.24921e-06, 9.53706e-06, 9.7928e-06, 1.00198e-05, 1.02202e-05, 1.0399e-05, 1.05576e-05, 
			5.43104e-06, 6.17082e-06, 6.86656e-06, 7.50782e-06, 8.09112e-06, 8.61728e-06, 9.09133e-06, 9.51472e-06, 9.89213e-06, 1.02286e-05, 1.05276e-05, 1.0794e-05, 1.10311e-05, 1.12416e-05, 1.14293e-05, 1.15967e-05, 
			6.34594e-06, 7.0856e-06, 7.78156e-06, 8.42736e-06, 9.01724e-06, 9.55089e-06, 1.00312e-05, 1.04625e-05, 1.08481e-05, 1.11929e-05, 1.15e-05, 1.17745e-05, 1.20188e-05, 1.22374e-05, 1.24318e-05, 1.26068e-05
		)
}

CapTable	"poly_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217038, 0.000124288, 8.85276e-05, 6.8391e-05, 5.50736e-05, 4.54722e-05, 3.81802e-05, 3.24506e-05, 2.78412e-05, 2.40678e-05, 2.09378e-05, 1.83137e-05, 1.60947e-05, 1.42045e-05, 1.25841e-05, 1.11872e-05, 
			0.000230536, 0.000134589, 9.67496e-05, 7.52158e-05, 6.08722e-05, 5.04866e-05, 4.25716e-05, 3.6332e-05, 3.12954e-05, 2.71582e-05, 2.37144e-05, 2.08168e-05, 1.83577e-05, 1.62553e-05, 1.44466e-05, 1.28819e-05, 
			0.000237384, 0.000140459, 0.000101727, 7.95038e-05, 6.46426e-05, 5.38328e-05, 4.55646e-05, 3.90254e-05, 3.37302e-05, 2.93668e-05, 2.5723e-05, 2.26474e-05, 2.00292e-05, 1.77837e-05, 1.5846e-05, 1.41646e-05, 
			0.000241782, 0.000144432, 0.000105238, 8.26224e-05, 6.74344e-05, 5.63502e-05, 4.785e-05, 4.11078e-05, 3.56326e-05, 3.11084e-05, 2.73198e-05, 2.41136e-05, 2.13766e-05, 1.90232e-05, 1.6987e-05, 1.5216e-05, 
			0.000243566, 0.000146823, 0.000107581, 8.48224e-05, 6.94708e-05, 5.82344e-05, 4.95966e-05, 4.27274e-05, 3.71298e-05, 3.24928e-05, 2.86004e-05, 2.52982e-05, 2.24728e-05, 2.00378e-05, 1.79263e-05, 1.60855e-05
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

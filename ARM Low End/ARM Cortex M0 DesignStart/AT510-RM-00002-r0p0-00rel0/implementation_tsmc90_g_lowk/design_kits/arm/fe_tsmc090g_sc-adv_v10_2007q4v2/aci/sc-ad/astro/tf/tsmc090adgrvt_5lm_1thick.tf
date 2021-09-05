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
   $Id: tsmc090_5lm_1thick.tf,v 1.1 2006/05/11 06:33:05 Exp $
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

PRRule		{
		rowSpacingTopTop		= 0
		rowSpacingTopBot		= 0.59
		rowSpacingBotBot		= 0
		abuttableTopTop			= 1
		abuttableTopBot			= 0
		abuttableBotBot			= 1
}

CapTable	"metal5_C_LATERAL_21MAX" {
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

CapTable	"metal5_C_BOTTOM_GPMAX" {
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

CapTable	"metal5_C_LATERALMAX" {
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

CapTable	"metal5_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal5_C_LATERAL_31MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal5_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000243222, 0.000144176, 0.000106965, 8.63276e-05, 7.27012e-05, 6.27632e-05, 5.50422e-05, 4.87826e-05, 4.3555e-05, 3.90954e-05, 3.52326e-05, 3.18488e-05, 2.88596e-05, 2.6202e-05, 2.3828e-05, 2.16992e-05, 
			0.00026088, 0.0001575, 0.000117609, 9.51472e-05, 8.01632e-05, 6.91718e-05, 6.06064e-05, 5.3655e-05, 4.78512e-05, 4.29064e-05, 3.86308e-05, 3.48924e-05, 3.15964e-05, 2.8672e-05, 2.60638e-05, 2.37288e-05, 
			0.000271256, 0.000165905, 0.000124533, 0.000100956, 8.51146e-05, 7.34358e-05, 6.43122e-05, 5.69008e-05, 5.07138e-05, 4.54464e-05, 4.0897e-05, 3.69242e-05, 3.34262e-05, 3.03262e-05, 2.75646e-05, 2.50944e-05, 
			0.000277752, 0.000171586, 0.000129321, 0.000105012, 8.85834e-05, 7.6435e-05, 6.69206e-05, 5.9187e-05, 5.27318e-05, 4.72392e-05, 4.24992e-05, 3.83636e-05, 3.47256e-05, 3.15038e-05, 2.8636e-05, 2.60722e-05, 
			0.000282584, 0.000175765, 0.000132867, 0.000108023, 9.11604e-05, 7.86564e-05, 6.88554e-05, 6.08858e-05, 5.42348e-05, 4.85784e-05, 4.36998e-05, 3.94462e-05, 3.57066e-05, 3.23966e-05, 2.94516e-05, 2.682e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_41MAX" {
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

CapTable	"metal5_C_LATERAL_41MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.5739e-05, 1.92955e-05, 2.22448e-05, 2.48354e-05, 2.7201e-05, 2.94126e-05, 3.15109e-05, 3.35171e-05, 3.54422e-05, 3.72904e-05, 3.90628e-05, 4.07594e-05, 4.23792e-05, 4.3922e-05, 4.53874e-05, 4.67757e-05, 
			1.8252e-05, 2.15372e-05, 2.4465e-05, 2.7147e-05, 2.96588e-05, 3.2042e-05, 3.43221e-05, 3.65104e-05, 3.8613e-05, 4.06312e-05, 4.25645e-05, 4.44124e-05, 4.61741e-05, 4.78492e-05, 4.9438e-05, 5.09415e-05, 
			2.0786e-05, 2.39728e-05, 2.69212e-05, 2.96894e-05, 3.23192e-05, 3.48356e-05, 3.72508e-05, 3.95728e-05, 4.18029e-05, 4.39408e-05, 4.59862e-05, 4.79381e-05, 4.97962e-05, 5.15605e-05, 5.32322e-05, 5.48124e-05, 
			2.3431e-05, 2.65928e-05, 2.95888e-05, 3.2442e-05, 3.5172e-05, 3.7794e-05, 4.03154e-05, 4.27382e-05, 4.50632e-05, 4.72882e-05, 4.94141e-05, 5.14401e-05, 5.33662e-05, 5.51933e-05, 5.69226e-05, 5.85564e-05, 
			2.6198e-05, 2.939e-05, 3.24442e-05, 3.53734e-05, 3.81886e-05, 4.08962e-05, 4.34992e-05, 4.59986e-05, 4.8393e-05, 5.06836e-05, 5.28685e-05, 5.49488e-05, 5.69247e-05, 5.87975e-05, 6.05693e-05, 6.22421e-05
		)
}

CapTable	"metal5_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.00024413, 0.000145349, 0.000108352, 8.78876e-05, 7.4396e-05, 6.45596e-05, 5.69112e-05, 5.06992e-05, 4.5497e-05, 4.10446e-05, 3.7173e-05, 3.37666e-05, 3.07434e-05, 2.8042e-05, 2.56158e-05, 2.3428e-05, 
			0.000262068, 0.000158933, 0.000119238, 9.6928e-05, 8.20592e-05, 7.1151e-05, 6.2642e-05, 5.57242e-05, 4.99344e-05, 4.49868e-05, 4.06942e-05, 3.69268e-05, 3.35916e-05, 3.0619e-05, 2.79556e-05, 2.55588e-05, 
			0.000272704, 0.000167567, 0.000126363, 0.000102913, 8.71638e-05, 7.55494e-05, 6.64662e-05, 5.90752e-05, 5.28914e-05, 4.7613e-05, 4.30398e-05, 3.90328e-05, 3.54914e-05, 3.23402e-05, 2.95206e-05, 2.6987e-05, 
			0.000279422, 0.000173436, 0.000131309, 0.000107102, 9.0745e-05, 7.8644e-05, 6.91566e-05, 6.14328e-05, 5.49728e-05, 4.9463e-05, 4.46946e-05, 4.05216e-05, 3.68378e-05, 3.35634e-05, 3.06368e-05, 2.8009e-05, 
			0.000284438, 0.000177768, 0.00013498, 0.000110216, 9.34074e-05, 8.09368e-05, 7.11518e-05, 6.31834e-05, 5.6521e-05, 5.08424e-05, 4.59318e-05, 4.1638e-05, 3.78506e-05, 3.44868e-05, 3.1482e-05, 2.87858e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.6892e-05, 2.08796e-05, 2.4225e-05, 2.71804e-05, 2.98778e-05, 3.23892e-05, 3.47555e-05, 3.69988e-05, 3.91304e-05, 4.11569e-05, 4.30806e-05, 4.49029e-05, 4.66251e-05, 4.82487e-05, 4.97749e-05, 5.12061e-05, 
			1.9829e-05, 2.35684e-05, 2.69176e-05, 2.99878e-05, 3.28518e-05, 3.55532e-05, 3.81175e-05, 4.05578e-05, 4.2881e-05, 4.509e-05, 4.7186e-05, 4.91705e-05, 5.10444e-05, 5.28091e-05, 5.44672e-05, 5.60211e-05, 
			2.2821e-05, 2.6475e-05, 2.98588e-05, 3.30268e-05, 3.60194e-05, 3.88632e-05, 4.15728e-05, 4.41552e-05, 4.66131e-05, 4.89494e-05, 5.11643e-05, 5.32593e-05, 5.52356e-05, 5.70952e-05, 5.8841e-05, 6.04764e-05, 
			2.5938e-05, 2.9575e-05, 3.30128e-05, 3.62706e-05, 3.93696e-05, 4.2326e-05, 4.51464e-05, 4.7834e-05, 5.03922e-05, 5.28218e-05, 5.51219e-05, 5.72958e-05, 5.93446e-05, 6.12715e-05, 6.30791e-05, 6.47717e-05, 
			2.9189e-05, 3.2861e-05, 3.63604e-05, 3.96992e-05, 4.28866e-05, 4.59316e-05, 4.88376e-05, 5.16072e-05, 5.42392e-05, 5.67366e-05, 5.91002e-05, 6.13318e-05, 6.3434e-05, 6.54096e-05, 6.72623e-05, 6.89964e-05
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
			3.58912e-05, 4.75134e-05, 5.67182e-05, 6.38828e-05, 6.94634e-05, 7.38544e-05, 7.73576e-05, 8.01926e-05, 8.25193e-05, 8.44535e-05, 8.60806e-05, 8.74641e-05, 8.86517e-05, 8.96799e-05, 9.05771e-05, 9.13651e-05, 
			5.00518e-05, 6.15932e-05, 7.08598e-05, 7.8175e-05, 8.39674e-05, 8.85984e-05, 9.23488e-05, 9.54292e-05, 9.799e-05, 0.000100147, 0.000101982, 0.000103559, 0.000104925, 0.000106119, 0.000107168, 0.000108097, 
			6.4293e-05, 7.5702e-05, 8.49474e-05, 9.23352e-05, 9.82466e-05, 0.000103032, 0.000106954, 0.000110209, 0.000112944, 0.000115269, 0.000117265, 0.000118995, 0.000120504, 0.000121832, 0.000123006, 0.000124051, 
			7.85432e-05, 8.98734e-05, 9.9107e-05, 0.000106546, 0.000112558, 0.000117466, 0.000121524, 0.000124924, 0.000127804, 0.000130272, 0.000132405, 0.000134266, 0.000135899, 0.000137344, 0.000138627, 0.000139774, 
			9.28269e-05, 0.000104066, 0.000113292, 0.000120778, 0.000126875, 0.000131888, 0.000136065, 0.00013959, 0.000142599, 0.000145191, 0.000147447, 0.000149423, 0.000151168, 0.000152717, 0.000154098, 0.000155337
		)
}

CapTable	"metal4_C_LATERAL_12MAX" {
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

CapTable	"metal4_C_LATERAL_22MAX" {
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
			1.73224e-05, 2.17112e-05, 2.53662e-05, 2.84968e-05, 3.12218e-05, 3.36173e-05, 3.57365e-05, 3.76202e-05, 3.93015e-05, 4.08072e-05, 4.21609e-05, 4.33825e-05, 4.44891e-05, 4.54954e-05, 4.6414e-05, 4.72559e-05, 
			2.10788e-05, 2.52102e-05, 2.88192e-05, 3.19902e-05, 3.47925e-05, 3.72803e-05, 3.94969e-05, 4.14789e-05, 4.32571e-05, 4.4858e-05, 4.63047e-05, 4.76166e-05, 4.88113e-05, 4.99028e-05, 5.09045e-05, 5.18269e-05, 
			2.4748e-05, 2.87272e-05, 3.22814e-05, 3.54466e-05, 3.82672e-05, 4.0789e-05, 4.30482e-05, 4.50781e-05, 4.69082e-05, 4.85635e-05, 5.00663e-05, 5.14354e-05, 5.26876e-05, 5.38373e-05, 5.48966e-05, 5.58768e-05, 
			2.8373e-05, 3.22469e-05, 3.57392e-05, 3.88758e-05, 4.169e-05, 4.42166e-05, 4.64922e-05, 4.85467e-05, 5.04068e-05, 5.20969e-05, 5.36376e-05, 5.50475e-05, 5.63424e-05, 5.75361e-05, 5.86408e-05, 5.96668e-05, 
			3.1975e-05, 3.57376e-05, 3.91632e-05, 4.22584e-05, 4.50502e-05, 4.75688e-05, 4.98464e-05, 5.19126e-05, 5.37908e-05, 5.55039e-05, 5.70723e-05, 5.85133e-05, 5.98418e-05, 6.10715e-05, 6.22138e-05, 6.32783e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_32MAX" {
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

CapTable	"metal4_C_LATERAL_32MAX" {
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
			1.32798e-05, 1.61986e-05, 1.85226e-05, 2.04705e-05, 2.21617e-05, 2.3667e-05, 2.50298e-05, 2.62783e-05, 2.74318e-05, 2.85033e-05, 2.95034e-05, 3.04395e-05, 3.13181e-05, 3.21439e-05, 3.29216e-05, 3.36551e-05, 
			1.5402e-05, 1.79928e-05, 2.01998e-05, 2.21263e-05, 2.38442e-05, 2.54004e-05, 2.68264e-05, 2.8144e-05, 2.93689e-05, 3.05123e-05, 3.15833e-05, 3.2589e-05, 3.35351e-05, 3.44268e-05, 3.52681e-05, 3.60628e-05, 
			1.7352e-05, 1.97564e-05, 2.18826e-05, 2.37852e-05, 2.55108e-05, 2.70932e-05, 2.85555e-05, 2.99149e-05, 3.11844e-05, 3.23737e-05, 3.3491e-05, 3.45425e-05, 3.55339e-05, 3.64699e-05, 3.73545e-05, 3.81914e-05, 
			1.922e-05, 2.15081e-05, 2.35744e-05, 2.54558e-05, 2.7183e-05, 2.87797e-05, 3.02643e-05, 3.16509e-05, 3.29505e-05, 3.41716e-05, 3.53212e-05, 3.64052e-05, 3.74292e-05, 3.83972e-05, 3.93138e-05, 4.01821e-05, 
			2.1055e-05, 2.32522e-05, 2.5274e-05, 2.71354e-05, 2.88594e-05, 3.04632e-05, 3.19608e-05, 3.33653e-05, 3.46851e-05, 3.5928e-05, 3.71007e-05, 3.82084e-05, 3.92561e-05, 4.02483e-05, 4.11887e-05, 4.2081e-05
		)
}

CapTable	"metal4_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000185717, 0.000111598, 8.41134e-05, 6.91132e-05, 5.93772e-05, 5.23978e-05, 4.70656e-05, 4.28096e-05, 3.93036e-05, 3.63468e-05, 3.38072e-05, 3.15946e-05, 2.96446e-05, 2.791e-05, 2.63546e-05, 2.49506e-05, 
			0.000200896, 0.000123624, 9.41502e-05, 7.7797e-05, 6.7051e-05, 5.92898e-05, 5.33312e-05, 4.85602e-05, 4.4622e-05, 4.12964e-05, 3.8438e-05, 3.59466e-05, 3.37504e-05, 3.17962e-05, 3.0044e-05, 2.84624e-05, 
			0.000210532, 0.000131855, 0.000101284, 8.40958e-05, 7.27178e-05, 6.4443e-05, 5.80632e-05, 5.29396e-05, 4.87014e-05, 4.5117e-05, 4.20326e-05, 3.9342e-05, 3.69686e-05, 3.48556e-05, 3.296e-05, 3.12482e-05, 
			0.000217568, 0.000138098, 0.000106834, 8.90852e-05, 7.7251e-05, 6.86076e-05, 6.19194e-05, 5.65338e-05, 5.207e-05, 4.8289e-05, 4.50318e-05, 4.21878e-05, 3.9677e-05, 3.74404e-05, 3.54322e-05, 3.36178e-05, 
			0.000222624, 0.000142959, 0.00011127, 9.31406e-05, 8.09826e-05, 7.20708e-05, 6.5153e-05, 5.95674e-05, 5.49298e-05, 5.09962e-05, 4.76034e-05, 4.46382e-05, 4.20184e-05, 3.96826e-05, 3.75842e-05, 3.56866e-05
		)
}

CapTable	"metal4_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000186427, 0.000112502, 8.51832e-05, 7.03298e-05, 6.0724e-05, 5.386e-05, 4.86296e-05, 4.44632e-05, 4.10352e-05, 3.81454e-05, 3.56632e-05, 3.3499e-05, 3.15894e-05, 2.9888e-05, 2.83594e-05, 2.69766e-05, 
			0.000201822, 0.000124739, 9.54348e-05, 7.92324e-05, 6.86206e-05, 6.0978e-05, 5.51238e-05, 5.0444e-05, 4.65846e-05, 4.33264e-05, 4.05254e-05, 3.8082e-05, 3.59256e-05, 3.4004e-05, 3.2278e-05, 3.0717e-05, 
			0.00021167, 0.00013318, 0.000102779, 8.57408e-05, 7.4496e-05, 6.6339e-05, 6.00618e-05, 5.50272e-05, 5.08654e-05, 4.7346e-05, 4.43164e-05, 4.16714e-05, 3.93356e-05, 3.72534e-05, 3.53824e-05, 3.369e-05, 
			0.000218918, 0.000139632, 0.000108533, 9.09316e-05, 7.92272e-05, 7.06974e-05, 6.41078e-05, 5.88068e-05, 5.44154e-05, 5.06956e-05, 4.74896e-05, 4.4688e-05, 4.2212e-05, 4.00036e-05, 3.80184e-05, 3.6222e-05, 
			0.000224184, 0.000144696, 0.000113167, 9.5179e-05, 8.3145e-05, 7.43408e-05, 6.75158e-05, 6.20096e-05, 5.74392e-05, 5.35622e-05, 5.02166e-05, 4.72904e-05, 4.47026e-05, 4.2393e-05, 4.03158e-05, 3.84352e-05
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
			1.23916e-05, 1.50253e-05, 1.70928e-05, 1.88063e-05, 2.02814e-05, 2.15865e-05, 2.27639e-05, 2.38405e-05, 2.4835e-05, 2.57604e-05, 2.66259e-05, 2.74388e-05, 2.82045e-05, 2.89275e-05, 2.96116e-05, 3.026e-05, 
			1.4227e-05, 1.65316e-05, 1.84692e-05, 2.01454e-05, 2.16295e-05, 2.29679e-05, 2.41912e-05, 2.53205e-05, 2.63712e-05, 2.7354e-05, 2.82769e-05, 2.91466e-05, 2.99682e-05, 3.07459e-05, 3.1483e-05, 3.21827e-05, 
			1.5886e-05, 1.79958e-05, 1.98422e-05, 2.14822e-05, 2.29617e-05, 2.43139e-05, 2.5562e-05, 2.67224e-05, 2.78076e-05, 2.88267e-05, 2.97871e-05, 3.06944e-05, 3.15533e-05, 3.23676e-05, 3.31408e-05, 3.38756e-05, 
			1.745e-05, 1.94351e-05, 2.1213e-05, 2.28234e-05, 2.42948e-05, 2.56528e-05, 2.6915e-05, 2.80952e-05, 2.92034e-05, 3.02476e-05, 3.1234e-05, 3.21679e-05, 3.30536e-05, 3.38945e-05, 3.46939e-05, 3.54545e-05, 
			1.8968e-05, 2.0857e-05, 2.25838e-05, 2.4167e-05, 2.5629e-05, 2.69882e-05, 2.82581e-05, 2.94507e-05, 3.05745e-05, 3.16358e-05, 3.26408e-05, 3.35938e-05, 3.44988e-05, 3.53591e-05, 3.61778e-05, 3.69577e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal3_C_LATERAL_13MAX" {
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
			1.572e-05, 2.00591e-05, 2.37638e-05, 2.69884e-05, 2.98193e-05, 3.23133e-05, 3.45139e-05, 3.64573e-05, 3.8175e-05, 3.96953e-05, 4.10428e-05, 4.22399e-05, 4.33063e-05, 4.42588e-05, 4.51122e-05, 4.588e-05, 
			1.95708e-05, 2.37156e-05, 2.73908e-05, 3.06518e-05, 3.35459e-05, 3.61132e-05, 3.83898e-05, 4.04093e-05, 4.22014e-05, 4.3794e-05, 4.52117e-05, 4.64765e-05, 4.76078e-05, 4.86229e-05, 4.95366e-05, 5.03622e-05, 
			2.3393e-05, 2.74126e-05, 3.10372e-05, 3.4284e-05, 3.71825e-05, 3.97666e-05, 4.20677e-05, 4.41167e-05, 4.5942e-05, 4.75703e-05, 4.90253e-05, 5.03284e-05, 5.14988e-05, 5.25534e-05, 5.35067e-05, 5.43719e-05, 
			2.7183e-05, 3.11074e-05, 3.46678e-05, 3.78758e-05, 4.0754e-05, 4.3329e-05, 4.56304e-05, 4.7687e-05, 4.95258e-05, 5.11719e-05, 5.26483e-05, 5.39759e-05, 5.51728e-05, 5.62554e-05, 5.72381e-05, 5.81334e-05, 
			3.094e-05, 3.47582e-05, 3.82462e-05, 4.14038e-05, 4.42462e-05, 4.67982e-05, 4.90871e-05, 5.11398e-05, 5.29813e-05, 5.46355e-05, 5.61247e-05, 5.74682e-05, 5.86841e-05, 5.97879e-05, 6.07937e-05, 6.17133e-05
		)
}

CapTable	"metal3_C_LATERAL_23MAX" {
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

CapTable	"metal3_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00018136, 0.000106044, 7.80762e-05, 6.28536e-05, 5.30322e-05, 4.60546e-05, 4.07852e-05, 3.6636e-05, 3.32684e-05, 3.0472e-05, 2.81078e-05, 2.60794e-05, 2.43178e-05, 2.27722e-05, 2.14036e-05, 2.01824e-05, 
			0.000193203, 0.000115341, 8.57838e-05, 6.9507e-05, 5.89134e-05, 5.13494e-05, 4.56174e-05, 4.1092e-05, 3.7411e-05, 3.43478e-05, 3.17528e-05, 2.95218e-05, 2.75802e-05, 2.58728e-05, 2.43578e-05, 2.30026e-05, 
			0.000200432, 0.0001216, 9.12416e-05, 7.43568e-05, 6.3314e-05, 5.5388e-05, 4.93614e-05, 4.459e-05, 4.0699e-05, 3.74536e-05, 3.46974e-05, 3.23224e-05, 3.02508e-05, 2.84248e-05, 2.68008e-05, 2.53448e-05, 
			0.000205638, 0.000126347, 9.55282e-05, 7.82656e-05, 6.69148e-05, 5.87418e-05, 5.25076e-05, 4.75584e-05, 4.35122e-05, 4.01288e-05, 3.7249e-05, 3.47616e-05, 3.25868e-05, 3.06656e-05, 2.89528e-05, 2.7414e-05, 
			0.000209306, 0.000130082, 9.90226e-05, 8.15242e-05, 6.99672e-05, 6.16224e-05, 5.52382e-05, 5.01546e-05, 4.59882e-05, 4.24964e-05, 3.95174e-05, 3.69384e-05, 3.46786e-05, 3.26778e-05, 3.08904e-05, 2.9281e-05
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
			1.30492e-05, 1.63362e-05, 1.9068e-05, 2.14162e-05, 2.34763e-05, 2.5307e-05, 2.69473e-05, 2.84256e-05, 2.9764e-05, 3.09803e-05, 3.20892e-05, 3.31036e-05, 3.40347e-05, 3.48915e-05, 3.56828e-05, 3.64153e-05, 
			1.56952e-05, 1.8717e-05, 2.13572e-05, 2.36919e-05, 2.57763e-05, 2.76498e-05, 2.93423e-05, 3.08773e-05, 3.22746e-05, 3.35508e-05, 3.47196e-05, 3.57936e-05, 3.67833e-05, 3.76981e-05, 3.85461e-05, 3.93345e-05, 
			1.8229e-05, 2.10858e-05, 2.36484e-05, 2.59512e-05, 2.80289e-05, 2.99122e-05, 3.16243e-05, 3.31855e-05, 3.46134e-05, 3.59229e-05, 3.71277e-05, 3.8239e-05, 3.9267e-05, 4.02208e-05, 4.1108e-05, 4.19359e-05, 
			2.0685e-05, 2.34302e-05, 2.59228e-05, 2.81874e-05, 3.0248e-05, 3.21263e-05, 3.3843e-05, 3.54157e-05, 3.68603e-05, 3.81908e-05, 3.94192e-05, 4.05566e-05, 4.16126e-05, 4.25956e-05, 4.35134e-05, 4.43722e-05, 
			2.3095e-05, 2.57376e-05, 2.81664e-05, 3.03908e-05, 3.24278e-05, 3.42935e-05, 3.60067e-05, 3.75829e-05, 3.90367e-05, 4.03804e-05, 4.16255e-05, 4.27824e-05, 4.386e-05, 4.48663e-05, 4.58086e-05, 4.66932e-05
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

CapTable	"metal3_C_BOTTOM_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.31998e-05, 1.65374e-05, 1.93215e-05, 2.17317e-05, 2.38662e-05, 2.57849e-05, 2.75265e-05, 2.91182e-05, 3.05792e-05, 3.19251e-05, 3.31678e-05, 3.43171e-05, 3.53819e-05, 3.63691e-05, 3.72852e-05, 3.81363e-05, 
			1.5886e-05, 1.89636e-05, 2.1672e-05, 2.40895e-05, 2.62743e-05, 2.82647e-05, 3.00891e-05, 3.17682e-05, 3.33187e-05, 3.47533e-05, 3.60831e-05, 3.7317e-05, 3.84633e-05, 3.95288e-05, 4.052e-05, 4.14426e-05, 
			1.8471e-05, 2.14e-05, 2.40532e-05, 2.64664e-05, 2.86742e-05, 3.07052e-05, 3.25795e-05, 3.43141e-05, 3.59224e-05, 3.74158e-05, 3.88039e-05, 4.00953e-05, 4.12975e-05, 4.24172e-05, 4.34605e-05, 4.44332e-05, 
			2.1002e-05, 2.38444e-05, 2.6456e-05, 2.88626e-05, 3.10841e-05, 3.31408e-05, 3.50487e-05, 3.68216e-05, 3.84708e-05, 4.00062e-05, 4.14369e-05, 4.27704e-05, 4.4014e-05, 4.5174e-05, 4.62565e-05, 4.72669e-05, 
			2.3522e-05, 2.62902e-05, 2.8871e-05, 3.12694e-05, 3.34978e-05, 3.55715e-05, 3.75024e-05, 3.93025e-05, 4.09812e-05, 4.25475e-05, 4.40096e-05, 4.53745e-05, 4.66493e-05, 4.78399e-05, 4.89523e-05, 4.99919e-05
		)
}

CapTable	"metal3_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.00018122, 0.000105851, 7.7817e-05, 6.25132e-05, 5.25942e-05, 4.55038e-05, 4.01088e-05, 3.58242e-05, 3.23154e-05, 2.9375e-05, 2.68674e-05, 2.46994e-05, 2.2804e-05, 2.11324e-05, 1.96472e-05, 1.83194e-05, 
			0.000193007, 0.000115068, 8.5415e-05, 6.90212e-05, 5.82914e-05, 5.05754e-05, 4.46792e-05, 3.99824e-05, 3.61266e-05, 3.28898e-05, 3.01252e-05, 2.7732e-05, 2.56376e-05, 2.37888e-05, 2.21446e-05, 2.06736e-05, 
			0.000200148, 0.000121207, 9.07138e-05, 7.36716e-05, 6.24526e-05, 5.43362e-05, 4.81104e-05, 4.3136e-05, 3.9043e-05, 3.56004e-05, 3.26556e-05, 3.0103e-05, 2.78666e-05, 2.58904e-05, 2.41314e-05, 2.25564e-05, 
			0.000205222, 0.000125781, 9.4785e-05, 7.73234e-05, 6.57572e-05, 5.73586e-05, 5.08946e-05, 4.57162e-05, 4.14464e-05, 3.7849e-05, 3.47672e-05, 3.20926e-05, 2.97468e-05, 2.7672e-05, 2.58236e-05, 2.41672e-05, 
			0.000208704, 0.000129286, 9.8006e-05, 8.02686e-05, 6.84612e-05, 5.98606e-05, 5.32214e-05, 4.78884e-05, 4.34832e-05, 3.9766e-05, 3.65776e-05, 3.38074e-05, 3.13754e-05, 2.92224e-05, 2.73028e-05, 2.55812e-05
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
			3.67398e-05, 5.00704e-05, 6.11652e-05, 7.01946e-05, 7.748e-05, 8.3348e-05, 8.80881e-05, 9.19357e-05, 9.50791e-05, 9.76665e-05, 9.78948e-05, 9.79042e-05, 9.79393e-05, 9.79876e-05, 9.80419e-05, 9.80979e-05, 
			5.38188e-05, 6.78652e-05, 7.96816e-05, 8.94148e-05, 9.73784e-05, 0.000103883, 0.000109209, 0.00011359, 0.000116974, 0.000116891, 0.000116897, 0.00011695, 0.000117029, 0.000117118, 0.000117212, 0.000117304, 
			7.21692e-05, 8.68868e-05, 9.93778e-05, 0.000109782, 0.000118377, 0.00012548, 0.000131361, 0.000135645, 0.000135467, 0.00013545, 0.000135519, 0.000135633, 0.000135768, 0.00013591, 0.000136053, 0.00013619, 
			9.1769e-05, 0.000107276, 0.000120519, 0.000131643, 0.000140922, 0.000148655, 0.000154599, 0.000154223, 0.000154139, 0.000154211, 0.000154363, 0.000154554, 0.000154761, 0.000154969, 0.000155172, 0.000155365, 
			0.00011275, 0.000129102, 0.000143182, 0.000155099, 0.000165125, 0.000173539, 0.000173317, 0.000173071, 0.000173108, 0.000173291, 0.000173546, 0.000173832, 0.000174125, 0.000174413, 0.000174688, 0.000174946
		)
}

CapTable	"metal2_C_LATERAL_14MAX" {
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

CapTable	"metal2_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000177696, 0.000101307, 7.25072e-05, 5.66634e-05, 4.64004e-05, 3.91304e-05, 3.36894e-05, 2.9465e-05, 2.60976e-05, 2.336e-05, 2.10988e-05, 1.92067e-05, 1.76059e-05, 1.6238e-05, 1.5059e-05, 1.40345e-05, 
			0.000188189, 0.000109373, 7.90938e-05, 6.22968e-05, 5.13506e-05, 4.35714e-05, 3.77342e-05, 3.31902e-05, 2.95586e-05, 2.6597e-05, 2.4143e-05, 2.20824e-05, 2.03324e-05, 1.88315e-05, 1.75325e-05, 1.63991e-05, 
			0.000194229, 0.000114593, 8.36432e-05, 6.63498e-05, 5.50484e-05, 4.69848e-05, 4.09172e-05, 3.6181e-05, 3.23846e-05, 2.92792e-05, 2.66976e-05, 2.45226e-05, 2.26686e-05, 2.10726e-05, 1.96862e-05, 1.8472e-05, 
			0.000198436, 0.000118493, 8.72126e-05, 6.96476e-05, 5.81244e-05, 4.98844e-05, 4.36674e-05, 3.88012e-05, 3.48894e-05, 3.16802e-05, 2.9004e-05, 2.67418e-05, 2.48072e-05, 2.3136e-05, 2.1679e-05, 2.03984e-05, 
			0.0002013, 0.000121569, 9.01638e-05, 7.2457e-05, 6.08036e-05, 5.24534e-05, 4.61366e-05, 4.11772e-05, 3.71802e-05, 3.38916e-05, 3.1141e-05, 2.88088e-05, 2.68082e-05, 2.50744e-05, 2.3558e-05, 2.22208e-05
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
			1.7887e-05, 2.30912e-05, 2.75468e-05, 3.13982e-05, 3.47393e-05, 3.76402e-05, 4.01603e-05, 4.23507e-05, 4.42572e-05, 4.59191e-05, 4.73715e-05, 4.86444e-05, 4.97634e-05, 5.0751e-05, 5.16259e-05, 5.24042e-05, 
			2.28124e-05, 2.78582e-05, 3.23082e-05, 3.62124e-05, 3.96306e-05, 4.26177e-05, 4.52264e-05, 4.75058e-05, 4.94991e-05, 5.12458e-05, 5.27798e-05, 5.4131e-05, 5.53252e-05, 5.63844e-05, 5.73278e-05, 5.81713e-05, 
			2.77414e-05, 3.26672e-05, 3.70658e-05, 4.09552e-05, 4.43792e-05, 4.73869e-05, 5.0026e-05, 5.23421e-05, 5.43768e-05, 5.61677e-05, 5.77477e-05, 5.91458e-05, 6.03874e-05, 6.14938e-05, 6.24837e-05, 6.33728e-05, 
			3.2637e-05, 3.746e-05, 4.17864e-05, 4.56324e-05, 4.90336e-05, 5.20336e-05, 5.46761e-05, 5.70053e-05, 5.90602e-05, 6.08762e-05, 6.24852e-05, 6.3915e-05, 6.519e-05, 6.63311e-05, 6.73564e-05, 6.82815e-05, 
			3.7484e-05, 4.21844e-05, 4.64272e-05, 5.0215e-05, 5.35794e-05, 5.65566e-05, 5.91894e-05, 6.15198e-05, 6.35828e-05, 6.54135e-05, 6.70417e-05, 6.84944e-05, 6.97947e-05, 7.0963e-05, 7.20168e-05, 7.29712e-05
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

CapTable	"metal2_C_BOTTOM_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.32734e-05, 1.66204e-05, 1.93732e-05, 2.17093e-05, 2.37319e-05, 2.55066e-05, 2.70791e-05, 2.84831e-05, 2.97445e-05, 3.08848e-05, 3.19206e-05, 3.28667e-05, 3.37346e-05, 3.45348e-05, 3.52753e-05, 3.59634e-05, 
			1.6005e-05, 1.90576e-05, 2.16908e-05, 2.3987e-05, 2.60105e-05, 2.7808e-05, 2.94153e-05, 3.08618e-05, 3.21707e-05, 3.33614e-05, 3.445e-05, 3.54495e-05, 3.6372e-05, 3.72267e-05, 3.80216e-05, 3.87641e-05, 
			1.858e-05, 2.14376e-05, 2.39638e-05, 2.6204e-05, 2.82018e-05, 2.99927e-05, 3.16071e-05, 3.30698e-05, 3.44019e-05, 3.56206e-05, 3.67409e-05, 3.77754e-05, 3.87346e-05, 3.96272e-05, 4.04614e-05, 4.12434e-05, 
			2.1034e-05, 2.37508e-05, 2.61824e-05, 2.83656e-05, 3.03285e-05, 3.21024e-05, 3.37125e-05, 3.51803e-05, 3.65247e-05, 3.77614e-05, 3.89039e-05, 3.99639e-05, 4.09509e-05, 4.18734e-05, 4.27389e-05, 4.35531e-05, 
			2.3403e-05, 2.599e-05, 2.83388e-05, 3.0465e-05, 3.23926e-05, 3.41453e-05, 3.5746e-05, 3.72139e-05, 3.85652e-05, 3.98146e-05, 4.09738e-05, 4.20537e-05, 4.30634e-05, 4.40107e-05, 4.49023e-05, 4.57438e-05
		)
}

CapTable	"metal2_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181289, 0.000106043, 7.81798e-05, 6.30794e-05, 5.33866e-05, 4.65376e-05, 4.13916e-05, 3.73576e-05, 3.40954e-05, 3.1393e-05, 2.91114e-05, 2.7154e-05, 2.54528e-05, 2.39568e-05, 2.26286e-05, 2.14392e-05, 
			0.00019324, 0.000115516, 8.61152e-05, 6.99988e-05, 5.95624e-05, 5.21476e-05, 4.65538e-05, 4.21532e-05, 3.8583e-05, 3.56164e-05, 3.31038e-05, 3.09422e-05, 2.90574e-05, 2.73954e-05, 2.59156e-05, 2.45864e-05, 
			0.000200672, 0.000122028, 9.18612e-05, 7.5162e-05, 6.42934e-05, 5.65274e-05, 5.06444e-05, 4.59996e-05, 4.22182e-05, 3.9066e-05, 3.63876e-05, 3.40758e-05, 3.20542e-05, 3.02666e-05, 2.86702e-05, 2.72328e-05, 
			0.000206148, 0.00012708, 9.64766e-05, 7.94144e-05, 6.8246e-05, 6.02358e-05, 5.41444e-05, 4.93182e-05, 4.5376e-05, 4.2079e-05, 3.9269e-05, 3.68364e-05, 3.47032e-05, 3.28116e-05, 3.1118e-05, 2.95894e-05, 
			0.000210134, 0.000131155, 0.000100323, 8.3031e-05, 7.16574e-05, 6.34724e-05, 5.72254e-05, 5.22572e-05, 4.81864e-05, 4.47714e-05, 4.18526e-05, 3.9319e-05, 3.70912e-05, 3.51108e-05, 3.33336e-05, 3.1726e-05
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
			4.1267e-05, 5.42008e-05, 6.40556e-05, 7.14474e-05, 7.69924e-05, 8.11806e-05, 8.43798e-05, 8.6852e-05, 8.87872e-05, 9.03227e-05, 9.15561e-05, 9.25595e-05, 9.33852e-05, 9.40726e-05, 9.46505e-05, 9.51427e-05, 
			5.9479e-05, 7.25658e-05, 8.2604e-05, 9.0203e-05, 9.59646e-05, 0.000100364, 0.000103758, 0.000106408, 0.000108502, 0.000110177, 0.000111534, 0.000112646, 0.000113567, 0.000114337, 0.00011499, 0.000115547, 
			7.78672e-05, 9.08344e-05, 0.00010084, 0.000108478, 0.000114315, 0.00011881, 0.000122307, 0.000125059, 0.00012725, 0.000129016, 0.000130456, 0.000131642, 0.000132631, 0.000133464, 0.000134172, 0.00013478, 
			9.62856e-05, 0.000109108, 0.000119062, 0.00012671, 0.000132591, 0.00013715, 0.000140721, 0.000143549, 0.000145814, 0.000147651, 0.000149156, 0.000150403, 0.000151447, 0.000152331, 0.000153087, 0.000153737, 
			0.000114586, 0.000127262, 0.000137138, 0.000144759, 0.000150654, 0.00015525, 0.000158866, 0.000161744, 0.000164062, 0.000165951, 0.000167505, 0.000168801, 0.00016989, 0.000170817, 0.000171611, 0.000172299
		)
}

CapTable	"metal1_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.00017336, 9.32102e-05, 6.25934e-05, 4.61746e-05, 3.60386e-05, 2.92734e-05, 2.45212e-05, 2.1057e-05, 1.84568e-05, 1.64573e-05, 1.48879e-05, 1.36335e-05, 1.26148e-05, 1.17754e-05, 1.10745e-05, 1.04823e-05, 
			0.000181267, 9.90392e-05, 6.7244e-05, 5.0051e-05, 3.93424e-05, 3.21324e-05, 2.70238e-05, 2.32678e-05, 2.04256e-05, 1.82236e-05, 1.6483e-05, 1.5083e-05, 1.39394e-05, 1.29921e-05, 1.21974e-05, 1.15231e-05, 
			0.000185191, 0.000102606, 7.04036e-05, 5.28646e-05, 4.18674e-05, 3.44094e-05, 2.90878e-05, 2.51478e-05, 2.21464e-05, 1.98059e-05, 1.79445e-05, 1.64387e-05, 1.5202e-05, 1.41725e-05, 1.33048e-05, 1.25652e-05, 
			0.000187433, 0.000105101, 7.27522e-05, 5.50182e-05, 4.38422e-05, 3.6222e-05, 3.0748e-05, 2.66726e-05, 2.35508e-05, 2.11034e-05, 1.91471e-05, 1.75569e-05, 1.62448e-05, 1.51477e-05, 1.42193e-05, 1.34248e-05, 
			0.000189401, 0.000107279, 7.48682e-05, 5.70198e-05, 4.5716e-05, 3.79678e-05, 3.23824e-05, 2.82036e-05, 2.49868e-05, 2.24532e-05, 2.04186e-05, 1.87573e-05, 1.73806e-05, 1.62247e-05, 1.52426e-05, 1.4399e-05
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

CapTable	"metal1_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000187609, 0.000109954, 8.00974e-05, 6.3394e-05, 5.23962e-05, 4.44832e-05, 3.84736e-05, 3.37444e-05, 2.99292e-05, 2.67948e-05, 2.4183e-05, 2.19822e-05, 2.01102e-05, 1.8505e-05, 1.7119e-05, 1.59144e-05, 
			0.000200788, 0.000119835, 8.7968e-05, 6.99286e-05, 5.79726e-05, 4.93416e-05, 4.27736e-05, 3.7598e-05, 3.34172e-05, 2.9978e-05, 2.71084e-05, 2.46866e-05, 2.26232e-05, 2.0851e-05, 1.93178e-05, 1.7983e-05, 
			0.000208156, 0.000125919, 9.30662e-05, 7.4314e-05, 6.18284e-05, 5.27876e-05, 4.5894e-05, 4.04522e-05, 3.605e-05, 3.24228e-05, 2.93914e-05, 2.68288e-05, 2.46416e-05, 2.27596e-05, 2.11286e-05, 1.97058e-05, 
			0.000212614, 0.000130039, 9.66862e-05, 7.75256e-05, 6.4726e-05, 5.54362e-05, 4.83346e-05, 4.27194e-05, 3.81696e-05, 3.44148e-05, 3.12718e-05, 2.86104e-05, 2.63352e-05, 2.43742e-05, 2.26716e-05, 2.11838e-05, 
			0.000215918, 0.000133184, 9.95512e-05, 8.01426e-05, 6.71374e-05, 5.7676e-05, 5.0435e-05, 4.47008e-05, 4.00476e-05, 3.62018e-05, 3.29778e-05, 3.02438e-05, 2.79028e-05, 2.58818e-05, 2.41242e-05, 2.25858e-05
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
			1.94976e-05, 2.46296e-05, 2.90136e-05, 3.28463e-05, 3.62287e-05, 3.92229e-05, 4.18743e-05, 4.42211e-05, 4.62973e-05, 4.81333e-05, 4.97576e-05, 5.11953e-05, 5.24692e-05, 5.35997e-05, 5.46046e-05, 5.54998e-05, 
			2.4462e-05, 2.95142e-05, 3.4008e-05, 3.80154e-05, 4.15878e-05, 4.47686e-05, 4.75966e-05, 5.0107e-05, 5.23341e-05, 5.43086e-05, 5.60595e-05, 5.76132e-05, 5.89933e-05, 6.02208e-05, 6.13146e-05, 6.22913e-05, 
			2.9564e-05, 3.45914e-05, 3.91328e-05, 4.3219e-05, 4.68786e-05, 5.01494e-05, 5.30647e-05, 5.5659e-05, 5.7965e-05, 6.00142e-05, 6.18354e-05, 6.34547e-05, 6.48964e-05, 6.61814e-05, 6.73289e-05, 6.83557e-05, 
			3.4829e-05, 3.98302e-05, 4.43868e-05, 4.85044e-05, 5.2204e-05, 5.55178e-05, 5.84774e-05, 6.11176e-05, 6.34684e-05, 6.55609e-05, 6.74245e-05, 6.90849e-05, 7.05656e-05, 7.1888e-05, 7.30712e-05, 7.41319e-05, 
			4.017e-05, 4.51438e-05, 4.96848e-05, 5.37984e-05, 5.75046e-05, 6.0831e-05, 6.3807e-05, 6.64642e-05, 6.88364e-05, 7.09512e-05, 7.28382e-05, 7.45212e-05, 7.60262e-05, 7.73712e-05, 7.85778e-05, 7.96612e-05
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

CapTable	"poly_C_BOTTOM_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.6342e-05, 3.35012e-05, 3.9725e-05, 4.5167e-05, 4.99332e-05, 5.41062e-05, 5.77602e-05, 6.09579e-05, 6.37565e-05, 6.62074e-05, 6.83558e-05, 7.02411e-05, 7.18985e-05, 7.33578e-05, 7.46452e-05, 7.57833e-05, 
			3.517e-05, 4.22954e-05, 4.86688e-05, 5.43244e-05, 5.93242e-05, 6.37332e-05, 6.7617e-05, 7.1034e-05, 7.40404e-05, 7.66854e-05, 7.90156e-05, 8.10696e-05, 8.2883e-05, 8.4487e-05, 8.59088e-05, 8.71695e-05, 
			4.4301e-05, 5.14018e-05, 5.78192e-05, 6.35576e-05, 6.86592e-05, 7.31828e-05, 7.71856e-05, 8.0723e-05, 8.38484e-05, 8.66092e-05, 8.90508e-05, 9.12112e-05, 9.31258e-05, 9.4825e-05, 9.63341e-05, 9.76792e-05, 
			5.3604e-05, 6.06682e-05, 6.70826e-05, 7.28476e-05, 7.79984e-05, 8.25844e-05, 8.66564e-05, 9.02686e-05, 9.34708e-05, 9.63104e-05, 9.88276e-05, 0.000101063, 0.000103049, 0.000104817, 0.000106393, 0.0001078, 
			6.2994e-05, 6.99972e-05, 7.63928e-05, 8.21638e-05, 8.73386e-05, 9.19612e-05, 9.60776e-05, 9.97382e-05, 0.000102996, 0.00010589, 0.000108464, 0.000110755, 0.000112797, 0.000114617, 0.000116244, 0.000117699
		)
}

CapTable	"poly_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217586, 0.000125084, 8.9557e-05, 6.9636e-05, 5.65138e-05, 4.70848e-05, 3.99422e-05, 3.43394e-05, 2.98356e-05, 2.61486e-05, 2.30878e-05, 2.05184e-05, 1.83412e-05, 1.6482e-05, 1.48836e-05, 1.35012e-05, 
			0.000231298, 0.000135607, 9.80082e-05, 7.66976e-05, 6.25558e-05, 5.23488e-05, 4.4589e-05, 3.8482e-05, 3.35566e-05, 2.95116e-05, 2.61424e-05, 2.33044e-05, 2.0892e-05, 1.8825e-05, 1.70422e-05, 1.54955e-05, 
			0.000238384, 0.000141717, 0.000103232, 8.12354e-05, 6.65798e-05, 5.59522e-05, 4.78434e-05, 4.1441e-05, 3.62616e-05, 3.19948e-05, 2.84302e-05, 2.54188e-05, 2.28512e-05, 2.0645e-05, 1.87369e-05, 1.70768e-05, 
			0.000243038, 0.000145952, 0.000107008, 8.46254e-05, 6.96476e-05, 5.87506e-05, 5.04146e-05, 4.38144e-05, 3.84602e-05, 3.40376e-05, 3.03334e-05, 2.71958e-05, 2.4514e-05, 2.2204e-05, 2.0201e-05, 1.84544e-05, 
			0.00024506, 0.000148579, 0.000109586, 8.70592e-05, 7.19184e-05, 6.08708e-05, 5.23994e-05, 4.56748e-05, 4.02014e-05, 3.56696e-05, 3.1865e-05, 2.86352e-05, 2.58684e-05, 2.34798e-05, 2.14044e-05, 1.95907e-05
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

CapModel	"metal5Config19" {
		refLayer				= "M5"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_41MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_41MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_41MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_41MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_41MAX"
}

CapModel	"metal5Config25" {
		refLayer				= "M5"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_51MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_51MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_51MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_51MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_51MAX"
}

CapModel	"metal5Config31" {
		refLayer				= "M5"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_61MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_61MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_61MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_61MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_61MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_61MAX"
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
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_16MAX"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_16MAX"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_16MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_16MAX"
		lateralCapDataNom		= "poly_C_LATERAL_16MAX"
		lateralCapDataMax		= "poly_C_LATERAL_16MAX"
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
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_15MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_15MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_15MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_15MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_15MAX"
}

CapModel	"metal1Config7" {
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

CapModel	"metal1Config8" {
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

CapModel	"metal1Config9" {
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

CapModel	"metal1Config10" {
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

CapModel	"metal1Config11" {
		refLayer				= "M1"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_25MAX"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_25MAX"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_25MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_25MAX"
		lateralCapDataNom		= "metal1_C_LATERAL_25MAX"
		lateralCapDataMax		= "metal1_C_LATERAL_25MAX"
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
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_14MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_14MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_14MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_14MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_14MAX"
}

CapModel	"metal2Config7" {
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

CapModel	"metal2Config8" {
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

CapModel	"metal2Config9" {
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

CapModel	"metal2Config10" {
		refLayer				= "M2"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_24MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_24MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_24MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_24MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_24MAX"
}

CapModel	"metal2Config13" {
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

CapModel	"metal2Config14" {
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

CapModel	"metal2Config15" {
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

CapModel	"metal2Config16" {
		refLayer				= "M2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_34MAX"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_34MAX"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_34MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_34MAX"
		lateralCapDataNom		= "metal2_C_LATERAL_34MAX"
		lateralCapDataMax		= "metal2_C_LATERAL_34MAX"
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
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_13MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_13MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_13MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_13MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_13MAX"
}

CapModel	"metal3Config7" {
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

CapModel	"metal3Config8" {
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

CapModel	"metal3Config9" {
		refLayer				= "M3"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_23MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_23MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_23MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_23MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_23MAX"
}

CapModel	"metal3Config13" {
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

CapModel	"metal3Config14" {
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

CapModel	"metal3Config15" {
		refLayer				= "M3"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_33MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_33MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_33MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_33MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_33MAX"
}

CapModel	"metal3Config19" {
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

CapModel	"metal3Config20" {
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

CapModel	"metal3Config21" {
		refLayer				= "M3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_43MAX"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_43MAX"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_43MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_43MAX"
		lateralCapDataNom		= "metal3_C_LATERAL_43MAX"
		lateralCapDataMax		= "metal3_C_LATERAL_43MAX"
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
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_12MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_12MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_12MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_12MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_12MAX"
}

CapModel	"metal4Config7" {
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

CapModel	"metal4Config8" {
		refLayer				= "M4"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_22MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_22MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_22MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_22MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_22MAX"
}

CapModel	"metal4Config13" {
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

CapModel	"metal4Config14" {
		refLayer				= "M4"
		groundPlaneBelow		= "M1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_32MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_32MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_32MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_32MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_32MAX"
}

CapModel	"metal4Config19" {
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

CapModel	"metal4Config20" {
		refLayer				= "M4"
		groundPlaneBelow		= "POLY1"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_42MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_42MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_42MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_42MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_42MAX"
}

CapModel	"metal4Config25" {
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

CapModel	"metal4Config26" {
		refLayer				= "M4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_52MAX"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_52MAX"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_52MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_52MAX"
		lateralCapDataNom		= "metal4_C_LATERAL_52MAX"
		lateralCapDataMax		= "metal4_C_LATERAL_52MAX"
}

CapModel	"metal5Config1" {
		refLayer				= "M5"
		groundPlaneBelow		= "M4"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GPMAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GPMAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERALMAX"
		lateralCapDataNom		= "metal5_C_LATERALMAX"
		lateralCapDataMax		= "metal5_C_LATERALMAX"
}

CapModel	"metal5Config7" {
		refLayer				= "M5"
		groundPlaneBelow		= "M3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_21MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_21MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_21MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_21MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_21MAX"
}

CapModel	"metal5Config13" {
		refLayer				= "M5"
		groundPlaneBelow		= "M2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal5_C_BOTTOM_GP_31MAX"
		bottomCapDataNom		= "metal5_C_BOTTOM_GP_31MAX"
		bottomCapDataMax		= "metal5_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal5_C_LATERAL_31MAX"
		lateralCapDataNom		= "metal5_C_LATERAL_31MAX"
		lateralCapDataMax		= "metal5_C_LATERAL_31MAX"
}

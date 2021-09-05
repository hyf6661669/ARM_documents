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
   $Id: tsmc090_5lm_2thick.tf,v 1.1 2006/05/11 06:33:16 Exp $
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

Layer		"M5" {
		layerNumber			= 35
		maskName			= "metal5"
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

Layer		"VIA4" {
		layerNumber			= 54
		maskName			= "via4"
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
		minSpacing			= 0.54
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
			0.000232008, 0.000135348, 9.86596e-05, 7.81908e-05, 6.4649e-05, 5.47882e-05, 4.71608e-05, 4.10172e-05, 3.59276e-05, 3.16256e-05, 2.79368e-05, 2.47402e-05, 2.19492e-05, 1.94989e-05, 1.73388e-05, 1.54292e-05, 
			0.000248858, 0.000148149, 0.000108932, 8.67232e-05, 7.18706e-05, 6.09786e-05, 5.25124e-05, 4.56716e-05, 3.99934e-05, 3.51892e-05, 3.10684e-05, 2.74986e-05, 2.43832e-05, 2.165e-05, 1.92426e-05, 1.71165e-05, 
			0.000258766, 0.000156257, 0.000115656, 9.23874e-05, 7.67054e-05, 6.51354e-05, 5.61074e-05, 4.87944e-05, 4.27158e-05, 3.757e-05, 3.3156e-05, 2.93332e-05, 2.5999e-05, 2.30758e-05, 2.05034e-05, 1.82332e-05, 
			0.000264994, 0.000161769, 0.000120337, 9.63684e-05, 8.01104e-05, 6.80686e-05, 5.86388e-05, 5.09874e-05, 4.4622e-05, 3.9232e-05, 3.46094e-05, 3.06078e-05, 2.71196e-05, 2.40638e-05, 2.13766e-05, 1.90071e-05, 
			0.000269646, 0.000165845, 0.000123818, 9.93298e-05, 8.2639e-05, 7.02322e-05, 6.05012e-05, 5.25964e-05, 4.60174e-05, 4.04466e-05, 3.56704e-05, 3.15378e-05, 2.79376e-05, 2.47856e-05, 2.20158e-05, 1.95752e-05
		)
}

CapTable	"metal5_C_BOTTOM_GPMAX" {
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

CapTable	"metal5_C_LATERALMAX" {
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

CapTable	"metal5_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal5_C_LATERAL_31MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal5_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000237624, 0.000142596, 0.000107181, 8.7663e-05, 7.47942e-05, 6.53756e-05, 5.80048e-05, 5.1971e-05, 4.68766e-05, 4.24814e-05, 3.86314e-05, 3.52222e-05, 3.21794e-05, 2.94478e-05, 2.69846e-05, 2.47562e-05, 
			0.000256504, 0.000157276, 0.000119172, 9.77526e-05, 8.34242e-05, 7.28454e-05, 6.45282e-05, 5.77094e-05, 5.19562e-05, 4.70032e-05, 4.26768e-05, 3.8858e-05, 3.54604e-05, 3.24196e-05, 2.96856e-05, 2.72182e-05, 
			0.00026825, 0.000166993, 0.00012729, 0.000104625, 8.93126e-05, 7.79328e-05, 6.8958e-05, 6.1594e-05, 5.53852e-05, 5.00484e-05, 4.53968e-05, 4.13e-05, 3.76634e-05, 3.44154e-05, 3.15006e-05, 2.88748e-05, 
			0.000276038, 0.000173813, 0.000133065, 0.000109528, 9.35072e-05, 8.15552e-05, 7.21042e-05, 6.43472e-05, 5.7812e-05, 5.22022e-05, 4.73204e-05, 4.3028e-05, 3.92242e-05, 3.5832e-05, 3.27918e-05, 3.00564e-05, 
			0.00028195, 0.000178916, 0.000137387, 0.00011319, 9.66314e-05, 8.42384e-05, 7.44316e-05, 6.6383e-05, 5.96066e-05, 5.37964e-05, 4.87464e-05, 4.4312e-05, 4.03868e-05, 3.68904e-05, 3.376e-05, 3.09456e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_41MAX" {
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

CapTable	"metal5_C_LATERAL_41MAX" {
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

CapTable	"metal5_C_BOTTOM_GP_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.5559e-05, 1.88846e-05, 2.15068e-05, 2.373e-05, 2.5724e-05, 2.75828e-05, 2.93585e-05, 3.10773e-05, 3.2751e-05, 3.4383e-05, 3.59722e-05, 3.75155e-05, 3.9009e-05, 4.04494e-05, 4.18334e-05, 4.31587e-05, 
			1.7787e-05, 2.07162e-05, 2.32328e-05, 2.54964e-05, 2.76064e-05, 2.96214e-05, 3.15723e-05, 3.34723e-05, 3.53261e-05, 3.71328e-05, 3.88888e-05, 4.05902e-05, 4.22327e-05, 4.3813e-05, 4.53285e-05, 4.6777e-05, 
			1.986e-05, 2.26136e-05, 2.51118e-05, 2.74438e-05, 2.96692e-05, 3.18208e-05, 3.39164e-05, 3.59597e-05, 3.79517e-05, 3.98891e-05, 4.17674e-05, 4.35826e-05, 4.53306e-05, 4.7009e-05, 4.8615e-05, 5.01481e-05, 
			2.1944e-05, 2.4637e-05, 2.71706e-05, 2.95894e-05, 3.19254e-05, 3.41972e-05, 3.64116e-05, 3.85706e-05, 4.06704e-05, 4.27072e-05, 4.46771e-05, 4.6576e-05, 4.84011e-05, 5.01498e-05, 5.18211e-05, 5.34138e-05, 
			2.4111e-05, 2.68248e-05, 2.94224e-05, 3.19314e-05, 3.43672e-05, 3.67406e-05, 3.9053e-05, 4.13028e-05, 4.3486e-05, 4.5599e-05, 4.76384e-05, 4.96001e-05, 5.1482e-05, 5.32826e-05, 5.50013e-05, 5.66378e-05
		)
}

CapTable	"metal5_C_LATERAL_61MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.0002383, 0.000143459, 0.000108201, 8.8815e-05, 7.6056e-05, 6.6728e-05, 5.94298e-05, 5.34522e-05, 4.8399e-05, 4.40318e-05, 4.0198e-05, 3.67946e-05, 3.37486e-05, 3.10058e-05, 2.8525e-05, 2.62732e-05, 
			0.000257394, 0.000158345, 0.000120392, 9.90986e-05, 8.48736e-05, 7.43776e-05, 6.61246e-05, 5.93536e-05, 5.36334e-05, 4.87002e-05, 4.43828e-05, 4.05628e-05, 3.71558e-05, 3.40982e-05, 3.1341e-05, 2.88454e-05, 
			0.000269344, 0.000168255, 0.000128693, 0.000106142, 9.09218e-05, 7.96132e-05, 7.06916e-05, 6.3365e-05, 5.71798e-05, 5.18546e-05, 4.72042e-05, 4.30996e-05, 3.94476e-05, 3.61774e-05, 3.3235e-05, 3.05764e-05, 
			0.000277326, 0.000175254, 0.000134631, 0.000111195, 9.52516e-05, 8.33578e-05, 7.39484e-05, 6.62184e-05, 5.96976e-05, 5.40912e-05, 4.92036e-05, 4.48976e-05, 4.10728e-05, 3.76538e-05, 3.45816e-05, 3.18098e-05, 
			0.000283416, 0.000180517, 0.000139097, 0.000114984, 9.84888e-05, 8.61414e-05, 7.6365e-05, 6.83332e-05, 6.1563e-05, 5.5749e-05, 5.0687e-05, 4.62334e-05, 4.22828e-05, 3.87556e-05, 3.55896e-05, 3.27356e-05
		)
}

CapTable	"metal5_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.6414e-05, 2.00304e-05, 2.2917e-05, 2.5383e-05, 2.76028e-05, 2.96708e-05, 3.16397e-05, 3.35356e-05, 3.537e-05, 3.71465e-05, 3.88644e-05, 4.05207e-05, 4.21125e-05, 4.36369e-05, 4.50918e-05, 4.64757e-05, 
			1.8944e-05, 2.21736e-05, 2.49726e-05, 2.74994e-05, 2.98558e-05, 3.20996e-05, 3.42604e-05, 3.63528e-05, 3.83808e-05, 4.03438e-05, 4.2239e-05, 4.40625e-05, 4.58115e-05, 4.7483e-05, 4.90753e-05, 5.05878e-05, 
			2.1336e-05, 2.44031e-05, 2.71976e-05, 2.98082e-05, 3.22924e-05, 3.46842e-05, 3.7e-05, 3.9244e-05, 4.14182e-05, 4.35185e-05, 4.55415e-05, 4.74838e-05, 4.93423e-05, 5.11154e-05, 5.28017e-05, 5.44011e-05, 
			2.3758e-05, 2.67752e-05, 2.96172e-05, 3.23228e-05, 3.49258e-05, 3.74448e-05, 3.98858e-05, 4.22498e-05, 4.4536e-05, 4.6739e-05, 4.88564e-05, 5.08852e-05, 5.28226e-05, 5.46679e-05, 5.64207e-05, 5.8081e-05, 
			2.6279e-05, 2.93264e-05, 3.2238e-05, 3.50404e-05, 3.77486e-05, 4.03726e-05, 4.29144e-05, 4.5373e-05, 4.77444e-05, 5.00246e-05, 5.22126e-05, 5.43052e-05, 5.63006e-05, 5.81985e-05, 5.99992e-05, 6.17036e-05
		)
}

CapTable	"metal4_C_LATERALMAX" {
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

CapTable	"metal4_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal4_C_LATERAL_12MAX" {
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

CapTable	"metal4_C_LATERAL_22MAX" {
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

CapTable	"metal4_C_BOTTOM_GPMAX" {
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

CapTable	"metal4_C_TOP_GPMAX" {
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

CapTable	"metal4_C_TOP_GP_21MAX" {
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

CapTable	"metal4_C_LATERAL_21MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_22MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_32MAX" {
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

CapTable	"metal4_C_LATERAL_32MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_21MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_31MAX" {
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

CapTable	"metal4_C_TOP_GP_31MAX" {
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

CapTable	"metal4_C_LATERAL_31MAX" {
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

CapTable	"metal4_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000211116, 0.000106984, 6.66302e-05, 4.4518e-05, 3.07074e-05, 2.15364e-05, 1.52527e-05, 1.08707e-05, 7.77054e-06, 5.56278e-06, 3.98808e-06, 2.8585e-06, 2.04644e-06, 1.46147e-06, 1.03944e-06, 7.34534e-07, 
			0.000218138, 0.000111521, 6.97362e-05, 4.67306e-05, 3.23064e-05, 2.27008e-05, 1.61032e-05, 1.14795e-05, 8.2061e-06, 5.87752e-06, 4.20804e-06, 3.01104e-06, 2.15156e-06, 1.53016e-06, 1.08151e-06, 7.55892e-07, 
			0.000220596, 0.000113343, 7.10558e-05, 4.76906e-05, 3.30172e-05, 2.32222e-05, 1.64721e-05, 1.1747e-05, 8.39838e-06, 6.01018e-06, 4.29918e-06, 3.06928e-06, 2.18374e-06, 1.54474e-06, 1.08105e-06, 7.49326e-07, 
			0.000221042, 0.000113989, 7.15778e-05, 4.80894e-05, 3.33084e-05, 2.34376e-05, 1.66334e-05, 1.18522e-05, 8.46634e-06, 6.055e-06, 4.32212e-06, 3.07678e-06, 2.17586e-06, 1.53132e-06, 1.06341e-06, 7.2503e-07, 
			0.000221212, 0.000114249, 7.1812e-05, 4.82504e-05, 3.34326e-05, 2.35248e-05, 1.6689e-05, 1.18911e-05, 8.48556e-06, 6.05504e-06, 4.30626e-06, 3.05292e-06, 2.15436e-06, 1.49786e-06, 1.03096e-06, 6.87262e-07
		)
}

CapTable	"metal4_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.9896e-05, 2.52418e-05, 2.9836e-05, 3.3881e-05, 3.74866e-05, 4.07224e-05, 4.36397e-05, 4.62804e-05, 4.86784e-05, 5.08627e-05, 5.28574e-05, 5.46832e-05, 5.63581e-05, 5.78973e-05, 5.93139e-05, 6.06193e-05, 
			2.444e-05, 2.9597e-05, 3.42166e-05, 3.8367e-05, 4.21116e-05, 4.55014e-05, 4.85804e-05, 5.13845e-05, 5.39456e-05, 5.62906e-05, 5.84426e-05, 6.04214e-05, 6.22439e-05, 6.39252e-05, 6.54779e-05, 6.69134e-05, 
			2.9084e-05, 3.41416e-05, 3.8751e-05, 4.29418e-05, 4.67552e-05, 5.02328e-05, 5.34094e-05, 5.63198e-05, 5.899e-05, 6.14462e-05, 6.37098e-05, 6.57983e-05, 6.77285e-05, 6.95138e-05, 7.11672e-05, 7.26993e-05, 
			3.3814e-05, 3.87868e-05, 4.33748e-05, 4.75808e-05, 5.14348e-05, 5.4969e-05, 5.82168e-05, 6.12048e-05, 6.39586e-05, 6.6501e-05, 6.88508e-05, 7.10262e-05, 7.30412e-05, 7.49092e-05, 7.6643e-05, 7.8253e-05, 
			3.8572e-05, 4.34968e-05, 4.80638e-05, 5.22786e-05, 5.61624e-05, 5.97432e-05, 6.30476e-05, 6.6101e-05, 6.89234e-05, 7.1538e-05, 7.39612e-05, 7.62092e-05, 7.82956e-05, 8.02342e-05, 8.2035e-05, 8.371e-05
		)
}

CapTable	"metal4_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000234752, 0.000136197, 9.9108e-05, 7.8585e-05, 6.51494e-05, 5.54912e-05, 4.8127e-05, 4.22806e-05, 3.75018e-05, 3.35084e-05, 3.01136e-05, 2.7188e-05, 2.46388e-05, 2.23972e-05, 2.04116e-05, 1.86418e-05, 
			0.000250248, 0.000147825, 0.00010843, 8.64e-05, 7.18784e-05, 6.13946e-05, 5.33736e-05, 4.69866e-05, 4.1751e-05, 3.7364e-05, 3.36248e-05, 3.03944e-05, 2.75732e-05, 2.5087e-05, 2.28802e-05, 2.09096e-05, 
			0.000259226, 0.000155191, 0.000114637, 9.17642e-05, 7.66078e-05, 6.56142e-05, 5.71716e-05, 5.04262e-05, 4.488e-05, 4.02198e-05, 3.62376e-05, 3.27892e-05, 2.97708e-05, 2.71062e-05, 2.47368e-05, 2.26176e-05, 
			0.000264868, 0.000160334, 0.00011916, 9.57772e-05, 8.02052e-05, 6.887e-05, 6.01272e-05, 5.31202e-05, 4.73424e-05, 4.2475e-05, 3.83062e-05, 3.46888e-05, 3.15168e-05, 2.87118e-05, 2.6214e-05, 2.3977e-05, 
			0.00026933, 0.000164386, 0.000122794, 9.90424e-05, 8.31576e-05, 7.15488e-05, 6.25704e-05, 5.5354e-05, 4.93886e-05, 4.4352e-05, 4.00298e-05, 3.62728e-05, 3.29734e-05, 3.00518e-05, 2.7447e-05, 2.5112e-05
		)
}

CapTable	"metal4_C_LATERAL_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000236076, 0.000137904, 0.000101113, 8.08104e-05, 6.75272e-05, 5.79652e-05, 5.06524e-05, 4.48228e-05, 4.0034e-05, 3.60108e-05, 3.25714e-05, 2.95906e-05, 2.69784e-05, 2.46686e-05, 2.26114e-05, 2.0768e-05, 
			0.000252054, 0.000149972, 0.000110833, 8.89822e-05, 7.45768e-05, 6.41598e-05, 5.61668e-05, 4.97784e-05, 4.45188e-05, 4.00914e-05, 3.62996e-05, 3.30076e-05, 3.01186e-05, 2.75604e-05, 2.52786e-05, 2.32314e-05, 
			0.00026146, 0.000157708, 0.000117356, 9.46182e-05, 7.9543e-05, 6.85894e-05, 6.0155e-05, 5.33938e-05, 4.78134e-05, 4.31056e-05, 3.90658e-05, 3.55528e-05, 3.24646e-05, 2.97262e-05, 2.7281e-05, 2.50842e-05, 
			0.00026746, 0.000163147, 0.000122125, 9.88382e-05, 8.33192e-05, 7.20034e-05, 6.32546e-05, 5.6222e-05, 5.0404e-05, 4.54854e-05, 4.12574e-05, 3.75744e-05, 3.43326e-05, 3.14544e-05, 2.8881e-05, 2.65672e-05, 
			0.000272202, 0.000167425, 0.000125944, 0.000102259, 8.64054e-05, 7.48014e-05, 6.58072e-05, 5.85594e-05, 5.25506e-05, 4.74616e-05, 4.308e-05, 3.9258e-05, 3.58896e-05, 3.2896e-05, 3.0217e-05, 2.7806e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.16348e-05, 1.59802e-05, 1.97875e-05, 2.29171e-05, 2.53846e-05, 2.72743e-05, 2.86912e-05, 2.97904e-05, 3.05395e-05, 3.10762e-05, 3.14329e-05, 3.17315e-05, 3.19476e-05, 3.21035e-05, 3.22416e-05, 3.23195e-05, 
			1.62846e-05, 2.08055e-05, 2.47955e-05, 2.80844e-05, 3.06816e-05, 3.26762e-05, 3.42108e-05, 3.53095e-05, 3.61159e-05, 3.66575e-05, 3.7095e-05, 3.7414e-05, 3.76464e-05, 3.78408e-05, 3.79575e-05, 3.80381e-05, 
			2.11659e-05, 2.57966e-05, 2.98732e-05, 3.32344e-05, 3.59348e-05, 3.79588e-05, 3.94759e-05, 4.0558e-05, 4.14046e-05, 4.20248e-05, 4.24768e-05, 4.28397e-05, 4.30723e-05, 4.32403e-05, 4.33589e-05, 4.34477e-05, 
			2.619e-05, 3.08722e-05, 3.49922e-05, 3.84196e-05, 4.10906e-05, 4.31394e-05, 4.46286e-05, 4.57878e-05, 4.66447e-05, 4.7274e-05, 4.77679e-05, 4.80962e-05, 4.83301e-05, 4.85037e-05, 4.86276e-05, 4.8716e-05, 
			3.1286e-05, 3.60412e-05, 4.0172e-05, 4.35666e-05, 4.61954e-05, 4.82712e-05, 4.9839e-05, 5.10059e-05, 5.19104e-05, 5.2537e-05, 5.29907e-05, 5.33211e-05, 5.35626e-05, 5.37321e-05, 5.386e-05, 5.39447e-05
		)
}

CapTable	"metal4_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.41582e-05, 5.96237e-05, 7.17503e-05, 8.10379e-05, 8.8041e-05, 9.32623e-05, 9.71121e-05, 9.98899e-05, 0.000101982, 0.000103521, 0.000104668, 0.000105462, 0.000106037, 0.000106452, 0.00010673, 0.00010695, 
			6.48704e-05, 8.06375e-05, 9.30873e-05, 0.000102677, 0.000109936, 0.00011537, 0.000119363, 0.000122351, 0.000124546, 0.000126187, 0.000127346, 0.000128183, 0.000128783, 0.000129198, 0.000129519, 0.000129757, 
			8.61001e-05, 0.00010197, 0.000114544, 0.000124251, 0.000131584, 0.000137133, 0.000141274, 0.000144363, 0.000146584, 0.000148206, 0.000149386, 0.000150213, 0.000150839, 0.000151293, 0.000151629, 0.000151857, 
			0.00010758, 0.000123444, 0.000136055, 0.000145784, 0.000153231, 0.000158829, 0.000163035, 0.000166105, 0.000168349, 0.000169977, 0.00017114, 0.000172011, 0.000172655, 0.000173104, 0.000173434, 0.000173671, 
			0.000129226, 0.000145092, 0.000157734, 0.000167565, 0.000175077, 0.000180676, 0.000184838, 0.000187909, 0.000190126, 0.000191781, 0.000192998, 0.000193877, 0.000194499, 0.000194968, 0.000195289, 0.000195535
		)
}

CapTable	"metal4_C_TOP_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			4.45963e-05, 6.00878e-05, 7.2225e-05, 8.15557e-05, 8.86508e-05, 9.40047e-05, 9.80114e-05, 0.000101013, 0.000103162, 0.00010486, 0.000106143, 0.000107063, 0.000107846, 0.000108354, 0.000108731, 0.000108962, 
			6.52448e-05, 8.09941e-05, 9.34504e-05, 0.000103097, 0.000110471, 0.000116067, 0.000120183, 0.000123386, 0.000125788, 0.000127583, 0.000129022, 0.000130003, 0.000130728, 0.000131207, 0.000131622, 0.000131937, 
			8.63802e-05, 0.000102222, 0.000114805, 0.000124588, 0.000132103, 0.000137741, 0.000142096, 0.000145397, 0.000147835, 0.000149786, 0.000151147, 0.00015216, 0.000152849, 0.000153423, 0.000153861, 0.000154171, 
			0.000107764, 0.000123602, 0.000136235, 0.000145994, 0.000153619, 0.00015944, 0.000163848, 0.0001673, 0.000169778, 0.000171622, 0.000172924, 0.00017397, 0.000174763, 0.000175339, 0.000175775, 0.000176098, 
			0.000129325, 0.000145206, 0.000157797, 0.000167733, 0.000175419, 0.000181244, 0.000185815, 0.000189143, 0.000191643, 0.000193433, 0.00019486, 0.000195921, 0.000196695, 0.000197297, 0.000197726, 0.00019806
		)
}

CapTable	"metal4_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			0.000211952, 0.000108158, 6.80532e-05, 4.60708e-05, 3.22754e-05, 2.3034e-05, 1.66264e-05, 1.20842e-05, 8.8341e-06, 6.4652e-06, 4.73428e-06, 3.46748e-06, 2.53176e-06, 1.84183e-06, 1.33071e-06, 9.51654e-07, 
			0.000219462, 0.000113171, 7.1586e-05, 4.86546e-05, 3.4191e-05, 2.44656e-05, 1.77056e-05, 1.28846e-05, 9.40824e-06, 6.8837e-06, 5.03162e-06, 3.67316e-06, 2.67266e-06, 1.93098e-06, 1.37994e-06, 9.68896e-07, 
			0.000222376, 0.00011539, 7.32462e-05, 4.98972e-05, 3.51308e-05, 2.51806e-05, 1.82225e-05, 1.32616e-05, 9.68092e-06, 7.07036e-06, 5.15824e-06, 3.75018e-06, 2.7098e-06, 1.93826e-06, 1.36301e-06, 9.39064e-07, 
			0.000223202, 0.000116351, 7.40252e-05, 5.05104e-05, 3.55928e-05, 2.55162e-05, 1.84677e-05, 1.34253e-05, 9.78502e-06, 7.13482e-06, 5.18634e-06, 3.7495e-06, 2.68296e-06, 1.89803e-06, 1.31252e-06, 8.77026e-07, 
			0.000223668, 0.000116847, 7.44512e-05, 5.08184e-05, 3.58176e-05, 2.56742e-05, 1.85663e-05, 1.34888e-05, 9.81196e-06, 7.12812e-06, 5.15048e-06, 3.69632e-06, 2.62528e-06, 1.8223e-06, 1.23384e-06, 7.89736e-07
		)
}

CapTable	"metal4_C_BOTTOM_GP_52MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.8165e-05, 2.28374e-05, 2.68108e-05, 3.03056e-05, 3.34348e-05, 3.62669e-05, 3.88489e-05, 4.12146e-05, 4.33904e-05, 4.53972e-05, 4.72527e-05, 4.89715e-05, 5.05662e-05, 5.20479e-05, 5.34255e-05, 5.47074e-05, 
			2.192e-05, 2.63556e-05, 3.03156e-05, 3.38858e-05, 3.71302e-05, 4.00972e-05, 4.28218e-05, 4.53335e-05, 4.7656e-05, 4.9808e-05, 5.18062e-05, 5.36644e-05, 5.53942e-05, 5.70063e-05, 5.85099e-05, 5.99127e-05, 
			2.5721e-05, 3.00328e-05, 3.39702e-05, 3.75708e-05, 4.0876e-05, 4.39216e-05, 4.6735e-05, 4.93432e-05, 5.17644e-05, 5.40171e-05, 5.61159e-05, 5.80733e-05, 5.99008e-05, 6.16082e-05, 6.32037e-05, 6.46958e-05, 
			2.958e-05, 3.38024e-05, 3.77152e-05, 4.13288e-05, 4.46718e-05, 4.77686e-05, 5.06464e-05, 5.3324e-05, 5.582e-05, 5.81496e-05, 6.03256e-05, 6.23608e-05, 6.42645e-05, 6.60465e-05, 6.77151e-05, 6.92775e-05, 
			3.3462e-05, 3.76376e-05, 4.15308e-05, 4.51542e-05, 4.85246e-05, 5.16646e-05, 5.45928e-05, 5.73286e-05, 5.98854e-05, 6.22784e-05, 6.4519e-05, 6.6619e-05, 6.85864e-05, 7.0431e-05, 7.216e-05, 7.3782e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_13MAX" {
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

CapTable	"metal3_C_LATERAL_13MAX" {
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

CapTable	"metal4_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.42, 0.84, 1.26, 1.68, 2.1)
		wireSpacing		= (0.42, 0.84, 1.26, 1.68, 2.1, 2.52, 2.94, 3.36, 3.78, 4.2, 4.62, 5.04, 5.46, 5.88, 6.3, 6.72)
		capValue			= (
			1.00607e-05, 1.3771e-05, 1.70288e-05, 1.97215e-05, 2.18688e-05, 2.35373e-05, 2.48092e-05, 2.57678e-05, 2.65599e-05, 2.70668e-05, 2.74227e-05, 2.77225e-05, 2.78452e-05, 2.80092e-05, 2.81313e-05, 2.82743e-05, 
			1.39712e-05, 1.78131e-05, 2.12266e-05, 2.40634e-05, 2.6333e-05, 2.80994e-05, 2.95444e-05, 3.05374e-05, 3.12838e-05, 3.18313e-05, 3.21494e-05, 3.24718e-05, 3.27123e-05, 3.2958e-05, 3.30801e-05, 3.31681e-05, 
			1.80628e-05, 2.19978e-05, 2.54888e-05, 2.83958e-05, 3.07242e-05, 3.26164e-05, 3.39855e-05, 3.49984e-05, 3.58031e-05, 3.62766e-05, 3.67248e-05, 3.70608e-05, 3.73822e-05, 3.75577e-05, 3.7683e-05, 3.77799e-05, 
			2.2276e-05, 2.62574e-05, 2.97908e-05, 3.28226e-05, 3.51552e-05, 3.69738e-05, 3.83603e-05, 3.93017e-05, 4.0116e-05, 4.07292e-05, 4.12757e-05, 4.16055e-05, 4.1847e-05, 4.203e-05, 4.21625e-05, 4.226e-05, 
			2.6554e-05, 3.05716e-05, 3.42028e-05, 3.71466e-05, 3.94774e-05, 4.13448e-05, 4.26247e-05, 4.37152e-05, 4.454e-05, 4.52489e-05, 4.56965e-05, 4.60317e-05, 4.62837e-05, 4.64637e-05, 4.66022e-05, 4.66993e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_12MAX" {
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

CapTable	"metal3_C_TOP_GP_12MAX" {
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

CapTable	"metal3_C_LATERAL_12MAX" {
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

CapTable	"metal3_C_LATERAL_22MAX" {
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

CapTable	"metal3_C_BOTTOM_GP_23MAX" {
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

CapTable	"metal3_C_LATERAL_23MAX" {
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
			1.27813e-05, 1.63773e-05, 1.94872e-05, 2.22275e-05, 2.46647e-05, 2.68412e-05, 2.87877e-05, 3.05266e-05, 3.20794e-05, 3.34645e-05, 3.46984e-05, 3.5797e-05, 3.67729e-05, 3.76396e-05, 3.84108e-05, 3.9094e-05, 
			1.61344e-05, 1.9686e-05, 2.28896e-05, 2.57768e-05, 2.83797e-05, 3.07223e-05, 3.2828e-05, 3.47181e-05, 3.64117e-05, 3.79272e-05, 3.92798e-05, 4.04877e-05, 4.15629e-05, 4.25201e-05, 4.33738e-05, 4.4133e-05, 
			1.95805e-05, 2.3148e-05, 2.64255e-05, 2.94114e-05, 3.21182e-05, 3.45661e-05, 3.67748e-05, 3.87628e-05, 4.05483e-05, 4.2148e-05, 4.35792e-05, 4.48595e-05, 4.60012e-05, 4.70212e-05, 4.79274e-05, 4.87366e-05, 
			2.31421e-05, 2.67475e-05, 3.00815e-05, 3.31346e-05, 3.59159e-05, 3.84379e-05, 4.07183e-05, 4.27738e-05, 4.4625e-05, 4.62842e-05, 4.77719e-05, 4.91051e-05, 5.02965e-05, 5.13578e-05, 5.23063e-05, 5.31501e-05, 
			2.68181e-05, 3.04446e-05, 3.38188e-05, 3.69206e-05, 3.97536e-05, 4.23282e-05, 4.46586e-05, 4.67636e-05, 4.86615e-05, 5.03656e-05, 5.18961e-05, 5.32649e-05, 5.44913e-05, 5.5587e-05, 5.65649e-05, 5.74366e-05
		)
}

CapTable	"metal3_C_TOP_GP_22MAX" {
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

CapTable	"metal3_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000185622, 0.000111488, 8.4011e-05, 6.90452e-05, 5.93694e-05, 5.2474e-05, 4.72458e-05, 4.31098e-05, 3.97352e-05, 3.69162e-05, 3.45176e-05, 3.24456e-05, 3.06326e-05, 2.90296e-05, 2.75984e-05, 2.63102e-05, 
			0.000200778, 0.000123517, 9.40872e-05, 7.78098e-05, 6.71684e-05, 5.95358e-05, 5.37246e-05, 4.9114e-05, 4.5344e-05, 4.2189e-05, 3.95002e-05, 3.71738e-05, 3.51352e-05, 3.33296e-05, 3.17154e-05, 3.026e-05, 
			0.000210426, 0.000131802, 0.000101322, 8.42568e-05, 7.30302e-05, 6.49282e-05, 5.87356e-05, 5.38076e-05, 4.97676e-05, 4.63792e-05, 4.34852e-05, 4.0976e-05, 3.87732e-05, 3.68184e-05, 3.50674e-05, 3.3486e-05, 
			0.00021753, 0.000138163, 0.00010704, 8.94646e-05, 7.7827e-05, 6.93966e-05, 6.293e-05, 5.77686e-05, 5.35264e-05, 4.996e-05, 4.69072e-05, 4.42548e-05, 4.19214e-05, 3.98464e-05, 3.79842e-05, 3.62992e-05, 
			0.000222718, 0.000143211, 0.000111715, 9.3805e-05, 8.18842e-05, 7.32188e-05, 6.65504e-05, 6.12108e-05, 5.68112e-05, 5.3104e-05, 4.99234e-05, 4.7154e-05, 4.47128e-05, 4.25378e-05, 4.05822e-05, 3.88094e-05
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

CapTable	"metal3_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.46159e-06, 1.06096e-05, 1.24399e-05, 1.40602e-05, 1.55231e-05, 1.68592e-05, 1.80849e-05, 1.92117e-05, 2.02473e-05, 2.11993e-05, 2.20721e-05, 2.28712e-05, 2.36012e-05, 2.42664e-05, 2.4873e-05, 2.54241e-05, 
			1.032e-05, 1.23823e-05, 1.42392e-05, 1.59348e-05, 1.74961e-05, 1.89383e-05, 2.02718e-05, 2.15054e-05, 2.26445e-05, 2.36941e-05, 2.46584e-05, 2.55432e-05, 2.63522e-05, 2.70934e-05, 2.77679e-05, 2.83831e-05, 
			1.21715e-05, 1.42096e-05, 1.60981e-05, 1.78517e-05, 1.9482e-05, 2.09991e-05, 2.24097e-05, 2.37182e-05, 2.49286e-05, 2.60456e-05, 2.70735e-05, 2.80184e-05, 2.88844e-05, 2.96766e-05, 3.03988e-05, 3.10567e-05, 
			1.40579e-05, 1.61036e-05, 1.80236e-05, 1.98243e-05, 2.15103e-05, 2.30862e-05, 2.45547e-05, 2.59181e-05, 2.7182e-05, 2.8349e-05, 2.94259e-05, 3.04154e-05, 3.13233e-05, 3.21532e-05, 3.29114e-05, 3.36022e-05, 
			1.60034e-05, 1.80567e-05, 2.00071e-05, 2.18488e-05, 2.35801e-05, 2.52001e-05, 2.67124e-05, 2.81191e-05, 2.94244e-05, 3.06317e-05, 3.1745e-05, 3.2768e-05, 3.37063e-05, 3.45665e-05, 3.53514e-05, 3.60665e-05
		)
}

CapTable	"metal3_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000181628, 0.000106253, 7.7639e-05, 6.16186e-05, 5.09652e-05, 4.31684e-05, 3.71156e-05, 3.22322e-05, 2.81874e-05, 2.47746e-05, 2.18568e-05, 1.93373e-05, 1.71459e-05, 1.52283e-05, 1.35437e-05, 1.20579e-05, 
			0.000195298, 0.00011672, 8.6046e-05, 6.86018e-05, 5.68726e-05, 4.82354e-05, 4.15056e-05, 3.60636e-05, 3.15502e-05, 2.7739e-05, 2.4478e-05, 2.16614e-05, 1.921e-05, 1.70647e-05, 1.5179e-05, 1.3516e-05, 
			0.000203364, 0.000123344, 9.15342e-05, 7.32176e-05, 6.08254e-05, 5.1649e-05, 4.44768e-05, 3.86658e-05, 3.384e-05, 2.97614e-05, 2.62692e-05, 2.32512e-05, 2.0623e-05, 1.83231e-05, 1.63e-05, 1.45152e-05, 
			0.000208778, 0.000127943, 9.54214e-05, 7.6531e-05, 6.36722e-05, 5.41204e-05, 4.66362e-05, 4.05622e-05, 3.5512e-05, 3.12398e-05, 2.758e-05, 2.4415e-05, 2.16588e-05, 1.92447e-05, 1.71222e-05, 1.52482e-05, 
			0.000212174, 0.000131145, 9.81992e-05, 7.89294e-05, 6.57506e-05, 5.59364e-05, 4.82304e-05, 4.1965e-05, 3.67508e-05, 3.2336e-05, 2.8553e-05, 2.52794e-05, 2.24274e-05, 1.99297e-05, 1.77316e-05, 1.57917e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.34278e-05, 1.64101e-05, 1.8788e-05, 2.07718e-05, 2.248e-05, 2.39812e-05, 2.53199e-05, 2.65254e-05, 2.76197e-05, 2.86193e-05, 2.9537e-05, 3.03837e-05, 3.11686e-05, 3.18986e-05, 3.25807e-05, 3.32202e-05, 
			1.5632e-05, 1.82896e-05, 2.05428e-05, 2.24932e-05, 2.42108e-05, 2.57423e-05, 2.71213e-05, 2.83724e-05, 2.95148e-05, 3.05639e-05, 3.15315e-05, 3.24282e-05, 3.32629e-05, 3.40426e-05, 3.47737e-05, 3.54619e-05, 
			1.7666e-05, 2.0125e-05, 2.22802e-05, 2.41872e-05, 2.58884e-05, 2.74212e-05, 2.88118e-05, 3.00811e-05, 3.12463e-05, 3.23211e-05, 3.33169e-05, 3.42437e-05, 3.51094e-05, 3.59213e-05, 3.66853e-05, 3.74069e-05, 
			1.9599e-05, 2.19231e-05, 2.3996e-05, 2.58554e-05, 2.7531e-05, 2.90526e-05, 3.04414e-05, 3.1716e-05, 3.28915e-05, 3.39805e-05, 3.49937e-05, 3.59401e-05, 3.68277e-05, 3.76631e-05, 3.84519e-05, 3.91992e-05, 
			2.1472e-05, 2.3679e-05, 2.56798e-05, 2.7491e-05, 2.91378e-05, 3.06412e-05, 3.20211e-05, 3.32939e-05, 3.44729e-05, 3.55695e-05, 3.65939e-05, 3.75545e-05, 3.84583e-05, 3.93117e-05, 4.012e-05, 4.08882e-05
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
			9.96611e-06, 1.2594e-05, 1.48351e-05, 1.68068e-05, 1.85787e-05, 2.01873e-05, 2.1657e-05, 2.30026e-05, 2.42354e-05, 2.53632e-05, 2.63942e-05, 2.73353e-05, 2.8193e-05, 2.8975e-05, 2.96845e-05, 3.03295e-05, 
			1.22502e-05, 1.47751e-05, 1.70488e-05, 1.91124e-05, 2.10015e-05, 2.27374e-05, 2.43349e-05, 2.58043e-05, 2.71544e-05, 2.83935e-05, 2.95298e-05, 3.05685e-05, 3.15182e-05, 3.23818e-05, 3.31692e-05, 3.38835e-05, 
			1.45405e-05, 1.70426e-05, 1.93537e-05, 2.14887e-05, 2.34606e-05, 2.52852e-05, 2.697e-05, 2.85243e-05, 2.99561e-05, 3.12723e-05, 3.24809e-05, 3.35864e-05, 3.45975e-05, 3.55184e-05, 3.63591e-05, 3.71237e-05, 
			1.68871e-05, 1.94016e-05, 2.1754e-05, 2.39447e-05, 2.59815e-05, 2.78704e-05, 2.96201e-05, 3.12391e-05, 3.27313e-05, 3.41056e-05, 3.5366e-05, 3.65215e-05, 3.75773e-05, 3.85423e-05, 3.94204e-05, 4.02208e-05, 
			1.93136e-05, 2.18411e-05, 2.42297e-05, 2.64658e-05, 2.85503e-05, 3.04905e-05, 3.22902e-05, 3.39569e-05, 3.54938e-05, 3.691e-05, 3.82098e-05, 3.94033e-05, 4.04953e-05, 4.14903e-05, 4.2399e-05, 4.32261e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.3844e-05, 1.69534e-05, 1.94488e-05, 2.15511e-05, 2.33803e-05, 2.50088e-05, 2.64809e-05, 2.78258e-05, 2.90637e-05, 3.02095e-05, 3.12738e-05, 3.22655e-05, 3.31917e-05, 3.40581e-05, 3.48699e-05, 3.56312e-05, 
			1.6165e-05, 1.8952e-05, 2.13382e-05, 2.3427e-05, 2.52912e-05, 2.6978e-05, 2.85202e-05, 2.99407e-05, 3.12563e-05, 3.24795e-05, 3.36203e-05, 3.46864e-05, 3.56847e-05, 3.66208e-05, 3.74993e-05, 3.83248e-05, 
			1.8323e-05, 2.09254e-05, 2.32336e-05, 2.53032e-05, 2.71787e-05, 2.88952e-05, 3.04771e-05, 3.19426e-05, 3.33062e-05, 3.45783e-05, 3.57682e-05, 3.68831e-05, 3.7929e-05, 3.89113e-05, 3.98348e-05, 4.07034e-05, 
			2.04e-05, 2.28886e-05, 2.51402e-05, 2.71892e-05, 2.90668e-05, 3.07994e-05, 3.24052e-05, 3.38999e-05, 3.52952e-05, 3.66008e-05, 3.78246e-05, 3.89734e-05, 4.00527e-05, 4.1068e-05, 4.20238e-05, 4.29238e-05, 
			2.2449e-05, 2.48458e-05, 2.70506e-05, 2.90802e-05, 3.0955e-05, 3.26944e-05, 3.43142e-05, 3.58273e-05, 3.72437e-05, 3.85719e-05, 3.98192e-05, 4.09919e-05, 4.20951e-05, 4.31342e-05, 4.4113e-05, 4.50359e-05
		)
}

CapTable	"metal3_C_LATERAL_43MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000185274, 0.000111036, 8.34522e-05, 6.83722e-05, 5.8573e-05, 5.15446e-05, 4.61758e-05, 4.18938e-05, 3.83708e-05, 3.5404e-05, 3.28608e-05, 3.06498e-05, 2.87058e-05, 2.69808e-05, 2.54384e-05, 2.40506e-05, 
			0.000200316, 0.000122932, 9.33668e-05, 7.6941e-05, 6.6139e-05, 5.8336e-05, 5.23474e-05, 4.75564e-05, 4.36064e-05, 4.02758e-05, 3.7418e-05, 3.49322e-05, 3.27458e-05, 3.08052e-05, 2.907e-05, 2.75084e-05, 
			0.000209824, 0.000131047, 0.000100396, 8.31458e-05, 7.17212e-05, 6.34132e-05, 5.7011e-05, 5.1874e-05, 4.76296e-05, 4.40452e-05, 4.0966e-05, 3.8285e-05, 3.59254e-05, 3.383e-05, 3.19554e-05, 3.0268e-05, 
			0.000216748, 0.00013719, 0.000105859, 8.80598e-05, 7.61892e-05, 6.75214e-05, 6.08182e-05, 5.54252e-05, 5.09608e-05, 4.71846e-05, 4.3937e-05, 4.11068e-05, 3.86142e-05, 3.63992e-05, 3.44164e-05, 3.26308e-05, 
			0.000221706, 0.000141969, 0.000110226, 9.20578e-05, 7.9873e-05, 7.09446e-05, 6.40184e-05, 5.84314e-05, 5.37982e-05, 4.9874e-05, 4.64954e-05, 4.35484e-05, 4.0951e-05, 3.86414e-05, 3.65732e-05, 3.47094e-05
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

CapTable	"metal3_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			8.3148e-06, 1.0429e-05, 1.22101e-05, 1.37674e-05, 1.51654e-05, 1.64385e-05, 1.76086e-05, 1.86897e-05, 1.96912e-05, 2.06196e-05, 2.14786e-05, 2.22738e-05, 2.30093e-05, 2.36889e-05, 2.43161e-05, 2.48928e-05, 
			1.00815e-05, 1.20754e-05, 1.3859e-05, 1.5474e-05, 1.69569e-05, 1.8325e-05, 1.95947e-05, 2.07753e-05, 2.1874e-05, 2.28946e-05, 2.38431e-05, 2.47229e-05, 2.55385e-05, 2.62917e-05, 2.69884e-05, 2.76309e-05, 
			1.18186e-05, 1.3771e-05, 1.55694e-05, 1.72304e-05, 1.87737e-05, 2.02112e-05, 2.15532e-05, 2.28049e-05, 2.39721e-05, 2.50597e-05, 2.60719e-05, 2.70125e-05, 2.78836e-05, 2.86905e-05, 2.94354e-05, 3.01232e-05, 
			1.35788e-05, 1.55261e-05, 1.73461e-05, 1.90476e-05, 2.06406e-05, 2.21328e-05, 2.35287e-05, 2.48353e-05, 2.60562e-05, 2.71956e-05, 2.82559e-05, 2.92418e-05, 3.01569e-05, 3.1003e-05, 3.17854e-05, 3.25076e-05, 
			1.53896e-05, 1.73351e-05, 1.91788e-05, 2.09176e-05, 2.25513e-05, 2.40852e-05, 2.5526e-05, 2.68764e-05, 2.81395e-05, 2.93177e-05, 3.04163e-05, 3.14371e-05, 3.23847e-05, 3.32621e-05, 3.40735e-05, 3.48225e-05
		)
}

CapTable	"metal3_C_TOP_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			9.0238e-06, 1.12464e-05, 1.31167e-05, 1.47593e-05, 1.62374e-05, 1.75888e-05, 1.88351e-05, 1.99889e-05, 2.10595e-05, 2.20524e-05, 2.29749e-05, 2.38301e-05, 2.46222e-05, 2.53533e-05, 2.60283e-05, 2.6651e-05, 
			1.08937e-05, 1.29982e-05, 1.48754e-05, 1.65814e-05, 1.81501e-05, 1.96059e-05, 2.09603e-05, 2.22226e-05, 2.33993e-05, 2.44961e-05, 2.55164e-05, 2.64643e-05, 2.73424e-05, 2.81567e-05, 2.89082e-05, 2.96015e-05, 
			1.27324e-05, 1.47908e-05, 1.66866e-05, 1.8444e-05, 2.00813e-05, 2.16115e-05, 2.30428e-05, 2.43832e-05, 2.56365e-05, 2.68069e-05, 2.78962e-05, 2.89095e-05, 2.98512e-05, 3.0723e-05, 3.15289e-05, 3.2274e-05, 
			1.45902e-05, 1.66414e-05, 1.85623e-05, 2.03646e-05, 2.20562e-05, 2.3646e-05, 2.51396e-05, 2.65405e-05, 2.78525e-05, 2.90775e-05, 3.02209e-05, 3.1285e-05, 3.22729e-05, 3.31895e-05, 3.4038e-05, 3.48193e-05, 
			1.64984e-05, 1.85521e-05, 2.04994e-05, 2.23394e-05, 2.40771e-05, 2.57154e-05, 2.72582e-05, 2.8706e-05, 3.00633e-05, 3.1334e-05, 3.2519e-05, 3.36217e-05, 3.46478e-05, 3.55987e-05, 3.64771e-05, 3.72892e-05
		)
}

CapTable	"metal3_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182483, 0.000107396, 7.90352e-05, 6.32338e-05, 5.27626e-05, 4.51104e-05, 3.91658e-05, 3.43566e-05, 3.03548e-05, 2.69582e-05, 2.40326e-05, 2.14852e-05, 1.92486e-05, 1.72736e-05, 1.55203e-05, 1.39586e-05, 
			0.000196516, 0.000118235, 8.78246e-05, 7.06026e-05, 5.90538e-05, 5.05552e-05, 4.39242e-05, 3.8545e-05, 3.40614e-05, 3.0252e-05, 2.69686e-05, 2.41088e-05, 2.15982e-05, 1.93803e-05, 1.74115e-05, 1.56576e-05, 
			0.000204958, 0.000125235, 9.3683e-05, 7.55786e-05, 6.3353e-05, 5.42996e-05, 4.72102e-05, 4.1445e-05, 3.66326e-05, 3.25386e-05, 2.90086e-05, 2.59322e-05, 2.32304e-05, 2.08432e-05, 1.87249e-05, 1.68364e-05, 
			0.00021075, 0.0001302, 9.79206e-05, 7.92238e-05, 6.65122e-05, 5.70632e-05, 4.96418e-05, 4.35944e-05, 3.85394e-05, 3.42362e-05, 3.05226e-05, 2.72852e-05, 2.44412e-05, 2.19282e-05, 1.96966e-05, 1.77098e-05, 
			0.00021451, 0.000133746, 0.000101019, 8.192e-05, 6.88656e-05, 5.91324e-05, 5.14678e-05, 4.52106e-05, 3.9974e-05, 3.55124e-05, 3.16602e-05, 2.8302e-05, 2.53498e-05, 2.2741e-05, 2.04258e-05, 1.83619e-05
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

CapTable	"metal2_C_LATERAL_13MAX" {
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

CapTable	"metal2_C_BOTTOM_GP_14MAX" {
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

CapTable	"metal2_C_LATERAL_14MAX" {
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
			2.93592e-05, 3.94378e-05, 4.75032e-05, 5.38349e-05, 5.87825e-05, 6.26504e-05, 6.56863e-05, 6.80829e-05, 6.99875e-05, 7.15128e-05, 7.2743e-05, 7.37437e-05, 7.45636e-05, 7.52409e-05, 7.58049e-05, 7.62764e-05, 
			4.20726e-05, 5.21744e-05, 6.03128e-05, 6.67558e-05, 7.18414e-05, 7.58592e-05, 7.90443e-05, 8.15832e-05, 8.36197e-05, 8.52644e-05, 8.66031e-05, 8.77016e-05, 8.8608e-05, 8.93623e-05, 8.99949e-05, 9.05268e-05, 
			5.49389e-05, 6.49606e-05, 7.30795e-05, 7.95597e-05, 8.47078e-05, 8.88082e-05, 9.20848e-05, 9.47156e-05, 9.68404e-05, 9.85702e-05, 9.9986e-05, 0.000101155, 0.000102126, 0.00010294, 0.000103623, 0.000104202, 
			6.78135e-05, 7.77746e-05, 8.58685e-05, 9.23645e-05, 9.75582e-05, 0.000101716, 0.000105057, 0.000107756, 0.000109949, 0.000111743, 0.000113219, 0.000114446, 0.000115469, 0.000116328, 0.000117054, 0.000117673, 
			8.06792e-05, 9.05488e-05, 9.86128e-05, 0.000105113, 0.000110338, 0.000114537, 0.000117927, 0.00012068, 0.000122929, 0.000124775, 0.000126304, 0.000127576, 0.000128642, 0.000129539, 0.000130302, 0.000130952
		)
}

CapTable	"metal2_C_TOP_GP_13MAX" {
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

CapTable	"metal2_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178402, 0.000102315, 7.38282e-05, 5.83016e-05, 4.83526e-05, 4.13862e-05, 3.62338e-05, 3.2279e-05, 2.91614e-05, 2.66526e-05, 2.45994e-05, 2.28956e-05, 2.1464e-05, 2.0248e-05, 1.92043e-05, 1.83002e-05, 
			0.000189295, 0.000110859, 8.09696e-05, 6.45604e-05, 5.3991e-05, 4.65706e-05, 4.10696e-05, 3.68376e-05, 3.34922e-05, 3.07918e-05, 2.85744e-05, 2.67272e-05, 2.51688e-05, 2.38392e-05, 2.2693e-05, 2.16956e-05, 
			0.000195841, 0.000116661, 8.61684e-05, 6.93208e-05, 5.84458e-05, 5.07832e-05, 4.50884e-05, 4.06956e-05, 3.72128e-05, 3.43924e-05, 3.20682e-05, 3.01248e-05, 2.84786e-05, 2.70684e-05, 2.58474e-05, 2.478e-05, 
			0.00020066, 0.000121239, 9.04718e-05, 7.34e-05, 6.2343e-05, 5.45376e-05, 4.87216e-05, 4.42232e-05, 4.06464e-05, 3.77406e-05, 3.5338e-05, 3.33216e-05, 3.16072e-05, 3.01326e-05, 2.88508e-05, 2.77256e-05, 
			0.000204226, 0.000125071, 9.4225e-05, 7.70492e-05, 6.58932e-05, 5.80042e-05, 5.21112e-05, 4.75388e-05, 4.38932e-05, 4.09226e-05, 3.84582e-05, 3.63832e-05, 3.46126e-05, 3.30838e-05, 3.175e-05, 3.05748e-05
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
			5.13947e-06, 6.72883e-06, 8.14158e-06, 9.40214e-06, 1.05215e-05, 1.15091e-05, 1.23769e-05, 1.31362e-05, 1.37986e-05, 1.43754e-05, 1.48774e-05, 1.53135e-05, 1.56929e-05, 1.60237e-05, 1.63121e-05, 1.65634e-05, 
			6.61514e-06, 8.18971e-06, 9.63231e-06, 1.09392e-05, 1.21114e-05, 1.3154e-05, 1.40758e-05, 1.4887e-05, 1.55986e-05, 1.62214e-05, 1.67655e-05, 1.72415e-05, 1.76572e-05, 1.8021e-05, 1.83395e-05, 1.86179e-05, 
			8.12748e-06, 9.69696e-06, 1.11553e-05, 1.2488e-05, 1.36908e-05, 1.47665e-05, 1.57218e-05, 1.65664e-05, 1.73099e-05, 1.79631e-05, 1.8537e-05, 1.90404e-05, 1.94815e-05, 1.98687e-05, 2.02078e-05, 2.05057e-05, 
			9.66145e-06, 1.1232e-05, 1.27003e-05, 1.40499e-05, 1.52735e-05, 1.6372e-05, 1.73511e-05, 1.82193e-05, 1.8987e-05, 1.96636e-05, 2.02597e-05, 2.07838e-05, 2.1244e-05, 2.16488e-05, 2.20045e-05, 2.23182e-05, 
			1.12167e-05, 1.27831e-05, 1.42588e-05, 1.56206e-05, 1.68591e-05, 1.79738e-05, 1.89706e-05, 1.98579e-05, 2.06442e-05, 2.13389e-05, 2.19523e-05, 2.24921e-05, 2.29677e-05, 2.33867e-05, 2.37573e-05, 2.40828e-05
		)
}

CapTable	"metal2_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000175738, 9.86078e-05, 6.91202e-05, 5.26536e-05, 4.18394e-05, 3.40916e-05, 2.82436e-05, 2.36782e-05, 2.00308e-05, 1.70673e-05, 1.46285e-05, 1.26011e-05, 1.09016e-05, 9.4669e-06, 8.2484e-06, 7.20782e-06, 
			0.000185281, 0.000105657, 7.46248e-05, 5.71428e-05, 4.55876e-05, 3.7277e-05, 3.09846e-05, 2.60576e-05, 2.21092e-05, 1.88914e-05, 1.62351e-05, 1.402e-05, 1.21572e-05, 1.058e-05, 9.23652e-06, 8.0859e-06, 
			0.000190283, 0.000109788, 7.80356e-05, 6.00094e-05, 4.80548e-05, 3.94194e-05, 3.28608e-05, 2.77106e-05, 2.35716e-05, 2.01888e-05, 1.73885e-05, 1.50469e-05, 1.30725e-05, 1.13965e-05, 9.96524e-06, 8.73694e-06, 
			0.00019338, 0.000112533, 8.04066e-05, 6.20684e-05, 4.98544e-05, 4.10096e-05, 3.42726e-05, 2.89682e-05, 2.46944e-05, 2.11924e-05, 1.82867e-05, 1.58512e-05, 1.37929e-05, 1.20421e-05, 1.05435e-05, 9.25456e-06, 
			0.000195068, 0.000114395, 8.21062e-05, 6.35904e-05, 5.12144e-05, 4.2232e-05, 3.53722e-05, 2.9956e-05, 2.55824e-05, 2.1991e-05, 1.90048e-05, 1.64968e-05, 1.43735e-05, 1.25634e-05, 1.1012e-05, 9.67526e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.70476e-05, 2.1882e-05, 2.5958e-05, 2.94282e-05, 3.23907e-05, 3.4923e-05, 3.70893e-05, 3.89455e-05, 4.0539e-05, 4.19109e-05, 4.30966e-05, 4.41253e-05, 4.50223e-05, 4.58081e-05, 4.65006e-05, 4.71143e-05, 
			2.15274e-05, 2.61252e-05, 3.01174e-05, 3.35624e-05, 3.65296e-05, 3.90813e-05, 4.1276e-05, 4.31657e-05, 4.47964e-05, 4.62075e-05, 4.74335e-05, 4.85031e-05, 4.94409e-05, 5.02673e-05, 5.09997e-05, 5.16524e-05, 
			2.59068e-05, 3.03074e-05, 3.41736e-05, 3.75372e-05, 4.04494e-05, 4.29673e-05, 4.5143e-05, 4.70252e-05, 4.86572e-05, 5.00764e-05, 5.13156e-05, 5.24022e-05, 5.336e-05, 5.42083e-05, 5.49642e-05, 5.56415e-05, 
			3.0149e-05, 3.43743e-05, 3.81022e-05, 4.1363e-05, 4.42e-05, 4.66624e-05, 4.88009e-05, 5.06589e-05, 5.22771e-05, 5.36908e-05, 5.49309e-05, 5.60237e-05, 5.69914e-05, 5.7853e-05, 5.86243e-05, 5.93189e-05, 
			3.4247e-05, 3.82854e-05, 4.1872e-05, 4.50238e-05, 4.77778e-05, 5.01788e-05, 5.22708e-05, 5.40972e-05, 5.56949e-05, 5.70965e-05, 5.83317e-05, 5.94246e-05, 6.03969e-05, 6.12667e-05, 6.20488e-05, 6.27563e-05
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
			1.52249e-05, 1.99584e-05, 2.41042e-05, 2.77439e-05, 3.09338e-05, 3.37199e-05, 3.61441e-05, 3.82481e-05, 4.00702e-05, 4.16465e-05, 4.30096e-05, 4.41891e-05, 4.52103e-05, 4.60949e-05, 4.68628e-05, 4.7531e-05, 
			1.99981e-05, 2.47519e-05, 2.90219e-05, 3.2817e-05, 3.61681e-05, 3.9111e-05, 4.16836e-05, 4.39258e-05, 4.58758e-05, 4.75697e-05, 4.90406e-05, 5.03173e-05, 5.14272e-05, 5.23922e-05, 5.32326e-05, 5.39665e-05, 
			2.49383e-05, 2.97216e-05, 3.40581e-05, 3.79366e-05, 4.13744e-05, 4.44066e-05, 4.70668e-05, 4.93929e-05, 5.14233e-05, 5.31929e-05, 5.47336e-05, 5.60755e-05, 5.72456e-05, 5.82659e-05, 5.91579e-05, 5.99379e-05, 
			3.0001e-05, 3.48126e-05, 3.91861e-05, 4.31118e-05, 4.66051e-05, 4.96934e-05, 5.24123e-05, 5.47965e-05, 5.68826e-05, 5.8706e-05, 6.02978e-05, 6.16879e-05, 6.29035e-05, 6.39659e-05, 6.48969e-05, 6.57126e-05, 
			3.51559e-05, 3.99645e-05, 4.4354e-05, 4.8307e-05, 5.18355e-05, 5.49612e-05, 5.77202e-05, 6.01461e-05, 6.22734e-05, 6.41371e-05, 6.57679e-05, 6.71961e-05, 6.84468e-05, 6.95429e-05, 7.05027e-05, 7.13469e-05
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

CapTable	"metal2_C_BOTTOM_GP_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			1.1547e-05, 1.42958e-05, 1.6491e-05, 1.83024e-05, 1.9828e-05, 2.11316e-05, 2.22577e-05, 2.32395e-05, 2.41025e-05, 2.4867e-05, 2.5549e-05, 2.6162e-05, 2.67167e-05, 2.72221e-05, 2.76854e-05, 2.81129e-05, 
			1.3665e-05, 1.60948e-05, 1.81316e-05, 1.98564e-05, 2.13349e-05, 2.26132e-05, 2.37275e-05, 2.47065e-05, 2.55731e-05, 2.63458e-05, 2.70397e-05, 2.76669e-05, 2.82379e-05, 2.8761e-05, 2.92436e-05, 2.9691e-05, 
			1.5589e-05, 1.77926e-05, 1.96864e-05, 2.13188e-05, 2.27335e-05, 2.39687e-05, 2.50543e-05, 2.6015e-05, 2.68711e-05, 2.76391e-05, 2.83331e-05, 2.89642e-05, 2.9542e-05, 3.00743e-05, 3.05674e-05, 3.10271e-05, 
			1.7348e-05, 1.93791e-05, 2.11478e-05, 2.2691e-05, 2.40408e-05, 2.52292e-05, 2.62812e-05, 2.72184e-05, 2.80589e-05, 2.88178e-05, 2.9507e-05, 3.01375e-05, 3.07179e-05, 3.12551e-05, 3.17553e-05, 3.22238e-05, 
			1.8978e-05, 2.08564e-05, 2.25144e-05, 2.39746e-05, 2.52634e-05, 2.64052e-05, 2.74232e-05, 2.83362e-05, 2.91596e-05, 2.99074e-05, 3.05904e-05, 3.12183e-05, 3.17988e-05, 3.23391e-05, 3.28442e-05, 3.33192e-05
		)
}

CapTable	"metal2_C_LATERAL_34MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000182715, 0.000107925, 8.04928e-05, 6.58034e-05, 5.65028e-05, 5.0026e-05, 4.52316e-05, 4.15278e-05, 3.85742e-05, 3.61594e-05, 3.4145e-05, 3.24354e-05, 3.09634e-05, 2.96794e-05, 2.85468e-05, 2.75374e-05, 
			0.000195194, 0.000117968, 8.90484e-05, 7.33942e-05, 6.3398e-05, 5.63996e-05, 5.1197e-05, 4.71628e-05, 4.39342e-05, 4.12852e-05, 3.90674e-05, 3.71788e-05, 3.55468e-05, 3.41184e-05, 3.28538e-05, 3.17234e-05, 
			0.000203212, 0.00012511, 9.54676e-05, 7.92702e-05, 6.88772e-05, 6.1559e-05, 5.60954e-05, 5.1842e-05, 4.8425e-05, 4.5611e-05, 4.32462e-05, 4.1225e-05, 3.9472e-05, 3.79324e-05, 3.65652e-05, 3.53388e-05, 
			0.000209336, 0.000130849, 0.000100804, 8.4274e-05, 7.36074e-05, 6.60678e-05, 6.04162e-05, 5.59996e-05, 5.2438e-05, 4.9494e-05, 4.70114e-05, 4.48818e-05, 4.30284e-05, 4.13954e-05, 3.99406e-05, 3.86318e-05, 
			0.000214024, 0.000135655, 0.000105408, 8.86694e-05, 7.78166e-05, 7.0119e-05, 6.43262e-05, 5.97804e-05, 5.6102e-05, 5.30508e-05, 5.04688e-05, 4.82468e-05, 4.63072e-05, 4.45926e-05, 4.30608e-05, 4.1679e-05
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
			1.13745e-05, 1.46126e-05, 1.74053e-05, 1.98677e-05, 2.20648e-05, 2.40377e-05, 2.58138e-05, 2.74154e-05, 2.88605e-05, 3.01642e-05, 3.13404e-05, 3.2401e-05, 3.33573e-05, 3.42192e-05, 3.49968e-05, 3.56962e-05, 
			1.43568e-05, 1.74947e-05, 2.03176e-05, 2.28654e-05, 2.51731e-05, 2.72662e-05, 2.91653e-05, 3.08877e-05, 3.24492e-05, 3.38639e-05, 3.51445e-05, 3.63038e-05, 3.73519e-05, 3.8299e-05, 3.91534e-05, 3.99259e-05, 
			1.7352e-05, 2.04536e-05, 2.33014e-05, 2.59067e-05, 2.82875e-05, 3.04612e-05, 3.24436e-05, 3.42493e-05, 3.58917e-05, 3.73842e-05, 3.87386e-05, 3.99675e-05, 4.10792e-05, 4.20868e-05, 4.29972e-05, 4.38209e-05, 
			2.03821e-05, 2.34823e-05, 2.63546e-05, 2.90046e-05, 3.14408e-05, 3.36747e-05, 3.57193e-05, 3.75874e-05, 3.92916e-05, 4.08431e-05, 4.22542e-05, 4.35345e-05, 4.46973e-05, 4.57497e-05, 4.67039e-05, 4.75656e-05, 
			2.34682e-05, 2.65626e-05, 2.94583e-05, 3.21429e-05, 3.46224e-05, 3.69035e-05, 3.89966e-05, 4.09134e-05, 4.26654e-05, 4.42618e-05, 4.57167e-05, 4.70383e-05, 4.82393e-05, 4.93271e-05, 5.03153e-05, 5.121e-05
		)
}

CapTable	"metal2_C_TOP_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			5.72174e-06, 7.3568e-06, 8.78015e-06, 1.0043e-05, 1.11734e-05, 1.21901e-05, 1.3108e-05, 1.39373e-05, 1.46868e-05, 1.53646e-05, 1.59771e-05, 1.65307e-05, 1.70308e-05, 1.74823e-05, 1.78891e-05, 1.82574e-05, 
			7.16025e-06, 8.73964e-06, 1.017e-05, 1.14696e-05, 1.26515e-05, 1.37269e-05, 1.47054e-05, 1.55957e-05, 1.64052e-05, 1.71404e-05, 1.78076e-05, 1.84122e-05, 1.89599e-05, 1.94559e-05, 1.99056e-05, 2.03113e-05, 
			8.60464e-06, 1.01568e-05, 1.15932e-05, 1.29171e-05, 1.41326e-05, 1.52472e-05, 1.62674e-05, 1.71998e-05, 1.80507e-05, 1.88261e-05, 1.95317e-05, 2.01726e-05, 2.0756e-05, 2.1284e-05, 2.17635e-05, 2.21974e-05, 
			1.00587e-05, 1.16013e-05, 1.3045e-05, 1.43876e-05, 1.56294e-05, 1.6774e-05, 1.78262e-05, 1.87907e-05, 1.96729e-05, 2.0479e-05, 2.1214e-05, 2.18844e-05, 2.24931e-05, 2.30473e-05, 2.35495e-05, 2.40065e-05, 
			1.15338e-05, 1.3068e-05, 1.45201e-05, 1.58789e-05, 1.71416e-05, 1.83099e-05, 1.93868e-05, 2.03766e-05, 2.12837e-05, 2.21155e-05, 2.28738e-05, 2.35663e-05, 2.41966e-05, 2.47714e-05, 2.52912e-05, 2.57633e-05
		)
}

CapTable	"metal2_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.14, 0.28, 0.42, 0.56, 0.7)
		wireSpacing		= (0.14, 0.28, 0.42, 0.56, 0.7, 0.84, 0.98, 1.12, 1.26, 1.4, 1.54, 1.68, 1.82, 1.96, 2.1, 2.24)
		capValue			= (
			0.000178236, 0.000101961, 7.31582e-05, 5.71986e-05, 4.67228e-05, 3.91642e-05, 3.33804e-05, 2.87788e-05, 2.50168e-05, 2.18804e-05, 1.92273e-05, 1.69581e-05, 1.50005e-05, 1.33004e-05, 1.18157e-05, 1.05135e-05, 
			0.000188947, 0.000110143, 7.97334e-05, 6.26832e-05, 5.1388e-05, 4.31908e-05, 3.68912e-05, 3.18618e-05, 2.77382e-05, 2.4292e-05, 2.13706e-05, 1.88668e-05, 1.67033e-05, 1.48212e-05, 1.31754e-05, 1.17299e-05, 
			0.000195067, 0.000115297, 8.40654e-05, 6.63732e-05, 5.45888e-05, 4.59872e-05, 3.93514e-05, 3.40372e-05, 2.96692e-05, 2.60106e-05, 2.29034e-05, 2.0236e-05, 1.79276e-05, 1.59169e-05, 1.41567e-05, 1.26089e-05, 
			0.000199163, 0.000118921, 8.72044e-05, 6.91008e-05, 5.69718e-05, 4.80872e-05, 4.12106e-05, 3.56892e-05, 3.11408e-05, 2.73242e-05, 2.40774e-05, 2.12866e-05, 1.88683e-05, 1.67598e-05, 1.49118e-05, 1.3286e-05, 
			0.0002017, 0.000121507, 8.95206e-05, 7.11492e-05, 5.8782e-05, 4.96966e-05, 4.26446e-05, 3.69676e-05, 3.22826e-05, 2.83452e-05, 2.49914e-05, 2.21056e-05, 1.96023e-05, 1.74179e-05, 1.55021e-05, 1.38152e-05
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

CapTable	"metal1_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000171889, 9.07024e-05, 5.91078e-05, 4.18356e-05, 3.09944e-05, 2.36682e-05, 1.84828e-05, 1.46916e-05, 1.18505e-05, 9.67872e-06, 7.9907e-06, 6.65984e-06, 5.59738e-06, 4.73974e-06, 4.04048e-06, 3.46526e-06, 
			0.000179537, 9.62968e-05, 6.35316e-05, 4.54798e-05, 3.40502e-05, 2.62576e-05, 2.06914e-05, 1.65839e-05, 1.34779e-05, 1.10828e-05, 9.20588e-06, 7.71456e-06, 6.51536e-06, 5.54086e-06, 4.7414e-06, 4.08e-06, 
			0.000183135, 9.95232e-05, 6.63336e-05, 4.7915e-05, 3.61736e-05, 2.8109e-05, 2.23062e-05, 1.79934e-05, 1.47091e-05, 1.21596e-05, 1.01489e-05, 8.5416e-06, 7.24192e-06, 6.18018e-06, 5.30496e-06, 4.57758e-06, 
			0.000185063, 0.000101704, 6.8359e-05, 4.9733e-05, 3.77974e-05, 2.9556e-05, 2.35854e-05, 1.91227e-05, 1.57054e-05, 1.30385e-05, 1.09244e-05, 9.22652e-06, 7.84736e-06, 6.71594e-06, 5.77966e-06, 4.99864e-06, 
			0.00018662, 0.000103429, 6.999e-05, 5.12204e-05, 3.91344e-05, 3.07448e-05, 2.4646e-05, 2.00664e-05, 1.65437e-05, 1.37827e-05, 1.1585e-05, 9.81312e-06, 8.36848e-06, 7.17936e-06, 6.19198e-06, 5.36608e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			4.31002e-05, 5.77952e-05, 6.94772e-05, 7.86014e-05, 8.56984e-05, 9.12308e-05, 9.55667e-05, 9.89854e-05, 0.000101702, 0.000103873, 0.000105622, 0.000107037, 0.000108188, 0.000109128, 0.000109896, 0.000110526, 
			6.13114e-05, 7.60688e-05, 8.78874e-05, 9.72062e-05, 0.000104533, 0.000110302, 0.000114866, 0.000118496, 0.000121404, 0.000123748, 0.000125647, 0.000127194, 0.000128462, 0.000129504, 0.000130362, 0.000131071, 
			7.97856e-05, 9.4415e-05, 0.000106206, 0.000115577, 0.000123, 0.000128891, 0.000133583, 0.000137341, 0.00014037, 0.000142826, 0.000144828, 0.000146468, 0.00014782, 0.000148937, 0.000149864, 0.000150636, 
			9.82336e-05, 0.000112671, 0.000124373, 0.000133731, 0.000141183, 0.000147125, 0.000151889, 0.000155723, 0.000158828, 0.000161359, 0.000163432, 0.000165141, 0.000166556, 0.000167733, 0.000168715, 0.000169538, 
			0.000116702, 0.000131049, 0.00014272, 0.000152094, 0.000159595, 0.000165608, 0.000170445, 0.000174358, 0.00017754, 0.000180143, 0.000182286, 0.000184058, 0.000185532, 0.000186763, 0.000187796, 0.000188665
		)
}

CapTable	"metal1_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000171823, 9.03918e-05, 5.85128e-05, 4.09326e-05, 2.97776e-05, 2.21462e-05, 1.66743e-05, 1.26216e-05, 9.54722e-06, 7.17152e-06, 5.30864e-06, 3.83066e-06, 2.64704e-06, 1.6921e-06, 9.17292e-07, 2.86062e-07, 
			0.000179704, 9.62422e-05, 6.32076e-05, 4.48608e-05, 3.31304e-05, 2.50462e-05, 1.92072e-05, 1.48517e-05, 1.1525e-05, 8.9373e-06, 6.8952e-06, 5.26476e-06, 3.95064e-06, 2.8833e-06, 2.01106e-06, 1.29486e-06, 
			0.000183535, 9.9716e-05, 6.6272e-05, 4.75762e-05, 3.55524e-05, 2.72142e-05, 2.11562e-05, 1.6611e-05, 1.31197e-05, 1.0389e-05, 8.22222e-06, 6.48268e-06, 5.07272e-06, 3.92082e-06, 2.97364e-06, 2.19066e-06, 
			0.000185741, 0.000102209, 6.86472e-05, 4.97802e-05, 3.75968e-05, 2.91138e-05, 2.29154e-05, 1.82437e-05, 1.46386e-05, 1.18057e-05, 9.54692e-06, 7.7246e-06, 6.23982e-06, 5.0201e-06, 4.01116e-06, 3.17174e-06, 
			0.000187568, 0.000104211, 7.05644e-05, 5.15642e-05, 3.92406e-05, 3.06188e-05, 2.42998e-05, 1.95171e-05, 1.58111e-05, 1.2887e-05, 1.05461e-05, 8.64986e-06, 7.09852e-06, 5.81878e-06, 4.75562e-06, 3.86712e-06
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
			4.00482e-05, 5.33868e-05, 6.3801e-05, 7.17828e-05, 7.78752e-05, 8.25359e-05, 8.61225e-05, 8.89006e-05, 9.10732e-05, 9.27873e-05, 9.41501e-05, 9.52451e-05, 9.61313e-05, 9.68546e-05, 9.74499e-05, 9.79425e-05, 
			5.75229e-05, 7.09921e-05, 8.15759e-05, 8.97645e-05, 9.60856e-05, 0.000100975, 0.000104778, 0.000107758, 0.00011011, 0.000111983, 0.000113488, 0.000114706, 0.000115701, 0.000116517, 0.000117194, 0.000117758, 
			7.52681e-05, 8.86634e-05, 9.92565e-05, 0.000107521, 0.000113951, 0.00011897, 0.000122907, 0.000126015, 0.000128489, 0.000130473, 0.000132077, 0.000133384, 0.000134457, 0.000135344, 0.000136082, 0.0001367, 
			9.30515e-05, 0.000106331, 0.000116896, 0.000125196, 0.000131695, 0.000136797, 0.000140829, 0.000144032, 0.000146595, 0.000148664, 0.000150345, 0.000151721, 0.000152856, 0.0001538, 0.000154587, 0.000155249, 
			0.000110866, 0.000124085, 0.000134639, 0.000142968, 0.000149521, 0.000154696, 0.0001588, 0.000162078, 0.000164714, 0.000166849, 0.000168592, 0.000170025, 0.000171211, 0.0001722, 0.000173028, 0.000173728
		)
}

CapTable	"metal1_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			3.00424e-06, 4.06581e-06, 4.98323e-06, 5.74159e-06, 6.35042e-06, 6.83191e-06, 7.21164e-06, 7.51175e-06, 7.74932e-06, 7.93801e-06, 8.09017e-06, 8.21311e-06, 8.31333e-06, 8.39567e-06, 8.46361e-06, 8.52023e-06, 
			4.06672e-06, 5.13406e-06, 6.07054e-06, 6.85474e-06, 7.49322e-06, 8.0055e-06, 8.41434e-06, 8.74147e-06, 9.00326e-06, 9.21404e-06, 9.38479e-06, 9.52415e-06, 9.63877e-06, 9.73365e-06, 9.81248e-06, 9.87865e-06, 
			5.14529e-06, 6.21037e-06, 7.15389e-06, 7.95186e-06, 8.60766e-06, 9.13854e-06, 9.56499e-06, 9.90964e-06, 1.0188e-05, 1.04139e-05, 1.05984e-05, 1.075e-05, 1.08753e-05, 1.09795e-05, 1.10668e-05, 1.11403e-05, 
			6.22289e-06, 7.28384e-06, 8.23364e-06, 9.04125e-06, 9.70886e-06, 1.02528e-05, 1.0694e-05, 1.10514e-05, 1.13421e-05, 1.15797e-05, 1.17748e-05, 1.19358e-05, 1.20697e-05, 1.21814e-05, 1.22756e-05, 1.23557e-05, 
			7.30278e-06, 8.36381e-06, 9.31739e-06, 1.0131e-05, 1.08084e-05, 1.13629e-05, 1.18147e-05, 1.2183e-05, 1.24837e-05, 1.27306e-05, 1.29342e-05, 1.31032e-05, 1.32443e-05, 1.33625e-05, 1.34626e-05, 1.35469e-05
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

CapTable	"metal1_C_LATERAL_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000187199, 0.000109463, 7.95266e-05, 6.27534e-05, 5.16988e-05, 4.37434e-05, 3.77048e-05, 3.29592e-05, 2.91382e-05, 2.6007e-05, 2.34058e-05, 2.12214e-05, 1.93704e-05, 1.77897e-05, 1.64304e-05, 1.52542e-05, 
			0.000199976, 0.000118892, 8.69036e-05, 6.87598e-05, 5.6719e-05, 4.80236e-05, 4.14108e-05, 3.62078e-05, 3.20152e-05, 2.85772e-05, 2.57196e-05, 2.3319e-05, 2.1284e-05, 1.95455e-05, 1.80504e-05, 1.67566e-05, 
			0.000206858, 0.000124443, 9.14346e-05, 7.25514e-05, 5.99618e-05, 5.08434e-05, 4.38964e-05, 3.84234e-05, 3.4009e-05, 3.0386e-05, 2.73726e-05, 2.48392e-05, 2.26904e-05, 2.0854e-05, 1.92739e-05, 1.79061e-05, 
			0.000210712, 0.000127908, 9.43662e-05, 7.50508e-05, 6.21312e-05, 5.27532e-05, 4.55936e-05, 3.99466e-05, 3.5388e-05, 3.16442e-05, 2.85284e-05, 2.59078e-05, 2.3684e-05, 2.1783e-05, 2.0147e-05, 1.87306e-05, 
			0.000213266, 0.000130263, 9.6413e-05, 7.68322e-05, 6.36958e-05, 5.41426e-05, 4.6845e-05, 4.10846e-05, 3.64318e-05, 3.2609e-05, 2.94268e-05, 2.67496e-05, 2.44778e-05, 2.25356e-05, 2.08642e-05, 1.94175e-05
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
			3.74876e-06, 4.8334e-06, 5.78179e-06, 6.62764e-06, 7.38639e-06, 8.06827e-06, 8.67965e-06, 9.22621e-06, 9.71366e-06, 1.01472e-05, 1.05325e-05, 1.08738e-05, 1.1176e-05, 1.14435e-05, 1.16802e-05, 1.18888e-05, 
			4.70203e-06, 5.76295e-06, 6.73373e-06, 7.61971e-06, 8.42446e-06, 9.1528e-06, 9.80925e-06, 1.0399e-05, 1.09269e-05, 1.13979e-05, 1.18179e-05, 1.21911e-05, 1.25221e-05, 1.28162e-05, 1.30769e-05, 1.33081e-05, 
			5.67755e-06, 6.73848e-06, 7.72561e-06, 8.63553e-06, 9.46792e-06, 1.02245e-05, 1.09089e-05, 1.1526e-05, 1.20797e-05, 1.25751e-05, 1.30176e-05, 1.34118e-05, 1.37621e-05, 1.40744e-05, 1.43515e-05, 1.45983e-05, 
			6.68326e-06, 7.74465e-06, 8.74363e-06, 9.66972e-06, 1.05204e-05, 1.12968e-05, 1.20004e-05, 1.26364e-05, 1.32082e-05, 1.37205e-05, 1.41793e-05, 1.45887e-05, 1.49538e-05, 1.52794e-05, 1.55689e-05, 1.58269e-05, 
			7.70996e-06, 8.77547e-06, 9.78261e-06, 1.07201e-05, 1.15845e-05, 1.23745e-05, 1.30924e-05, 1.37422e-05, 1.43275e-05, 1.48529e-05, 1.53243e-05, 1.57454e-05, 1.6122e-05, 1.64579e-05, 1.67575e-05, 1.7024e-05
		)
}

CapTable	"metal1_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			0.000186196, 0.000107936, 7.75174e-05, 6.02908e-05, 4.88084e-05, 4.04516e-05, 3.40404e-05, 2.8952e-05, 2.48198e-05, 2.14084e-05, 1.85583e-05, 1.61548e-05, 1.4113e-05, 1.23681e-05, 1.08695e-05, 9.57678e-06, 
			0.000198881, 0.00011729, 8.48202e-05, 6.62138e-05, 5.37302e-05, 4.46144e-05, 3.76066e-05, 3.2037e-05, 2.75082e-05, 2.37648e-05, 2.06332e-05, 1.79887e-05, 1.57389e-05, 1.38136e-05, 1.21575e-05, 1.07268e-05, 
			0.000205702, 0.000122795, 8.93028e-05, 6.99462e-05, 5.6897e-05, 4.73378e-05, 3.99736e-05, 3.41106e-05, 2.93358e-05, 2.53836e-05, 2.20722e-05, 1.92718e-05, 1.6886e-05, 1.48412e-05, 1.30797e-05, 1.15559e-05, 
			0.00020959, 0.000126322, 9.22988e-05, 7.25038e-05, 5.9112e-05, 4.92776e-05, 4.1682e-05, 3.56244e-05, 3.06838e-05, 2.65882e-05, 2.3152e-05, 2.02422e-05, 1.77596e-05, 1.56291e-05, 1.37914e-05, 1.21997e-05, 
			0.000212288, 0.000128829, 9.44934e-05, 7.44192e-05, 6.07936e-05, 5.0762e-05, 4.3004e-05, 3.68072e-05, 3.17458e-05, 2.75446e-05, 2.40152e-05, 2.10224e-05, 1.84662e-05, 1.62696e-05, 1.43728e-05, 1.27279e-05
		)
}

CapTable	"metal1_C_BOTTOM_GP_25MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.12, 0.24, 0.36, 0.48, 0.6)
		wireSpacing		= (0.12, 0.24, 0.36, 0.48, 0.6, 0.72, 0.84, 0.96, 1.08, 1.2, 1.32, 1.44, 1.56, 1.68, 1.8, 1.92)
		capValue			= (
			2.00526e-05, 2.53042e-05, 2.98184e-05, 3.37764e-05, 3.72719e-05, 4.03626e-05, 4.30933e-05, 4.55019e-05, 4.76238e-05, 4.94912e-05, 5.11342e-05, 5.25799e-05, 5.38529e-05, 5.49751e-05, 5.5966e-05, 5.68425e-05, 
			2.55726e-05, 3.08294e-05, 3.55314e-05, 3.97332e-05, 4.348e-05, 4.68093e-05, 4.97589e-05, 5.23649e-05, 5.46631e-05, 5.66872e-05, 5.84688e-05, 6.00366e-05, 6.14169e-05, 6.26334e-05, 6.37068e-05, 6.46555e-05, 
			3.1367e-05, 3.66854e-05, 4.15064e-05, 4.58466e-05, 4.97302e-05, 5.31886e-05, 5.62546e-05, 5.89668e-05, 6.13593e-05, 6.34671e-05, 6.53223e-05, 6.6955e-05, 6.83921e-05, 6.96579e-05, 7.07743e-05, 7.17603e-05, 
			3.7512e-05, 4.2904e-05, 4.78128e-05, 5.22432e-05, 5.62108e-05, 5.97458e-05, 6.28824e-05, 6.56564e-05, 6.8102e-05, 7.02568e-05, 7.21526e-05, 7.382e-05, 7.52866e-05, 7.65773e-05, 7.77143e-05, 7.87173e-05, 
			4.3973e-05, 4.94218e-05, 5.4381e-05, 5.88568e-05, 6.28682e-05, 6.64414e-05, 6.9608e-05, 7.24064e-05, 7.48742e-05, 7.7045e-05, 7.89532e-05, 8.06294e-05, 8.21022e-05, 8.33964e-05, 8.45348e-05, 8.55365e-05
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
			1.74658e-05, 2.23788e-05, 2.66508e-05, 3.04435e-05, 3.38336e-05, 3.68651e-05, 3.95712e-05, 4.19808e-05, 4.41203e-05, 4.60165e-05, 4.76929e-05, 4.91739e-05, 5.0481e-05, 5.16339e-05, 5.26505e-05, 5.3548e-05, 
			2.21094e-05, 2.70361e-05, 3.14791e-05, 3.54915e-05, 3.91113e-05, 4.23659e-05, 4.5282e-05, 4.78854e-05, 5.02032e-05, 5.22622e-05, 5.40869e-05, 5.57025e-05, 5.71319e-05, 5.83949e-05, 5.95113e-05, 6.04981e-05, 
			2.69684e-05, 3.19411e-05, 3.64936e-05, 4.06393e-05, 4.43951e-05, 4.77817e-05, 5.08245e-05, 5.35464e-05, 5.59747e-05, 5.81357e-05, 6.00549e-05, 6.17572e-05, 6.32662e-05, 6.46016e-05, 6.57845e-05, 6.6831e-05, 
			3.20167e-05, 3.70258e-05, 4.16506e-05, 4.58785e-05, 4.97196e-05, 5.31916e-05, 5.63166e-05, 5.91172e-05, 6.1619e-05, 6.38513e-05, 6.58357e-05, 6.75981e-05, 6.91626e-05, 7.05505e-05, 7.17807e-05, 7.28714e-05, 
			3.7196e-05, 4.22469e-05, 4.692e-05, 5.12037e-05, 5.51029e-05, 5.86335e-05, 6.18166e-05, 6.46726e-05, 6.72297e-05, 6.95125e-05, 7.15455e-05, 7.33542e-05, 7.49608e-05, 7.63885e-05, 7.76547e-05, 7.87801e-05
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

CapTable	"poly_C_BOTTOM_GP_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.6496e-05, 3.3749e-05, 4.00622e-05, 4.55898e-05, 5.04346e-05, 5.46818e-05, 5.83998e-05, 6.16538e-05, 6.45007e-05, 6.69919e-05, 6.91733e-05, 7.10849e-05, 7.27625e-05, 7.42368e-05, 7.55344e-05, 7.66788e-05, 
			3.537e-05, 4.2586e-05, 4.90496e-05, 5.47902e-05, 5.98716e-05, 6.4356e-05, 6.8306e-05, 7.17824e-05, 7.4839e-05, 7.75272e-05, 7.98924e-05, 8.1976e-05, 8.38112e-05, 8.54326e-05, 8.68648e-05, 8.81344e-05, 
			4.4556e-05, 5.17456e-05, 5.82544e-05, 6.40806e-05, 6.92654e-05, 7.38654e-05, 7.7937e-05, 8.15348e-05, 8.47122e-05, 8.75176e-05, 8.99958e-05, 9.21864e-05, 9.41244e-05, 9.58414e-05, 9.73635e-05, 9.8717e-05, 
			5.392e-05, 6.10758e-05, 6.75846e-05, 7.34406e-05, 7.86768e-05, 8.33414e-05, 8.7484e-05, 9.11592e-05, 9.44154e-05, 9.72998e-05, 9.9856e-05, 0.000102122, 0.000104132, 0.000105919, 0.000107508, 0.000108923, 
			6.3365e-05, 7.04614e-05, 7.69506e-05, 8.2811e-05, 8.8071e-05, 9.27714e-05, 9.6958e-05, 0.000100682, 0.000103992, 0.000106933, 0.000109545, 0.000111867, 0.000113933, 0.000115772, 0.000117413, 0.000118877
		)
}

CapTable	"poly_C_LATERAL_16MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.00021746, 0.000124894, 8.93098e-05, 6.93372e-05, 5.61694e-05, 4.67012e-05, 3.95258e-05, 3.38966e-05, 2.93722e-05, 2.56704e-05, 2.25996e-05, 2.00246e-05, 1.78457e-05, 1.59881e-05, 1.43943e-05, 1.30189e-05, 
			0.00023114, 0.000135389, 9.77354e-05, 7.63748e-05, 6.21884e-05, 5.1943e-05, 4.4151e-05, 3.80176e-05, 3.3072e-05, 2.90118e-05, 2.56326e-05, 2.2789e-05, 2.03748e-05, 1.83094e-05, 1.65312e-05, 1.49916e-05, 
			0.00023819, 0.000141467, 0.000102929, 8.08834e-05, 6.61846e-05, 5.55196e-05, 4.7379e-05, 4.09512e-05, 3.57518e-05, 3.14704e-05, 2.78962e-05, 2.48796e-05, 2.23106e-05, 2.01066e-05, 1.82035e-05, 1.6551e-05, 
			0.000242806, 0.000145665, 0.000106669, 8.42384e-05, 6.92182e-05, 5.82846e-05, 4.9918e-05, 4.32928e-05, 3.79196e-05, 3.34832e-05, 2.977e-05, 2.6628e-05, 2.39458e-05, 2.16386e-05, 1.96417e-05, 1.79036e-05, 
			0.000244798, 0.000148264, 0.000109221, 8.6649e-05, 7.1468e-05, 6.03856e-05, 5.1885e-05, 4.5137e-05, 3.96456e-05, 3.5101e-05, 3.12884e-05, 2.80548e-05, 2.5288e-05, 2.2903e-05, 2.08342e-05, 1.90298e-05
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
			2.44715e-05, 3.13387e-05, 3.73348e-05, 4.26189e-05, 4.72485e-05, 5.1324e-05, 5.49054e-05, 5.80491e-05, 6.07965e-05, 6.32065e-05, 6.53163e-05, 6.71643e-05, 6.87854e-05, 7.02069e-05, 7.14576e-05, 7.2557e-05, 
			3.26623e-05, 3.94725e-05, 4.55965e-05, 5.10473e-05, 5.58937e-05, 6.01874e-05, 6.39767e-05, 6.73246e-05, 7.0272e-05, 7.28714e-05, 7.51572e-05, 7.71729e-05, 7.89503e-05, 8.0519e-05, 8.1905e-05, 8.31318e-05, 
			4.11794e-05, 4.79481e-05, 5.40975e-05, 5.96235e-05, 6.45475e-05, 6.89578e-05, 7.2863e-05, 7.63254e-05, 7.93904e-05, 8.21028e-05, 8.45036e-05, 8.66325e-05, 8.85094e-05, 9.01762e-05, 9.16567e-05, 9.29707e-05, 
			4.98893e-05, 5.66424e-05, 6.27717e-05, 6.8334e-05, 7.33164e-05, 7.77845e-05, 8.1764e-05, 8.53074e-05, 8.84541e-05, 9.12499e-05, 9.37332e-05, 9.59386e-05, 9.78978e-05, 9.9641e-05, 0.000101192, 0.000102575, 
			5.86637e-05, 6.53429e-05, 7.14612e-05, 7.70225e-05, 8.20163e-05, 8.65101e-05, 9.05277e-05, 9.41142e-05, 9.73149e-05, 0.000100165, 0.000102705, 0.000104968, 0.000106985, 0.000108784, 0.00011039, 0.000111825
		)
}

CapTable	"poly_C_TOP_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			2.41647e-06, 3.08409e-06, 3.68021e-06, 4.19688e-06, 4.67729e-06, 5.09939e-06, 5.46915e-06, 5.79304e-06, 6.08495e-06, 6.33733e-06, 6.56001e-06, 6.75586e-06, 6.92703e-06, 7.07867e-06, 7.21044e-06, 7.32782e-06, 
			3.15174e-06, 3.80814e-06, 4.40945e-06, 4.96374e-06, 5.45947e-06, 5.90158e-06, 6.30106e-06, 6.65165e-06, 6.96403e-06, 7.238e-06, 7.4836e-06, 7.69934e-06, 7.88874e-06, 8.05726e-06, 8.20493e-06, 8.33642e-06, 
			3.89557e-06, 4.55211e-06, 5.16373e-06, 5.72454e-06, 6.24729e-06, 6.69325e-06, 7.10523e-06, 7.47257e-06, 7.79957e-06, 8.09059e-06, 8.34759e-06, 8.57128e-06, 8.77897e-06, 8.95961e-06, 9.11791e-06, 9.26018e-06, 
			4.65269e-06, 5.29285e-06, 5.92987e-06, 6.49336e-06, 7.01902e-06, 7.48392e-06, 7.90661e-06, 8.28376e-06, 8.62308e-06, 8.9249e-06, 9.19304e-06, 9.43205e-06, 9.64401e-06, 9.83321e-06, 1.00009e-05, 1.01509e-05, 
			5.42631e-06, 6.06634e-06, 6.68619e-06, 7.24926e-06, 7.78412e-06, 8.25933e-06, 8.68906e-06, 9.07501e-06, 9.42092e-06, 9.73048e-06, 1.00065e-05, 1.02531e-05, 1.04727e-05, 1.06689e-05, 1.0844e-05, 1.1e-05
		)
}

CapTable	"poly_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.1, 0.2, 0.3, 0.4, 0.5)
		wireSpacing		= (0.08, 0.16, 0.24, 0.32, 0.4, 0.48, 0.56, 0.64, 0.72, 0.8, 0.88, 0.96, 1.04, 1.12, 1.2, 1.28)
		capValue			= (
			0.000217128, 0.000124353, 8.8574e-05, 6.84172e-05, 5.50772e-05, 4.54506e-05, 3.81316e-05, 3.2374e-05, 2.77364e-05, 2.39358e-05, 2.07796e-05, 1.81314e-05, 1.58905e-05, 1.39806e-05, 1.2343e-05, 1.09315e-05, 
			0.000230766, 0.000134826, 9.699e-05, 7.5453e-05, 6.10978e-05, 5.0694e-05, 4.27552e-05, 3.64878e-05, 3.1421e-05, 2.72526e-05, 2.37772e-05, 2.08488e-05, 1.836e-05, 1.62297e-05, 1.43951e-05, 1.28068e-05, 
			0.000237758, 0.000140861, 0.000102146, 7.9927e-05, 6.50592e-05, 5.4233e-05, 4.59408e-05, 3.9372e-05, 3.4043e-05, 2.96436e-05, 2.59628e-05, 2.28502e-05, 2.01956e-05, 1.79152e-05, 1.59444e-05, 1.42321e-05, 
			0.0002423, 0.000144984, 0.000105809, 8.31996e-05, 6.80036e-05, 5.69006e-05, 4.83724e-05, 4.15958e-05, 3.60818e-05, 3.15162e-05, 2.76848e-05, 2.44354e-05, 2.16562e-05, 1.92618e-05, 1.71866e-05, 1.53786e-05, 
			0.000244224, 0.000147526, 0.000108311, 8.55622e-05, 7.02056e-05, 5.89516e-05, 5.02862e-05, 4.33818e-05, 3.77432e-05, 3.3062e-05, 2.9123e-05, 2.57736e-05, 2.29012e-05, 2.042e-05, 1.8264e-05, 1.63807e-05
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

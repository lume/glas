import {Color} from './../math/Color'
import {MaterialParameters} from './Material'
import {LineBasicMaterial} from './LineBasicMaterial'

export interface LineDashedMaterialParameters extends MaterialParameters {
	color?: Color | string | number
	linewidth?: f32
	scale?: f32
	dashSize?: f32
	gapSize?: f32
}

export class LineDashedMaterial extends LineBasicMaterial {
	constructor(parameters?: LineDashedMaterialParameters)

	scale: f32
	dashSize: f32
	gapSize: f32
	isLineDashedMaterial: boolean

	setValues(parameters: LineDashedMaterialParameters): void
}

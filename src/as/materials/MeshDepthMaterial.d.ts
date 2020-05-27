import {DepthPackingStrategies} from '../constants'
import {MaterialParameters, Material} from './Material'
import {Texture} from './../textures/Texture'

export interface MeshDepthMaterialParameters extends MaterialParameters {
	depthPacking?: DepthPackingStrategies
	displacementMap?: Texture
	displacementScale?: f32
	displacementBias?: f32
	wireframe?: boolean
	wireframeLinewidth?: f32
}

export class MeshDepthMaterial extends Material {
	constructor(parameters?: MeshDepthMaterialParameters)

	depthPacking: DepthPackingStrategies
	displacementMap: Texture | null
	displacementScale: f32
	displacementBias: f32
	wireframe: boolean
	wireframeLinewidth: f32

	setValues(parameters: MeshDepthMaterialParameters): void
}

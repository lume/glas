import {MeshStandardMaterialParameters, MeshStandardMaterial} from './MeshStandardMaterial'

export interface MeshPhysicalMaterialParameters extends MeshStandardMaterialParameters {
	reflectivity?: f32
	clearCoat?: f32
	clearCoatRoughness?: f32
}

export class MeshPhysicalMaterial extends MeshStandardMaterial {
	constructor(parameters: MeshPhysicalMaterialParameters)

	defines: any
	reflectivity: f32
	clearCoat: f32
	clearCoatRoughness: f32
}

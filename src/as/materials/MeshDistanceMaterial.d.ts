import {MaterialParameters, Material} from './Material'
import {Vector3} from './../math/Vector3'
import {Texture} from './../textures/Texture'

export interface MeshDistanceMaterialParameters extends MaterialParameters {
	referencePosition?: Vector3
	nearDistance?: f32
	farDistance?: f32
	displacementMap?: Texture
	displacementScale?: f32
	displacementBias?: f32
}

export class MeshDistanceMaterial extends Material {
	constructor(parameters?: MeshDistanceMaterialParameters)

	referencePosition: Vector3
	nearDistance: f32
	farDistance: f32
	displacementMap: Texture | null
	displacementScale: f32
	displacementBias: f32

	setValues(parameters: MeshDistanceMaterialParameters): void
}

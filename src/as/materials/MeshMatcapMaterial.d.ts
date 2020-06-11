import {Color} from './../math/Color'
import {Texture} from './../textures/Texture'
import {Vector2} from './../math/Vector2'
import {MaterialParameters, Material} from './Material'
import {NormalMapTypes} from '../constants'

export interface MeshMatcapMaterialParameters extends MaterialParameters {
	color?: Color | string | f32
	matcap?: Texture
	map?: Texture
	bumpMap?: Texture
	bumpScale?: f32
	normalMap?: Texture
	normalMapType?: NormalMapTypes
	normalScale?: Vector2
	displacementMap?: Texture
	displacementScale?: f32
	displacementBias?: f32
	alphaMap?: Texture
	skinning?: boolean
	morphTargets?: boolean
	morphNormals?: boolean
}

export class MeshMatcapMaterial extends Material {
	constructor(parameters?: MeshMatcapMaterialParameters)

	color: Color
	matcap: Texture | null
	map: Texture | null
	bumpMap: Texture | null
	bumpScale: f32
	normalMap: Texture | null
	normalMapType: NormalMapTypes
	normalScale: Vector2
	displacementMap: Texture | null
	displacementScale: f32
	displacementBias: f32
	alphaMap: Texture | null
	skinning: boolean
	morphTargets: boolean
	morphNormals: boolean

	setValues(parameters: MeshMatcapMaterialParameters): void
}

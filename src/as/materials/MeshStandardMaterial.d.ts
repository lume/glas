import {Color} from './../math/Color'
import {Texture} from './../textures/Texture'
import {Vector2} from './../math/Vector2'
import {MaterialParameters, Material} from './Material'
import {NormalMapTypes} from '../constants'

export interface MeshStandardMaterialParameters extends MaterialParameters {
	color?: Color | string | f32
	roughness?: f32
	metalness?: f32
	map?: Texture
	lightMap?: Texture
	lightMapIntensity?: f32
	aoMap?: Texture
	aoMapIntensity?: f32
	emissive?: Color | string | f32
	emissiveIntensity?: f32
	emissiveMap?: Texture
	bumpMap?: Texture
	bumpScale?: f32
	normalMap?: Texture
	normalMapType?: NormalMapTypes
	normalScale?: Vector2
	displacementMap?: Texture
	displacementScale?: f32
	displacementBias?: f32
	roughnessMap?: Texture
	metalnessMap?: Texture
	alphaMap?: Texture
	envMap?: Texture
	envMapIntensity?: f32
	refractionRatio?: f32
	wireframe?: boolean
	wireframeLinewidth?: f32
	skinning?: boolean
	morphTargets?: boolean
	morphNormals?: boolean
}

export class MeshStandardMaterial extends Material {
	constructor(parameters?: MeshStandardMaterialParameters)

	defines: any
	color: Color
	roughness: f32
	metalness: f32
	map: Texture | null
	lightMap: Texture | null
	lightMapIntensity: f32
	aoMap: Texture | null
	aoMapIntensity: f32
	emissive: Color
	emissiveIntensity: f32
	emissiveMap: Texture | null
	bumpMap: Texture | null
	bumpScale: f32
	normalMap: Texture | null
	normalMapType: NormalMapTypes
	normalScale: Vector2
	displacementMap: Texture | null
	displacementScale: f32
	displacementBias: f32
	roughnessMap: Texture | null
	metalnessMap: Texture | null
	alphaMap: Texture | null
	envMap: Texture | null
	envMapIntensity: f32
	refractionRatio: f32
	wireframe: boolean
	wireframeLinewidth: f32
	skinning: boolean
	morphTargets: boolean
	morphNormals: boolean

	setValues(parameters: MeshStandardMaterialParameters): void
}

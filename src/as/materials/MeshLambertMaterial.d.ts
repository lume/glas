import {Color} from './../math/Color'
import {Texture} from './../textures/Texture'
import {MaterialParameters, Material} from './Material'
import {Combine} from '../constants'

export interface MeshLambertMaterialParameters extends MaterialParameters {
	color?: Color | string | f32
	emissive?: Color | string | f32
	emissiveIntensity?: f32
	emissiveMap?: Texture
	map?: Texture
	lightMap?: Texture
	lightMapIntensity?: f32
	aoMap?: Texture
	aoMapIntensity?: f32
	specularMap?: Texture
	alphaMap?: Texture
	envMap?: Texture
	combine?: Combine
	reflectivity?: f32
	refractionRatio?: f32
	wireframe?: boolean
	wireframeLinewidth?: f32
	wireframeLinecap?: string
	wireframeLinejoin?: string
	skinning?: boolean
	morphTargets?: boolean
	morphNormals?: boolean
}

export class MeshLambertMaterial extends Material {
	constructor(parameters?: MeshLambertMaterialParameters)

	color: Color
	emissive: Color
	emissiveIntensity: f32
	emissiveMap: Texture | null
	map: Texture | null
	lightMap: Texture | null
	lightMapIntensity: f32
	aoMap: Texture | null
	aoMapIntensity: f32
	specularMap: Texture | null
	alphaMap: Texture | null
	envMap: Texture | null
	combine: Combine
	reflectivity: f32
	refractionRatio: f32
	wireframe: boolean
	wireframeLinewidth: f32
	wireframeLinecap: string
	wireframeLinejoin: string
	skinning: boolean
	morphTargets: boolean
	morphNormals: boolean

	setValues(parameters: MeshLambertMaterialParameters): void
}

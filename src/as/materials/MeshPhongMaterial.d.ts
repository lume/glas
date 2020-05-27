import {Color} from './../math/Color'
import {Texture} from './../textures/Texture'
import {Vector2} from './../math/Vector2'
import {MaterialParameters, Material} from './Material'
import {Combine, NormalMapTypes} from '../constants'

export interface MeshPhongMaterialParameters extends MaterialParameters {
	/** geometry color in hexadecimal. Default is 0xffffff. */
	color?: Color | string | number
	specular?: Color | string | number
	shininess?: f32
	opacity?: f32
	map?: Texture
	lightMap?: Texture
	lightMapIntensity?: f32
	aoMap?: Texture
	aoMapIntensity?: f32
	emissive?: Color | string | number
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

export class MeshPhongMaterial extends Material {
	constructor(parameters?: MeshPhongMaterialParameters)

	color: Color
	specular: Color
	shininess: f32
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
	/**
	 * @deprecated Use {@link MeshStandardMaterial THREE.MeshStandardMaterial} instead.
	 */
	metal: boolean

	setValues(parameters: MeshPhongMaterialParameters): void
}

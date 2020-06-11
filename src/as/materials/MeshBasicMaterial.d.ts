import {Color} from './../math/Color'
import {Texture} from './../textures/Texture'
import {MaterialParameters, Material} from './Material'
import {Combine} from '../constants'
/**
 * parameters is an object with one or more properties defining the material's appearance.
 */
export interface MeshBasicMaterialParameters extends MaterialParameters {
	color?: Color | string | f32
	opacity?: f32
	map?: Texture
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
}

export class MeshBasicMaterial extends Material {
	constructor(parameters?: MeshBasicMaterialParameters)

	color: Color
	map: Texture | null
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

	setValues(parameters: MeshBasicMaterialParameters): void
}

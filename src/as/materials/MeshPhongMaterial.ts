/**
 * @author mrdoob / http://mrdoob.com/
 * @author alteredq / http://alteredqualia.com/
 * @author Joe Pea / https://github.com/trusktr
 */

import {Color} from '../math/Color'
import {Texture} from '../textures/Texture'
import {Vector2} from '../math/Vector2'
import {/*MaterialParameters,*/ Material} from './Material'
import {Combine, NormalMapTypes, MultiplyOperation, TangentSpaceNormalMap} from '../constants'

// This is soaking WET, let's not use this.
// export interface MeshPhongMaterialParameters extends MaterialParameters {
// 	/** geometry color in hexadecimal. Default is 0xffffff. */
// 	color?: Color | string | f32
// 	specular?: Color | string | f32
// 	shininess?: f32
// 	opacity?: f32
// 	map?: Texture
// 	lightMap?: Texture
// 	lightMapIntensity?: f32
// 	aoMap?: Texture
// 	aoMapIntensity?: f32
// 	emissive?: Color | string | f32
// 	emissiveIntensity?: f32
// 	emissiveMap?: Texture
// 	bumpMap?: Texture
// 	bumpScale?: f32
// 	normalMap?: Texture
// 	normalMapType?: NormalMapTypes
// 	normalScale?: Vector2
// 	displacementMap?: Texture
// 	displacementScale?: f32
// 	displacementBias?: f32
// 	specularMap?: Texture
// 	alphaMap?: Texture
// 	envMap?: Texture
// 	combine?: Combine
// 	reflectivity?: f32
// 	refractionRatio?: f32
// 	wireframe?: boolean
// 	wireframeLinewidth?: f32
// 	wireframeLinecap?: string
// 	wireframeLinejoin?: string
// 	skinning?: boolean
// 	morphTargets?: boolean
// 	morphNormals?: boolean
// }

export class MeshPhongMaterial extends Material {
	isMeshPhongMaterial: true = true

	color: Color = new Color(0xffffff) // diffuse
	specular: Color = new Color(0x111111)
	shininess: f32 = 30

	map: Texture | null = null

	lightMap: Texture | null = null
	lightMapIntensity: f32 = 1.0

	aoMap: Texture | null = null
	aoMapIntensity: f32 = 1.0

	emissive: Color = new Color(0x000000)
	emissiveIntensity: f32 = 1.0
	emissiveMap: Texture | null = null

	bumpMap: Texture | null = null
	bumpScale: f32 = 1

	normalMap: Texture | null = null
	normalMapType: NormalMapTypes = TangentSpaceNormalMap
	normalScale: Vector2 = new Vector2(1, 1)

	displacementMap: Texture | null = null
	displacementScale: f32 = 1
	displacementBias: f32 = 0

	specularMap: Texture | null = null

	alphaMap: Texture | null = null

	envMap: Texture | null = null
	combine: Combine = MultiplyOperation
	reflectivity: f32 = 1
	refractionRatio: f32 = 0.98

	wireframe: boolean = false
	wireframeLinewidth: f32 = 1
	wireframeLinecap: string = 'round'
	wireframeLinejoin: string = 'round'

	skinning: boolean = false
	morphTargets: boolean = false
	morphNormals: boolean = false

	constructor(/*parameters?: MeshPhongMaterialParameters*/) {
		super()

		this.type = 'MeshPhongMaterial'

		// this.setValues(parameters)
	}

	// setValues(parameters: MeshPhongMaterialParameters): void

	/**
	 * Return a new material with the same properties as this material.
	 */
	clone(): MeshPhongMaterial {
		return new MeshPhongMaterial().copy(this)
	}

	/**
	 * Copy the properties from the passed material into this material.
	 */
	copy(source: MeshPhongMaterial): this {
		super.copy(source)

		this.color.copy(source.color)
		this.specular.copy(source.specular)
		this.shininess = source.shininess

		this.map = source.map

		this.lightMap = source.lightMap
		this.lightMapIntensity = source.lightMapIntensity

		this.aoMap = source.aoMap
		this.aoMapIntensity = source.aoMapIntensity

		this.emissive.copy(source.emissive)
		this.emissiveMap = source.emissiveMap
		this.emissiveIntensity = source.emissiveIntensity

		this.bumpMap = source.bumpMap
		this.bumpScale = source.bumpScale

		this.normalMap = source.normalMap
		this.normalMapType = source.normalMapType
		this.normalScale.copy(source.normalScale)

		this.displacementMap = source.displacementMap
		this.displacementScale = source.displacementScale
		this.displacementBias = source.displacementBias

		this.specularMap = source.specularMap

		this.alphaMap = source.alphaMap

		this.envMap = source.envMap
		this.combine = source.combine
		this.reflectivity = source.reflectivity
		this.refractionRatio = source.refractionRatio

		this.wireframe = source.wireframe
		this.wireframeLinewidth = source.wireframeLinewidth
		this.wireframeLinecap = source.wireframeLinecap
		this.wireframeLinejoin = source.wireframeLinejoin

		this.skinning = source.skinning
		this.morphTargets = source.morphTargets
		this.morphNormals = source.morphNormals

		return this
	}
}

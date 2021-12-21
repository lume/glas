import { Material } from './Material.js'
import { Vector3 } from '../math/Vector3'
import { Texture } from '../textures/Texture.js'

/**
 * @author WestLangley / http://github.com/WestLangley
 * @author jbbe / http://github.com/jbbe
 *
 * parameters = {
 *
 *  referencePosition: <float>,
 *  nearDistance: <float>,
 *  farDistance: <float>,
 *
 *  skinning: <bool>,
 *  morphTargets: <bool>,
 *
 *  map: new THREE.Texture( <Image> ),
 *
 *  alphaMap: new THREE.Texture( <Image> ),
 *
 *  displacementMap: new THREE.Texture( <Image> ),
 *  displacementScale: <float>,
 *  displacementBias: <float>
 *
 * }
 */

// export interface MeshDistanceMaterialParameters extends MaterialParameters {
// 	referencePosition?: Vector3
// 	nearDistance?: f32
// 	farDistance?: f32
// 	displacementMap?: Texture
// 	displacementScale?: f32
// 	displacementBias?: f32
// }

export class MeshDistanceMaterial extends Material {
	isMeshDistanceMaterial = true
	referencePosition: Vector3 = new Vector3()
	nearDistance: f32
	farDistance: f32
	displacementMap: Texture | null
	displacementScale: f32
	displacementBias: f32

	skinning: bool
	morphTargets: bool

	map: Texture | null
	alphaMap: Texture | null

	constructor(/*parameters?: MeshDistanceMaterialParameters */) {
		super()
		this.type = 'MeshDistanceMaterial'

		this.referencePosition = new Vector3()
		this.nearDistance = 1
		this.farDistance = 1000

		this.skinning = false
		this.morphTargets = false

		this.map = null

		this.alphaMap = null

		this.displacementMap = null
		this.displacementScale = 1
		this.displacementBias = 0

		this.fog = false
		this.lights = false

		// this.setValues( parameters );
	}

	copy(source: MeshDistanceMaterial) {
		super.copy(source)
		this.referencePosition.copy(source.referencePosition)
		this.nearDistance = source.nearDistance
		this.farDistance = source.farDistance

		this.skinning = source.skinning
		this.morphTargets = source.morphTargets

		this.map = source.map

		this.alphaMap = source.alphaMap

		this.displacementMap = source.displacementMap
		this.displacementScale = source.displacementScale
		this.displacementBias = source.displacementBias

		return this
	}

	// setValues(parameters: MeshDistanceMaterialParameters): void
}

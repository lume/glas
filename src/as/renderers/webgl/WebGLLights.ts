/**
 * @author mrdoob / http://mrdoob.com/
 * @author Joe Pea / http://github.com/trusktr
 */

import { Color } from '../../math/Color'
import { Matrix4 } from '../../math/Matrix4'
import { Vector2 } from '../../math/Vector2'
import { Vector3 } from '../../math/Vector3'
import { Light } from '../../lights/Light'
import { Camera } from '../../cameras/Camera'
import { PointLight } from '../../lights/PointLight'

class LightUniforms {
	static isLightUniforms: bool = true
}

class PointLightUniforms extends LightUniforms {
	position: Vector3
	color: Color
	distance: f32
	decay: f32
}

class UniformsCache {
	lights: Map<i32, LightUniforms> = new Map()

	get(light: Light): LightUniforms {
		if (this.lights.has(light.id)) return this.lights.get(light.id)

		let uniforms: LightUniforms | null = null

		// TODO
		// case 'DirectionalLight':
		// 	uniforms = {
		// 		direction: new Vector3(),
		// 		color: new Color(),
		// 	}
		// 	break

		// TODO
		// case 'SpotLight':
		// 	uniforms = {
		// 		position: new Vector3(),
		// 		direction: new Vector3(),
		// 		color: new Color(),
		// 		distance: 0,
		// 		coneCos: 0,
		// 		penumbraCos: 0,
		// 		decay: 0,
		// 	}
		// 	break

		if (light.type === 'PointLight') {
			uniforms = {
				position: new Vector3(),
				color: new Color(),
				distance: 0,
				decay: 0,
			} as PointLightUniforms
		}

		// TODO
		// case 'HemisphereLight':
		// 	uniforms = {
		// 		direction: new Vector3(),
		// 		skyColor: new Color(),
		// 		groundColor: new Color(),
		// 	}
		// 	break

		// TODO
		// case 'RectAreaLight':
		// 	uniforms = {
		// 		color: new Color(),
		// 		position: new Vector3(),
		// 		halfWidth: new Vector3(),
		// 		halfHeight: new Vector3(),
		// 	}
		// 	break

		if (!uniforms) abort('Unknown light type.')

		// This conditional check is not needed, but AS does not narrow the type with the previous abort() call.
		if (uniforms) {
			this.lights.set(light.id, uniforms)
			return uniforms
		}

		// This never happens, but we need to trick AS/TS.
		return new LightUniforms()
	}
}

class ShadowUniforms {
	static isShadowUniforms: bool = true
}

class PointLightShadowUniforms extends ShadowUniforms {
	shadowBias: f32
	shadowRadius: f32
	shadowMapSize: Vector2
	shadowCameraNear: f32
	shadowCameraFar: f32
}

class ShadowUniformsCache {
	lights: Map<i32, ShadowUniforms> = new Map()

	get(light: Light): ShadowUniforms {
		if (this.lights.has(light.id)) return this.lights.get(light.id)

		let uniforms: ShadowUniforms | null = null

		switch (light.type) {
			// TODO
			// case 'DirectionalLight':
			// 	uniforms = {
			// 		shadowBias: 0,
			// 		shadowRadius: 1,
			// 		shadowMapSize: new Vector2(),
			// 	}
			// 	break

			// TODO
			// case 'SpotLight':
			// 	uniforms = {
			// 		shadowBias: 0,
			// 		shadowRadius: 1,
			// 		shadowMapSize: new Vector2(),
			// 	}
			// 	break

			case 'PointLight':
				uniforms = {
					shadowBias: 0,
					shadowRadius: 1,
					shadowMapSize: new Vector2(),
					shadowCameraNear: 1,
					shadowCameraFar: 1000,
				} as PointLightShadowUniforms
				break

			// TODO (abelnation): set RectAreaLight shadow uniforms
		}

		if (!uniforms) abort('Unknown light type.')

		// This conditional check is not needed, but AS does not narrow the type with the previous abort() call.
		if (uniforms) {
			this.lights.set(light.id, uniforms)
			return uniforms
		}

		// This never happens, but we need to trick AS/TS.
		return new ShadowUniforms()
	}
}

let nextVersion: i32 = 0

class Hash {
	// directionalLength: i32
	pointLength: i32
	// spotLength: i32
	// rectAreaLength: i32
	// hemiLength: i32

	// numDirectionalShadows: i32
	numPointShadows: i32
	// numSpotShadows: i32
}

class State {
	version: i32

	hash: Hash

	// ambient: Array<f32>
	// probe: Array<Vector3>
	// directional: Array<any>
	// directionalShadow: Array<any>
	// directionalShadowMap: Array<any>
	// directionalShadowMatrix: Array<any>
	// spot: Array<any>
	// spotShadow: Array<any>
	// spotShadowMap: Array<any>
	// spotShadowMatrix: Array<any>
	// rectArea: Array<any>
	point: Array<PointLightUniforms>
	// pointShadow: Array<any>
	// pointShadowMap: Array<any>
	// pointShadowMatrix: Array<any>
	// hemi: Array<any>
}

export class WebGLLights {
	constructor() {
		// for (let i = 0; i < 9; i++) this.state.probe.push(new Vector3())
	}

	cache: UniformsCache = new UniformsCache()

	shadowCache: ShadowUniformsCache = new ShadowUniformsCache()

	state: State = {
		version: 0,

		hash: {
			// directionalLength: -1,
			pointLength: -1,
			// spotLength: -1,
			// rectAreaLength: -1,
			// hemiLength: -1,

			// numDirectionalShadows: -1,
			numPointShadows: -1,
			// numSpotShadows: -1,
		},

		// ambient: [0, 0, 0],
		// probe: [],
		// directional: [],
		// directionalShadow: [],
		// directionalShadowMap: [],
		// directionalShadowMatrix: [],
		// spot: [],
		// spotShadow: [],
		// spotShadowMap: [],
		// spotShadowMatrix: [],
		// rectArea: [],
		point: [],
		// pointShadow: [],
		// pointShadowMap: [],
		// pointShadowMatrix: [],
		// hemi: [],
	}

	vector3: Vector3 = new Vector3()
	matrix4: Matrix4 = new Matrix4()
	matrix42: Matrix4 = new Matrix4()

	setup(lights: Light[], shadows: Light[], camera: Camera): void {
		let r = 0,
			g = 0,
			b = 0

		// for (let i = 0; i < 9; i++) this.state.probe[i].set(0, 0, 0)

		// let directionalLength = 0
		let pointLength: i32 = 0
		// let spotLength = 0
		// let rectAreaLength = 0
		// let hemiLength = 0

		// let numDirectionalShadows = 0
		let numPointShadows = 0
		// let numSpotShadows = 0

		const viewMatrix = camera.matrixWorldInverse

		// lights.sort(shadowCastingLightsFirst)

		for (let i = 0, l = lights.length; i < l; i++) {
			const light = lights[i]

			const color = light.color
			const intensity = light.intensity
			const distance = light.distance

			// let shadowMap: LightShadow = null

			// if (
			// 	light instanceof PointLight
			// 	// TODO
			// 	// || light instanceof DirectionalLight
			// 	// || light instanceof SpotLight
			// ) {
			// 	shadowMap = light.shadow && light.shadow.map ? light.shadow.map.texture : null
			// }

			// if (light.isAmbientLight) {
			// 	r += color.r * intensity
			// 	g += color.g * intensity
			// 	b += color.b * intensity
			// } else if (light.isLightProbe) {
			// 	for (let j = 0; j < 9; j++) {
			// 		this.state.probe[j].addScaledVector(light.sh.coefficients[j], intensity)
			// 	}
			// } else if (light.isDirectionalLight) {
			// 	const uniforms = this.cache.get(light)

			// 	uniforms.color.copy(light.color).multiplyScalar(light.intensity)
			// 	uniforms.direction.setFromMatrixPosition(light.matrixWorld)
			// 	vector3.setFromMatrixPosition(light.target.matrixWorld)
			// 	uniforms.direction.sub(vector3)
			// 	uniforms.direction.transformDirection(viewMatrix)

			// 	if (light.castShadow) {
			// 		const shadow = light.shadow

			// 		const shadowUniforms = this.shadowCache.get(light)

			// 		shadowUniforms.shadowBias = shadow.bias
			// 		shadowUniforms.shadowRadius = shadow.radius
			// 		shadowUniforms.shadowMapSize = shadow.mapSize

			// 		this.state.directionalShadow[directionalLength] = shadowUniforms
			// 		this.state.directionalShadowMap[directionalLength] = shadowMap
			// 		this.state.directionalShadowMatrix[directionalLength] = light.shadow.matrix

			// 		numDirectionalShadows++
			// 	}

			// 	this.state.directional[directionalLength] = uniforms

			// 	directionalLength++
			// } else if (light.isSpotLight) {
			// 	const uniforms = this.cache.get(light)

			// 	uniforms.position.setFromMatrixPosition(light.matrixWorld)
			// 	uniforms.position.applyMatrix4(viewMatrix)

			// 	uniforms.color.copy(color).multiplyScalar(intensity)
			// 	uniforms.distance = distance

			// 	uniforms.direction.setFromMatrixPosition(light.matrixWorld)
			// 	vector3.setFromMatrixPosition(light.target.matrixWorld)
			// 	uniforms.direction.sub(vector3)
			// 	uniforms.direction.transformDirection(viewMatrix)

			// 	uniforms.coneCos = Math.cos(light.angle)
			// 	uniforms.penumbraCos = Math.cos(light.angle * (1 - light.penumbra))
			// 	uniforms.decay = light.decay

			// 	if (light.castShadow) {
			// 		const shadow = light.shadow

			// 		const shadowUniforms = this.shadowCache.get(light)

			// 		shadowUniforms.shadowBias = shadow.bias
			// 		shadowUniforms.shadowRadius = shadow.radius
			// 		shadowUniforms.shadowMapSize = shadow.mapSize

			// 		this.state.spotShadow[spotLength] = shadowUniforms
			// 		this.state.spotShadowMap[spotLength] = shadowMap
			// 		this.state.spotShadowMatrix[spotLength] = light.shadow.matrix

			// 		numSpotShadows++
			// 	}

			// 	this.state.spot[spotLength] = uniforms

			// 	spotLength++
			// } else if (light.isRectAreaLight) {
			// 	const uniforms = this.cache.get(light)

			// 	// (a) intensity is the total visible light emitted
			// 	//uniforms.color.copy( color ).multiplyScalar( intensity / ( light.width * light.height * Math.PI ) );

			// 	// (b) intensity is the brightness of the light
			// 	uniforms.color.copy(color).multiplyScalar(intensity)

			// 	uniforms.position.setFromMatrixPosition(light.matrixWorld)
			// 	uniforms.position.applyMatrix4(viewMatrix)

			// 	// extract local rotation of light to derive width/height half vectors
			// 	matrix42.identity()
			// 	matrix4.copy(light.matrixWorld)
			// 	matrix4.premultiply(viewMatrix)
			// 	matrix42.extractRotation(matrix4)

			// 	uniforms.halfWidth.set(light.width * 0.5, 0.0, 0.0)
			// 	uniforms.halfHeight.set(0.0, light.height * 0.5, 0.0)

			// 	uniforms.halfWidth.applyMatrix4(matrix42)
			// 	uniforms.halfHeight.applyMatrix4(matrix42)

			// 	// TODO (abelnation): RectAreaLight distance?
			// 	// uniforms.distance = distance;

			// 	this.state.rectArea[rectAreaLength] = uniforms

			// 	rectAreaLength++
			// } else
			if (light instanceof PointLight) {
				const _light = light as PointLight // casting needed for AS, AS does not (yet) have type narrowing
				const uniforms = this.cache.get(_light) as PointLightUniforms
				// /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				// log(' ----------------------------------------------------- ')

				uniforms.position.setFromMatrixPosition(_light.matrixWorld)
				uniforms.position.applyMatrix4(viewMatrix)

				uniforms.color.copy(_light.color).multiplyScalar(_light.intensity)
				uniforms.distance = _light.distance
				uniforms.decay = _light.decay

				// if (_light.castShadow) {
				// 	const shadow = _light.shadow

				// 	const shadowUniforms = this.shadowCache.get(_light)

				// 	shadowUniforms.shadowBias = shadow.bias
				// 	shadowUniforms.shadowRadius = shadow.radius
				// 	shadowUniforms.shadowMapSize = shadow.mapSize
				// 	shadowUniforms.shadowCameraNear = shadow.camera.near
				// 	shadowUniforms.shadowCameraFar = shadow.camera.far

				// 	this.state.pointShadow[pointLength] = shadowUniforms
				// 	// this.state.pointShadowMap[pointLength] = shadowMap
				// 	this.state.pointShadowMatrix[pointLength] = _light.shadow.matrix

				// 	numPointShadows++
				// }

				this.state.point[pointLength] = uniforms

				pointLength++
			}
			// else if (light.isHemisphereLight) {
			// 	const uniforms = this.cache.get(light)

			// 	uniforms.direction.setFromMatrixPosition(light.matrixWorld)
			// 	uniforms.direction.transformDirection(viewMatrix)
			// 	uniforms.direction.normalize()

			// 	uniforms.skyColor.copy(light.color).multiplyScalar(intensity)
			// 	uniforms.groundColor.copy(light.groundColor).multiplyScalar(intensity)

			// 	this.state.hemi[hemiLength] = uniforms

			// 	hemiLength++
			// }
		}

		// this.state.ambient[0] = r
		// this.state.ambient[1] = g
		// this.state.ambient[2] = b

		const hash = this.state.hash

		if (
			// hash.directionalLength !== directionalLength ||
			// hash.pointLength !== pointLength ||
			// hash.spotLength !== spotLength ||
			// hash.rectAreaLength !== rectAreaLength ||
			// hash.hemiLength !== hemiLength ||
			// hash.numDirectionalShadows !== numDirectionalShadows ||
			hash.numPointShadows !== numPointShadows
			// || hash.numSpotShadows !== numSpotShadows
		) {
			// this.state.directional.length = directionalLength
			// this.state.spot.length = spotLength
			// this.state.rectArea.length = rectAreaLength
			this.state.point.length = pointLength
			// this.state.hemi.length = hemiLength

			// this.state.directionalShadow.length = numDirectionalShadows
			// this.state.directionalShadowMap.length = numDirectionalShadows
			// this.state.pointShadow.length = numPointShadows
			// this.state.pointShadowMap.length = numPointShadows
			// this.state.spotShadow.length = numSpotShadows
			// this.state.spotShadowMap.length = numSpotShadows
			// this.state.directionalShadowMatrix.length = numDirectionalShadows
			// this.state.pointShadowMatrix.length = numPointShadows
			// this.state.spotShadowMatrix.length = numSpotShadows

			// hash.directionalLength = directionalLength
			hash.pointLength = pointLength
			// hash.spotLength = spotLength
			// hash.rectAreaLength = rectAreaLength
			// hash.hemiLength = hemiLength

			// hash.numDirectionalShadows = numDirectionalShadows
			hash.numPointShadows = numPointShadows
			// hash.numSpotShadows = numSpotShadows

			this.state.version = nextVersion++
		}
	}
}

// function shadowCastingLightsFirst(lightA, lightB) {
// 	return (lightB.castShadow ? 1 : 0) - (lightA.castShadow ? 1 : 0)
// }

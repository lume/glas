/**
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */

import {WebGLLights} from './WebGLLights'
import {PointLight} from '../../lights/PointLight'
import {PerspectiveCamera} from '../../cameras/PerspectiveCamera'
import {Light} from '../../lights/Light'
import {Color} from '../../math/Color'
import {Vector3} from '../../math/Vector3'

describe('Renderers', (): void => {
	describe('WebGL', (): void => {
		describe('WebGLLights', (): void => {
			test('constructor', (): void => {
				const l = new WebGLLights()
				expect(l.state.version).toBe(0)
			})

			describe('UniformsCache', (): void => {
				test('get', (): void => {
					const glLights = new WebGLLights()

					expect(glLights.cache.lights.size).toBe(0)

					const light = new PointLight()
					const uniforms1 = glLights.cache.get(light)

					expect(glLights.cache.lights.size).toBe(1)

					const uniforms2 = glLights.cache.get(light)

					expect(glLights.cache.lights.size).toBe(1)
					expect(uniforms1).toBe(uniforms2)
				})
			})

			test('setup() with PointLight', () => {
				const glLights = new WebGLLights()

				// This works only in TS, not AS...
				// const lights: Array<PointLight> = [new PointLight(), new PointLight()]

				// ...while this works in both TS and AS
				const lights: Array<Light> = [new PointLight(), new PointLight(new Color(0.1, 0.2, 0.3), 1, 2, 3)]

				expect(glLights.cache.lights.size).toBe(0)

				const light = lights[1] as PointLight
				light.updateMatrixWorld()
				const cam = new PerspectiveCamera()
				cam.updateMatrixWorld()
				cam.updateProjectionMatrix()

				glLights.setup(lights, lights, cam)

				expect(glLights.cache.lights.size).toBe(2)
				expect(glLights.state.hash.pointLength).toBe(2)
				expect(glLights.state.point.length).toBe(2)

				const position = new Vector3()
				const viewMatrix = cam.matrixWorldInverse
				position.setFromMatrixPosition(light.matrixWorld)
				position.applyMatrix4(viewMatrix)

				expect(glLights.state.point[1].color).toStrictEqual(light.color.clone().multiplyScalar(light.intensity))
				expect(glLights.state.point[1].decay).toBe(light.decay)
				expect(glLights.state.point[1].distance).toBe(light.distance)
				expect(glLights.state.point[1].position).toStrictEqual(position)
			})
		})
	})
})

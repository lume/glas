/**
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */

import {WebGLLights} from './WebGLLights'
import {PointLight} from '../../lights/PointLight'

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

			todo('setup')
			todo('state')
		})
	})
})

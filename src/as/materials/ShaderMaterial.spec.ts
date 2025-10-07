/**
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */

import { ShaderMaterial } from './ShaderMaterial'
import { Side } from '../constants'

describe('Materials', (): void => {
	describe('ShaderMaterial', (): void => {
		test('constructor creates material with default properties', (): void => {
			const material = new ShaderMaterial()

			expect(material.type).toBe('ShaderMaterial', 'type should be ShaderMaterial')
			expect(material.defines.size).toBe(0, 'defines should be empty by default')
			expect(material.uniforms.size).toBe(0, 'uniforms should be empty by default')
			expect(material.vertexShader.length).toBeGreaterThan(0, 'should have default vertex shader')
			expect(material.fragmentShader.length).toBeGreaterThan(0, 'should have default fragment shader')
			expect(material.linewidth).toBe(1, 'linewidth should be 1')
			expect(material.wireframe).toBe(false, 'wireframe should be false')
			expect(material.wireframeLinewidth).toBe(1, 'wireframeLinewidth should be 1')
			expect(material.fog).toBe(true, 'fog should be true')
			expect(material.lights).toBe(false, 'lights should be false')
			expect(material.clipping).toBe(false, 'clipping should be false')
			expect(material.skinning).toBe(false, 'skinning should be false')
			expect(material.morphTargets).toBe(false, 'morphTargets should be false')
			expect(material.morphNormals).toBe(false, 'morphNormals should be false')
		})

		test('default vertex shader is valid', (): void => {
			const material = new ShaderMaterial()
			
			expect(material.vertexShader).toContain('main', 'vertex shader should have main function')
			expect(material.vertexShader).toContain('gl_Position', 'vertex shader should set gl_Position')
		})

		test('default fragment shader is valid', (): void => {
			const material = new ShaderMaterial()
			
			expect(material.fragmentShader).toContain('main', 'fragment shader should have main function')
			expect(material.fragmentShader).toContain('gl_FragColor', 'fragment shader should set gl_FragColor')
		})

		test('defines are initialized as empty Map', (): void => {
			const material = new ShaderMaterial()
			
			expect(material.defines instanceof Map).toBe(true, 'defines should be a Map')
			expect(material.defines.size).toBe(0, 'defines should be empty')
		})

		test('uniforms are initialized as empty Map', (): void => {
			const material = new ShaderMaterial()
			
			expect(material.uniforms instanceof Map).toBe(true, 'uniforms should be a Map')
			expect(material.uniforms.size).toBe(0, 'uniforms should be empty')
		})

		test('extensions are initialized as empty Map', (): void => {
			const material = new ShaderMaterial()
			
			expect(material.extensions instanceof Map).toBe(true, 'extensions should be a Map')
			expect(material.extensions.size).toBe(0, 'extensions should be empty')
		})

		test('copy creates independent clone of shader material', (): void => {
			const source = new ShaderMaterial()
			source.vertexShader = 'custom vertex shader'
			source.fragmentShader = 'custom fragment shader'
			source.linewidth = 2.5
			source.wireframe = true
			source.wireframeLinewidth = 3.0
			source.lights = true
			source.clipping = true
			source.skinning = true
			source.morphTargets = true
			source.morphNormals = true
			
			source.uniforms.set('time', 1.0)
			source.uniforms.set('resolution', [1920.0, 1080.0])
			source.defines.set('USE_MAP', '1')
			source.extensions.set('derivatives', true)

			const copy = new ShaderMaterial()
			copy.copy(source)

			expect(copy.vertexShader).toBe(source.vertexShader, 'vertex shader should be copied')
			expect(copy.fragmentShader).toBe(source.fragmentShader, 'fragment shader should be copied')
			expect(copy.linewidth).toBe(source.linewidth, 'linewidth should be copied')
			expect(copy.wireframe).toBe(source.wireframe, 'wireframe should be copied')
			expect(copy.wireframeLinewidth).toBe(source.wireframeLinewidth, 'wireframeLinewidth should be copied')
			expect(copy.lights).toBe(source.lights, 'lights should be copied')
			expect(copy.clipping).toBe(source.clipping, 'clipping should be copied')
			expect(copy.skinning).toBe(source.skinning, 'skinning should be copied')
			expect(copy.morphTargets).toBe(source.morphTargets, 'morphTargets should be copied')
			expect(copy.morphNormals).toBe(source.morphNormals, 'morphNormals should be copied')
		})

		test('copy creates independent uniforms map', (): void => {
			const source = new ShaderMaterial()
			source.uniforms.set('time', 1.0)
			source.uniforms.set('color', [1.0, 0.5, 0.25])

			const copy = new ShaderMaterial()
			copy.copy(source)

			// Verify uniforms were copied
			expect(copy.uniforms.has('time')).toBe(true, 'time uniform should be copied')
			expect(copy.uniforms.has('color')).toBe(true, 'color uniform should be copied')

			// Verify independence - modifying copy shouldn't affect source
			copy.uniforms.set('time', 2.0)
			expect(source.uniforms.get('time')).toBe(1.0, 'source uniform should not change')
		})

		test('copy creates independent defines map', (): void => {
			const source = new ShaderMaterial()
			source.defines.set('USE_MAP', '1')
			source.defines.set('NUM_LIGHTS', '4')

			const copy = new ShaderMaterial()
			copy.copy(source)

			// Verify defines were copied
			expect(copy.defines.has('USE_MAP')).toBe(true, 'USE_MAP define should be copied')
			expect(copy.defines.has('NUM_LIGHTS')).toBe(true, 'NUM_LIGHTS define should be copied')

			// Verify independence
			copy.defines.set('USE_MAP', '0')
			expect(source.defines.get('USE_MAP')).toBe('1', 'source define should not change')
		})

		test('copy creates independent extensions map', (): void => {
			const source = new ShaderMaterial()
			source.extensions.set('derivatives', true)
			source.extensions.set('fragDepth', false)

			const copy = new ShaderMaterial()
			copy.copy(source)

			// Verify extensions were copied
			expect(copy.extensions.has('derivatives')).toBe(true, 'derivatives extension should be copied')
			expect(copy.extensions.has('fragDepth')).toBe(true, 'fragDepth extension should be copied')

			// Verify independence
			copy.extensions.set('derivatives', false)
			expect(source.extensions.get('derivatives')).toBe(true, 'source extension should not change')
		})

		test('setValues sets vertexShader property', (): void => {
			const params = {
				vertexShader: 'void main() { gl_Position = vec4(0.0); }'
			}
			const material = new ShaderMaterial(params)

			expect(material.vertexShader).toBe(params.vertexShader, 'vertexShader should be set from params')
		})

		test('setValues sets fragmentShader property', (): void => {
			const params = {
				fragmentShader: 'void main() { gl_FragColor = vec4(1.0); }'
			}
			const material = new ShaderMaterial(params)

			expect(material.fragmentShader).toBe(params.fragmentShader, 'fragmentShader should be set from params')
		})

		test('setValues sets linewidth property', (): void => {
			const params = { linewidth: 5.0 }
			const material = new ShaderMaterial(params)

			expect(material.linewidth).toBe(5.0, 'linewidth should be set from params')
		})

		test('setValues sets wireframe property', (): void => {
			const params = { wireframe: true }
			const material = new ShaderMaterial(params)

			expect(material.wireframe).toBe(true, 'wireframe should be set from params')
		})

		test('setValues sets wireframeLinewidth property', (): void => {
			const params = { wireframeLinewidth: 2.5 }
			const material = new ShaderMaterial(params)

			expect(material.wireframeLinewidth).toBe(2.5, 'wireframeLinewidth should be set from params')
		})

		test('setValues sets morphTargets property', (): void => {
			const params = { morphTargets: true }
			const material = new ShaderMaterial(params)

			expect(material.morphTargets).toBe(true, 'morphTargets should be set from params')
		})

		test('setValues sets morphNormals property', (): void => {
			const params = { morphNormals: true }
			const material = new ShaderMaterial(params)

			expect(material.morphNormals).toBe(true, 'morphNormals should be set from params')
		})

		test('setValues sets skinning property', (): void => {
			const params = { skinning: true }
			const material = new ShaderMaterial(params)

			expect(material.skinning).toBe(true, 'skinning should be set from params')
		})

		test('setValues sets clipping property', (): void => {
			const params = { clipping: true }
			const material = new ShaderMaterial(params)

			expect(material.clipping).toBe(true, 'clipping should be set from params')
		})

		test('setValues sets lights property', (): void => {
			const params = { lights: true }
			const material = new ShaderMaterial(params)

			expect(material.lights).toBe(true, 'lights should be set from params')
		})

		test('setValues sets fog property', (): void => {
			const params = { fog: false }
			const material = new ShaderMaterial(params)

			expect(material.fog).toBe(false, 'fog should be set from params')
		})

		test('setValues sets opacity property from Material', (): void => {
			const params = { opacity: 0.5 }
			const material = new ShaderMaterial(params)

			expect(material.opacity).toBe(0.5, 'opacity should be set from params')
		})

		test('setValues sets transparent property from Material', (): void => {
			const params = { transparent: true }
			const material = new ShaderMaterial(params)

			expect(material.transparent).toBe(true, 'transparent should be set from params')
		})

		test('setValues sets depthTest property from Material', (): void => {
			const params = { depthTest: false }
			const material = new ShaderMaterial(params)

			expect(material.depthTest).toBe(false, 'depthTest should be set from params')
		})

		test('setValues sets depthWrite property from Material', (): void => {
			const params = { depthWrite: false }
			const material = new ShaderMaterial(params)

			expect(material.depthWrite).toBe(false, 'depthWrite should be set from params')
		})

		test('setValues sets multiple properties at once', (): void => {
			const params = {
				vertexShader: 'custom vertex',
				fragmentShader: 'custom fragment',
				linewidth: 3.0,
				wireframe: true,
				lights: true,
				fog: false,
				opacity: 0.75
			}
			const material = new ShaderMaterial(params)

			expect(material.vertexShader).toBe(params.vertexShader, 'vertexShader should be set')
			expect(material.fragmentShader).toBe(params.fragmentShader, 'fragmentShader should be set')
			expect(material.linewidth).toBe(params.linewidth, 'linewidth should be set')
			expect(material.wireframe).toBe(params.wireframe, 'wireframe should be set')
			expect(material.lights).toBe(params.lights, 'lights should be set')
			expect(material.fog).toBe(params.fog, 'fog should be set')
			expect(material.opacity).toBe(params.opacity, 'opacity should be set')
		})

		test('material inherits properties from Material base class', (): void => {
			const material = new ShaderMaterial()

			// Check that base Material properties exist
			expect(material.opacity).toBeDefined('opacity should be defined')
			expect(material.transparent).toBeDefined('transparent should be defined')
			expect(material.depthTest).toBeDefined('depthTest should be defined')
			expect(material.depthWrite).toBeDefined('depthWrite should be defined')
			expect(material.side).toBeDefined('side should be defined')
		})

		test('type property identifies material type', (): void => {
			const material = new ShaderMaterial()

			expect(material.type).toBe('ShaderMaterial', 'type should be ShaderMaterial')
		})
	})
})

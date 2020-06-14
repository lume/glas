/**
 * @author Joe Pea / http://github.com/trusktr
 */

import {WebGLRenderStates} from './WebGLRenderStates'
import {Scene} from '../../scenes/Scene'
import {Camera} from '../../cameras/Camera'

describe('WebGLRendererStates', (): void => {
	test('tracks state for scene+camera pairs', (): void => {
		const states = new WebGLRenderStates()
		// @ts-ignore
		expect(states.renderStates.size).toBe(0)

		const scene = new Scene()
		const camera = new Camera()

		states.get(scene, camera)

		// @ts-ignore
		expect(scene._listeners.size).toBe(1)
		// @ts-ignore
		expect(states.renderStates.size).toBe(1)

		states.get(scene, camera)

		// @ts-ignore
		expect(scene._listeners.size).toBe(1)
		// @ts-ignore
		expect(scene._listeners.get('dispose').length).toBe(1)
		// @ts-ignore
		expect(states.renderStates.size).toBe(1)

		states.dispose()

		// @ts-ignore
		// TODO expect(scene._listeners.size).toBe(0)
		// @ts-ignore
		expect(scene._listeners.get('dispose').length).toBe(0)
		// @ts-ignore
		expect(states.renderStates.size).toBe(0)

		const scene2 = new Scene()
		const camera2 = new Camera()

		states.get(scene, camera)
		states.get(scene2, camera2)

		// @ts-ignore
		expect(scene._listeners.get('dispose').length).toBe(1)
		// @ts-ignore
		expect(scene2._listeners.get('dispose').length).toBe(1)
		// @ts-ignore
		expect(states.renderStates.size).toBe(2)

		scene.dispose()

		// @ts-ignore
		expect(scene._listeners.get('dispose').length).toBe(0)
		// @ts-ignore
		expect(scene2._listeners.get('dispose').length).toBe(1)
		// @ts-ignore
		expect(states.renderStates.size).toBe(1)

		scene.dispose()

		// @ts-ignore
		expect(scene._listeners.get('dispose').length).toBe(0)
		// @ts-ignore
		expect(scene2._listeners.get('dispose').length).toBe(1)
		// @ts-ignore
		expect(states.renderStates.size).toBe(1)

		scene2.dispose()

		// @ts-ignore
		expect(scene._listeners.get('dispose').length).toBe(0)
		// @ts-ignore
		expect(scene2._listeners.get('dispose').length).toBe(0)
		// @ts-ignore
		expect(states.renderStates.size).toBe(0)
	})
})

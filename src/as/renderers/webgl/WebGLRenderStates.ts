/**
 * @author Mugen87 / https://github.com/Mugen87
 * @author Joe Pea / http://github.com/trusktr
 */

import {Scene} from '../../scenes/Scene'
import {Camera} from '../../cameras/Camera'
import {Light} from '../../lights/Light'
import {WebGLLights} from './WebGLLights'
import {Event} from '../../core/Event'
import {Listener} from '../../core/EventDispatcher'

class WebGLRenderState {
	lightsArray: Light[] = []
	shadowsArray: Light[] = []
	lights: WebGLLights = new WebGLLights()

	init(): void {
		this.lightsArray.length = 0
		this.shadowsArray.length = 0
	}

	pushLight(light: Light): void {
		this.lightsArray.push(light)
	}

	pushShadow(shadowLight: Light): void {
		this.shadowsArray.push(shadowLight)
	}

	setupLights(camera: Camera): void {
		this.lights.setup(this.lightsArray, this.shadowsArray, camera)
	}
}

export class WebGLRenderStates {
	private renderStates: Map<Scene, Map<Camera, WebGLRenderState>> = new Map()

	onSceneDispose: (event: Event) => void = (event: Event): void => {
		var scene = event.target as Scene

		// If you comment these lines out, no more compile errors (ignore the failed tests)
		scene.removeEventListener('dispose', this.onSceneDispose)
		this.renderStates.delete(scene)
	}

	get(scene: Scene, camera: Camera): WebGLRenderState {
		let renderState: WebGLRenderState

		if (!this.renderStates.has(scene)) {
			renderState = new WebGLRenderState()
			this.renderStates.set(scene, new Map())
			this.renderStates.get(scene).set(camera, renderState)

			scene.addEventListener('dispose', this.onSceneDispose)
		} else {
			if (!this.renderStates.get(scene).has(camera)) {
				renderState = new WebGLRenderState()
				this.renderStates.get(scene).set(camera, renderState)
			} else {
				renderState = this.renderStates.get(scene).get(camera)
			}
		}

		return renderState
	}

	dispose(): void {
		const scenes = this.renderStates.keys()

		for (let i = 0, l = scenes.length; i < l; i++) {
			scenes[i].removeEventListener('dispose', this.onSceneDispose)
		}

		this.renderStates.clear()
	}
}

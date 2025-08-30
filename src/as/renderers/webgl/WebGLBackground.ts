import { WebGLRenderer } from '../WebGLRenderer'
import { WebGLCubeMaps } from './WebGLCubeMaps'
import { WebGLState } from './WebGLState'
import { WebGLObjects } from './WebGLObjects'
import { Scene } from '../../scenes/Scene'
import { Camera } from '../../cameras/Camera'

export class WebGLBackground {
	constructor(
		renderer: WebGLRenderer,
		cubemaps: WebGLCubeMaps,
		state: WebGLState,
		objects: WebGLObjects,
		premultipliedAlpha: boolean
	) {}

	render(renderList: any, scene: Scene, camera: Camera): void {
		// TODO: Implement background rendering
	}
}
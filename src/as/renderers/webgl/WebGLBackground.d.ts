import {Color} from '../../math/Color'
import {WebGLRenderer} from '../WebGLRenderer.js'
import {WebGLState} from './WebGLState.js'
import {WebGLObjects} from './WebGLObjects.js'
import {WebGLRenderLists} from './WebGLRenderLists.js'
import {Scene} from '../../scenes/Scene.js'

export class WebGLBackground {
	constructor(renderer: WebGLRenderer, state: WebGLState, objects: WebGLObjects, premultipliedAlpha: any)

	getClearColor(): Color
	/**
	 * @param color - This can be a string, an f32, or a Color instance.
	 */
	setClearColor<T>(color: T /*string | Color | f32*/, alpha: f32 = 1.0): void
	getClearAlpha(): f32
	setClearAlpha(alpha: f32): void
	render(renderList: WebGLRenderLists, scene: Scene, camera: any, forceClear: any): void
}

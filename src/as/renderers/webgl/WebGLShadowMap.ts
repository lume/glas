import { Scene } from '../../scenes/Scene'
import { Camera } from '../../cameras/Camera'
import { WebGLRenderer } from '../WebGLRenderer'
import { ShadowMapType } from '../../constants'

export class WebGLShadowMap {
	enabled: boolean = false
	autoUpdate: boolean = true
	needsUpdate: boolean = false
	type: ShadowMapType = 0 // TODO: proper default

	constructor(
		private renderer: WebGLRenderer,
		private lights: any[],
		private objects: any[],
		capabilities: any
	) {}

	render(shadowsArray: any[], scene: Scene, camera: Camera): void {
		// TODO: implement shadow map rendering
	}

	/**
	 * @deprecated Use {@link WebGLShadowMap#renderReverseSided .shadowMap.renderReverseSided} instead.
	 */
	cullFace: any = null
}
import { WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { WebGLExtensions } from './WebGLExtensions'
import { WebGLInfo } from './WebGLInfo'
import { WebGLCapabilities } from './WebGLCapabilities'

export class WebGLBufferRenderer {
	constructor(
		private gl: WebGLRenderingContext, 
		extensions: WebGLExtensions, 
		info: WebGLInfo, 
		capabilities: WebGLCapabilities
	) {}

	setMode(value: any): void {
		// TODO: implement setMode
	}

	render(start: any, count: f32): void {
		// TODO: implement render
	}

	renderInstances(geometry: any): void {
		// TODO: implement renderInstances
	}
}
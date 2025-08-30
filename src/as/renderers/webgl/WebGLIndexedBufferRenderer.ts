import { WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { WebGLExtensions } from './WebGLExtensions'
import { WebGLInfo } from './WebGLInfo'
import { WebGLCapabilities } from './WebGLCapabilities'

export class WebGLIndexedBufferRenderer {
	constructor(
		private gl: WebGLRenderingContext, 
		extensions: WebGLExtensions, 
		info: WebGLInfo, 
		capabilities: WebGLCapabilities
	) {}

	setMode(value: any): void {
		// TODO: implement setMode
	}

	setIndex(index: any): void {
		// TODO: implement setIndex
	}

	render(start: any, count: f32): void {
		// TODO: implement render
	}

	renderInstances(geometry: any, start: any, count: f32): void {
		// TODO: implement renderInstances
	}
}
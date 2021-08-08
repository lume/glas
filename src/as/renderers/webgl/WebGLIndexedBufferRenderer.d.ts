import { WebGLBufferRenderer } from "./WebGLBufferRenderer";

export class WebGLIndexedBufferRenderer extends WebGLBufferRenderer {
	constructor(gl: WebGLRenderingContext, properties: any, info: any)

	setMode(value: any): void
	setIndex(index: any): void
	render(start: any, count: f32): void
	renderInstances(geometry: any, start: any, count: f32): void
}

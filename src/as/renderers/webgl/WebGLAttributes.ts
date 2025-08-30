import { WebGLBuffer, WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { WebGLCapabilities } from './WebGLCapabilities'
import { BufferAttribute } from '../../core/BufferAttribute'

export class AttributeInfo {
	buffer: WebGLBuffer = null!
	type: i32 = 0
	bytesPerElement: i32 = 0
	version: i32 = 0
}

export class WebGLAttributes {
	constructor(
		private gl: WebGLRenderingContext,
		private capabilities: WebGLCapabilities
	) {}

	get(attribute: BufferAttribute): AttributeInfo {
		// TODO: implement get
		return new AttributeInfo()
	}

	remove(attribute: BufferAttribute): void {
		// TODO: implement remove
	}

	update(attribute: BufferAttribute, bufferType: i32): void {
		// TODO: implement update
	}
}
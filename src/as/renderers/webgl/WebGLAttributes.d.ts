import { WebGLBuffer, WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { WebGLCapabilities } from './WebGLCapabilities';
import { BufferAttribute } from '../../core/BufferAttribute';
// import { InterleavedBufferAttribute } from '../../core/InterleavedBufferAttribute'; TODO

export class WebGLAttributes {

	constructor( gl: WebGLRenderingContext /*| WebGL2RenderingContext TODO*/, capabilities: WebGLCapabilities );

	get( attribute: BufferAttribute /*| InterleavedBufferAttribute TODO */ ): {
		buffer: WebGLBuffer,
		type: number,
		bytesPerElement: number,
		version: number
	};

	remove( attribute: BufferAttribute /*| InterleavedBufferAttribute TODO*/ ): void;

	update( attribute: BufferAttribute /*| InterleavedBufferAttribute TODO*/, bufferType: number ): void;

}

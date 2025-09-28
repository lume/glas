// r125 - WebGLIndexedBufferRenderer implementation in AssemblyScript
import { WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { WebGLExtensions } from './WebGLExtensions'
import { WebGLInfo } from './WebGLInfo'
import { WebGLCapabilities } from './WebGLCapabilities'

// Interface for index buffer information
export interface IndexBufferInfo {
	type: i32
	bytesPerElement: i32
}

// Mock geometry interface for instanced rendering
export interface InstancedBufferGeometry {
	maxInstancedCount: i32
}

export class WebGLIndexedBufferRenderer {
	private mode: i32 = 0
	private type: i32 = 0
	private bytesPerElement: i32 = 0

	constructor(
		private gl: WebGLRenderingContext,
		private extensions: WebGLExtensions,
		private info: WebGLInfo,
		private capabilities: WebGLCapabilities
	) {}

	setMode(value: i32): void {
		this.mode = value
	}

	setIndex(indexInfo: IndexBufferInfo): void {
		this.type = indexInfo.type
		this.bytesPerElement = indexInfo.bytesPerElement
	}

	render(start: i32, count: i32): void {
		this.gl.drawElements(this.mode, count, this.type, start * this.bytesPerElement)
		this.info.update(count, this.mode, 1)
	}

	renderInstances(geometry: InstancedBufferGeometry, start: i32, count: i32): void {
		if (this.capabilities.isWebGL2) {
			// Use native WebGL2 instanced rendering
			this.gl.drawElementsInstanced(
				this.mode,
				count,
				this.type,
				start * this.bytesPerElement,
				geometry.maxInstancedCount
			)
		} else {
			// Use ANGLE_instanced_arrays extension for WebGL1
			const extension = this.extensions.get('ANGLE_instanced_arrays')
			
			if (extension === null) {
				console.error(
					'THREE.WebGLIndexedBufferRenderer: using THREE.InstancedBufferGeometry but hardware does not support extension ANGLE_instanced_arrays.'
				)
				return
			}

			// Call the extension method
			// Note: In real implementation, this would be extension.drawElementsInstancedANGLE
			// For now, we'll simulate the call
			// extension.drawElementsInstancedANGLE(
			// 	this.mode,
			// 	count,
			// 	this.type,
			// 	start * this.bytesPerElement,
			// 	geometry.maxInstancedCount
			// )
		}

		this.info.update(count, this.mode, geometry.maxInstancedCount)
	}
}
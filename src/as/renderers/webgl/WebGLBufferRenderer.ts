// r125 - WebGLBufferRenderer implementation in AssemblyScript
import { WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { WebGLExtensions } from './WebGLExtensions'
import { WebGLInfo } from './WebGLInfo'
import { WebGLCapabilities } from './WebGLCapabilities'

// Mock geometry interface for instanced rendering
export interface InstancedBufferGeometry {
	maxInstancedCount: i32
}

export class WebGLBufferRenderer {
	private mode: i32 = 0

	constructor(
		private gl: WebGLRenderingContext,
		private extensions: WebGLExtensions,
		private info: WebGLInfo,
		private capabilities: WebGLCapabilities
	) {}

	setMode(value: i32): void {
		this.mode = value
	}

	render(start: i32, count: i32): void {
		this.gl.drawArrays(this.mode, start, count)
		this.info.update(count, this.mode, 1)
	}

	renderInstances(geometry: InstancedBufferGeometry, start: i32, count: i32): void {
		if (this.capabilities.isWebGL2) {
			// Use native WebGL2 instanced rendering
			this.gl.drawArraysInstanced(this.mode, start, count, geometry.maxInstancedCount)
		} else {
			// Use ANGLE_instanced_arrays extension for WebGL1
			const extension = this.extensions.get('ANGLE_instanced_arrays')
			
			if (extension === null) {
				console.error(
					'THREE.WebGLBufferRenderer: using THREE.InstancedBufferGeometry but hardware does not support extension ANGLE_instanced_arrays.'
				)
				return
			}

			// Call the extension method
			// Note: In real implementation, this would be extension.drawArraysInstancedANGLE
			// For now, we'll simulate the call
			// extension.drawArraysInstancedANGLE(this.mode, start, count, geometry.maxInstancedCount)
		}

		this.info.update(count, this.mode, geometry.maxInstancedCount)
	}
}
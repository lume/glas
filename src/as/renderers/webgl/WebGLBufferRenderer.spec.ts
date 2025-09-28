/**
 * Tests for WebGLBufferRenderer - based on Three.js r125 WebGLBufferRenderer functionality
 */

import { WebGLBufferRenderer, InstancedBufferGeometry } from './WebGLBufferRenderer'
import { WebGLExtensions } from './WebGLExtensions'
import { WebGLInfo } from './WebGLInfo'
import { WebGLCapabilities } from './WebGLCapabilities'
import { WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'

// Mock WebGL context for testing
class MockWebGLRenderingContext implements WebGLRenderingContext {
	// WebGL constants for drawing modes
	POINTS: i32 = 0x0000
	LINES: i32 = 0x0001
	LINE_LOOP: i32 = 0x0002
	LINE_STRIP: i32 = 0x0003
	TRIANGLES: i32 = 0x0004
	TRIANGLE_STRIP: i32 = 0x0005
	TRIANGLE_FAN: i32 = 0x0006

	private drawArraysCalls: { mode: i32; start: i32; count: i32 }[] = []
	private drawArraysInstancedCalls: { mode: i32; start: i32; count: i32; instanceCount: i32 }[] = []

	drawArrays(mode: i32, first: i32, count: i32): void {
		this.drawArraysCalls.push({ mode, start: first, count })
	}

	drawArraysInstanced(mode: i32, first: i32, count: i32, instanceCount: i32): void {
		this.drawArraysInstancedCalls.push({ mode, start: first, count, instanceCount })
	}

	getDrawArraysCalls(): { mode: i32; start: i32; count: i32 }[] {
		return this.drawArraysCalls
	}

	getDrawArraysInstancedCalls(): { mode: i32; start: i32; count: i32; instanceCount: i32 }[] {
		return this.drawArraysInstancedCalls
	}

	resetCalls(): void {
		this.drawArraysCalls = []
		this.drawArraysInstancedCalls = []
	}
}

// Mock WebGLExtensions for testing
class MockWebGLExtensions extends WebGLExtensions {
	private extensions: Map<string, any> = new Map()

	get(name: string): any {
		return this.extensions.get(name) || null
	}

	setExtension(name: string, extension: any): void {
		this.extensions.set(name, extension)
	}
}

// Mock WebGLInfo for testing
class MockWebGLInfo extends WebGLInfo {
	private updateCalls: { count: i32; mode: i32; instanceCount: i32 }[] = []

	update(count: i32, mode: i32, instanceCount: i32 = 1): void {
		this.updateCalls.push({ count, mode, instanceCount })
	}

	getUpdateCalls(): { count: i32; mode: i32; instanceCount: i32 }[] {
		return this.updateCalls
	}

	resetUpdateCalls(): void {
		this.updateCalls = []
	}
}

// Mock WebGLCapabilities for testing
class MockWebGLCapabilities extends WebGLCapabilities {
	constructor(public isWebGL2: boolean = false) {
		super()
	}
}

// Mock instanced buffer geometry
class MockInstancedBufferGeometry implements InstancedBufferGeometry {
	constructor(public maxInstancedCount: i32) {}
}

// Mock ANGLE extension
class MockANGLEInstancedArraysExtension {
	drawArraysInstancedANGLE(mode: i32, first: i32, count: i32, instanceCount: i32): void {
		// Mock implementation
	}
}

describe('WebGLBufferRenderer', () => {
	let gl: MockWebGLRenderingContext
	let extensions: MockWebGLExtensions
	let info: MockWebGLInfo
	let capabilities: MockWebGLCapabilities
	let bufferRenderer: WebGLBufferRenderer

	beforeEach(() => {
		gl = new MockWebGLRenderingContext()
		extensions = new MockWebGLExtensions()
		info = new MockWebGLInfo()
		capabilities = new MockWebGLCapabilities(false) // Start with WebGL1
		bufferRenderer = new WebGLBufferRenderer(gl, extensions, info, capabilities)
	})

	describe('constructor', () => {
		test('should create WebGLBufferRenderer instance', () => {
			expect(bufferRenderer).toBeDefined()
		})

		test('should work with WebGL2 capabilities', () => {
			const webgl2Capabilities = new MockWebGLCapabilities(true)
			const webgl2Renderer = new WebGLBufferRenderer(gl, extensions, info, webgl2Capabilities)
			expect(webgl2Renderer).toBeDefined()
		})
	})

	describe('setMode', () => {
		test('should set drawing mode', () => {
			bufferRenderer.setMode(gl.TRIANGLES)
			// Mode is private, so we test it indirectly through render calls
			bufferRenderer.render(0, 3)

			const calls = gl.getDrawArraysCalls()
			expect(calls.length).toBe(1)
			expect(calls[0].mode).toBe(gl.TRIANGLES)
		})

		test('should change mode between calls', () => {
			// First call with TRIANGLES
			bufferRenderer.setMode(gl.TRIANGLES)
			bufferRenderer.render(0, 3)

			// Second call with LINES
			bufferRenderer.setMode(gl.LINES)
			bufferRenderer.render(0, 2)

			const calls = gl.getDrawArraysCalls()
			expect(calls.length).toBe(2)
			expect(calls[0].mode).toBe(gl.TRIANGLES)
			expect(calls[1].mode).toBe(gl.LINES)
		})
	})

	describe('render', () => {
		test('should call gl.drawArrays with correct parameters', () => {
			bufferRenderer.setMode(gl.TRIANGLES)
			bufferRenderer.render(0, 6)

			const calls = gl.getDrawArraysCalls()
			expect(calls.length).toBe(1)
			expect(calls[0].mode).toBe(gl.TRIANGLES)
			expect(calls[0].start).toBe(0)
			expect(calls[0].count).toBe(6)
		})

		test('should render with different start and count values', () => {
			bufferRenderer.setMode(gl.TRIANGLE_STRIP)
			bufferRenderer.render(10, 15)

			const calls = gl.getDrawArraysCalls()
			expect(calls.length).toBe(1)
			expect(calls[0].mode).toBe(gl.TRIANGLE_STRIP)
			expect(calls[0].start).toBe(10)
			expect(calls[0].count).toBe(15)
		})

		test('should update info with render statistics', () => {
			bufferRenderer.setMode(gl.POINTS)
			bufferRenderer.render(0, 100)

			const updateCalls = info.getUpdateCalls()
			expect(updateCalls.length).toBe(1)
			expect(updateCalls[0].count).toBe(100)
			expect(updateCalls[0].mode).toBe(gl.POINTS)
			expect(updateCalls[0].instanceCount).toBe(1)
		})

		test('should handle multiple render calls', () => {
			bufferRenderer.setMode(gl.LINES)
			bufferRenderer.render(0, 2)
			bufferRenderer.render(2, 4)

			const calls = gl.getDrawArraysCalls()
			expect(calls.length).toBe(2)
			
			expect(calls[0].start).toBe(0)
			expect(calls[0].count).toBe(2)
			
			expect(calls[1].start).toBe(2)
			expect(calls[1].count).toBe(4)

			const updateCalls = info.getUpdateCalls()
			expect(updateCalls.length).toBe(2)
		})
	})

	describe('renderInstances - WebGL2', () => {
		beforeEach(() => {
			capabilities = new MockWebGLCapabilities(true) // Enable WebGL2
			bufferRenderer = new WebGLBufferRenderer(gl, extensions, info, capabilities)
		})

		test('should use native WebGL2 drawArraysInstanced', () => {
			const geometry = new MockInstancedBufferGeometry(5)
			bufferRenderer.setMode(gl.TRIANGLES)
			bufferRenderer.renderInstances(geometry, 0, 3)

			const instancedCalls = gl.getDrawArraysInstancedCalls()
			expect(instancedCalls.length).toBe(1)
			expect(instancedCalls[0].mode).toBe(gl.TRIANGLES)
			expect(instancedCalls[0].start).toBe(0)
			expect(instancedCalls[0].count).toBe(3)
			expect(instancedCalls[0].instanceCount).toBe(5)
		})

		test('should update info with instanced render statistics', () => {
			const geometry = new MockInstancedBufferGeometry(10)
			bufferRenderer.setMode(gl.TRIANGLE_STRIP)
			bufferRenderer.renderInstances(geometry, 0, 6)

			const updateCalls = info.getUpdateCalls()
			expect(updateCalls.length).toBe(1)
			expect(updateCalls[0].count).toBe(6)
			expect(updateCalls[0].mode).toBe(gl.TRIANGLE_STRIP)
			expect(updateCalls[0].instanceCount).toBe(10)
		})
	})

	describe('renderInstances - WebGL1 with ANGLE extension', () => {
		beforeEach(() => {
			capabilities = new MockWebGLCapabilities(false) // Use WebGL1
			bufferRenderer = new WebGLBufferRenderer(gl, extensions, info, capabilities)
		})

		test('should use ANGLE extension when available', () => {
			const angleExtension = new MockANGLEInstancedArraysExtension()
			extensions.setExtension('ANGLE_instanced_arrays', angleExtension)

			const geometry = new MockInstancedBufferGeometry(3)
			bufferRenderer.setMode(gl.TRIANGLES)
			
			// Should not throw
			expect(() => {
				bufferRenderer.renderInstances(geometry, 0, 9)
			}).not.toThrow()

			// Should still update info
			const updateCalls = info.getUpdateCalls()
			expect(updateCalls.length).toBe(1)
			expect(updateCalls[0].instanceCount).toBe(3)
		})

		test('should handle missing ANGLE extension gracefully', () => {
			// Don't set the extension - it will return null
			const geometry = new MockInstancedBufferGeometry(2)
			bufferRenderer.setMode(gl.TRIANGLES)

			// Should not throw but should not update info either
			expect(() => {
				bufferRenderer.renderInstances(geometry, 0, 6)
			}).not.toThrow()

			// Should not have updated info due to early return
			const updateCalls = info.getUpdateCalls()
			expect(updateCalls.length).toBe(0)
		})
	})

	describe('different drawing modes', () => {
		test('should handle POINTS mode', () => {
			bufferRenderer.setMode(gl.POINTS)
			bufferRenderer.render(0, 50)

			const calls = gl.getDrawArraysCalls()
			expect(calls[0].mode).toBe(gl.POINTS)
		})

		test('should handle LINES mode', () => {
			bufferRenderer.setMode(gl.LINES)
			bufferRenderer.render(0, 20)

			const calls = gl.getDrawArraysCalls()
			expect(calls[0].mode).toBe(gl.LINES)
		})

		test('should handle LINE_STRIP mode', () => {
			bufferRenderer.setMode(gl.LINE_STRIP)
			bufferRenderer.render(0, 15)

			const calls = gl.getDrawArraysCalls()
			expect(calls[0].mode).toBe(gl.LINE_STRIP)
		})

		test('should handle TRIANGLE_FAN mode', () => {
			bufferRenderer.setMode(gl.TRIANGLE_FAN)
			bufferRenderer.render(0, 12)

			const calls = gl.getDrawArraysCalls()
			expect(calls[0].mode).toBe(gl.TRIANGLE_FAN)
		})
	})

	describe('edge cases', () => {
		test('should handle zero count render', () => {
			bufferRenderer.setMode(gl.TRIANGLES)
			bufferRenderer.render(0, 0)

			const calls = gl.getDrawArraysCalls()
			expect(calls.length).toBe(1)
			expect(calls[0].count).toBe(0)

			const updateCalls = info.getUpdateCalls()
			expect(updateCalls[0].count).toBe(0)
		})

		test('should handle zero instance count', () => {
			capabilities = new MockWebGLCapabilities(true)
			bufferRenderer = new WebGLBufferRenderer(gl, extensions, info, capabilities)

			const geometry = new MockInstancedBufferGeometry(0)
			bufferRenderer.setMode(gl.TRIANGLES)
			bufferRenderer.renderInstances(geometry, 0, 3)

			const instancedCalls = gl.getDrawArraysInstancedCalls()
			expect(instancedCalls[0].instanceCount).toBe(0)
		})
	})
})
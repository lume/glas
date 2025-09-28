/**
 * Tests for WebGLIndexedBufferRenderer - based on Three.js r125 WebGLIndexedBufferRenderer functionality
 */

import { WebGLIndexedBufferRenderer, IndexBufferInfo, InstancedBufferGeometry } from './WebGLIndexedBufferRenderer'
import { WebGLExtensions } from './WebGLExtensions'
import { WebGLInfo } from './WebGLInfo'
import { WebGLCapabilities } from './WebGLCapabilities'
import { WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'

// Mock WebGL context for testing
class MockWebGLRenderingContext implements WebGLRenderingContext {
	// WebGL constants for drawing modes
	TRIANGLES: i32 = 0x0004
	LINES: i32 = 0x0001
	POINTS: i32 = 0x0000

	// WebGL constants for index types
	UNSIGNED_BYTE: i32 = 0x1401
	UNSIGNED_SHORT: i32 = 0x1403
	UNSIGNED_INT: i32 = 0x1405

	private drawElementsCalls: { mode: i32; count: i32; type: i32; offset: i32 }[] = []
	private drawElementsInstancedCalls: { mode: i32; count: i32; type: i32; offset: i32; instanceCount: i32 }[] = []

	drawElements(mode: i32, count: i32, type: i32, offset: i32): void {
		this.drawElementsCalls.push({ mode, count, type, offset })
	}

	drawElementsInstanced(mode: i32, count: i32, type: i32, offset: i32, instanceCount: i32): void {
		this.drawElementsInstancedCalls.push({ mode, count, type, offset, instanceCount })
	}

	getDrawElementsCalls(): { mode: i32; count: i32; type: i32; offset: i32 }[] {
		return this.drawElementsCalls
	}

	getDrawElementsInstancedCalls(): { mode: i32; count: i32; type: i32; offset: i32; instanceCount: i32 }[] {
		return this.drawElementsInstancedCalls
	}

	resetCalls(): void {
		this.drawElementsCalls = []
		this.drawElementsInstancedCalls = []
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

// Mock index buffer info
class MockIndexBufferInfo implements IndexBufferInfo {
	constructor(public type: i32, public bytesPerElement: i32) {}
}

// Mock instanced buffer geometry
class MockInstancedBufferGeometry implements InstancedBufferGeometry {
	constructor(public maxInstancedCount: i32) {}
}

// Mock ANGLE extension
class MockANGLEInstancedArraysExtension {
	drawElementsInstancedANGLE(mode: i32, count: i32, type: i32, offset: i32, instanceCount: i32): void {
		// Mock implementation
	}
}

describe('WebGLIndexedBufferRenderer', () => {
	let gl: MockWebGLRenderingContext
	let extensions: MockWebGLExtensions
	let info: MockWebGLInfo
	let capabilities: MockWebGLCapabilities
	let indexedRenderer: WebGLIndexedBufferRenderer

	beforeEach(() => {
		gl = new MockWebGLRenderingContext()
		extensions = new MockWebGLExtensions()
		info = new MockWebGLInfo()
		capabilities = new MockWebGLCapabilities(false) // Start with WebGL1
		indexedRenderer = new WebGLIndexedBufferRenderer(gl, extensions, info, capabilities)
	})

	describe('constructor', () => {
		test('should create WebGLIndexedBufferRenderer instance', () => {
			expect(indexedRenderer).toBeDefined()
		})

		test('should work with WebGL2 capabilities', () => {
			const webgl2Capabilities = new MockWebGLCapabilities(true)
			const webgl2Renderer = new WebGLIndexedBufferRenderer(gl, extensions, info, webgl2Capabilities)
			expect(webgl2Renderer).toBeDefined()
		})
	})

	describe('setMode', () => {
		test('should set drawing mode', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.render(0, 6)

			const calls = gl.getDrawElementsCalls()
			expect(calls.length).toBe(1)
			expect(calls[0].mode).toBe(gl.TRIANGLES)
		})

		test('should change mode between calls', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			indexedRenderer.setIndex(indexInfo)

			// First call with TRIANGLES
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.render(0, 6)

			// Second call with LINES
			indexedRenderer.setMode(gl.LINES)
			indexedRenderer.render(0, 4)

			const calls = gl.getDrawElementsCalls()
			expect(calls.length).toBe(2)
			expect(calls[0].mode).toBe(gl.TRIANGLES)
			expect(calls[1].mode).toBe(gl.LINES)
		})
	})

	describe('setIndex', () => {
		test('should set index buffer type and bytes per element', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.render(0, 6)

			const calls = gl.getDrawElementsCalls()
			expect(calls[0].type).toBe(gl.UNSIGNED_SHORT)
		})

		test('should handle different index types', () => {
			// Test UNSIGNED_BYTE
			let indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_BYTE, 1)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.render(0, 3)

			let calls = gl.getDrawElementsCalls()
			expect(calls[0].type).toBe(gl.UNSIGNED_BYTE)

			gl.resetCalls()

			// Test UNSIGNED_INT
			indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_INT, 4)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.render(0, 6)

			calls = gl.getDrawElementsCalls()
			expect(calls[0].type).toBe(gl.UNSIGNED_INT)
		})
	})

	describe('render', () => {
		test('should call gl.drawElements with correct parameters', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.render(0, 6)

			const calls = gl.getDrawElementsCalls()
			expect(calls.length).toBe(1)
			expect(calls[0].mode).toBe(gl.TRIANGLES)
			expect(calls[0].count).toBe(6)
			expect(calls[0].type).toBe(gl.UNSIGNED_SHORT)
			expect(calls[0].offset).toBe(0) // 0 * 2 = 0
		})

		test('should calculate offset based on start and bytes per element', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_INT, 4)
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.render(5, 9) // start at index 5

			const calls = gl.getDrawElementsCalls()
			expect(calls[0].offset).toBe(20) // 5 * 4 = 20
		})

		test('should update info with render statistics', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			indexedRenderer.setMode(gl.POINTS)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.render(0, 100)

			const updateCalls = info.getUpdateCalls()
			expect(updateCalls.length).toBe(1)
			expect(updateCalls[0].count).toBe(100)
			expect(updateCalls[0].mode).toBe(gl.POINTS)
			expect(updateCalls[0].instanceCount).toBe(1)
		})

		test('should handle multiple render calls', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			indexedRenderer.setMode(gl.LINES)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.render(0, 4)
			indexedRenderer.render(4, 6)

			const calls = gl.getDrawElementsCalls()
			expect(calls.length).toBe(2)
			
			expect(calls[0].offset).toBe(0) // 0 * 2 = 0
			expect(calls[0].count).toBe(4)
			
			expect(calls[1].offset).toBe(8) // 4 * 2 = 8
			expect(calls[1].count).toBe(6)

			const updateCalls = info.getUpdateCalls()
			expect(updateCalls.length).toBe(2)
		})
	})

	describe('renderInstances - WebGL2', () => {
		beforeEach(() => {
			capabilities = new MockWebGLCapabilities(true) // Enable WebGL2
			indexedRenderer = new WebGLIndexedBufferRenderer(gl, extensions, info, capabilities)
		})

		test('should use native WebGL2 drawElementsInstanced', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			const geometry = new MockInstancedBufferGeometry(5)
			
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.renderInstances(geometry, 0, 6)

			const instancedCalls = gl.getDrawElementsInstancedCalls()
			expect(instancedCalls.length).toBe(1)
			expect(instancedCalls[0].mode).toBe(gl.TRIANGLES)
			expect(instancedCalls[0].count).toBe(6)
			expect(instancedCalls[0].type).toBe(gl.UNSIGNED_SHORT)
			expect(instancedCalls[0].offset).toBe(0)
			expect(instancedCalls[0].instanceCount).toBe(5)
		})

		test('should calculate offset for instanced rendering', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_INT, 4)
			const geometry = new MockInstancedBufferGeometry(3)
			
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.renderInstances(geometry, 2, 9) // start at index 2

			const instancedCalls = gl.getDrawElementsInstancedCalls()
			expect(instancedCalls[0].offset).toBe(8) // 2 * 4 = 8
		})

		test('should update info with instanced render statistics', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			const geometry = new MockInstancedBufferGeometry(10)
			
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.renderInstances(geometry, 0, 12)

			const updateCalls = info.getUpdateCalls()
			expect(updateCalls.length).toBe(1)
			expect(updateCalls[0].count).toBe(12)
			expect(updateCalls[0].mode).toBe(gl.TRIANGLES)
			expect(updateCalls[0].instanceCount).toBe(10)
		})
	})

	describe('renderInstances - WebGL1 with ANGLE extension', () => {
		beforeEach(() => {
			capabilities = new MockWebGLCapabilities(false) // Use WebGL1
			indexedRenderer = new WebGLIndexedBufferRenderer(gl, extensions, info, capabilities)
		})

		test('should use ANGLE extension when available', () => {
			const angleExtension = new MockANGLEInstancedArraysExtension()
			extensions.setExtension('ANGLE_instanced_arrays', angleExtension)

			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			const geometry = new MockInstancedBufferGeometry(3)
			
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)
			
			// Should not throw
			expect(() => {
				indexedRenderer.renderInstances(geometry, 0, 9)
			}).not.toThrow()

			// Should still update info
			const updateCalls = info.getUpdateCalls()
			expect(updateCalls.length).toBe(1)
			expect(updateCalls[0].instanceCount).toBe(3)
		})

		test('should handle missing ANGLE extension gracefully', () => {
			// Don't set the extension - it will return null
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			const geometry = new MockInstancedBufferGeometry(2)
			
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)

			// Should not throw but should not update info either
			expect(() => {
				indexedRenderer.renderInstances(geometry, 0, 6)
			}).not.toThrow()

			// Should not have updated info due to early return
			const updateCalls = info.getUpdateCalls()
			expect(updateCalls.length).toBe(0)
		})
	})

	describe('index buffer types', () => {
		test('should handle UNSIGNED_BYTE indices', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_BYTE, 1)
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.render(10, 6) // start at byte offset 10

			const calls = gl.getDrawElementsCalls()
			expect(calls[0].type).toBe(gl.UNSIGNED_BYTE)
			expect(calls[0].offset).toBe(10) // 10 * 1 = 10
		})

		test('should handle UNSIGNED_SHORT indices', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.render(5, 12)

			const calls = gl.getDrawElementsCalls()
			expect(calls[0].type).toBe(gl.UNSIGNED_SHORT)
			expect(calls[0].offset).toBe(10) // 5 * 2 = 10
		})

		test('should handle UNSIGNED_INT indices', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_INT, 4)
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.render(3, 18)

			const calls = gl.getDrawElementsCalls()
			expect(calls[0].type).toBe(gl.UNSIGNED_INT)
			expect(calls[0].offset).toBe(12) // 3 * 4 = 12
		})
	})

	describe('edge cases', () => {
		test('should handle zero count render', () => {
			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.render(0, 0)

			const calls = gl.getDrawElementsCalls()
			expect(calls.length).toBe(1)
			expect(calls[0].count).toBe(0)

			const updateCalls = info.getUpdateCalls()
			expect(updateCalls[0].count).toBe(0)
		})

		test('should handle zero instance count', () => {
			capabilities = new MockWebGLCapabilities(true)
			indexedRenderer = new WebGLIndexedBufferRenderer(gl, extensions, info, capabilities)

			const indexInfo = new MockIndexBufferInfo(gl.UNSIGNED_SHORT, 2)
			const geometry = new MockInstancedBufferGeometry(0)
			
			indexedRenderer.setMode(gl.TRIANGLES)
			indexedRenderer.setIndex(indexInfo)
			indexedRenderer.renderInstances(geometry, 0, 6)

			const instancedCalls = gl.getDrawElementsInstancedCalls()
			expect(instancedCalls[0].instanceCount).toBe(0)
		})
	})
})
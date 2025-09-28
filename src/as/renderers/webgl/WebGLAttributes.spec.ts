/**
 * Tests for WebGLAttributes - based on Three.js r125 WebGLAttributes functionality
 */

// Mock WebGL context and capabilities for testing
import { WebGLBuffer, WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { WebGLCapabilities } from './WebGLCapabilities'
import { WebGLAttributes, AttributeBufferInfo } from './WebGLAttributes'
import { BufferAttribute, ArrayType, Float32BufferAttribute, Uint16BufferAttribute, Int16BufferAttribute } from '../../core/BufferAttribute'

// Mock WebGL context for testing
class MockWebGLContext implements WebGLRenderingContext {
	// WebGL constants
	FLOAT: i32 = 0x1406
	UNSIGNED_SHORT: i32 = 0x1403
	SHORT: i32 = 0x1402
	UNSIGNED_INT: i32 = 0x1405
	INT: i32 = 0x1404
	BYTE: i32 = 0x1400
	UNSIGNED_BYTE: i32 = 0x1401
	HALF_FLOAT: i32 = 0x140B
	STATIC_DRAW: i32 = 0x88E4
	ARRAY_BUFFER: i32 = 0x8892
	ELEMENT_ARRAY_BUFFER: i32 = 0x8893

	private bufferCounter: i32 = 0
	private buffers: WebGLBuffer[] = []
	private deletedBuffers: WebGLBuffer[] = []
	private boundBuffer: WebGLBuffer = null!
	private boundBufferType: i32 = 0

	createBuffer(): WebGLBuffer {
		const buffer = this.bufferCounter++ as WebGLBuffer
		this.buffers.push(buffer)
		return buffer
	}

	bindBuffer(target: i32, buffer: WebGLBuffer): void {
		this.boundBuffer = buffer
		this.boundBufferType = target
	}

	bufferData(target: i32, data: ArrayBufferView, usage: i32): void {
		// Mock implementation - just record that it was called
	}

	bufferSubData(target: i32, offset: i32, data: ArrayBufferView): void {
		// Mock implementation - just record that it was called
	}

	deleteBuffer(buffer: WebGLBuffer): void {
		this.deletedBuffers.push(buffer)
		const index = this.buffers.indexOf(buffer)
		if (index >= 0) {
			this.buffers.splice(index, 1)
		}
	}

	getBoundBuffer(): WebGLBuffer {
		return this.boundBuffer
	}

	getBoundBufferType(): i32 {
		return this.boundBufferType
	}

	getCreatedBuffers(): WebGLBuffer[] {
		return this.buffers
	}

	getDeletedBuffers(): WebGLBuffer[] {
		return this.deletedBuffers
	}
}

// Mock WebGLCapabilities for testing
class MockWebGLCapabilities extends WebGLCapabilities {
	constructor(public isWebGL2: boolean = false) {
		super()
	}
}

describe('WebGLAttributes', () => {
	let gl: MockWebGLContext
	let capabilities: MockWebGLCapabilities
	let attributes: WebGLAttributes

	beforeEach(() => {
		gl = new MockWebGLContext()
		capabilities = new MockWebGLCapabilities(false) // Start with WebGL1
		attributes = new WebGLAttributes(gl, capabilities)
	})

	describe('constructor', () => {
		test('should create WebGLAttributes instance', () => {
			expect(attributes).toBeDefined()
		})

		test('should initialize with WebGL2 capabilities', () => {
			const webgl2Capabilities = new MockWebGLCapabilities(true)
			const webgl2Attributes = new WebGLAttributes(gl, webgl2Capabilities)
			expect(webgl2Attributes).toBeDefined()
		})
	})

	describe('update method', () => {
		test('should create buffer for new Float32 attribute', () => {
			const attr = new Float32BufferAttribute(10, 3) // 10 vertices, 3 components each
			attr.copyArray(new Float32Array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]))

			const initialBufferCount = gl.getCreatedBuffers().length

			attributes.update(attr, gl.ARRAY_BUFFER)

			expect(gl.getCreatedBuffers().length).toBe(initialBufferCount + 1)
			expect(gl.getBoundBufferType()).toBe(gl.ARRAY_BUFFER)
		})

		test('should create buffer for new Uint16 attribute', () => {
			const attr = new Uint16BufferAttribute(5, 1) // 5 indices
			attr.copyArray(new Uint16Array([0, 1, 2, 3, 4]))

			const initialBufferCount = gl.getCreatedBuffers().length

			attributes.update(attr, gl.ELEMENT_ARRAY_BUFFER)

			expect(gl.getCreatedBuffers().length).toBe(initialBufferCount + 1)
			expect(gl.getBoundBufferType()).toBe(gl.ELEMENT_ARRAY_BUFFER)
		})

		test('should not create duplicate buffer for same attribute', () => {
			const attr = new Float32BufferAttribute(5, 2)
			attr.copyArray(new Float32Array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))

			attributes.update(attr, gl.ARRAY_BUFFER)
			const bufferCountAfterFirst = gl.getCreatedBuffers().length

			// Update same attribute again - should not create new buffer
			attributes.update(attr, gl.ARRAY_BUFFER)
			const bufferCountAfterSecond = gl.getCreatedBuffers().length

			expect(bufferCountAfterSecond).toBe(bufferCountAfterFirst)
		})

		test('should update buffer when attribute version changes', () => {
			const attr = new Float32BufferAttribute(3, 2)
			attr.copyArray(new Float32Array([1, 2, 3, 4, 5, 6]))

			attributes.update(attr, gl.ARRAY_BUFFER)
			const bufferInfo = attributes.get(attr)
			expect(bufferInfo).not.toBeNull()
			
			const originalVersion = bufferInfo!.version

			// Change the attribute to trigger an update
			attr.needsUpdate = true
			attributes.update(attr, gl.ARRAY_BUFFER)

			const updatedBufferInfo = attributes.get(attr)
			expect(updatedBufferInfo!.version).toBe(originalVersion + 1)
		})
	})

	describe('get method', () => {
		test('should return null for non-existent attribute', () => {
			const attr = new Float32BufferAttribute(3, 2)
			const result = attributes.get(attr)
			expect(result).toBeNull()
		})

		test('should return buffer info for existing attribute', () => {
			const attr = new Float32BufferAttribute(4, 3)
			attr.copyArray(new Float32Array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]))

			attributes.update(attr, gl.ARRAY_BUFFER)
			const result = attributes.get(attr)

			expect(result).not.toBeNull()
			expect(result!.type).toBe(gl.FLOAT)
			expect(result!.bytesPerElement).toBe(4) // Float32 = 4 bytes
			expect(result!.version).toBe(attr.version)
		})
	})

	describe('remove method', () => {
		test('should delete buffer and remove from cache', () => {
			const attr = new Float32BufferAttribute(3, 2)
			attr.copyArray(new Float32Array([1, 2, 3, 4, 5, 6]))

			attributes.update(attr, gl.ARRAY_BUFFER)
			const bufferInfo = attributes.get(attr)
			expect(bufferInfo).not.toBeNull()

			const buffer = bufferInfo!.buffer
			const initialDeletedCount = gl.getDeletedBuffers().length

			attributes.remove(attr)

			expect(gl.getDeletedBuffers().length).toBe(initialDeletedCount + 1)
			expect(gl.getDeletedBuffers()).toContain(buffer)
			expect(attributes.get(attr)).toBeNull()
		})

		test('should handle removal of non-existent attribute gracefully', () => {
			const attr = new Float32BufferAttribute(2, 2)
			
			// Should not throw
			expect(() => {
				attributes.remove(attr)
			}).not.toThrow()

			expect(attributes.get(attr)).toBeNull()
		})
	})

	describe('buffer type determination', () => {
		test('should set correct type for Float32 arrays', () => {
			const attr = new Float32BufferAttribute(2, 2)
			attr.copyArray(new Float32Array([1, 2, 3, 4]))

			attributes.update(attr, gl.ARRAY_BUFFER)
			const result = attributes.get(attr)!

			expect(result.type).toBe(gl.FLOAT)
			expect(result.bytesPerElement).toBe(4)
		})

		test('should set correct type for Uint16 arrays', () => {
			const attr = new Uint16BufferAttribute(3, 1)
			attr.copyArray(new Uint16Array([1, 2, 3]))

			attributes.update(attr, gl.ELEMENT_ARRAY_BUFFER)
			const result = attributes.get(attr)!

			expect(result.type).toBe(gl.UNSIGNED_SHORT)
			expect(result.bytesPerElement).toBe(2)
		})

		test('should set correct type for Int16 arrays', () => {
			const attr = new Int16BufferAttribute(2, 1)
			attr.copyArray(new Int16Array([-1, 2]))

			attributes.update(attr, gl.ARRAY_BUFFER)
			const result = attributes.get(attr)!

			expect(result.type).toBe(gl.SHORT)
			expect(result.bytesPerElement).toBe(2)
		})
	})

	describe('onUploadCallback', () => {
		test('should call upload callback when creating buffer', () => {
			let callbackCalled = false
			const attr = new Float32BufferAttribute(2, 2)
			attr.copyArray(new Float32Array([1, 2, 3, 4]))
			attr.onUpload(() => {
				callbackCalled = true
			})

			attributes.update(attr, gl.ARRAY_BUFFER)

			expect(callbackCalled).toBe(true)
		})
	})

	describe('update ranges', () => {
		test('should handle full buffer updates when updateRange.count is -1', () => {
			const attr = new Float32BufferAttribute(3, 2)
			attr.copyArray(new Float32Array([1, 2, 3, 4, 5, 6]))
			attr.updateRange.count = -1 // Full update

			attributes.update(attr, gl.ARRAY_BUFFER)
			
			// Change attribute to trigger update
			attr.needsUpdate = true
			
			// Should not throw and should update the buffer
			expect(() => {
				attributes.update(attr, gl.ARRAY_BUFFER)
			}).not.toThrow()
		})

		test('should handle partial updates when updateRange is specified', () => {
			const attr = new Float32BufferAttribute(5, 2)
			attr.copyArray(new Float32Array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
			
			// Set up partial update range
			attr.updateRange.offset = 2
			attr.updateRange.count = 4

			attributes.update(attr, gl.ARRAY_BUFFER)
			
			// Change attribute to trigger update  
			attr.needsUpdate = true
			
			// Should handle partial update
			expect(() => {
				attributes.update(attr, gl.ARRAY_BUFFER)
			}).not.toThrow()
			
			// Update range should be reset
			expect(attr.updateRange.count).toBe(-1)
		})
	})

	describe('WebGL2 vs WebGL1', () => {
		test('should handle WebGL2 features when available', () => {
			const webgl2Capabilities = new MockWebGLCapabilities(true)
			const webgl2Attributes = new WebGLAttributes(gl, webgl2Capabilities)

			const attr = new Float32BufferAttribute(3, 2)
			attr.copyArray(new Float32Array([1, 2, 3, 4, 5, 6]))
			attr.updateRange.offset = 1
			attr.updateRange.count = 2

			webgl2Attributes.update(attr, gl.ARRAY_BUFFER)
			
			// Trigger update with partial range
			attr.needsUpdate = true
			
			expect(() => {
				webgl2Attributes.update(attr, gl.ARRAY_BUFFER)
			}).not.toThrow()
		})
	})
})
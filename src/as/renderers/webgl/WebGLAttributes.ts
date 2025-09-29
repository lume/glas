// r125 - WebGLAttributes implementation in AssemblyScript
import { WebGLBuffer, WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { WebGLCapabilities } from './WebGLCapabilities'
import { BufferAttribute, ArrayType } from '../../core/BufferAttribute'

export class AttributeBufferInfo {
	buffer: WebGLBuffer = null!
	type: i32 = 0
	bytesPerElement: i32 = 0
	version: i32 = 0
}

export class UpdateRange {
	offset: i32 = 0
	count: i32 = -1
}

// Mock InterleavedBufferAttribute since it doesn't exist yet
export class InterleavedBufferAttribute {
	data: BufferAttribute = null!
	isInterleavedBufferAttribute: boolean = true
}

// Mock GLBufferAttribute since it doesn't exist yet  
export class GLBufferAttribute {
	buffer: WebGLBuffer = null!
	type: i32 = 0
	elementSize: i32 = 0
	version: i32 = 0
	isGLBufferAttribute: boolean = true
}

export class WebGLAttributes {
	private isWebGL2: boolean = false
	private buffers: Map<BufferAttribute, AttributeBufferInfo> = new Map()

	constructor(
		private gl: WebGLRenderingContext,
		private capabilities: WebGLCapabilities
	) {
		this.isWebGL2 = capabilities.isWebGL2
	}

	private createBuffer(attribute: BufferAttribute, bufferType: i32): AttributeBufferInfo {
		let type: i32 = this.gl.FLOAT
		let bytesPerElement: i32 = 4 // default for Float32

		// Determine the WebGL type based on the BufferAttribute's ArrayType
		switch (attribute.arrayType) {
			case ArrayType.Float32:
				type = this.gl.FLOAT
				bytesPerElement = 4
				break
			case ArrayType.Float64:
				// Float64Array is not supported in WebGL
				console.warn('THREE.WebGLAttributes: Unsupported data buffer format: Float64Array.')
				type = this.gl.FLOAT
				bytesPerElement = 4
				break
			case ArrayType.Uint16:
				// TODO: Check if this is a Float16BufferAttribute
				// For now, treat as UNSIGNED_SHORT
				type = this.gl.UNSIGNED_SHORT
				bytesPerElement = 2
				break
			case ArrayType.Int16:
				type = this.gl.SHORT
				bytesPerElement = 2
				break
			case ArrayType.Uint32:
				type = this.gl.UNSIGNED_INT
				bytesPerElement = 4
				break
			case ArrayType.Int32:
				type = this.gl.INT
				bytesPerElement = 4
				break
			case ArrayType.Int8:
				type = this.gl.BYTE
				bytesPerElement = 1
				break
			case ArrayType.Uint8:
				type = this.gl.UNSIGNED_BYTE
				bytesPerElement = 1
				break
			default:
				type = this.gl.FLOAT
				bytesPerElement = 4
				break
		}

		const buffer = this.gl.createBuffer()
		this.gl.bindBuffer(bufferType, buffer)

		// Get the appropriate typed array based on the attribute's array type
		let arrayLength: i32 = 0
		switch (attribute.arrayType) {
			case ArrayType.Float32:
				this.gl.bufferData(bufferType, attribute.arrays.Float32, this.gl.STATIC_DRAW)
				arrayLength = attribute.arrays.Float32.length
				break
			case ArrayType.Uint16:
				this.gl.bufferData(bufferType, attribute.arrays.Uint16, this.gl.STATIC_DRAW)
				arrayLength = attribute.arrays.Uint16.length
				break
			case ArrayType.Int16:
				this.gl.bufferData(bufferType, attribute.arrays.Int16, this.gl.STATIC_DRAW)
				arrayLength = attribute.arrays.Int16.length
				break
			case ArrayType.Uint32:
				this.gl.bufferData(bufferType, attribute.arrays.Uint32, this.gl.STATIC_DRAW)
				arrayLength = attribute.arrays.Uint32.length
				break
			case ArrayType.Int32:
				this.gl.bufferData(bufferType, attribute.arrays.Int32, this.gl.STATIC_DRAW)
				arrayLength = attribute.arrays.Int32.length
				break
			case ArrayType.Int8:
				this.gl.bufferData(bufferType, attribute.arrays.Int8, this.gl.STATIC_DRAW)
				arrayLength = attribute.arrays.Int8.length
				break
			case ArrayType.Uint8:
				this.gl.bufferData(bufferType, attribute.arrays.Uint8, this.gl.STATIC_DRAW)
				arrayLength = attribute.arrays.Uint8.length
				break
			default:
				// Default to Float32
				this.gl.bufferData(bufferType, attribute.arrays.Float32, this.gl.STATIC_DRAW)
				arrayLength = attribute.arrays.Float32.length
				break
		}

		// Call the upload callback
		attribute.onUploadCallback()

		const bufferInfo = new AttributeBufferInfo()
		bufferInfo.buffer = buffer
		bufferInfo.type = type
		bufferInfo.bytesPerElement = bytesPerElement
		bufferInfo.version = attribute.version

		return bufferInfo
	}

	private updateBuffer(bufferInfo: AttributeBufferInfo, attribute: BufferAttribute, bufferType: i32): void {
		const updateRange = attribute.updateRange

		this.gl.bindBuffer(bufferType, bufferInfo.buffer)

		if (updateRange.count === -1) {
			// Not using update ranges - update the entire buffer
			switch (attribute.arrayType) {
				case ArrayType.Float32:
					this.gl.bufferSubData(bufferType, 0, attribute.arrays.Float32)
					break
				case ArrayType.Uint16:
					this.gl.bufferSubData(bufferType, 0, attribute.arrays.Uint16)
					break
				case ArrayType.Int16:
					this.gl.bufferSubData(bufferType, 0, attribute.arrays.Int16)
					break
				case ArrayType.Uint32:
					this.gl.bufferSubData(bufferType, 0, attribute.arrays.Uint32)
					break
				case ArrayType.Int32:
					this.gl.bufferSubData(bufferType, 0, attribute.arrays.Int32)
					break
				case ArrayType.Int8:
					this.gl.bufferSubData(bufferType, 0, attribute.arrays.Int8)
					break
				case ArrayType.Uint8:
					this.gl.bufferSubData(bufferType, 0, attribute.arrays.Uint8)
					break
				default:
					this.gl.bufferSubData(bufferType, 0, attribute.arrays.Float32)
					break
			}
		} else {
			// Using update ranges
			const offsetBytes = updateRange.offset * bufferInfo.bytesPerElement

			if (this.isWebGL2) {
				// WebGL2 supports partial array updates
				switch (attribute.arrayType) {
					case ArrayType.Float32:
						// Create a subarray for the update range
						const float32Sub = attribute.arrays.Float32.subarray(
							updateRange.offset,
							updateRange.offset + updateRange.count
						)
						this.gl.bufferSubData(bufferType, offsetBytes, float32Sub)
						break
					case ArrayType.Uint16:
						const uint16Sub = attribute.arrays.Uint16.subarray(
							updateRange.offset,
							updateRange.offset + updateRange.count
						)
						this.gl.bufferSubData(bufferType, offsetBytes, uint16Sub)
						break
					case ArrayType.Int16:
						const int16Sub = attribute.arrays.Int16.subarray(
							updateRange.offset,
							updateRange.offset + updateRange.count
						)
						this.gl.bufferSubData(bufferType, offsetBytes, int16Sub)
						break
					case ArrayType.Uint32:
						const uint32Sub = attribute.arrays.Uint32.subarray(
							updateRange.offset,
							updateRange.offset + updateRange.count
						)
						this.gl.bufferSubData(bufferType, offsetBytes, uint32Sub)
						break
					case ArrayType.Int32:
						const int32Sub = attribute.arrays.Int32.subarray(
							updateRange.offset,
							updateRange.offset + updateRange.count
						)
						this.gl.bufferSubData(bufferType, offsetBytes, int32Sub)
						break
					case ArrayType.Int8:
						const int8Sub = attribute.arrays.Int8.subarray(
							updateRange.offset,
							updateRange.offset + updateRange.count
						)
						this.gl.bufferSubData(bufferType, offsetBytes, int8Sub)
						break
					case ArrayType.Uint8:
						const uint8Sub = attribute.arrays.Uint8.subarray(
							updateRange.offset,
							updateRange.offset + updateRange.count
						)
						this.gl.bufferSubData(bufferType, offsetBytes, uint8Sub)
						break
					default:
						const defaultSub = attribute.arrays.Float32.subarray(
							updateRange.offset,
							updateRange.offset + updateRange.count
						)
						this.gl.bufferSubData(bufferType, offsetBytes, defaultSub)
						break
				}
			} else {
				// WebGL1 - use subarray approach
				switch (attribute.arrayType) {
					case ArrayType.Float32:
						const float32Sub = attribute.arrays.Float32.subarray(
							updateRange.offset,
							updateRange.offset + updateRange.count
						)
						this.gl.bufferSubData(bufferType, offsetBytes, float32Sub)
						break
					case ArrayType.Uint16:
						const uint16Sub = attribute.arrays.Uint16.subarray(
							updateRange.offset,
							updateRange.offset + updateRange.count
						)
						this.gl.bufferSubData(bufferType, offsetBytes, uint16Sub)
						break
					// Add other cases as needed
					default:
						const defaultSub = attribute.arrays.Float32.subarray(
							updateRange.offset,
							updateRange.offset + updateRange.count
						)
						this.gl.bufferSubData(bufferType, offsetBytes, defaultSub)
						break
				}
			}

			// Reset the update range
			updateRange.count = -1
		}
	}

	get(attribute: BufferAttribute): AttributeBufferInfo | null {
		// Handle InterleavedBufferAttribute (mock for now)
		// if (attribute.isInterleavedBufferAttribute) {
		// 	attribute = (attribute as InterleavedBufferAttribute).data
		// }

		return this.buffers.get(attribute) || null
	}

	remove(attribute: BufferAttribute): void {
		// Handle InterleavedBufferAttribute (mock for now)  
		// if (attribute.isInterleavedBufferAttribute) {
		// 	attribute = (attribute as InterleavedBufferAttribute).data
		// }

		const bufferInfo = this.buffers.get(attribute)

		if (bufferInfo) {
			this.gl.deleteBuffer(bufferInfo.buffer)
			this.buffers.delete(attribute)
		}
	}

	update(attribute: BufferAttribute, bufferType: i32): void {
		// Handle GLBufferAttribute (mock for now)
		// if (attribute.isGLBufferAttribute) {
		// 	const glBufferAttr = attribute as GLBufferAttribute
		// 	const cached = this.buffers.get(attribute)
		// 	
		// 	if (!cached || cached.version < glBufferAttr.version) {
		// 		const bufferInfo = new AttributeBufferInfo()
		// 		bufferInfo.buffer = glBufferAttr.buffer
		// 		bufferInfo.type = glBufferAttr.type
		// 		bufferInfo.bytesPerElement = glBufferAttr.elementSize
		// 		bufferInfo.version = glBufferAttr.version
		// 		
		// 		this.buffers.set(attribute, bufferInfo)
		// 	}
		// 	return
		// }

		// Handle InterleavedBufferAttribute (mock for now)
		// if (attribute.isInterleavedBufferAttribute) {
		// 	attribute = (attribute as InterleavedBufferAttribute).data
		// }

		const bufferInfo = this.buffers.get(attribute)

		if (!bufferInfo) {
			// Create new buffer
			const newBufferInfo = this.createBuffer(attribute, bufferType)
			this.buffers.set(attribute, newBufferInfo)
		} else if (bufferInfo.version < attribute.version) {
			// Update existing buffer
			this.updateBuffer(bufferInfo, attribute, bufferType)
			bufferInfo.version = attribute.version
		}
	}
}
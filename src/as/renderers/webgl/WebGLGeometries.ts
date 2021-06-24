// r125

import {WebGLRenderingContext} from '../../../../node_modules/aswebglue/src/WebGL'
import {WebGLAttributes} from './WebGLAttributes'
import {WebGLInfo} from './WebGLInfo'
import {WebGLBindingStates} from './WebGLBindingStates'
import {ArrayType, BufferAttribute, Uint16BufferAttribute, Uint32BufferAttribute} from '../../core/BufferAttribute'
import {BufferGeometry} from '../../core/BufferGeometry'
import {Object3D} from '../../core/Object3D'
import {Listener} from '../../core/EventDispatcher'
import {arrayMax} from '../../utils'
import {Event} from '../../core/Event'
import {EventTargetable} from '../../core/EventTargetable'

export class WebGLGeometries extends Listener {
	private geometries: Map<i32, BufferGeometry> = new Map()

	// TODO MEMLEAK this was a WeakMap in Three.js but AS doesn't have WeakMap yet. This needs manual cleanup here in glas.
	private wireframeAttributes: Map<BufferGeometry, BufferAttribute> = new Map()

	constructor(
		private gl: WebGLRenderingContext,
		private attributes: WebGLAttributes,
		private info: WebGLInfo,
		private bindingStates: WebGLBindingStates
	) {
		super()
	}

	get(object: Object3D, geometry: BufferGeometry): BufferGeometry {
		if (this.geometries.has(geometry.id)) return this.geometries.get(geometry.id)

		let buffergeometry: BufferGeometry

		// TODO MEMLEAK handle cleanup
		geometry.addEventListener('dispose', this)

		// TODO Remove the commented code. We will drop Geometry. Three.js already dropped it in a version more recent than r125
		// if (geometry.isBufferGeometry) {
		buffergeometry = geometry
		// } else if (geometry.isGeometry) {
		// 	if (geometry._bufferGeometry === undefined) {
		// 		geometry._bufferGeometry = new BufferGeometry().setFromObject(object)
		// 	}

		// 	buffergeometry = geometry._bufferGeometry
		// }

		this.geometries.set(geometry.id, buffergeometry)

		this.info.memory.geometries++

		return buffergeometry
	}

	update(geometry: BufferGeometry): void {
		const geometryAttributes = geometry.attributes

		// Updating index buffer in VAO now. See WebGLBindingStates.

		for (let i = 0, keys = geometryAttributes.keys(), l = keys.length; i < l; i++) {
			const name = keys[i]
			this.attributes.update(geometryAttributes.get(name), this.gl.ARRAY_BUFFER)
		}

		// morph targets

		const morphAttributes = geometry.morphAttributes

		for (let i = 0, keys = morphAttributes.keys(), l = keys.length; i < l; i++) {
			const name = keys[i]
			const array = morphAttributes.get(name)

			for (let i = 0, l = array.length; i < l; i++) {
				this.attributes.update(array[i], this.gl.ARRAY_BUFFER)
			}
		}
	}

	getWireframeAttribute(geometry: BufferGeometry): BufferAttribute {
		if (this.wireframeAttributes.has(geometry)) {
			const currentAttribute = this.wireframeAttributes.get(geometry)

			const geometryIndex = geometry.index

			if (geometryIndex !== null) {
				// if the attribute is obsolete, create a new one

				if (currentAttribute.version < geometryIndex.version) {
					this.updateWireframeAttribute(geometry)
				}
			}
		} else {
			this.updateWireframeAttribute(geometry)
		}

		return this.wireframeAttributes.get(geometry)
	}

	private updateWireframeAttribute(geometry: BufferGeometry): void {
		const indices: i32[] = []

		const geometryIndex = geometry.index
		const geometryPosition = geometry.attributes.get('position')
		let version: i32 = 0

		if (geometryIndex !== null) {
			const array16: Uint16Array = geometryIndex.arrays.Uint16
			const array32: Uint32Array = geometryIndex.arrays.Uint32

			version = geometryIndex.version

			const length =
				geometryIndex.arrayType === ArrayType.Uint16
					? geometryIndex.arrays.Uint16.length
					: geometryIndex.arrays.Uint32.length

			for (let i = 0, l = length; i < l; i += 3) {
				const a: i32 = geometryIndex.arrayType === ArrayType.Uint16 ? u32(array16[i + 0]) : array32[i + 0]
				const b: i32 = geometryIndex.arrayType === ArrayType.Uint16 ? u32(array16[i + 1]) : array32[i + 1]
				const c: i32 = geometryIndex.arrayType === ArrayType.Uint16 ? u32(array16[i + 2]) : array32[i + 2]

				// indices.push(a, b, b, c, c, a) // No variable-length rest parameters in AS yet.
				indices.push(a)
				indices.push(b)
				indices.push(b)
				indices.push(c)
				indices.push(c)
				indices.push(a)
			}
		} else {
			const array = geometryPosition.arrays.Float32
			version = geometryPosition.version

			for (let i = 0, l = array.length / 3 - 1; i < l; i += 3) {
				const a = i + 0
				const b = i + 1
				const c = i + 2

				// indices.push(a, b, b, c, c, a) // No variable-length rest parameters in AS yet.
				indices.push(a)
				indices.push(b)
				indices.push(b)
				indices.push(c)
				indices.push(c)
				indices.push(a)
			}
		}

		let attribute: BufferAttribute

		if (arrayMax(indices) > 65535) {
			attribute = BufferAttribute.fromArrayOfUint32(indices, 1)
		} else {
			// Which one is faster? 1 or 2 or 3?

			// 1
			// const indices16: StaticArray<u16> = new StaticArray(indices.length)
			// for (let i = 0, l = indices.length; i < l; i++) indices16[i] = u16(indices[i])
			// attribute = BufferAttribute.fromArrayOfUint16(indices, 1)

			// 2
			attribute = BufferAttribute.fromArrayOfUint32(indices, 1).toUint16()

			// 3
			// attribute = BufferAttribute.fromArrayOfUint32(indices, 1)
			// attribute.toUint16(attribute)
			// attribute.arrayType = ArrayType.Uint16
		}

		attribute.version = version

		// Updating index buffer in VAO now. See WebGLBindingStates

		//

		const previousAttribute = this.wireframeAttributes.get(geometry)

		if (previousAttribute) this.attributes.remove(previousAttribute)

		//

		this.wireframeAttributes.set(geometry, attribute)
	}

	// TODO add `override` syntax to AS.
	/* override */ onEvent(event: Event) {
		if (event.type == 'dispose') {
			const geom: EventTargetable = event.target
			if (!(geom instanceof BufferGeometry)) throw new Error('Expected a geometry.')
			this.onGeometryDispose(geom)
		}
	}

	// TODO This needs to be used for cleanup. See the "TODO MEMLEAK" above.
	private onGeometryDispose(geom: BufferGeometry): void {
		const geometry = geom

		if (geometry.index !== null) {
			this.attributes.remove(geometry.index)
		}

		for (let i = 0, keys = geometry.attributes.keys(), l = keys.length; i < l; i++) {
			const name = keys[i]
			this.attributes.remove(geometry.attributes.get(name))
		}

		geometry.removeEventListener('dispose', this)

		this.geometries.delete(geometry.id)

		if (this.wireframeAttributes.has(geometry)) {
			const attribute = this.wireframeAttributes.get(geometry)

			this.attributes.remove(attribute)
			this.wireframeAttributes.delete(geometry)
		}

		this.bindingStates.releaseStatesOfGeometry(geometry)

		// TODO InstancedMesh, InstancedBufferGeometry, etc.
		// if (geometry.isInstancedBufferGeometry === true) {
		// 	delete geometry._maxInstanceCount // This is set in WebGLBindingStates. Move this into a Map instead of a property?
		// }

		//

		this.info.memory.geometries--
	}
}

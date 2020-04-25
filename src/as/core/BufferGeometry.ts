import {Vector3} from '../math/Vector3'
import {Box3} from '../math/Box3.js'
import {EventDispatcher} from './EventDispatcher.js'
import {
	BufferAttribute,
	Float32BufferAttribute,
	Uint16BufferAttribute,
	Uint32BufferAttribute,
} from './BufferAttribute.js'
// import { InterleavedBufferAttribute } from './InterleavedBufferAttribute.js';
import {Sphere} from '../math/Sphere.js'
import {DirectGeometry} from './DirectGeometry.js'
import {Object3D} from './Object3D.js'
import {Matrix4} from '../math/Matrix4.js'
import {Matrix3} from '../math/Matrix3.js'
import {_Math} from '../math/Math'
import {arrayMax} from '../utils.js'

/**
 * @author alteredq / http://alteredqualia.com/
 * @author mrdoob / http://mrdoob.com/
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

let bufferGeometryId = 1 // BufferGeometry uses odd numbers as Id

export class BufferGeometry extends EventDispatcher {
	static MaxIndex: number

	/**
	 * Unique number of this buffergeometry instance
	 */
	id: i32
	uuid: string
	name: string
	type: string
	index: BufferAttribute
	attributes: {
		[name: string]: BufferAttribute | InterleavedBufferAttribute
	}
	morphAttributes: Map<string, any>
	groups: {start: i32; count: i32; materialIndex: i32}[]
	boundingBox: Box3
	boundingSphere: Sphere
	drawRange: {start: number; count: number}
	userData: {[key: string]: any}

	//This probably should be removed and a typeof or equivalent should be used instead
	isBufferGeometry: bool

	/**
	 * This creates a new BufferGeometry. It also sets several properties to an default value.
	 */
	constructor() {
		this.id = bufferGeometryId += 2

		this.uuid = _Math.generateUUID()

		this.name = ''
		this.type = 'BufferGeometry'

		this.index = null
		this.attributes = {}

		this.morphAttributes = {}

		this.groups = []

		this.boundingBox = null
		this.boundingSphere = null

		this.drawRange = {
			start: 0,
			count: Infinity,
		}

		this.userData = {}

		this.isBufferGeometry = true
	}

	getIndex(): BufferAttribute {
		return this.index
	}
	setIndex(index: BufferAttribute | number[]): void {
		if (Array.isArray(index)) {
			this.index = new (arrayMax(index) > 65535 ? Uint32BufferAttribute : Uint16BufferAttribute)(index, 1)
		} else {
			this.index = index
		}
	}

	addAttribute(name: string, attribute: BufferAttribute | InterleavedBufferAttribute): BufferGeometry {
		if (!(attribute && attribute.isBufferAttribute) && !(attribute && attribute.isInterleavedBufferAttribute)) {
			console.warn('THREE.BufferGeometry: .addAttribute() now expects ( name, attribute ).')

			return this.addAttribute(name, new BufferAttribute(arguments[1], arguments[2]))
		}

		if (name === 'index') {
			console.warn('THREE.BufferGeometry.addAttribute: Use .setIndex() for index attribute.')
			this.setIndex(attribute)

			return this
		}

		this.attributes[name] = attribute

		return this
	}

	getAttribute(name: string): BufferAttribute | InterleavedBufferAttribute {
		return this.attributes[name]
	}

	removeAttribute(name: string): BufferGeometry {
		delete this.attributes[name]

		return this
	}

	addGroup(start: number, count: number, materialIndex?: number): void {
		this.groups.push({
			start: start,
			count: count,
			materialIndex: materialIndex !== undefined ? materialIndex : 0,
		})
	}

	clearGroups(): void {
		this.groups = []
	}

	setDrawRange(start: number, count: number): void {
		this.drawRange.start = start
		this.drawRange.count = count
	}

	/**
	 * Bakes matrix transform directly into vertex coordinates.
	 */
	applyMatrix(matrix: Matrix4): BufferGeometry {
		var position = this.attributes.position

		if (position !== undefined) {
			matrix.applyToBufferAttribute(position)
			position.needsUpdate = true
		}

		var normal = this.attributes.normal

		if (normal !== undefined) {
			var normalMatrix = new Matrix3().getNormalMatrix(matrix)

			normalMatrix.applyToBufferAttribute(normal)
			normal.needsUpdate = true
		}

		var tangent = this.attributes.tangent

		if (tangent !== undefined) {
			var normalMatrix = new Matrix3().getNormalMatrix(matrix)

			// Tangent is vec4, but the '.w' component is a sign value (+1/-1).
			normalMatrix.applyToBufferAttribute(tangent)
			tangent.needsUpdate = true
		}

		if (this.boundingBox !== null) {
			this.computeBoundingBox()
		}

		if (this.boundingSphere !== null) {
			this.computeBoundingSphere()
		}

		return this
	}

	rotateX(angle: number): BufferGeometry {
		// rotate geometry around world x-axis

		var m1 = new Matrix4()

		m1.makeRotationX(angle)

		this.applyMatrix(m1)

		return this
	}

	rotateY(angle: number): BufferGeometry {
		// rotate geometry around world y-axis

		var m1 = new Matrix4()

		m1.makeRotationY(angle)

		this.applyMatrix(m1)

		return this
	}

	rotateZ(angle: number): BufferGeometry {
		var m1 = new Matrix4()

		m1.makeRotationZ(angle)

		this.applyMatrix(m1)

		return this
	}

	translate(x: number, y: number, z: number): BufferGeometry {
		// translate geometry

		var m1 = new Matrix4()

		m1.makeTranslation(x, y, z)

		this.applyMatrix(m1)

		return this
	}

	scale(x: number, y: number, z: number): BufferGeometry {
		// scale geometry

		var m1 = new Matrix4()

		m1.makeScale(x, y, z)

		this.applyMatrix(m1)

		return this
	}

	lookAt(v: Vector3): void {
		var obj = new Object3D()

		obj.lookAt(vector)

		obj.updateMatrix()

		this.applyMatrix(obj.matrix)
	}

	center(): BufferGeometry {
		var offset = new Vector3()

		this.computeBoundingBox()

		this.boundingBox.getCenter(offset).negate()

		this.translate(offset.x, offset.y, offset.z)

		return this
	}

	setFromObject(object: Object3D): BufferGeometry {
		// console.log( 'THREE.BufferGeometry.setFromObject(). Converting', object, this );

		var geometry = object.geometry

		if (object.isPoints || object.isLine) {
			var positions = new Float32BufferAttribute(geometry.vertices.length * 3, 3)
			var colors = new Float32BufferAttribute(geometry.colors.length * 3, 3)

			this.addAttribute('position', positions.copyVector3sArray(geometry.vertices))
			this.addAttribute('color', colors.copyColorsArray(geometry.colors))

			if (geometry.lineDistances && geometry.lineDistances.length === geometry.vertices.length) {
				var lineDistances = new Float32BufferAttribute(geometry.lineDistances.length, 1)

				this.addAttribute('lineDistance', lineDistances.copyArray(geometry.lineDistances))
			}

			if (geometry.boundingSphere !== null) {
				this.boundingSphere = geometry.boundingSphere.clone()
			}

			if (geometry.boundingBox !== null) {
				this.boundingBox = geometry.boundingBox.clone()
			}
		} else if (object.isMesh) {
			if (geometry && geometry.isGeometry) {
				this.fromGeometry(geometry)
			}
		}

		return this
	}

	setFromPoints(points: Vector3[] | Vector2[]): BufferGeometry {
		var position = []

		for (var i = 0, l = points.length; i < l; i++) {
			var point = points[i]
			position.push(point.x, point.y, point.z || 0)
		}

		this.addAttribute('position', new Float32BufferAttribute(position, 3))

		return this
	}

	updateFromObject(object: Object3D): void {
		var geometry = object.geometry

		if (object.isMesh) {
			var direct = geometry.__directGeometry

			if (geometry.elementsNeedUpdate === true) {
				direct = undefined
				geometry.elementsNeedUpdate = false
			}

			if (direct === undefined) {
				return this.fromGeometry(geometry)
			}

			direct.verticesNeedUpdate = geometry.verticesNeedUpdate
			direct.normalsNeedUpdate = geometry.normalsNeedUpdate
			direct.colorsNeedUpdate = geometry.colorsNeedUpdate
			direct.uvsNeedUpdate = geometry.uvsNeedUpdate
			direct.groupsNeedUpdate = geometry.groupsNeedUpdate

			geometry.verticesNeedUpdate = false
			geometry.normalsNeedUpdate = false
			geometry.colorsNeedUpdate = false
			geometry.uvsNeedUpdate = false
			geometry.groupsNeedUpdate = false

			geometry = direct
		}

		var attribute

		if (geometry.verticesNeedUpdate === true) {
			attribute = this.attributes.position

			if (attribute !== undefined) {
				attribute.copyVector3sArray(geometry.vertices)
				attribute.needsUpdate = true
			}

			geometry.verticesNeedUpdate = false
		}

		if (geometry.normalsNeedUpdate === true) {
			attribute = this.attributes.normal

			if (attribute !== undefined) {
				attribute.copyVector3sArray(geometry.normals)
				attribute.needsUpdate = true
			}

			geometry.normalsNeedUpdate = false
		}

		if (geometry.colorsNeedUpdate === true) {
			attribute = this.attributes.color

			if (attribute !== undefined) {
				attribute.copyColorsArray(geometry.colors)
				attribute.needsUpdate = true
			}

			geometry.colorsNeedUpdate = false
		}

		if (geometry.uvsNeedUpdate) {
			attribute = this.attributes.uv

			if (attribute !== undefined) {
				attribute.copyVector2sArray(geometry.uvs)
				attribute.needsUpdate = true
			}

			geometry.uvsNeedUpdate = false
		}

		if (geometry.lineDistancesNeedUpdate) {
			attribute = this.attributes.lineDistance

			if (attribute !== undefined) {
				attribute.copyArray(geometry.lineDistances)
				attribute.needsUpdate = true
			}

			geometry.lineDistancesNeedUpdate = false
		}

		if (geometry.groupsNeedUpdate) {
			geometry.computeGroups(object.geometry)
			this.groups = geometry.groups

			geometry.groupsNeedUpdate = false
		}

		return this
	}

	fromGeometry(geometry: Geometry, settings?: any): BufferGeometry {
		geometry.__directGeometry = new DirectGeometry().fromGeometry(geometry)

		return this.fromDirectGeometry(geometry.__directGeometry)
	}

	fromDirectGeometry(geometry: DirectGeometry): BufferGeometry {
		var positions = new Float32Array(geometry.vertices.length * 3)
		this.addAttribute('position', new BufferAttribute(positions, 3).copyVector3sArray(geometry.vertices))

		if (geometry.normals.length > 0) {
			var normals = new Float32Array(geometry.normals.length * 3)
			this.addAttribute('normal', new BufferAttribute(normals, 3).copyVector3sArray(geometry.normals))
		}

		if (geometry.colors.length > 0) {
			var colors = new Float32Array(geometry.colors.length * 3)
			this.addAttribute('color', new BufferAttribute(colors, 3).copyColorsArray(geometry.colors))
		}

		if (geometry.uvs.length > 0) {
			var uvs = new Float32Array(geometry.uvs.length * 2)
			this.addAttribute('uv', new BufferAttribute(uvs, 2).copyVector2sArray(geometry.uvs))
		}

		if (geometry.uvs2.length > 0) {
			var uvs2 = new Float32Array(geometry.uvs2.length * 2)
			this.addAttribute('uv2', new BufferAttribute(uvs2, 2).copyVector2sArray(geometry.uvs2))
		}

		// groups

		this.groups = geometry.groups

		// morphs

		for (var name in geometry.morphTargets) {
			var array = []
			var morphTargets = geometry.morphTargets[name]

			for (var i = 0, l = morphTargets.length; i < l; i++) {
				var morphTarget = morphTargets[i]

				var attribute = new Float32BufferAttribute(morphTarget.data.length * 3, 3)
				attribute.name = morphTarget.name

				array.push(attribute.copyVector3sArray(morphTarget.data))
			}

			this.morphAttributes[name] = array
		}

		// skinning

		if (geometry.skinIndices.length > 0) {
			var skinIndices = new Float32BufferAttribute(geometry.skinIndices.length * 4, 4)
			this.addAttribute('skinIndex', skinIndices.copyVector4sArray(geometry.skinIndices))
		}

		if (geometry.skinWeights.length > 0) {
			var skinWeights = new Float32BufferAttribute(geometry.skinWeights.length * 4, 4)
			this.addAttribute('skinWeight', skinWeights.copyVector4sArray(geometry.skinWeights))
		}

		//

		if (geometry.boundingSphere !== null) {
			this.boundingSphere = geometry.boundingSphere.clone()
		}

		if (geometry.boundingBox !== null) {
			this.boundingBox = geometry.boundingBox.clone()
		}

		return this
	}

	/**
	 * Computes bounding box of the geometry, updating Geometry.boundingBox attribute.
	 * Bounding boxes aren't computed by default. They need to be explicitly computed, otherwise they are null.
	 */
	computeBoundingBox(): void {
		var box = new Box3()

		if (this.boundingBox === null) {
			this.boundingBox = new Box3()
		}

		var position = this.attributes.position
		var morphAttributesPosition = this.morphAttributes.position

		if (position !== undefined) {
			this.boundingBox.setFromBufferAttribute(position)

			// process morph attributes if present

			if (morphAttributesPosition) {
				for (var i = 0, il = morphAttributesPosition.length; i < il; i++) {
					var morphAttribute = morphAttributesPosition[i]
					box.setFromBufferAttribute(morphAttribute)

					this.boundingBox.expandByPoint(box.min)
					this.boundingBox.expandByPoint(box.max)
				}
			}
		} else {
			this.boundingBox.makeEmpty()
		}

		if (isNaN(this.boundingBox.min.x) || isNaN(this.boundingBox.min.y) || isNaN(this.boundingBox.min.z)) {
			console.error(
				'THREE.BufferGeometry.computeBoundingBox: Computed min/max have NaN values. The "position" attribute is likely to have NaN values.',
				this
			)
		}
	}

	/**
	 * Computes bounding sphere of the geometry, updating Geometry.boundingSphere attribute.
	 * Bounding spheres aren't' computed by default. They need to be explicitly computed, otherwise they are null.
	 */
	computeBoundingSphere(): void {
		var box = new Box3()
		var boxMorphTargets = new Box3()
		var vector = new Vector3()

		if (this.boundingSphere === null) {
			this.boundingSphere = new Sphere()
		}

		var position = this.attributes.position
		var morphAttributesPosition = this.morphAttributes.position

		if (position) {
			// first, find the center of the bounding sphere

			var center = this.boundingSphere.center

			box.setFromBufferAttribute(position)

			// process morph attributes if present

			if (morphAttributesPosition) {
				for (var i = 0, il = morphAttributesPosition.length; i < il; i++) {
					var morphAttribute = morphAttributesPosition[i]
					boxMorphTargets.setFromBufferAttribute(morphAttribute)

					box.expandByPoint(boxMorphTargets.min)
					box.expandByPoint(boxMorphTargets.max)
				}
			}

			box.getCenter(center)

			// second, try to find a boundingSphere with a radius smaller than the
			// boundingSphere of the boundingBox: sqrt(3) smaller in the best case

			var maxRadiusSq = 0

			for (var i = 0, il = position.count; i < il; i++) {
				vector.fromBufferAttribute(position, i)

				maxRadiusSq = Math.max(maxRadiusSq, center.distanceToSquared(vector))
			}

			// process morph attributes if present

			if (morphAttributesPosition) {
				for (var i = 0, il = morphAttributesPosition.length; i < il; i++) {
					var morphAttribute = morphAttributesPosition[i]

					for (var j = 0, jl = morphAttribute.count; j < jl; j++) {
						vector.fromBufferAttribute(morphAttribute, j)

						maxRadiusSq = Math.max(maxRadiusSq, center.distanceToSquared(vector))
					}
				}
			}

			this.boundingSphere.radius = Math.sqrt(maxRadiusSq)

			if (isNaN(this.boundingSphere.radius)) {
				console.error(
					'THREE.BufferGeometry.computeBoundingSphere(): Computed radius is NaN. The "position" attribute is likely to have NaN values.',
					this
				)
			}
		}
	}

	/**
	 * Computes vertex normals by averaging face normals.
	 */
	computeVertexNormals(): void {
		var index = this.index
		var attributes = this.attributes

		if (attributes.position) {
			var positions = attributes.position.array

			if (attributes.normal === undefined) {
				this.addAttribute('normal', new BufferAttribute(new Float32Array(positions.length), 3))
			} else {
				// reset existing normals to zero

				var array = attributes.normal.array

				for (var i = 0, il = array.length; i < il; i++) {
					array[i] = 0
				}
			}

			var normals = attributes.normal.array

			var vA, vB, vC
			var pA = new Vector3(),
				pB = new Vector3(),
				pC = new Vector3()
			var cb = new Vector3(),
				ab = new Vector3()

			// indexed elements

			if (index) {
				var indices = index.array

				for (var i = 0, il = index.count; i < il; i += 3) {
					vA = indices[i + 0] * 3
					vB = indices[i + 1] * 3
					vC = indices[i + 2] * 3

					pA.fromArray(positions, vA)
					pB.fromArray(positions, vB)
					pC.fromArray(positions, vC)

					cb.subVectors(pC, pB)
					ab.subVectors(pA, pB)
					cb.cross(ab)

					normals[vA] += cb.x
					normals[vA + 1] += cb.y
					normals[vA + 2] += cb.z

					normals[vB] += cb.x
					normals[vB + 1] += cb.y
					normals[vB + 2] += cb.z

					normals[vC] += cb.x
					normals[vC + 1] += cb.y
					normals[vC + 2] += cb.z
				}
			} else {
				// non-indexed elements (unconnected triangle soup)

				for (var i = 0, il = positions.length; i < il; i += 9) {
					pA.fromArray(positions, i)
					pB.fromArray(positions, i + 3)
					pC.fromArray(positions, i + 6)

					cb.subVectors(pC, pB)
					ab.subVectors(pA, pB)
					cb.cross(ab)

					normals[i] = cb.x
					normals[i + 1] = cb.y
					normals[i + 2] = cb.z

					normals[i + 3] = cb.x
					normals[i + 4] = cb.y
					normals[i + 5] = cb.z

					normals[i + 6] = cb.x
					normals[i + 7] = cb.y
					normals[i + 8] = cb.z
				}
			}

			this.normalizeNormals()

			attributes.normal.needsUpdate = true
		}
	}

	merge(geometry: BufferGeometry, offset: number): BufferGeometry {
		if (!(geometry && geometry.isBufferGeometry)) {
			console.error('THREE.BufferGeometry.merge(): geometry not an instance of THREE.BufferGeometry.', geometry)
			return
		}

		if (offset === undefined) {
			offset = 0

			console.warn(
				'THREE.BufferGeometry.merge(): Overwriting original geometry, starting at offset=0. ' +
					'Use BufferGeometryUtils.mergeBufferGeometries() for lossless merge.'
			)
		}

		var attributes = this.attributes

		for (var key in attributes) {
			if (geometry.attributes[key] === undefined) continue

			var attribute1 = attributes[key]
			var attributeArray1 = attribute1.array

			var attribute2 = geometry.attributes[key]
			var attributeArray2 = attribute2.array

			var attributeOffset = attribute2.itemSize * offset
			var length = Math.min(attributeArray2.length, attributeArray1.length - attributeOffset)

			for (var i = 0, j = attributeOffset; i < length; i++, j++) {
				attributeArray1[j] = attributeArray2[i]
			}
		}

		return this
	}

	normalizeNormals(): void {
		var vector = new Vector3()
		var normals = this.attributes.normal

		for (var i = 0, il = normals.count; i < il; i++) {
			vector.x = normals.getX(i)
			vector.y = normals.getY(i)
			vector.z = normals.getZ(i)

			vector.normalize()

			normals.setXYZ(i, vector.x, vector.y, vector.z)
		}
	}

	toNonIndexed(): BufferGeometry {
		function convertBufferAttribute(attribute, indices) {
			var array = attribute.array
			var itemSize = attribute.itemSize

			var array2 = new array.constructor(indices.length * itemSize)

			var index = 0,
				index2 = 0

			for (var i = 0, l = indices.length; i < l; i++) {
				index = indices[i] * itemSize

				for (var j = 0; j < itemSize; j++) {
					array2[index2++] = array[index++]
				}
			}

			return new BufferAttribute(array2, itemSize)
		}

		//

		if (this.index === null) {
			console.warn('THREE.BufferGeometry.toNonIndexed(): Geometry is already non-indexed.')
			return this
		}

		var geometry2 = new BufferGeometry()

		var indices = this.index.array
		var attributes = this.attributes

		// attributes

		for (var name in attributes) {
			var attribute = attributes[name]

			var newAttribute = convertBufferAttribute(attribute, indices)

			geometry2.addAttribute(name, newAttribute)
		}

		// morph attributes

		var morphAttributes = this.morphAttributes

		for (name in morphAttributes) {
			var morphArray = []
			var morphAttribute = morphAttributes[name] // morphAttribute: array of Float32BufferAttributes

			for (var i = 0, il = morphAttribute.length; i < il; i++) {
				var attribute = morphAttribute[i]

				var newAttribute = convertBufferAttribute(attribute, indices)

				morphArray.push(newAttribute)
			}

			geometry2.morphAttributes[name] = morphArray
		}

		// groups

		var groups = this.groups

		for (var i = 0, l = groups.length; i < l; i++) {
			var group = groups[i]
			geometry2.addGroup(group.start, group.count, group.materialIndex)
		}

		return geometry2
	}

	toJSON(): any {
		var data = {
			metadata: {
				version: 4.5,
				type: 'BufferGeometry',
				generator: 'BufferGeometry.toJSON',
			},
		}

		// standard BufferGeometry serialization

		data.uuid = this.uuid
		data.type = this.type
		if (this.name !== '') data.name = this.name
		if (Object.keys(this.userData).length > 0) data.userData = this.userData

		if (this.parameters !== undefined) {
			var parameters = this.parameters

			for (var key in parameters) {
				if (parameters[key] !== undefined) data[key] = parameters[key]
			}

			return data
		}

		data.data = {
			attributes: {},
		}

		var index = this.index

		if (index !== null) {
			data.data.index = {
				type: index.array.constructor.name,
				array: Array.prototype.slice.call(index.array),
			}
		}

		var attributes = this.attributes

		for (var key in attributes) {
			var attribute = attributes[key]

			var attributeData = attribute.toJSON()

			if (attribute.name !== '') attributeData.name = attribute.name

			data.data.attributes[key] = attributeData
		}

		var morphAttributes = {}
		var hasMorphAttributes = false

		for (var key in this.morphAttributes) {
			var attributeArray = this.morphAttributes[key]

			var array = []

			for (var i = 0, il = attributeArray.length; i < il; i++) {
				var attribute = attributeArray[i]

				var attributeData = attribute.toJSON()

				if (attribute.name !== '') attributeData.name = attribute.name

				array.push(attributeData)
			}

			if (array.length > 0) {
				morphAttributes[key] = array

				hasMorphAttributes = true
			}
		}

		if (hasMorphAttributes) data.data.morphAttributes = morphAttributes

		var groups = this.groups

		if (groups.length > 0) {
			data.data.groups = JSON.parse(JSON.stringify(groups))
		}

		var boundingSphere = this.boundingSphere

		if (boundingSphere !== null) {
			data.data.boundingSphere = {
				center: boundingSphere.center.toArray(),
				radius: boundingSphere.radius,
			}
		}

		return data
	}

	clone(): this {
		/*
		 // Handle primitives

		 var parameters = this.parameters;

		 if ( parameters !== undefined ) {

		 var values = [];

		 for ( var key in parameters ) {

		 values.push( parameters[ key ] );

		 }

		 var geometry = Object.create( this.constructor.prototype );
		 this.constructor.apply( geometry, values );
		 return geometry;

		 }

		 return new this.constructor().copy( this );
		 */

		return new BufferGeometry().copy(this)
	}

	copy(source: BufferGeometry): this {
		var name, i, l

		// reset

		this.index = null
		this.attributes = {}
		this.morphAttributes = {}
		this.groups = []
		this.boundingBox = null
		this.boundingSphere = null

		// name

		this.name = source.name

		// index

		var index = source.index

		if (index !== null) {
			this.setIndex(index.clone())
		}

		// attributes

		var attributes = source.attributes

		for (name in attributes) {
			var attribute = attributes[name]
			this.addAttribute(name, attribute.clone())
		}

		// morph attributes

		var morphAttributes = source.morphAttributes

		for (name in morphAttributes) {
			var array = []
			var morphAttribute = morphAttributes[name] // morphAttribute: array of Float32BufferAttributes

			for (i = 0, l = morphAttribute.length; i < l; i++) {
				array.push(morphAttribute[i].clone())
			}

			this.morphAttributes[name] = array
		}

		// groups

		var groups = source.groups

		for (i = 0, l = groups.length; i < l; i++) {
			var group = groups[i]
			this.addGroup(group.start, group.count, group.materialIndex)
		}

		// bounding box

		var boundingBox = source.boundingBox

		if (boundingBox !== null) {
			this.boundingBox = boundingBox.clone()
		}

		// bounding sphere

		var boundingSphere = source.boundingSphere

		if (boundingSphere !== null) {
			this.boundingSphere = boundingSphere.clone()
		}

		// draw range

		this.drawRange.start = source.drawRange.start
		this.drawRange.count = source.drawRange.count

		// user data

		this.userData = source.userData

		return this
	}

	/**
	 * Disposes the object from memory.
	 * You need to call this when you want the bufferGeometry removed while the application is running.
	 */
	dispose(): void {
		this.dispatchEvent({
			type: 'dispose',
		})
	}

	/**
	 * @deprecated Use {@link BufferGeometry#groups .groups} instead.
	 */
	drawcalls: any

	/**
	 * @deprecated Use {@link BufferGeometry#groups .groups} instead.
	 */
	offsets: any

	/**
	 * @deprecated Use {@link BufferGeometry#setIndex .setIndex()} instead.
	 */
	addIndex(index: any): void

	/**
	 * @deprecated Use {@link BufferGeometry#addGroup .addGroup()} instead.
	 */
	addDrawCall(start: any, count: any, indexOffset?: any): void

	/**
	 * @deprecated Use {@link BufferGeometry#clearGroups .clearGroups()} instead.
	 */
	clearDrawCalls(): void

	addAttribute(name: any, array: any, itemSize: any): any
}

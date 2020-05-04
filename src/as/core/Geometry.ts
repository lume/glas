import {Vector3} from '../math/Vector3'
import {Color} from './../math/Color'
import {Face3} from './Face3'
import {Vector2} from '../math/Vector2'
import {Vector4} from '../math/Vector4'
import {Box3} from './../math/Box3'
import {Sphere} from './../math/Sphere'
import {Matrix4} from '../math/Matrix4'
import {BufferGeometry} from './BufferGeometry'
import {Matrix} from '../math/Matrix3'
// import {Mesh} from '../objects/Mesh'
//TODO uncomment Bone when ready
// import {Bone} from '../objects/Bone'
//TODO uncomment all Animation references once implemented
// import {AnimationClip} from './../animation/AnimationClip'
import {EventDispatcher} from './EventDispatcher'
import {Matrix3} from '../math/Matrix3'
import {Object3D} from './Object3D'
import * as _Math from '../math/Math'
import {Event} from './Event'

/**
 * @author mrdoob / http://mrdoob.com/
 * @author kile / http://kile.stravaganza.org/
 * @author alteredq / http://alteredqualia.com/
 * @author mikael emtinger / http://gomo.se/
 * @author zz85 / http://www.lab4games.net/zz85/blog
 * @author bhouston / http://clara.io
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

/**
 * @deprecated Use {@link Face3} instead.
 */

// export interface MorphTarget {
// 	name: string
// 	vertices: Vector3[]
// 	normals: Vector2[]
// }

// export interface MorphColor {
// 	name: string
// 	colors: Color[]
// }

// export interface MorphNormals {
// 	name: string
// 	normals: Vector3[]
// 	vertexNormals: Vector3[][]
// 	faceNormals: Vector3[]
// }

export let GeometryIdCount: i32

/**
 * Base class for geometries
 *
 * # Example
 *     var geometry = new THREE.Geometry();
 *     geometry.vertices.push( new THREE.Vector3( -10, 10, 0 ) );
 *     geometry.vertices.push( new THREE.Vector3( -10, -10, 0 ) );
 *     geometry.vertices.push( new THREE.Vector3( 10, -10, 0 ) );
 *     geometry.faces.push( new THREE.Face3( 0, 1, 2 ) );
 *     geometry.computeBoundingSphere();
 *
 * @see https://github.com/mrdoob/three.js/blob/master/src/core/Geometry.js
 */
export class Geometry extends EventDispatcher {
	// These properties do not exist in a normal Geometry class, but if you use the instance that was passed by JSONLoader, it will be added.
	//TODO uncomment when Bone is ready
	// bones: Bone[]
	// animation: AnimationClip
	// animations: AnimationClip[]

	/**
	 * Unique number of this geometry instance
	 */
	id: i32

	uuid: string

	/**
	 * Name for this geometry. Default is an empty string.
	 */
	name: string

	type: string

	/**
	 * The array of vertices hold every position of points of the model.
	 * To signal an update in this array, Geometry.verticesNeedUpdate needs to be set to true.
	 */
	vertices: Vector3[]

	/**
	 * Array of vertex colors, matching number and order of vertices.
	 * Used in ParticleSystem, Line and Ribbon.
	 * Meshes use per-face-use-of-vertex colors embedded directly in faces.
	 * To signal an update in this array, Geometry.colorsNeedUpdate needs to be set to true.
	 */
	colors: Color[]

	/**
	 * Array of triangles or/and quads.
	 * The array of faces describe how each vertex in the model is connected with each other.
	 * To signal an update in this array, Geometry.elementsNeedUpdate needs to be set to true.
	 */
	faces: Face3[]

	/**
	 * Array of face UV layers.
	 * Each UV layer is an array of UV matching order and number of vertices in faces.
	 * To signal an update in this array, Geometry.uvsNeedUpdate needs to be set to true.
	 */
	faceVertexUvs: Vector2[][][]

	/**
	 * Array of morph targets. Each morph target is a Javascript object:
	 *
	 *     { name: "targetName", vertices: [ new THREE.Vector3(), ... ] }
	 *
	 * Morph vertices match number and order of primary vertices.
	 */
	// morphTargets: MorphTarget[]

	/**
	 * Array of morph normals. Morph normals have similar structure as morph targets, each normal set is a Javascript object:
	 *
	 *     morphNormal = { name: "NormalName", normals: [ new THREE.Vector3(), ... ] }
	 */
	// morphNormals: MorphNormals[]

	/**
	 * Array of skinning weights, matching number and order of vertices.
	 */
	skinWeights: Vector4[]

	/**
	 * Array of skinning indices, matching number and order of vertices.
	 */
	skinIndices: Vector4[]

	/**
	 *
	 */
	lineDistances: f32[]

	/**
	 * Bounding box.
	 */
	boundingBox: Box3

	/**
	 * Bounding sphere.
	 */
	boundingSphere: Sphere

	/**
	 * Set to true if the vertices array has been updated.
	 */
	verticesNeedUpdate: bool

	/**
	 * Set to true if the faces array has been updated.
	 */
	elementsNeedUpdate: bool

	/**
	 * Set to true if the uvs array has been updated.
	 */
	uvsNeedUpdate: bool

	/**
	 * Set to true if the normals array has been updated.
	 */
	normalsNeedUpdate: bool

	/**
	 * Set to true if the colors array has been updated.
	 */
	colorsNeedUpdate: bool

	/**
	 * Set to true if the linedistances array has been updated.
	 */
	lineDistancesNeedUpdate: bool

	/**
	 *
	 */
	groupsNeedUpdate: bool

	constructor() {
		super()
		this.uuid = _Math.generateUUID()

		this.name = ''
		this.type = 'Geometry'

		this.vertices = []
		this.colors = []
		this.faces = []
		this.faceVertexUvs = [[]]

		// this.morphTargets = []
		// this.morphNormals = []

		this.skinWeights = []
		this.skinIndices = []

		this.lineDistances = []

		this.boundingBox = new Box3()
		this.boundingSphere = new Sphere()

		// update flags

		this.elementsNeedUpdate = false
		this.verticesNeedUpdate = false
		this.uvsNeedUpdate = false
		this.normalsNeedUpdate = false
		this.colorsNeedUpdate = false
		this.lineDistancesNeedUpdate = false
		this.groupsNeedUpdate = false
	}

	/**
	 * Bakes matrix transform directly into vertex coordinates.
	 */
	applyMatrix(matrix: Matrix4): Geometry {
		var normalMatrix = new Matrix3()

		if (normalMatrix.getNormalMatrix(matrix)) {
		}

		for (let i: i32 = 0, il = this.vertices.length; i < il; i++) {
			var vertex: Vector3 = this.vertices[i]
			vertex.applyMatrix4(matrix)
		}

		for (let i = 0, il = this.faces.length; i < il; i++) {
			var face: Face3 = this.faces[i]
			face.normal.applyMatrix3(normalMatrix).normalize()

			for (var j = 0, jl = face.vertexNormals.length; j < jl; j++) {
				face.vertexNormals[j].applyMatrix3(normalMatrix).normalize()
			}
		}

		if (this.boundingBox !== null) {
			this.computeBoundingBox()
		}

		if (this.boundingSphere !== null) {
			this.computeBoundingSphere()
		}

		this.verticesNeedUpdate = true
		this.normalsNeedUpdate = true

		return this
	}

	rotateX(angle: f32): Geometry {
		// rotate geometry around world x-axis

		var m1: Matrix4 = new Matrix4()

		m1.makeRotationX(angle)

		this.applyMatrix(m1)

		return this
	}

	rotateY(angle: f32): Geometry {
		// rotate geometry around world y-axis

		var m1: Matrix4 = new Matrix4()

		m1.makeRotationY(angle)

		this.applyMatrix(m1)

		return this
	}

	rotateZ(angle: f32): Geometry {
		// rotate geometry around world z-axis

		var m1: Matrix4 = new Matrix4()

		m1.makeRotationZ(angle)

		this.applyMatrix(m1)

		return this
	}

	translate(x: f32, y: f32, z: f32): Geometry {
		// translate geometry

		var m1: Matrix4 = new Matrix4()

		m1.makeTranslation(x, y, z)

		this.applyMatrix(m1)

		return this
	}

	scale(x: f32, y: f32, z: f32): Geometry {
		// scale geometry

		var m1: Matrix4 = new Matrix4()

		m1.makeScale(x, y, z)

		this.applyMatrix(m1)

		return this
	}

	//TODO: Uncomment when needed
	// lookAt(vector: Vector3): void {
	// 	var obj = new Object3D()

	// 	obj.lookAt(vector)

	// 	obj.updateMatrix()

	// 	this.applyMatrix(obj.matrix)
	// }

	//TODO: uncomment when BufferGeometry is implemented
	// fromBufferGeometry(geometry: BufferGeometry): Geometry {
	// 	var scope = this

	// 	var indices = geometry.index !== null ? geometry.index.array : undefined
	// 	var attributes = geometry.attributes

	// 	var positions = attributes.position.array
	// 	var normals = attributes.normal !== undefined ? attributes.normal.array : undefined
	// 	var colors = attributes.color !== undefined ? attributes.color.array : undefined
	// 	var uvs = attributes.uv !== undefined ? attributes.uv.array : undefined
	// 	var uvs2 = attributes.uv2 !== undefined ? attributes.uv2.array : undefined

	// 	if (uvs2 !== undefined) this.faceVertexUvs[1] = []

	// 	for (var i = 0; i < positions.length; i += 3) {
	// 		scope.vertices.push(new Vector3().fromArray(positions, i))

	// 		if (colors !== undefined) {
	// 			scope.colors.push(new Color().fromArray(colors, i))
	// 		}
	// 	}

	// 	function addFace(a: number, b: number, c: number, materialIndex: number) {
	// 		var vertexColors =
	// 			colors === undefined ? [] : [scope.colors[a].clone(), scope.colors[b].clone(), scope.colors[c].clone()]

	// 		var vertexNormals =
	// 			normals === undefined
	// 				? []
	// 				: [
	// 						new Vector3().fromArray(normals, a * 3),
	// 						new Vector3().fromArray(normals, b * 3),
	// 						new Vector3().fromArray(normals, c * 3),
	// 				  ]

	// 		var face = new Face3(a, b, c, vertexNormals, vertexColors, materialIndex)

	// 		scope.faces.push(face)

	// 		if (uvs !== undefined) {
	// 			scope.faceVertexUvs[0].push([
	// 				new Vector2().fromArray(uvs, a * 2),
	// 				new Vector2().fromArray(uvs, b * 2),
	// 				new Vector2().fromArray(uvs, c * 2),
	// 			])
	// 		}

	// 		if (uvs2 !== undefined) {
	// 			scope.faceVertexUvs[1].push([
	// 				new Vector2().fromArray(uvs2, a * 2),
	// 				new Vector2().fromArray(uvs2, b * 2),
	// 				new Vector2().fromArray(uvs2, c * 2),
	// 			])
	// 		}
	// 	}

	// 	var groups = geometry.groups

	// 	if (groups.length > 0) {
	// 		for (var i = 0; i < groups.length; i++) {
	// 			var group = groups[i]

	// 			var start = group.start
	// 			var count = group.count

	// 			for (var j = start, jl = start + count; j < jl; j += 3) {
	// 				if (indices !== undefined) {
	// 					addFace(indices[j], indices[j + 1], indices[j + 2], group.materialIndex)
	// 				} else {
	// 					addFace(j, j + 1, j + 2, group.materialIndex)
	// 				}
	// 			}
	// 		}
	// 	} else {
	// 		if (indices !== undefined) {
	// 			for (var i = 0; i < indices.length; i += 3) {
	// 				addFace(indices[i], indices[i + 1], indices[i + 2], 0)
	// 			}
	// 		} else {
	// 			for (var i = 0; i < positions.length / 3; i += 3) {
	// 				addFace(i, i + 1, i + 2, 0)
	// 			}
	// 		}
	// 	}

	// 	this.computeFaceNormals()

	// 	if (geometry.boundingBox !== null) {
	// 		this.boundingBox = geometry.boundingBox.clone()
	// 	}

	// 	if (geometry.boundingSphere !== null) {
	// 		this.boundingSphere = geometry.boundingSphere.clone()
	// 	}

	// 	return this
	// }

	center(): Geometry {
		var offset: Vector3 = new Vector3()

		this.computeBoundingBox()

		this.boundingBox.getCenter(offset).negate()

		this.translate(offset.x, offset.y, offset.z)

		return this
	}

	normalize(): Geometry {
		this.computeBoundingSphere()

		var center: Vector3 = this.boundingSphere.center
		var radius: f32 = this.boundingSphere.radius

		var s: f32 = radius === 0 ? 1 : 1.0 / radius

		var matrix: Matrix4 = new Matrix4()
		matrix.set(s, 0, 0, -s * center.x, 0, s, 0, -s * center.y, 0, 0, s, -s * center.z, 0, 0, 0, 1)

		this.applyMatrix(matrix)

		return this
	}

	/**
	 * Computes face normals.
	 */
	computeFaceNormals(): void {
		var cb = new Vector3(),
			ab = new Vector3()

		for (var f = 0, fl = this.faces.length; f < fl; f++) {
			var face: Face3 = this.faces[f]

			var vA: Vector3 = this.vertices[face.a]
			var vB: Vector3 = this.vertices[face.b]
			var vC: Vector3 = this.vertices[face.c]

			cb.subVectors(vC, vB)
			ab.subVectors(vA, vB)
			cb.cross(ab)

			cb.normalize()

			face.normal.copy(cb)
		}
	}

	/**
	 * Computes vertex normals by averaging face normals.
	 * Face normals must be existing / computed beforehand.
	 */
	computeVertexNormals(areaWeighted?: boolean): void {
		if (areaWeighted === undefined) areaWeighted = true

		var v: i32, vl: i32, f: i32, fl: i32, face: Face3, vertices: Vector3[]

		vertices = new Array(this.vertices.length)

		for (v = 0, vl = this.vertices.length; v < vl; v++) {
			vertices[v] = new Vector3()
		}

		if (areaWeighted) {
			// vertex normals weighted by triangle areas
			// http://www.iquilezles.org/www/articles/normals/normals.htm

			var vA: Vector3, vB: Vector3, vC: Vector3
			var cb = new Vector3(),
				ab = new Vector3()

			for (f = 0, fl = this.faces.length; f < fl; f++) {
				face = this.faces[f]

				vA = this.vertices[face.a]
				vB = this.vertices[face.b]
				vC = this.vertices[face.c]

				cb.subVectors(vC, vB)
				ab.subVectors(vA, vB)
				cb.cross(ab)

				vertices[face.a].add(cb)
				vertices[face.b].add(cb)
				vertices[face.c].add(cb)
			}
		} else {
			this.computeFaceNormals()

			for (f = 0, fl = this.faces.length; f < fl; f++) {
				face = this.faces[f]

				vertices[face.a].add(face.normal)
				vertices[face.b].add(face.normal)
				vertices[face.c].add(face.normal)
			}
		}

		for (v = 0, vl = this.vertices.length; v < vl; v++) {
			vertices[v].normalize()
		}

		for (f = 0, fl = this.faces.length; f < fl; f++) {
			face = this.faces[f]

			var vertexNormals: Vector3[] = face.vertexNormals

			if (vertexNormals.length === 3) {
				vertexNormals[0].copy(vertices[face.a])
				vertexNormals[1].copy(vertices[face.b])
				vertexNormals[2].copy(vertices[face.c])
			} else {
				vertexNormals[0] = vertices[face.a].clone()
				vertexNormals[1] = vertices[face.b].clone()
				vertexNormals[2] = vertices[face.c].clone()
			}
		}

		if (this.faces.length > 0) {
			this.normalsNeedUpdate = true
		}
	}

	/**
	 * Compute vertex normals, but duplicating face normals.
	 */
	computeFlatVertexNormals(): void {
		var f: i32, fl: i32, face: Face3

		this.computeFaceNormals()

		for (f = 0, fl = this.faces.length; f < fl; f++) {
			face = this.faces[f]

			var vertexNormals: Vector3[] = face.vertexNormals

			if (vertexNormals.length === 3) {
				vertexNormals[0].copy(face.normal)
				vertexNormals[1].copy(face.normal)
				vertexNormals[2].copy(face.normal)
			} else {
				vertexNormals[0] = face.normal.clone()
				vertexNormals[1] = face.normal.clone()
				vertexNormals[2] = face.normal.clone()
			}
		}

		if (this.faces.length > 0) {
			this.normalsNeedUpdate = true
		}
	}

	/**
	 * Computes morph normals.
	 */
	// computeMorphNormals(): void {
	// 	let i: i32 = 0
	// 	let f: i32 = 0
	// 	let fl: i32 = 0
	// 	let il: i32 = 0

	// 	let face: Face3

	// 	// save original normals
	// 	// - create temp variables on first access
	// 	//   otherwise just copy (for faster repeated calls)

	// 	for (f = 0, fl = this.faces.length; f < fl; f++) {
	// 		face = this.faces[f]

	// 		if (!face.__originalFaceNormal) {
	// 			face.__originalFaceNormal = face.normal.clone()
	// 		} else {
	// 			face.__originalFaceNormal.copy(face.normal)
	// 		}

	// 		if (!face.__originalVertexNormals) {
	// 			face.__originalVertexNormals = []
	// 		}

	// 		for (i = 0, il = face.vertexNormals.length; i < il; i++) {
	// 			if (!face.__originalVertexNormals[i]) {
	// 				face.__originalVertexNormals[i] = face.vertexNormals[i].clone()
	// 			} else {
	// 				face.__originalVertexNormals[i].copy(face.vertexNormals[i])
	// 			}
	// 		}
	// 	}

	// 	// use temp geometry to compute face and vertex normals for each morph

	// 	var tmpGeo: Geometry = new Geometry()
	// 	tmpGeo.faces = this.faces

	// 	for (i = 0, il = this.morphTargets.length; i < il; i++) {
	// 		// create on first access

	// 		if (!this.morphNormals[i]) {
	// 			//Array of MorphNormals, which are an interface.
	// 			this.morphNormals[i] = {name: '', normals: [], vertexNormals: [], faceNormals: []}
	// 			this.morphNormals[i].faceNormals = []
	// 			this.morphNormals[i].vertexNormals = []

	// 			var dstNormalsFace: Vector3[] = this.morphNormals[i].faceNormals
	// 			var dstNormalsVertex: Vector3[][] = this.morphNormals[i].vertexNormals

	// 			let faceNormal: Vector3, vertexNormals: Vector3[]

	// 			for (f = 0, fl = this.faces.length; f < fl; f++) {
	// 				faceNormal = new Vector3()
	// 				vertexNormals = [new Vector3(), new Vector3(), new Vector3()]

	// 				dstNormalsFace.push(faceNormal)
	// 				dstNormalsVertex.push(vertexNormals)
	// 			}
	// 		}

	// 		var morphNormals: MorphNormals = this.morphNormals[i]

	// 		// set vertices to morph target

	// 		tmpGeo.vertices = this.morphTargets[i].vertices

	// 		// compute morph normals

	// 		tmpGeo.computeFaceNormals()
	// 		tmpGeo.computeVertexNormals()

	// 		// store morph normals

	// 		let faceNormal: Vector3, vertexNormals: Vector3[]

	// 		for (f = 0, fl = this.faces.length; f < fl; f++) {
	// 			face = this.faces[f]

	// 			faceNormal = morphNormals.faceNormals[f]
	// 			vertexNormals = morphNormals.vertexNormals[f]

	// 			faceNormal.copy(face.normal)

	// 			vertexNormals[0].copy(face.vertexNormals[0])
	// 			vertexNormals[1].copy(face.vertexNormals[1])
	// 			vertexNormals[2].copy(face.vertexNormals[2])
	// 		}
	// 	}

	// 	// restore original normals

	// 	for (f = 0, fl = this.faces.length; f < fl; f++) {
	// 		face = this.faces[f]

	// 		face.normal = face.__originalFaceNormal
	// 		face.vertexNormals = face.__originalVertexNormals
	// 	}
	// }

	/**
	 * Computes bounding box of the geometry, updating {@link Geometry.boundingBox} attribute.
	 */
	computeBoundingBox(): void {
		if (this.boundingBox === null) {
			this.boundingBox = new Box3()
		}

		this.boundingBox.setFromPoints(this.vertices)
	}

	/**
	 * Computes bounding sphere of the geometry, updating Geometry.boundingSphere attribute.
	 * Neither bounding boxes or bounding spheres are computed by default. They need to be explicitly computed, otherwise they are null.
	 */
	computeBoundingSphere(): void {
		if (this.boundingSphere === null) {
			this.boundingSphere = new Sphere()
		}

		this.boundingSphere.setFromPoints(this.vertices)
	}

	merge(geometry: Geometry, matrix?: Matrix4, materialIndexOffset?: f32): void {
		// if ( ! ( geometry && geometry.isGeometry ) ) {

		// 	console.error( 'THREE.Geometry.merge(): geometry not an instance of THREE.Geometry.', geometry );
		// 	return;

		// }

		let normalMatrix: Matrix3 = new Matrix3()
		let vertexOffset: i32 = this.vertices.length

		let vertices1: Vector3[] = this.vertices
		let vertices2: Vector3[] = geometry.vertices
		let faces1: Face3[] = this.faces
		let faces2: Face3[] = geometry.faces
		let uvs1: Vector2[][] = this.faceVertexUvs[0]
		let uvs2: Vector2[][] = geometry.faceVertexUvs[0]
		let colors1: Color[] = this.colors
		let colors2: Color[] = geometry.colors

		if (materialIndexOffset === undefined) materialIndexOffset = 0

		if (matrix !== undefined) {
			if (normalMatrix.getNormalMatrix(matrix)) {
			}
		}

		// vertices

		for (var i = 0, il = vertices2.length; i < il; i++) {
			var vertex: Vector3 = vertices2[i]

			var vertexCopy: Vector3 = vertex.clone()

			if (matrix !== undefined) vertexCopy.applyMatrix4(matrix)

			vertices1.push(vertexCopy)
		}

		// colors

		for (var i = 0, il = colors2.length; i < il; i++) {
			colors1.push(colors2[i].clone())
		}

		// faces

		for (i = 0, il = faces2.length; i < il; i++) {
			var face: Face3 = faces2[i],
				faceCopy: Face3,
				normal: Vector3,
				color: Color,
				faceVertexNormals: Vector3[] = face.vertexNormals,
				faceVertexColors: Color[] = face.vertexColors

			faceCopy = new Face3(face.a + vertexOffset, face.b + vertexOffset, face.c + vertexOffset)
			faceCopy.normal.copy(face.normal)

			if (normalMatrix !== undefined) {
				faceCopy.normal.applyMatrix3(normalMatrix).normalize()
			}

			for (var j = 0, jl = faceVertexNormals.length; j < jl; j++) {
				normal = faceVertexNormals[j].clone()

				if (normalMatrix !== undefined) {
					normal.applyMatrix3(normalMatrix).normalize()
				}

				faceCopy.vertexNormals.push(normal)
			}

			faceCopy.color.copy(face.color)

			for (var j = 0, jl = faceVertexColors.length; j < jl; j++) {
				color = faceVertexColors[j]
				faceCopy.vertexColors.push(color.clone())
			}

			faceCopy.materialIndex = face.materialIndex + materialIndexOffset

			faces1.push(faceCopy)
		}

		// uvs

		for (i = 0, il = uvs2.length; i < il; i++) {
			var uv = uvs2[i],
				uvCopy = []

			if (uv === undefined) {
				continue
			}

			for (var j = 0, jl = uv.length; j < jl; j++) {
				uvCopy.push(uv[j].clone())
			}

			uvs1.push(uvCopy)
		}
	}

	//TODO: uncomment when Mesh is ready
	// mergeMesh(mesh: Mesh): void {
	// 	// if ( ! ( mesh && mesh.isMesh ) ) {

	// 	// 	console.error( 'THREE.Geometry.mergeMesh(): mesh not an instance of THREE.Mesh.', mesh );
	// 	// 	return;

	// 	// }

	// 	if (mesh.matrixAutoUpdate) mesh.updateMatrix()

	// 	this.merge(mesh.geometry, mesh.matrix)
	// }

	/**
	 * Checks for duplicate vertices using hashmap.
	 * Duplicated vertices are removed and faces' vertices are updated.
	 */
	mergeVertices(): i32 {
		var verticesMap: Map<string, i32> = new Map() // Hashmap for looking up vertices by position coordinates (and making sure they are unique)
		var unique = [],
			changes: f32[] = []

		var v: Vector3, key: string
		var precisionPoints = 4 // number of decimal points, e.g. 4 for epsilon of 0.0001
		var precision = Math.pow(10, precisionPoints)
		var i: i32, il: i32, face: Face3
		var indices: f32[], j: i32, jl: i32

		for (i = 0, il = this.vertices.length; i < il; i++) {
			v = this.vertices[i]
			key = Math.round(v.x * precision) + '_' + Math.round(v.y * precision) + '_' + Math.round(v.z * precision)

			if (!verticesMap.has(key)) {
				verticesMap.set(key, i)
				unique.push(this.vertices[i])
				changes[i] = unique.length - 1
			} else {
				//console.log('Duplicate vertex found. ', i, ' could be using ', verticesMap[key]);
				changes[i] = changes[verticesMap.get(key)]
			}
		}

		// if faces are completely degenerate after merging vertices, we
		// have to remove them from the geometry.
		var faceIndicesToRemove = []

		for (i = 0, il = this.faces.length; i < il; i++) {
			face = this.faces[i]

			face.a = changes[face.a]
			face.b = changes[face.b]
			face.c = changes[face.c]

			indices = [face.a, face.b, face.c]

			// if any duplicate vertices are found in a Face3
			// we have to remove the face as nothing can be saved
			for (var n = 0; n < 3; n++) {
				if (indices[n] === indices[(n + 1) % 3]) {
					faceIndicesToRemove.push(i)
					break
				}
			}
		}

		for (i = faceIndicesToRemove.length - 1; i >= 0; i--) {
			var idx = faceIndicesToRemove[i]

			this.faces.splice(idx, 1)

			for (j = 0, jl = this.faceVertexUvs.length; j < jl; j++) {
				this.faceVertexUvs[j].splice(idx, 1)
			}
		}

		// Use unique set of vertices

		var diff: i32 = this.vertices.length - unique.length
		this.vertices = unique
		return diff
	}

	setFromPoints(points: /*Array<Vector2> |*/ Array<Vector3>): this {
		this.vertices = []

		for (var i = 0, l = points.length; i < l; i++) {
			var point = points[i]
			this.vertices.push(new Vector3(point.x, point.y, point instanceof Vector3 ? point.z : 0))
		}

		return this
	}

	sortFacesByMaterialIndex(): void {
		var faces = this.faces
		var length = faces.length

		// tag faces

		for (var i = 0; i < length; i++) {
			faces[i].id = i
		}

		// sort faces

		function materialIndexSort(a: Face3, b: Face3) {
			return a.materialIndex - b.materialIndex
		}

		faces.sort(materialIndexSort)

		// sort uvs

		var uvs1 = this.faceVertexUvs[0]
		var uvs2 = this.faceVertexUvs[1]

		var newUvs1: Vector2[][] = [],
			newUvs2: Vector2[][] = []
		let didSetUvs1: boolean = false,
			didSetUvs2: boolean = false

		if (uvs1 && uvs1.length === length) {
			didSetUvs1 = true
		}
		if (uvs2 && uvs2.length === length) {
			didSetUvs2 = true
		}

		for (var i = 0; i < length; i++) {
			var id = faces[i].id

			if (didSetUvs1) {
				newUvs1.push(uvs1[id])
			}
			if (didSetUvs2) {
				newUvs2.push(uvs2[id])
			}
		}

		if (didSetUvs1) this.faceVertexUvs[0] = newUvs1
		if (didSetUvs2) this.faceVertexUvs[1] = newUvs2
	}

	toJSON(): any {
		var data: any = {
			metadata: {
				version: 4.5,
				type: 'Geometry',
				generator: 'Geometry.toJSON',
			},
			uuid: '',
			type: '',
			name: '',
			data: {
				vertices: [],
				normals: [],
				faces: [],
				colors: [],
			},
		}

		// standard Geometry serialization

		data.uuid = this.uuid
		data.type = this.type
		if (this.name !== '') data.name = this.name

		//Commenting out until Parameters are actually needed
		// if ( this.parameters !== undefined ) {

		// 	var parameters = this.parameters;

		// 	for ( var key in parameters ) {

		// 		if ( parameters[ key ] !== undefined ) data[ key ] = parameters[ key ];

		// 	}

		// 	return data;

		// }

		var vertices = []

		for (var i = 0; i < this.vertices.length; i++) {
			var vertex = this.vertices[i]
			vertices.push(vertex.x)
			vertices.push(vertex.y)
			vertices.push(vertex.z)
		}

		var faces = []
		var normals: Vector3[] = []
		var normalsHash: Map<string, f32> = new Map()
		var colors: string[] = []
		var colorsHash: Map<string, f32> = new Map()
		var uvs: Vector2[] = []
		var uvsHash: Map<String, f32> = new Map()

		for (var i = 0; i < this.faces.length; i++) {
			var face = this.faces[i]

			var hasMaterial = true
			var hasFaceUv = false // deprecated
			var hasFaceVertexUv = this.faceVertexUvs[0][i] !== undefined
			var hasFaceNormal = face.normal.length() > 0
			var hasFaceVertexNormal = face.vertexNormals.length > 0
			var hasFaceColor = face.color.r !== 1 || face.color.g !== 1 || face.color.b !== 1
			var hasFaceVertexColor = face.vertexColors.length > 0

			var faceType = 0

			faceType = setBit(faceType, 0, false) // isQuad
			faceType = setBit(faceType, 1, hasMaterial)
			faceType = setBit(faceType, 2, hasFaceUv)
			faceType = setBit(faceType, 3, hasFaceVertexUv)
			faceType = setBit(faceType, 4, hasFaceNormal)
			faceType = setBit(faceType, 5, hasFaceVertexNormal)
			faceType = setBit(faceType, 6, hasFaceColor)
			faceType = setBit(faceType, 7, hasFaceVertexColor)

			faces.push(faceType)
			faces.push(face.a)
			faces.push(face.b)
			faces.push(face.c)
			faces.push(face.materialIndex)

			if (hasFaceVertexUv) {
				var faceVertexUvs = this.faceVertexUvs[0][i]

				faces.push(getUvIndex(faceVertexUvs[0]))
				faces.push(getUvIndex(faceVertexUvs[1]))
				faces.push(getUvIndex(faceVertexUvs[2]))
			}

			if (hasFaceNormal) {
				faces.push(getNormalIndex(face.normal))
			}

			if (hasFaceVertexNormal) {
				var vertexNormals: Vector3[] = face.vertexNormals

				faces.push(getNormalIndex(vertexNormals[0]))
				faces.push(getNormalIndex(vertexNormals[1]))
				faces.push(getNormalIndex(vertexNormals[2]))
			}

			if (hasFaceColor) {
				faces.push(getColorIndex(face.color))
			}

			if (hasFaceVertexColor) {
				var vertexColors = face.vertexColors

				faces.push(getColorIndex(vertexColors[0]))
				faces.push(getColorIndex(vertexColors[1]))
				faces.push(getColorIndex(vertexColors[2]))
			}
		}

		function setBit(value: f32, position: f32, enabled: boolean) {
			return enabled ? value | (1 << position) : value & ~(1 << position)
		}

		function getNormalIndex(normal: Vector3) {
			var hash: string = normal.x.toString() + normal.y.toString() + normal.z.toString()

			if (normalsHash.has(hash)) {
				return normalsHash.get(hash)
			}

			normalsHash.set(hash, normals.length / 3)
			// normals.push( normal.x, normal.y, normal.z );
			normals.push(new Vector3(normal.x, normal.y, normal.z))

			return normalsHash.get(hash)
		}

		function getColorIndex(color: Color) {
			var hash: string = color.r.toString() + color.g.toString() + color.b.toString()

			if (colorsHash.has(hash)) {
				return colorsHash.get(hash)
			}

			colorsHash.set(hash, colors.length)
			colors.push(color.getHex().toString())

			return colorsHash.get(hash)
		}

		function getUvIndex(uv: Vector2) {
			var hash = uv.x.toString() + uv.y.toString()

			if (uvsHash.has(hash)) {
				return uvsHash.get(hash)
			}

			uvsHash.set(hash, uvs.length / 2)
			// uvs.push( uv.x, uv.y );
			uvs.push(new Vector2(uv.x, uv.y))

			return uvsHash.get(hash)
		}

		data.data = {}

		data.data.vertices = vertices
		data.data.normals = normals
		if (colors.length > 0) data.data.colors = colors
		if (uvs.length > 0) data.data.uvs = [uvs] // temporal backward compatibility
		data.data.faces = faces

		return data
	}

	/**
	 * Creates a new clone of the Geometry.
	 */
	clone(): Geometry {
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

		return new Geometry().copy(this)
	}

	copy(source: Geometry): this {
		var i: i32, il: i32, j: i32, jl: i32, k: i32, kl: i32

		// reset

		this.vertices = []
		this.colors = []
		this.faces = []
		this.faceVertexUvs = [[]]
		// this.morphTargets = []
		// this.morphNormals = []
		this.skinWeights = []
		this.skinIndices = []
		this.lineDistances = []

		//bouding Box & Sphere are allocated in the constructor
		// this.boundingBox = null
		// this.boundingSphere = null

		// name

		this.name = source.name

		// vertices

		var vertices = source.vertices

		for (i = 0, il = vertices.length; i < il; i++) {
			this.vertices.push(vertices[i].clone())
		}

		// colors

		var colors = source.colors

		for (i = 0, il = colors.length; i < il; i++) {
			this.colors.push(colors[i].clone())
		}

		// faces

		var faces = source.faces

		for (i = 0, il = faces.length; i < il; i++) {
			this.faces.push(faces[i].clone())
		}

		// face vertex uvs

		for (i = 0, il = source.faceVertexUvs.length; i < il; i++) {
			var faceVertexUvs = source.faceVertexUvs[i]

			if (this.faceVertexUvs[i] === undefined) {
				this.faceVertexUvs[i] = []
			}

			for (j = 0, jl = faceVertexUvs.length; j < jl; j++) {
				var uvs = faceVertexUvs[j],
					uvsCopy = []

				for (k = 0, kl = uvs.length; k < kl; k++) {
					var uv = uvs[k]

					uvsCopy.push(uv.clone())
				}

				this.faceVertexUvs[i].push(uvsCopy)
			}
		}

		// // morph targets

		// var morphTargets = source.morphTargets

		// for (i = 0, il = morphTargets.length; i < il; i++) {
		// 	var morphTarget: any = {
		// 		name: '',
		// 		vertices: [],
		// 		normals: [],
		// 		vertexNormals: [],
		// 	}

		// 	morphTarget.name = morphTargets[i].name

		// 	// vertices

		// 	if (morphTargets[i].vertices !== undefined) {
		// 		morphTarget.vertices = []

		// 		for (j = 0, jl = morphTargets[i].vertices.length; j < jl; j++) {
		// 			morphTarget.vertices.push(morphTargets[i].vertices[j].clone())
		// 		}
		// 	}

		// 	// normals

		// 	if (morphTargets[i].normals !== undefined) {
		// 		morphTarget.normals = []

		// 		for (j = 0, jl = morphTargets[i].normals.length; j < jl; j++) {
		// 			morphTarget.normals.push(morphTargets[i].normals[j].clone())
		// 		}
		// 	}

		// 	this.morphTargets.push(morphTarget)
		// }

		// // morph normals

		// var morphNormals = source.morphNormals

		// for (i = 0, il = morphNormals.length; i < il; i++) {
		// 	var morphNormal: any = {
		// 		vertexNormals: [],
		// 		faceNormals: [],
		// 	}

		// 	// vertex normals

		// 	if (morphNormals[i].vertexNormals !== undefined) {
		// 		morphNormal.vertexNormals = []

		// 		for (j = 0, jl = morphNormals[i].vertexNormals.length; j < jl; j++) {
		// 			var srcVertexNormal = morphNormals[i].vertexNormals[j]
		// 			var destVertexNormal = {a: new Vector3(), b: new Vector3(), c: new Vector3()}

		// 			destVertexNormal.a = srcVertexNormal[0].clone()
		// 			destVertexNormal.b = srcVertexNormal[1].clone()
		// 			destVertexNormal.c = srcVertexNormal[2].clone()

		// 			morphNormal.vertexNormals.push(destVertexNormal)
		// 		}
		// 	}

		// 	// face normals

		// 	if (morphNormals[i].faceNormals !== undefined) {
		// 		morphNormal.faceNormals = []

		// 		for (j = 0, jl = morphNormals[i].faceNormals.length; j < jl; j++) {
		// 			morphNormal.faceNormals.push(morphNormals[i].faceNormals[j].clone())
		// 		}
		// 	}

		// 	this.morphNormals.push(morphNormal)
		// }

		// skin weights

		var skinWeights = source.skinWeights

		for (i = 0, il = skinWeights.length; i < il; i++) {
			this.skinWeights.push(skinWeights[i].clone())
		}

		// skin indices

		var skinIndices = source.skinIndices

		for (i = 0, il = skinIndices.length; i < il; i++) {
			this.skinIndices.push(skinIndices[i].clone())
		}

		// line distances

		var lineDistances = source.lineDistances

		for (i = 0, il = lineDistances.length; i < il; i++) {
			this.lineDistances.push(lineDistances[i])
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

		// update flags

		this.elementsNeedUpdate = source.elementsNeedUpdate
		this.verticesNeedUpdate = source.verticesNeedUpdate
		this.uvsNeedUpdate = source.uvsNeedUpdate
		this.normalsNeedUpdate = source.normalsNeedUpdate
		this.colorsNeedUpdate = source.colorsNeedUpdate
		this.lineDistancesNeedUpdate = source.lineDistancesNeedUpdate
		this.groupsNeedUpdate = source.groupsNeedUpdate

		return this
	}

	/**
	 * Removes The object from memory.
	 * Don't forget to call this method when you remove an geometry because it can cuase meomory leaks.
	 */
	dispose(): void {
		this.dispatchEvent(new Event('dispose', null, null))
	}

	// EventDispatcher mixins
	// addEventListener( type: string, listener: ( event: Event ) => void ): void;
	// hasEventListener( type: string, listener: ( event: Event ) => void ): boolean;
	// removeEventListener( type: string, listener: ( event: Event ) => void ): void;
	// dispatchEvent( event: { type: string; [attachment: string]: any } ): void;
}

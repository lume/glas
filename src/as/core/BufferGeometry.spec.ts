/**
 * @author simonThiele / https://github.com/simonThiele
 * @author TristanVALCKE / https://github.com/Itee
 * @author corruptedzulu / https://github.com/corruptedzulu
 */
/* global QUnit */

import {BufferGeometry} from './BufferGeometry'
import {BufferAttribute, Uint16BufferAttribute, Uint32BufferAttribute} from './BufferAttribute'
import {Color} from '../math/Color'
import {Vector2} from '../math/Vector2'
import {Vector3} from '../math/Vector3'
import {Vector4} from '../math/Vector4'
import {Matrix4} from '../math/Matrix4'
import {Sphere} from '../math/Sphere'
import {Geometry} from './Geometry'
import {Face3} from './Face3'
import {Mesh} from '../objects/Mesh'
import {Line} from '../objects/Line.js'
import {x, y, z} from '../math/Constants.tests'

var DegToRad = Math.PI / 180

function bufferAttributeEquals(a, b, tolerance) {
	tolerance = tolerance || 0.0001

	if (a.count !== b.count || a.itemSize !== b.itemSize) {
		return false
	}

	for (var i = 0, il = a.count * a.itemSize; i < il; i++) {
		var delta = a[i] - b[i]
		if (delta > tolerance) {
			return false
		}
	}

	return true
}

function getBBForVertices(vertices) {
	var geometry = new BufferGeometry()

	geometry.addAttribute('position', new BufferAttribute(new Float32Array(vertices), 3))
	geometry.computeBoundingBox()

	return geometry.boundingBox
}

function getBSForVertices(vertices) {
	var geometry = new BufferGeometry()

	geometry.addAttribute('position', new BufferAttribute(new Float32Array(vertices), 3))
	geometry.computeBoundingSphere()

	return geometry.boundingSphere
}

function getNormalsForVertices(vertices, assert) {
	var geometry = new BufferGeometry()

	geometry.addAttribute('position', new BufferAttribute(new Float32Array(vertices), 3))

	geometry.computeVertexNormals()

	assert.ok(geometry.attributes.normal !== undefined, 'normal attribute was created')

	return geometry.attributes.normal.array
}

function comparePositions(pos, v) {
	return (
		pos[0] === v[0].x &&
		pos[1] === v[0].y &&
		pos[2] === v[0].z &&
		pos[3] === v[1].x &&
		pos[4] === v[1].y &&
		pos[5] === v[1].z &&
		pos[6] === v[2].x &&
		pos[7] === v[2].y &&
		pos[8] === v[2].z
	)
}

function compareColors(col, c) {
	return (
		col[0] === c[0].r &&
		col[1] === c[0].g &&
		col[2] === c[0].b &&
		col[3] === c[1].r &&
		col[4] === c[1].g &&
		col[5] === c[1].b &&
		col[6] === c[2].r &&
		col[7] === c[2].g &&
		col[8] === c[2].b
	)
}

function compareUvs(uvs, u) {
	return (
		uvs[0] === u[0].x &&
		uvs[1] === u[0].y &&
		uvs[2] === u[1].x &&
		uvs[3] === u[1].y &&
		uvs[4] === u[2].x &&
		uvs[5] === u[2].y
	)
}

describe('BufferGeometry', () => {
	// INHERITANCE
	todo('Extending')
	// INSTANCING
	todo('Instancing')
	// PUBLIC STUFF
	todo('isBufferGeometry')

	test('setIndex/getIndex', () => {
		var a = new BufferGeometry()
		var uint16 = [1, 2, 3]
		var uint32 = [65535, 65536, 65537]
		//var str : string = 'foo'

		a.setIndex(uint16)
		expect(a.getIndex() instanceof Uint16BufferAttribute).toBe(true)

		expect(a.getIndex().array).toStrictEqual(new Uint16Array(uint16))

		a.setIndex(uint32)
		expect(a.getIndex() instanceof Uint32BufferAttribute).toBe(true)
		expect(a.getIndex().array).toStrictEqual(new Uint32Array(uint32))

		//setIndex() does not accept a string by compiler rules
		// a.setIndex(str)
		// expect(a.getIndex()).toStrictEqual(str)
	})

	todo('getAttribute')

	test('add / delete Attribute', () => {
		var geometry = new BufferGeometry()
		var attributeName = 'position'

		expect(geometry.attributes[attributeName] === undefined).toBe(true)

		geometry.addAttribute(attributeName, new BufferAttribute(new Float32Array([1, 2, 3], 1)))

		expect(geometry.attributes[attributeName] !== undefined).toBe(true)

		geometry.removeAttribute(attributeName)

		expect(geometry.attributes[attributeName] === undefined).toBe(true)
	})

	test('addGroup', () => {
		var a = new BufferGeometry()
		var expected = [
			{
				start: 0,
				count: 1,
				materialIndex: 0,
			},
			{
				start: 1,
				count: 2,
				materialIndex: 2,
			},
		]

		a.addGroup(0, 1, 0)
		a.addGroup(1, 2, 2)

		expect(a.groups).toStrictEqual(expected)

		a.clearGroups()
		expect(a.groups.length).toBe(0)
	})

	todo('clearGroups')

	test('setDrawRange', () => {
		var a = new BufferGeometry()

		a.setDrawRange(1.0, 7)

		expect(a.drawRange).toStrictEqual({start: 1, count: 7})
	})

	test('applyMatrix', () => {
		var geometry = new BufferGeometry()
		geometry.addAttribute('position', new BufferAttribute(new Float32Array(6), 3))

		var matrix = new Matrix4().set(1, 0, 0, 1.5, 0, 1, 0, -2, 0, 0, 1, 3, 0, 0, 0, 1)
		geometry.applyMatrix(matrix)

		var position = geometry.attributes.position.array
		var m = matrix.elements
		expect(position[0] === m[12] && position[1] === m[13] && position[2] === m[14]).toBe(true)

		expect(position[3] === m[12] && position[4] === m[13] && position[5] === m[14]).toBe(true)

		expect(geometry.attributes.position.version === 1).toBe(true)
	})

	test('rotateX/Y/Z', () => {
		var geometry = new BufferGeometry()
		geometry.addAttribute('position', new BufferAttribute(new Float32Array([1, 2, 3, 4, 5, 6]), 3))

		var pos = geometry.attributes.position.array

		geometry.rotateX(180 * DegToRad)

		// object was rotated around x so all items should be flipped but the x ones
		expect(pos[0] === 1 && pos[1] === -2 && pos[2] === -3 && pos[3] === 4 && pos[4] === -5 && pos[5] === -6).toBe(
			true
		)

		geometry.rotateY(180 * DegToRad)

		// vertices were rotated around y so all items should be flipped again but the y ones
		expect(pos[0] === -1 && pos[1] === -2 && pos[2] === 3 && pos[3] === -4 && pos[4] === -5 && pos[5] === 6).toBe(
			true
		)

		geometry.rotateZ(180 * DegToRad)

		// vertices were rotated around z so all items should be flipped again but the z ones
		expect(pos[0] === 1 && pos[1] === 2 && pos[2] === 3 && pos[3] === 4 && pos[4] === 5 && pos[5] === 6).toBe(true)
	})

	test('translate', () => {
		var geometry = new BufferGeometry()
		geometry.addAttribute('position', new BufferAttribute(new Float32Array([1, 2, 3, 4, 5, 6]), 3))

		var pos = geometry.attributes.position.array

		geometry.translate(10, 20, 30)

		expect(pos[0] === 11 && pos[1] === 22 && pos[2] === 33 && pos[3] === 14 && pos[4] === 25 && pos[5] === 36).toBe(
			true
		)
	})

	test('scale', () => {
		var geometry = new BufferGeometry()
		geometry.addAttribute('position', new BufferAttribute(new Float32Array([-1, -1, -1, 2, 2, 2]), 3))

		var pos = geometry.attributes.position.array

		geometry.scale(1, 2, 3)

		expect(pos[0] === -1 && pos[1] === -2 && pos[2] === -3 && pos[3] === 2 && pos[4] === 4 && pos[5] === 6).toBe(
			true
		)
	})

	test('lookAt', () => {
		var a = new BufferGeometry()
		var vertices = new Float32Array(18)
		vertices = [-1.0, -1.0, 1.0, 1.0, -1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, -1.0, 1.0, 1.0, -1.0, -1.0, 1.0]

		a.addAttribute('position', new BufferAttribute(vertices, 3))

		var sqrt = Math.sqrt(2)
		var expected = new Float32Array([1, 0, -sqrt, -1, 0, -sqrt, -1, sqrt, 0, -1, sqrt, 0, 1, sqrt, 0, 1, 0, -sqrt])

		a.lookAt(new Vector3(0, 1, -1))

		expect(bufferAttributeEquals(a.attributes.position.array, expected)).toBe(true)
	})

	test('center', () => {
		var geometry = new BufferGeometry()
		geometry.addAttribute('position', new BufferAttribute(new Float32Array([-1, -1, -1, 1, 1, 1, 4, 4, 4]), 3))

		geometry.center()

		var pos = geometry.attributes.position.array

		// the boundingBox should go from (-1, -1, -1) to (4, 4, 4) so it has a size of (5, 5, 5)
		// after centering it the vertices should be placed between (-2.5, -2.5, -2.5) and (2.5, 2.5, 2.5)
		expect(
			pos[0] === -2.5 &&
				pos[1] === -2.5 &&
				pos[2] === -2.5 &&
				pos[3] === -0.5 &&
				pos[4] === -0.5 &&
				pos[5] === -0.5 &&
				pos[6] === 2.5 &&
				pos[7] === 2.5 &&
				pos[8] === 2.5
		).toBe(true)
	})

	test('setFromObject', () => {
		var lineGeo = new Geometry()
		lineGeo.vertices.push(new Vector3(-10, 0, 0), new Vector3(0, 10, 0), new Vector3(10, 0, 0))

		lineGeo.colors.push(new Color(1, 0, 0), new Color(0, 1, 0), new Color(0, 0, 1))

		var line = new Line(lineGeo, null)
		var geometry = new BufferGeometry().setFromObject(line)

		var pos = geometry.attributes.position.array
		var col = geometry.attributes.color.array
		var v = lineGeo.vertices
		var c = lineGeo.colors

		expect(
			// position exists
			pos !== undefined &&
				// vertex arrays have the same size
				v.length * 3 === pos.length &&
				// there are three complete vertices (each vertex contains three values)
				geometry.attributes.position.count === 3 &&
				// check if both arrays contains the same data
				pos[0] === v[0].x &&
				pos[1] === v[0].y &&
				pos[2] === v[0].z &&
				pos[3] === v[1].x &&
				pos[4] === v[1].y &&
				pos[5] === v[1].z &&
				pos[6] === v[2].x &&
				pos[7] === v[2].y &&
				pos[8] === v[2].z
		).toBe(true)

		expect(
			// color exists
			col !== undefined &&
				// color arrays have the same size
				c.length * 3 === col.length &&
				// there are three complete colors (each color contains three values)
				geometry.attributes.color.count === 3 &&
				// check if both arrays contains the same data
				col[0] === c[0].r &&
				col[1] === c[0].g &&
				col[2] === c[0].b &&
				col[3] === c[1].r &&
				col[4] === c[1].g &&
				col[5] === c[1].b &&
				col[6] === c[2].r &&
				col[7] === c[2].g &&
				col[8] === c[2].b
		).toBe(true)
	})

	test('setFromObject (more)', () => {
		var lineGeo = new Geometry()
		lineGeo.vertices.push(new Vector3(-10, 0, 0))
		lineGeo.vertices.push(new Vector3(0, 10, 0))
		lineGeo.vertices.push(new Vector3(10, 0, 0))

		lineGeo.colors.push(new Color(1, 0, 0))
		lineGeo.colors.push(new Color(0, 1, 0))
		lineGeo.colors.push(new Color(0, 0, 1))

		lineGeo.computeBoundingBox()
		lineGeo.computeBoundingSphere()

		var line = new Line(lineGeo)
		var geometry = new BufferGeometry().setFromObject(line)

		expect(geometry.boundingBox.equals(lineGeo.boundingBox)).toBe(true)
		expect(geometry.boundingSphere.equals(lineGeo.boundingSphere)).toBe(true)

		var pos = geometry.attributes.position.array
		var col = geometry.attributes.color.array
		var v = lineGeo.vertices
		var c = lineGeo.colors

		// adapted from setFromObject test (way up)

		//TODO: undefined does not exist in assembly script and this check to verify initialization will need to be replaced
		// assert.notStrictEqual(pos, undefined, 'Position attribute exists')
		expect(v.length * 3).toStrictEqual(pos.length)
		expect(geometry.attributes.position.count).toStrictEqual(3)
		expect(comparePositions(pos, v)).toBe(true)

		//TODO: undefined does not exist in assembly script and this check to verify initialization will need to be replaced
		// assert.notStrictEqual(col, undefined, 'Color attribute exists')
		expect(c.length * 3).toStrictEqual(col.length)
		expect(geometry.attributes.color.count).toStrictEqual(3)
		expect(compareColors(col, c)).toBe(true)

		// setFromObject with a Mesh as object
		lineGeo.faces.push(new Face3(0, 1, 2))
		var lineMesh = new Mesh(lineGeo)
		var geometry = new BufferGeometry().setFromObject(lineMesh)

		// no colors
		var pos = geometry.attributes.position.array
		var v = lineGeo.vertices

		//TODO: undefined does not exist in assembly script and this check to verify initialization will need to be replaced
		// assert.notStrictEqual(pos, undefined, 'Mesh: position attribute exists')
		expect(v.length * 3).toStrictEqual(pos.length)
		expect(geometry.attributes.position.count).toStrictEqual(3)
		expect(comparePositions(pos, v)).toBe(true)
	})

	test('updateFromObject', () => {
		var geo = new Geometry()

		geo.vertices.push(new Vector3(-10, 0, 0), new Vector3(0, 10, 0), new Vector3(10, 0, 0))

		geo.faces.push(new Face3(0, 1, 2))

		geo.faces[0].vertexColors.push(new Color(1, 0, 0), new Color(0, 1, 0), new Color(0, 0, 1))

		geo.faceVertexUvs[0] = [[new Vector2(0, 0), new Vector2(1, 0), new Vector2(1, 1)]]

		geo.computeFaceNormals()
		geo.computeVertexNormals()

		geo.verticesNeedUpdate = true
		geo.normalsNeedUpdate = true
		geo.colorsNeedUpdate = true
		geo.uvsNeedUpdate = true
		geo.groupsNeedUpdate = true

		var mesh = new Mesh(geo)
		var geometry = new BufferGeometry()

		geometry.updateFromObject(mesh) // first call to create the underlying structure (DirectGeometry)
		geometry.updateFromObject(mesh) // second time to actually go thru the motions and update

		var pos = geometry.attributes.position.array
		var col = geometry.attributes.color.array
		var norm = geometry.attributes.normal.array
		var uvs = geometry.attributes.uv.array
		var v = geo.vertices
		var c = geo.faces[0].vertexColors
		var n = geo.faces[0].vertexNormals
		var u = geo.faceVertexUvs[0][0]

		assert.notStrictEqual(pos, undefined, 'Position attribute exists')
		assert.strictEqual(v.length * 3, pos.length, 'Both arrays have the same size')
		assert.strictEqual(geometry.attributes.position.count, v.length, 'Correct number of vertices')
		assert.ok(comparePositions(pos, v), 'Positions are identical')

		assert.notStrictEqual(col, undefined, 'Color attribute exists')
		assert.strictEqual(c.length * 3, col.length, 'Both arrays have the same size')
		assert.strictEqual(geometry.attributes.color.count, c.length, 'Correct number of colors')
		assert.ok(compareColors(col, c), 'Colors are identical')

		assert.notStrictEqual(norm, undefined, 'Normal attribute exists')
		assert.strictEqual(n.length * 3, norm.length, 'Both arrays have the same size')
		assert.strictEqual(geometry.attributes.normal.count, n.length, 'Correct number of normals')
		assert.ok(comparePositions(norm, n), 'Normals are identical')

		assert.notStrictEqual(uvs, undefined, 'UV attribute exists')
		assert.strictEqual(u.length * 2, uvs.length, 'Both arrays have the same size')
		assert.strictEqual(geometry.attributes.uv.count, u.length, 'Correct number of UV coordinates')
		assert.ok(compareUvs(uvs, u), 'UVs are identical')
	})

	test('fromGeometry/fromDirectGeometry', () => {
		// geometry definition

		var geometry = new Geometry()

		// vertices

		var v1 = new Vector3(1, -1, 0)
		var v2 = new Vector3(1, 1, 0)
		var v3 = new Vector3(-1, 1, 0)
		var v4 = new Vector3(-1, -1, 0)

		// faces, normals and colors

		geometry.vertices.push(v1, v2, v3, v4)

		var f1 = new Face3(0, 1, 2)
		f1.normal.set(0, 0, 1)
		f1.color.set(0xff0000)
		var f2 = new Face3(2, 3, 0)
		f2.normal.set(0, 0, 1)
		f2.color.set(0xff0000)

		geometry.faces.push(f1, f2)

		// uvs

		var uvs = geometry.faceVertexUvs[0]
		uvs.length = 0

		uvs.push([new Vector2(1, 0), new Vector2(1, 1), new Vector2(0, 1)])

		uvs.push([new Vector2(0, 1), new Vector2(0, 0), new Vector2(1, 0)])

		// skin weights

		var sw1 = new Vector4(0.8, 0.2, 0, 0)
		var sw2 = new Vector4(0.7, 0.2, 0.1, 0)
		var sw3 = new Vector4(0.8, 0.1, 0.1, 0)
		var sw4 = new Vector4(1, 0, 0, 0)

		geometry.skinWeights.push(sw1, sw2, sw3, sw4)

		// skin indices

		var si1 = new Vector4(0, 1, 2, 3)
		var si2 = new Vector4(2, 3, 4, 5)
		var si3 = new Vector4(4, 5, 6, 7)
		var si4 = new Vector4(6, 7, 8, 9)

		geometry.skinIndices.push(si1, si2, si3, si4)

		// create BufferGeometry

		var bufferGeometry = new BufferGeometry().fromGeometry(geometry)

		// expected values

		var vertices = new Float32Array([1, -1, 0, 1, 1, 0, -1, 1, 0, -1, 1, 0, -1, -1, 0, 1, -1, 0])
		var normals = new Float32Array([0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1])
		var colors = new Float32Array([1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0])
		var uvs = new Float32Array([1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0])
		var skinIndices = new Float32Array([0, 1, 2, 3, 2, 3, 4, 5, 4, 5, 6, 7, 4, 5, 6, 7, 6, 7, 8, 9, 0, 1, 2, 3])
		var skindWeights = new Float32Array([
			0.8,
			0.2,
			0,
			0,
			0.7,
			0.2,
			0.1,
			0,
			0.8,
			0.1,
			0.1,
			0,
			0.8,
			0.1,
			0.1,
			0,
			1,
			0,
			0,
			0,
			0.8,
			0.2,
			0,
			0,
		])

		var attributes = bufferGeometry.attributes

		assert.deepEqual(attributes.position.array, vertices, 'Vertices are as expected')
		assert.deepEqual(attributes.normal.array, normals, 'Normals are as expected')
		assert.deepEqual(attributes.color.array, colors, 'Colors are as expected')
		assert.deepEqual(attributes.uv.array, uvs, 'Texture coordinates are as expected')
		assert.deepEqual(attributes.skinIndex.array, skinIndices, 'Skin indices are as expected')
		assert.deepEqual(attributes.skinWeight.array, skindWeights, 'Skin weights are as expected')
	})

	test('computeBoundingBox', () => {
		var bb = getBBForVertices([-1, -2, -3, 13, -2, -3.5, -1, -20, 0, -4, 5, 6])

		assert.ok(bb.min.x === -4 && bb.min.y === -20 && bb.min.z === -3.5, 'min values are set correctly')
		assert.ok(bb.max.x === 13 && bb.max.y === 5 && bb.max.z === 6, 'max values are set correctly')

		var bb = getBBForVertices([-1, -1, -1])

		assert.ok(
			bb.min.x === bb.max.x && bb.min.y === bb.max.y && bb.min.z === bb.max.z,
			'since there is only one vertex, max and min are equal'
		)
		assert.ok(
			bb.min.x === -1 && bb.min.y === -1 && bb.min.z === -1,
			'since there is only one vertex, min and max are this vertex'
		)
	})

	test('computeBoundingSphere', () => {
		var bs = getBSForVertices([-10, 0, 0, 10, 0, 0])

		assert.ok(bs.radius === (10 + 10) / 2, 'radius is equal to deltaMinMax / 2')
		assert.ok(bs.center.x === 0 && bs.center.y === 0 && bs.center.y === 0, 'bounding sphere is at ( 0, 0, 0 )')

		var bs = getBSForVertices([-5, 11, -3, 5, -11, 3])
		var radius = new Vector3(5, 11, 3).length()

		assert.ok(bs.radius === radius, 'radius is equal to directionLength')
		assert.ok(bs.center.x === 0 && bs.center.y === 0 && bs.center.y === 0, 'bounding sphere is at ( 0, 0, 0 )')
	})

	todo('computeFaceNormals', () => {
		assert.ok(false, "everything's gonna be alright")
	})

	test('computeVertexNormals', () => {
		// get normals for a counter clockwise created triangle
		var normals = getNormalsForVertices([-1, 0, 0, 1, 0, 0, 0, 1, 0], assert)

		assert.ok(
			normals[0] === 0 && normals[1] === 0 && normals[2] === 1,
			'first normal is pointing to screen since the the triangle was created counter clockwise'
		)

		assert.ok(
			normals[3] === 0 && normals[4] === 0 && normals[5] === 1,
			'second normal is pointing to screen since the the triangle was created counter clockwise'
		)

		assert.ok(
			normals[6] === 0 && normals[7] === 0 && normals[8] === 1,
			'third normal is pointing to screen since the the triangle was created counter clockwise'
		)

		// get normals for a clockwise created triangle
		var normals = getNormalsForVertices([1, 0, 0, -1, 0, 0, 0, 1, 0], assert)

		assert.ok(
			normals[0] === 0 && normals[1] === 0 && normals[2] === -1,
			'first normal is pointing to screen since the the triangle was created clockwise'
		)

		assert.ok(
			normals[3] === 0 && normals[4] === 0 && normals[5] === -1,
			'second normal is pointing to screen since the the triangle was created clockwise'
		)

		assert.ok(
			normals[6] === 0 && normals[7] === 0 && normals[8] === -1,
			'third normal is pointing to screen since the the triangle was created clockwise'
		)

		var normals = getNormalsForVertices([0, 0, 1, 0, 0, -1, 1, 1, 0], assert)

		// the triangle is rotated by 45 degrees to the right so the normals of the three vertices
		// should point to (1, -1, 0).normalized(). The simplest solution is to check against a normalized
		// vector (1, -1, 0) but you will get calculation errors because of floating calculations so another
		// valid technique is to create a vector which stands in 90 degrees to the normals and calculate the
		// dot product which is the cos of the angle between them. This should be < floating calculation error
		// which can be taken from Number.EPSILON
		var direction = new Vector3(1, 1, 0).normalize() // a vector which should have 90 degrees difference to normals
		var difference = direction.dot(new Vector3(normals[0], normals[1], normals[2]))
		assert.ok(difference < Number.EPSILON, 'normal is equal to reference vector')

		// get normals for a line should be NAN because you need min a triangle to calculate normals
		var normals = getNormalsForVertices([1, 0, 0, -1, 0, 0], assert)
		for (var i = 0; i < normals.length; i++) {
			assert.ok(!normals[i], "normals can't be calculated which is good")
		}
	})
	test('computeVertexNormals (indexed)', () => {
		var sqrt = 0.5 * Math.sqrt(2)
		var normal = new BufferAttribute(
			new Float32Array([-1, 0, 0, -1, 0, 0, -1, 0, 0, sqrt, sqrt, 0, sqrt, sqrt, 0, sqrt, sqrt, 0, -1, 0, 0]),
			3
		)
		var position = new BufferAttribute(
			new Float32Array([
				0.5,
				0.5,
				0.5,
				0.5,
				0.5,
				-0.5,
				0.5,
				-0.5,
				0.5,
				0.5,
				-0.5,
				-0.5,
				-0.5,
				0.5,
				-0.5,
				-0.5,
				0.5,
				0.5,
				-0.5,
				-0.5,
				-0.5,
			]),
			3
		)
		var index = new BufferAttribute(new Uint16Array([0, 2, 1, 2, 3, 1, 4, 6, 5, 6, 7, 5]), 1)

		var a = new BufferGeometry()
		a.addAttribute('position', position)
		a.computeVertexNormals()
		assert.ok(
			bufferAttributeEquals(normal, a.getAttribute('normal')),
			'Regular geometry: first computed normals are correct'
		)

		// a second time to see if the existing normals get properly deleted
		a.computeVertexNormals()
		assert.ok(
			bufferAttributeEquals(normal, a.getAttribute('normal')),
			'Regular geometry: second computed normals are correct'
		)

		// indexed geometry
		var a = new BufferGeometry()
		a.addAttribute('position', position)
		a.setIndex(index)
		a.computeVertexNormals()
		assert.ok(
			bufferAttributeEquals(normal, a.getAttribute('normal')),
			'Indexed geometry: computed normals are correct'
		)
	})

	test('merge', () => {
		var geometry1 = new BufferGeometry()
		geometry1.addAttribute('attrName', new BufferAttribute(new Float32Array([1, 2, 3, 0, 0, 0]), 3))

		var geometry2 = new BufferGeometry()
		geometry2.addAttribute('attrName', new BufferAttribute(new Float32Array([4, 5, 6]), 3))

		var attr = geometry1.attributes.attrName.array

		geometry1.merge(geometry2, 1)

		// merged array should be 1, 2, 3, 4, 5, 6
		for (var i = 0; i < attr.length; i++) {
			assert.ok(attr[i] === i + 1, '')
		}

		geometry1.merge(geometry2)
		assert.ok(attr[0] === 4 && attr[1] === 5 && attr[2] === 6, 'copied the 3 attributes without offset')
	})

	todo('normalizeNormals', () => {
		assert.ok(false, "everything's gonna be alright")
	})

	test('toNonIndexed', () => {
		var geometry = new BufferGeometry()
		var vertices = new Float32Array([0.5, 0.5, 0.5, 0.5, 0.5, -0.5, 0.5, -0.5, 0.5, 0.5, -0.5, -0.5])
		var index = new BufferAttribute(new Uint16Array([0, 2, 1, 2, 3, 1]))
		var expected = new Float32Array([
			0.5,
			0.5,
			0.5,
			0.5,
			-0.5,
			0.5,
			0.5,
			0.5,
			-0.5,
			0.5,
			-0.5,
			0.5,
			0.5,
			-0.5,
			-0.5,
			0.5,
			0.5,
			-0.5,
		])

		geometry.addAttribute('position', new BufferAttribute(vertices, 3))
		geometry.setIndex(index)

		var nonIndexed = geometry.toNonIndexed()

		assert.deepEqual(nonIndexed.getAttribute('position').array, expected, 'Expected vertices')
	})

	test('toJSON', () => {
		var index = new BufferAttribute(new Uint16Array([0, 1, 2, 3]), 1)
		var attribute1 = new BufferAttribute(new Uint16Array([1, 3, 5, 7]), 1)
		attribute1.name = 'attribute1'
		var a = new BufferGeometry()
		a.name = 'JSONQUnit.test'
		// a.parameters = { "placeholder": 0 };
		a.addAttribute('attribute1', attribute1)
		a.setIndex(index)
		a.addGroup(0, 1, 2)
		a.boundingSphere = new Sphere(new Vector3(x, y, z), 0.5)
		var j = a.toJSON()
		var gold = {
			metadata: {
				version: 4.5,
				type: 'BufferGeometry',
				generator: 'BufferGeometry.toJSON',
			},
			uuid: a.uuid,
			type: 'BufferGeometry',
			name: 'JSONQUnit.test',
			data: {
				attributes: {
					attribute1: {
						itemSize: 1,
						type: 'Uint16Array',
						array: [1, 3, 5, 7],
						normalized: false,
						name: 'attribute1',
					},
				},
				index: {
					type: 'Uint16Array',
					array: [0, 1, 2, 3],
				},
				groups: [
					{
						start: 0,
						count: 1,
						materialIndex: 2,
					},
				],
				boundingSphere: {
					center: [2, 3, 4],
					radius: 0.5,
				},
			},
		}

		assert.deepEqual(j, gold, 'Generated JSON is as expected')

		// add morphAttributes
		a.morphAttributes.attribute1 = []
		a.morphAttributes.attribute1.push(attribute1.clone())
		j = a.toJSON()
		gold.data.morphAttributes = {
			attribute1: [
				{
					itemSize: 1,
					type: 'Uint16Array',
					array: [1, 3, 5, 7],
					normalized: false,
					name: 'attribute1',
				},
			],
		}

		assert.deepEqual(j, gold, 'Generated JSON with morphAttributes is as expected')
	})

	test('clone', () => {
		var a = new BufferGeometry()
		a.addAttribute('attribute1', new BufferAttribute(new Float32Array([1, 2, 3, 4, 5, 6]), 3))
		a.addAttribute('attribute2', new BufferAttribute(new Float32Array([0, 1, 3, 5, 6]), 1))
		a.addGroup(0, 1, 2)
		a.computeBoundingBox()
		a.computeBoundingSphere()
		a.setDrawRange(0, 1)
		var b = a.clone()

		assert.notEqual(a, b, 'A new object was created')
		assert.notEqual(a.id, b.id, 'New object has a different GUID')

		assert.strictEqual(
			Object.keys(a.attributes).count,
			Object.keys(b.attributes).count,
			'Both objects have the same amount of attributes'
		)
		assert.ok(
			bufferAttributeEquals(a.getAttribute('attribute1'), b.getAttribute('attribute1')),
			'First attributes buffer is identical'
		)
		assert.ok(
			bufferAttributeEquals(a.getAttribute('attribute2'), b.getAttribute('attribute2')),
			'Second attributes buffer is identical'
		)

		assert.deepEqual(a.groups, b.groups, 'Groups are identical')

		assert.ok(a.boundingBox.equals(b.boundingBox), 'BoundingBoxes are equal')
		assert.ok(a.boundingSphere.equals(b.boundingSphere), 'BoundingSpheres are equal')

		assert.strictEqual(a.drawRange.start, b.drawRange.start, 'DrawRange start is identical')
		assert.strictEqual(a.drawRange.count, b.drawRange.count, 'DrawRange count is identical')
	})

	test('copy', () => {
		var geometry = new BufferGeometry()
		geometry.addAttribute('attrName', new BufferAttribute(new Float32Array([1, 2, 3, 4, 5, 6]), 3))
		geometry.addAttribute('attrName2', new BufferAttribute(new Float32Array([0, 1, 3, 5, 6]), 1))

		var copy = new BufferGeometry().copy(geometry)

		assert.ok(copy !== geometry && geometry.id !== copy.id, 'new object was created')

		Object.keys(geometry.attributes).forEach(function(key) {
			var attribute = geometry.attributes[key]
			assert.ok(attribute !== undefined, 'all attributes where copied')

			for (var i = 0; i < attribute.array.length; i++) {
				assert.ok(attribute.array[i] === copy.attributes[key].array[i], 'values of the attribute are equal')
			}
		})
	})

	todo('dispose')
})

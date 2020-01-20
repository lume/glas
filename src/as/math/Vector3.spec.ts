/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */
/* global QUnit */

import {Vector3} from './Vector3'
import {Vector4} from './Vector4'
// import {Matrix3} from '../../../../src/math/Matrix3'
import {Matrix4} from './Matrix4'
// import {Spherical} from '../../../../src/math/Spherical'
// import {Quaternion} from '../../../../src/math/Quaternion'
// import {Euler} from '../../../../src/math/Euler'
// import {Cylindrical} from '../../../../src/math/Cylindrical'
// import {BufferAttribute} from '../../../../src/core/BufferAttribute'
// import {PerspectiveCamera} from '../../../../src/cameras/PerspectiveCamera'
import {x, y, z, w, eps} from './Constants.tests'

function checkVector(v: Vector3, x: f64, y: f64, z: f64, decimals: i32 = 0): void {
	if (!decimals) {
		expect<f64>(v.x).toBe(x)
		expect<f64>(v.y).toBe(y)
		expect<f64>(v.z).toBe(z)
	} else {
		expect<f64>(v.x).toBeCloseTo(x, decimals)
		expect<f64>(v.y).toBeCloseTo(y, decimals)
		expect<f64>(v.z).toBeCloseTo(z, decimals)
	}
}

describe('Vector3', () => {
	// INSTANCING
	test('.constructor', () => {
		let a = new Vector3()
		checkVector(a, 0, 0, 0)

		a = new Vector3(x, y, z)
		checkVector(a, x, y, z)
	})

	// // PUBLIC STUFF
	// todo('isVector3')

	test('.set', () => {
		const a = new Vector3()
		checkVector(a, 0, 0, 0)

		a.set(x, y, z)
		checkVector(a, x, y, z)
	})

	todo('.setScalar')

	todo('.setX')

	todo('.setY')

	todo('.setZ')

	todo('.setComponent')

	todo('.getComponent')

	test('.clone', () => {
		const a = new Vector3(x, y, z)
		const b = a.clone()
		checkVector(b, x, y, z)
	})

	test('.copy', () => {
		const a = new Vector3(x, y, z)
		const b = new Vector3()
		b.copy(a)
		checkVector(b, x, y, z)

		// ensure that it is a true copy
		a.x = 0
		a.y = -1
		a.z = -2
		checkVector(b, x, y, z)
	})

	test('add', () => {
		var a = new Vector3(x, y, z)
		var b = new Vector3(-x, -y, -z)

		a.add(b)
		assert(a.x == 0, 'Passed!')
		assert(a.y == 0, 'Passed!')
		assert(a.z == 0, 'Passed!')

		var c = new Vector3()
		c.addVectors(b, b)
		assert(c.x == -2 * x, 'Passed!')
		assert(c.y == -2 * y, 'Passed!')
		assert(c.z == -2 * z, 'Passed!')
	})

	// todo('addScalar')

	test('.addVectors', () => {
		const a = new Vector3(1, 2, 3)
		const b = new Vector3(4, 5, 6)
		const c = new Vector3()

		c.addVectors(a, b)

		checkVector(c, 5, 7, 9)
	})

	// test('addScaledVector', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var b = new Vector3(2, 3, 4)
	// 	var s = 3

	// 	a.addScaledVector(b, s)
	// 	assert.strictEqual(a.x, x + b.x * s, 'Check x')
	// 	assert.strictEqual(a.y, y + b.y * s, 'Check y')
	// 	assert.strictEqual(a.z, z + b.z * s, 'Check z')
	// })

	// test('sub', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var b = new Vector3(-x, -y, -z)

	// 	a.sub(b)
	// 	assert(a.x == 2 * x, 'Passed!')
	// 	assert(a.y == 2 * y, 'Passed!')
	// 	assert(a.z == 2 * z, 'Passed!')

	// 	var c = new Vector3().subVectors(a, a)
	// 	assert(c.x == 0, 'Passed!')
	// 	assert(c.y == 0, 'Passed!')
	// 	assert(c.z == 0, 'Passed!')
	// })

	// todo('subScalar')

	test('.subVectors', () => {
		const a = new Vector3(1, 2, 3)
		const b = new Vector3(4, 5, 6)
		const c = new Vector3()

		c.subVectors(a, b)

		checkVector(c, -3, -3, -3)
	})

	// todo('multiply')

	test('.multiplyScalar', () => {
		const a = new Vector3(1, 2, 3)
		a.multiplyScalar(2.5)
		checkVector(a, 2.5, 5, 7.5)
	})

	// test('multiplyVectors', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var b = new Vector3(2, 3, -5)

	// 	var c = new Vector3().multiplyVectors(a, b)
	// 	assert.strictEqual(c.x, x * 2, 'Check x')
	// 	assert.strictEqual(c.y, y * 3, 'Check y')
	// 	assert.strictEqual(c.z, z * -5, 'Check z')
	// })

	// test('applyEuler', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var euler = new Euler(90, -45, 0)
	// 	var expected = new Vector3(-2.352970120501014, -4.7441750936226645, 0.9779234597246458)

	// 	a.applyEuler(euler)
	// 	assert(Math.abs(a.x - expected.x) <= eps, 'Check x')
	// 	assert(Math.abs(a.y - expected.y) <= eps, 'Check y')
	// 	assert(Math.abs(a.z - expected.z) <= eps, 'Check z')
	// })

	// test('applyAxisAngle', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var axis = new Vector3(0, 1, 0)
	// 	var angle = Math.PI / 4.0
	// 	var expected = new Vector3(3 * Math.sqrt(2), 3, Math.sqrt(2))

	// 	a.applyAxisAngle(axis, angle)
	// 	assert(Math.abs(a.x - expected.x) <= eps, 'Check x')
	// 	assert(Math.abs(a.y - expected.y) <= eps, 'Check y')
	// 	assert(Math.abs(a.z - expected.z) <= eps, 'Check z')
	// })

	// test('applyMatrix3', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var m = new Matrix3().set(2, 3, 5, 7, 11, 13, 17, 19, 23)

	// 	a.applyMatrix3(m)
	// 	assert.strictEqual(a.x, 33, 'Check x')
	// 	assert.strictEqual(a.y, 99, 'Check y')
	// 	assert.strictEqual(a.z, 183, 'Check z')
	// })

	test('.applyMatrix4', () => {
		const a = new Vector3(x, y, z)
		const b = new Vector4(x, y, z, 1)

		let m = new Matrix4()
		m.makeRotationX(Math.PI)
		a.applyMatrix4(m)
		b.applyMatrix4(m)
		checkVector(a, b.x / b.w, b.y / b.w, b.z / b.w, 10)

		m = new Matrix4()
		m.makeTranslation(3, 2, 1)
		a.applyMatrix4(m)
		b.applyMatrix4(m)
		checkVector(a, b.x / b.w, b.y / b.w, b.z / b.w, 10)

		m = new Matrix4()
		m.set(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0)
		a.applyMatrix4(m)
		b.applyMatrix4(m)
		checkVector(a, b.x / b.w, b.y / b.w, b.z / b.w, 10)
	})

	// test('applyQuaternion', () => {
	// 	var a = new Vector3(x, y, z)

	// 	a.applyQuaternion(new Quaternion())
	// 	assert.strictEqual(a.x, x, 'Identity rotation: check x')
	// 	assert.strictEqual(a.y, y, 'Identity rotation: check y')
	// 	assert.strictEqual(a.z, z, 'Identity rotation: check z')

	// 	a.applyQuaternion(new Quaternion(x, y, z, w))
	// 	assert.strictEqual(a.x, 108, 'Normal rotation: check x')
	// 	assert.strictEqual(a.y, 162, 'Normal rotation: check y')
	// 	assert.strictEqual(a.z, 216, 'Normal rotation: check z')
	// })

	// todo('project')

	// todo('unproject')

	// test('transformDirection', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var m = new Matrix4()
	// 	var transformed = new Vector3(0.3713906763541037, 0.5570860145311556, 0.7427813527082074)

	// 	a.transformDirection(m)
	// 	assert(Math.abs(a.x - transformed.x) <= eps, 'Check x')
	// 	assert(Math.abs(a.y - transformed.y) <= eps, 'Check y')
	// 	assert(Math.abs(a.z - transformed.z) <= eps, 'Check z')
	// })

	// todo('divide')

	test('.divideScalar', () => {
		const a = new Vector3(1, 2, 3)
		a.divideScalar(2.5)
		checkVector(a, 0.4, 0.8, 1.2, 5)
	})

	test('.min', () => {
		const a = new Vector3(1, 4, 3)
		const b = new Vector3(3, 2, 5)
		a.min(b)
		checkVector(a, 1, 2, 3)
	})

	test('.max', () => {
		const a = new Vector3(1, 4, 3)
		const b = new Vector3(3, 2, 5)
		a.max(b)
		checkVector(a, 3, 4, 5)
	})

	// todo('clamp')

	// test('clampScalar', () => {
	// 	var a = new Vector3(-0.01, 0.5, 1.5)
	// 	var clamped = new Vector3(0.1, 0.5, 1.0)

	// 	a.clampScalar(0.1, 1.0)
	// 	assert(Math.abs(a.x - clamped.x) <= 0.001, 'Check x')
	// 	assert(Math.abs(a.y - clamped.y) <= 0.001, 'Check y')
	// 	assert(Math.abs(a.z - clamped.z) <= 0.001, 'Check z')
	// })

	// todo('clampLength')

	// todo('floor')

	// todo('ceil')

	// todo('round')

	// todo('roundToZero')

	test('negate', () => {
		var a = new Vector3(x, y, z)

		a.negate()
		assert(a.x == -x, 'Passed!')
		assert(a.y == -y, 'Passed!')
		assert(a.z == -z, 'Passed!')
	})

	test('dot', () => {
		const a = new Vector3(x, y, z)
		const b = new Vector3(-x, -y, -z)
		const c = new Vector3()

		let result = a.dot(b)
		// assert(result == -x * x - y * y - z * z, 'Passed!')
		expect<f64>(result).toBe(-x * x - y * y - z * z)

		result = a.dot(c)
		// assert(result == 0, 'Passed!')
		expect<f64>(result).toBe(0)
	})

	// todo('lengthSq')

	test('length', () => {
		const a = new Vector3(1, 2, 3)
		expect<f64>(a.length()).toBeCloseTo(3.74165738677, 11)
	})

	// test('manhattanLength', () => {
	// 	var a = new Vector3(x, 0, 0)
	// 	var b = new Vector3(0, -y, 0)
	// 	var c = new Vector3(0, 0, z)
	// 	var d = new Vector3()

	// 	assert(a.manhattanLength() == x, 'Positive x')
	// 	assert(b.manhattanLength() == y, 'Negative y')
	// 	assert(c.manhattanLength() == z, 'Positive z')
	// 	assert(d.manhattanLength() == 0, 'Empty initialization')

	// 	a.set(x, y, z)
	// 	assert(a.manhattanLength() == Math.abs(x) + Math.abs(y) + Math.abs(z), 'All components')
	// })

	test('normalize', () => {
		const a = new Vector3(x, 0, 0)
		const b = new Vector3(0, -y, 0)
		const c = new Vector3(0, 0, z)

		a.normalize()
		expect<f64>(a.length()).toBe(1)
		expect<f64>(a.x).toBe(1)

		b.normalize()
		expect<f64>(b.length()).toBe(1)
		expect<f64>(b.y).toBe(-1)

		c.normalize()
		expect<f64>(c.length()).toBe(1)
		expect<f64>(c.z).toBe(1)
	})

	// test('setLength', () => {
	// 	var a = new Vector3(x, 0, 0)

	// 	assert(a.length() == x, 'Passed!')
	// 	a.setLength(y)
	// 	assert(a.length() == y, 'Passed!')

	// 	var a = new Vector3(0, 0, 0)
	// 	assert(a.length() == 0, 'Passed!')
	// 	a.setLength(y)
	// 	assert(a.length() == 0, 'Passed!')
	// 	a.setLength()
	// 	assert(isNaN(a.length()), 'Passed!')
	// })

	// todo('lerp')

	// todo('lerpVectors')

	test('cross', () => {
		var a = new Vector3(x, y, z)
		var b = new Vector3(2 * x, -y, 0.5 * z)
		var crossed = new Vector3(18, 12, -18)

		a.cross(b)
		expect<f64>(Math.abs(a.x - crossed.x)).toBeLessThan(eps)
		expect<f64>(Math.abs(a.y - crossed.y)).toBeLessThan(eps)
		expect<f64>(Math.abs(a.z - crossed.z)).toBeLessThan(eps)
	})

	test('crossVectors', () => {
		var a = new Vector3(x, y, z)
		var b = new Vector3(x, -y, z)
		var c = new Vector3()
		var crossed = new Vector3(24, 0, -12)

		c.crossVectors(a, b)
		expect<f64>(Math.abs(c.x - crossed.x)).toBeLessThan(eps)
		expect<f64>(Math.abs(c.y - crossed.y)).toBeLessThan(eps)
		expect<f64>(Math.abs(c.z - crossed.z)).toBeLessThan(eps)
	})

	// test('projectOnVector', () => {
	// 	var a = new Vector3(1, 0, 0)
	// 	var b = new Vector3()
	// 	var normal = new Vector3(10, 0, 0)

	// 	assert(
	// 		b
	// 			.copy(a)
	// 			.projectOnVector(normal)
	// 			.equals(new Vector3(1, 0, 0)),
	// 		'Passed!'
	// 	)

	// 	a.set(0, 1, 0)
	// 	assert(
	// 		b
	// 			.copy(a)
	// 			.projectOnVector(normal)
	// 			.equals(new Vector3(0, 0, 0)),
	// 		'Passed!'
	// 	)

	// 	a.set(0, 0, -1)
	// 	assert(
	// 		b
	// 			.copy(a)
	// 			.projectOnVector(normal)
	// 			.equals(new Vector3(0, 0, 0)),
	// 		'Passed!'
	// 	)

	// 	a.set(-1, 0, 0)
	// 	assert(
	// 		b
	// 			.copy(a)
	// 			.projectOnVector(normal)
	// 			.equals(new Vector3(-1, 0, 0)),
	// 		'Passed!'
	// 	)
	// })

	// test('projectOnPlane', () => {
	// 	var a = new Vector3(1, 0, 0)
	// 	var b = new Vector3()
	// 	var normal = new Vector3(1, 0, 0)

	// 	assert(
	// 		b
	// 			.copy(a)
	// 			.projectOnPlane(normal)
	// 			.equals(new Vector3(0, 0, 0)),
	// 		'Passed!'
	// 	)

	// 	a.set(0, 1, 0)
	// 	assert(
	// 		b
	// 			.copy(a)
	// 			.projectOnPlane(normal)
	// 			.equals(new Vector3(0, 1, 0)),
	// 		'Passed!'
	// 	)

	// 	a.set(0, 0, -1)
	// 	assert(
	// 		b
	// 			.copy(a)
	// 			.projectOnPlane(normal)
	// 			.equals(new Vector3(0, 0, -1)),
	// 		'Passed!'
	// 	)

	// 	a.set(-1, 0, 0)
	// 	assert(
	// 		b
	// 			.copy(a)
	// 			.projectOnPlane(normal)
	// 			.equals(new Vector3(0, 0, 0)),
	// 		'Passed!'
	// 	)
	// })

	// test('reflect', () => {
	// 	var a = new Vector3()
	// 	var normal = new Vector3(0, 1, 0)
	// 	var b = new Vector3()

	// 	a.set(0, -1, 0)
	// 	assert(
	// 		b
	// 			.copy(a)
	// 			.reflect(normal)
	// 			.equals(new Vector3(0, 1, 0)),
	// 		'Passed!'
	// 	)

	// 	a.set(1, -1, 0)
	// 	assert(
	// 		b
	// 			.copy(a)
	// 			.reflect(normal)
	// 			.equals(new Vector3(1, 1, 0)),
	// 		'Passed!'
	// 	)

	// 	a.set(1, -1, 0)
	// 	normal.set(0, -1, 0)
	// 	assert(
	// 		b
	// 			.copy(a)
	// 			.reflect(normal)
	// 			.equals(new Vector3(1, 1, 0)),
	// 		'Passed!'
	// 	)
	// })

	// test('angleTo', () => {
	// 	var a = new Vector3(0, -0.18851655680720186, 0.9820700116639124)
	// 	var b = new Vector3(0, 0.18851655680720186, -0.9820700116639124)

	// 	assert.equal(a.angleTo(a), 0)
	// 	assert.equal(a.angleTo(b), Math.PI)

	// 	var x = new Vector3(1, 0, 0)
	// 	var y = new Vector3(0, 1, 0)
	// 	var z = new Vector3(0, 0, 1)

	// 	assert.equal(x.angleTo(y), Math.PI / 2)
	// 	assert.equal(x.angleTo(z), Math.PI / 2)
	// 	assert.equal(z.angleTo(x), Math.PI / 2)

	// 	assert(Math.abs(x.angleTo(new Vector3(1, 1, 0)) - Math.PI / 4) < 0.0000001)
	// })

	test('distanceToSquared', () => {
		const a = new Vector3(1, 3, 4)
		const b = new Vector3(3, 2, 5)
		expect<f64>(a.distanceToSquared(b)).toBe(6)
	})

	test('distanceTo', () => {
		const a = new Vector3(1, 3, 4)
		const b = new Vector3(3, 2, 5)
		expect<f64>(a.distanceTo(b)).toBeCloseTo(2.449489742783178, 15)
	})

	// todo('manhattanDistanceTo')

	// test('setFromSpherical', () => {
	// 	var a = new Vector3()
	// 	var phi = Math.acos(-0.5)
	// 	var theta = Math.sqrt(Math.PI) * phi
	// 	var sph = new Spherical(10, phi, theta)
	// 	var expected = new Vector3(-4.677914006701843, -5, -7.288149322420796)

	// 	a.setFromSpherical(sph)
	// 	assert(Math.abs(a.x - expected.x) <= eps, 'Check x')
	// 	assert(Math.abs(a.y - expected.y) <= eps, 'Check y')
	// 	assert(Math.abs(a.z - expected.z) <= eps, 'Check z')
	// })

	// test('setFromCylindrical', () => {
	// 	var a = new Vector3()
	// 	var cyl = new Cylindrical(10, Math.PI * 0.125, 20)
	// 	var expected = new Vector3(3.826834323650898, 20, 9.238795325112868)

	// 	a.setFromCylindrical(cyl)
	// 	assert(Math.abs(a.x - expected.x) <= eps, 'Check x')
	// 	assert(Math.abs(a.y - expected.y) <= eps, 'Check y')
	// 	assert(Math.abs(a.z - expected.z) <= eps, 'Check z')
	// })

	test('setFromMatrixPosition', () => {
		const a = new Vector3()
		const m = new Matrix4()
		m.set(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53)

		a.setFromMatrixPosition(m)
		expect<f64>(a.x).toBe(7)
		expect<f64>(a.y).toBe(19)
		expect<f64>(a.z).toBe(37)
	})

	// test('setFromMatrixScale', () => {
	// 	var a = new Vector3()
	// 	var m = new Matrix4().set(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53)
	// 	var expected = new Vector3(25.573423705088842, 31.921779399024736, 35.70714214271425)

	// 	a.setFromMatrixScale(m)
	// 	assert(Math.abs(a.x - expected.x) <= eps, 'Check x')
	// 	assert(Math.abs(a.y - expected.y) <= eps, 'Check y')
	// 	assert(Math.abs(a.z - expected.z) <= eps, 'Check z')
	// })

	test('setFromMatrixColumn', () => {
		var a = new Vector3()
		var m = new Matrix4()
		m.set(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53)

		a.setFromMatrixColumn(m, 0)
		assert(a.x == 2, 'Index 0: check x')
		assert(a.y == 11, 'Index 0: check y')
		assert(a.z == 23, 'Index 0: check z')

		a.setFromMatrixColumn(m, 2)
		assert(a.x == 5, 'Index 2: check x')
		assert(a.y == 17, 'Index 2: check y')
		assert(a.z == 31, 'Index 2: check z')
	})

	test('equals', () => {
		var a = new Vector3(x, 0, z)
		var b = new Vector3(0, -y, 0)

		assert(a.x != b.x, 'Passed!')
		assert(a.y != b.y, 'Passed!')
		assert(a.z != b.z, 'Passed!')

		assert(!a.equals(b), 'Passed!')
		assert(!b.equals(a), 'Passed!')

		a.copy(b)
		assert(a.x == b.x, 'Passed!')
		assert(a.y == b.y, 'Passed!')
		assert(a.z == b.z, 'Passed!')

		assert(a.equals(b), 'Passed!')
		assert(b.equals(a), 'Passed!')
	})

	test('fromArray', () => {
		const a = new Vector3()
		const array: f64[] = [1, 2, 3, 4, 5, 6]

		a.fromArray(array)
		checkVector(a, 1, 2, 3)

		a.fromArray(array, 3)
		checkVector(a, 4, 5, 6)
	})

	test('toArray', () => {
		const a = new Vector3(x, y, z)

		let array = a.toArray()
		// assert.strictEqual(array[0], x, 'No array, no offset: check x')
		// assert.strictEqual(array[1], y, 'No array, no offset: check y')
		// assert.strictEqual(array[2], z, 'No array, no offset: check z')
		expect<f64[]>(array).toStrictEqual([x, y, z])

		array = []
		a.toArray(array)
		// assert.strictEqual(array[0], x, 'With array, no offset: check x')
		// assert.strictEqual(array[1], y, 'With array, no offset: check y')
		// assert.strictEqual(array[2], z, 'With array, no offset: check z')
		expect<f64[]>(array).toStrictEqual([x, y, z])

		array = [100, 0, 0, 0]
		a.toArray(array, 1)
		expect<f64[]>(array).toStrictEqual([100, x, y, z])
	})

	// test('fromBufferAttribute', () => {
	// 	var a = new Vector3()
	// 	var attr = new BufferAttribute(new Float32Array([1, 2, 3, 4, 5, 6]), 3)

	// 	a.fromBufferAttribute(attr, 0)
	// 	assert.strictEqual(a.x, 1, 'Offset 0: check x')
	// 	assert.strictEqual(a.y, 2, 'Offset 0: check y')
	// 	assert.strictEqual(a.z, 3, 'Offset 0: check z')

	// 	a.fromBufferAttribute(attr, 1)
	// 	assert.strictEqual(a.x, 4, 'Offset 1: check x')
	// 	assert.strictEqual(a.y, 5, 'Offset 1: check y')
	// 	assert.strictEqual(a.z, 6, 'Offset 1: check z')
	// })

	// // TODO (Itee) refactor/split
	// test('setX,setY,setZ', () => {
	// 	var a = new Vector3()
	// 	assert(a.x == 0, 'Passed!')
	// 	assert(a.y == 0, 'Passed!')
	// 	assert(a.z == 0, 'Passed!')

	// 	a.setX(x)
	// 	a.setY(y)
	// 	a.setZ(z)

	// 	assert(a.x == x, 'Passed!')
	// 	assert(a.y == y, 'Passed!')
	// 	assert(a.z == z, 'Passed!')
	// })
	// test('setComponent,getComponent', () => {
	// 	var a = new Vector3()
	// 	assert(a.x == 0, 'Passed!')
	// 	assert(a.y == 0, 'Passed!')
	// 	assert(a.z == 0, 'Passed!')

	// 	a.setComponent(0, 1)
	// 	a.setComponent(1, 2)
	// 	a.setComponent(2, 3)
	// 	assert(a.getComponent(0) == 1, 'Passed!')
	// 	assert(a.getComponent(1) == 2, 'Passed!')
	// 	assert(a.getComponent(2) == 3, 'Passed!')
	// })
	// test('setComponent/getComponent exceptions', () => {
	// 	var a = new Vector3()

	// 	assert.throws(
	// 		function() {
	// 			a.setComponent(3, 0)
	// 		},
	// 		/index is out of range/,
	// 		'setComponent with an out of range index throws Error'
	// 	)
	// 	assert.throws(
	// 		function() {
	// 			a.getComponent(3)
	// 		},
	// 		/index is out of range/,
	// 		'getComponent with an out of range index throws Error'
	// 	)
	// })
	// test('min/max/clamp', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var b = new Vector3(-x, -y, -z)
	// 	var c = new Vector3()

	// 	c.copy(a).min(b)
	// 	assert(c.x == -x, 'Passed!')
	// 	assert(c.y == -y, 'Passed!')
	// 	assert(c.z == -z, 'Passed!')

	// 	c.copy(a).max(b)
	// 	assert(c.x == x, 'Passed!')
	// 	assert(c.y == y, 'Passed!')
	// 	assert(c.z == z, 'Passed!')

	// 	c.set(-2 * x, 2 * y, -2 * z)
	// 	c.clamp(b, a)
	// 	assert(c.x == -x, 'Passed!')
	// 	assert(c.y == y, 'Passed!')
	// 	assert(c.z == -z, 'Passed!')
	// })
	// test('distanceTo/distanceToSquared', () => {
	// 	var a = new Vector3(x, 0, 0)
	// 	var b = new Vector3(0, -y, 0)
	// 	var c = new Vector3(0, 0, z)
	// 	var d = new Vector3()

	// 	assert(a.distanceTo(d) == x, 'Passed!')
	// 	assert(a.distanceToSquared(d) == x * x, 'Passed!')

	// 	assert(b.distanceTo(d) == y, 'Passed!')
	// 	assert(b.distanceToSquared(d) == y * y, 'Passed!')

	// 	assert(c.distanceTo(d) == z, 'Passed!')
	// 	assert(c.distanceToSquared(d) == z * z, 'Passed!')
	// })
	// test('setScalar/addScalar/subScalar', () => {
	// 	var a = new Vector3()
	// 	var s = 3

	// 	a.setScalar(s)
	// 	assert.strictEqual(a.x, s, 'setScalar: check x')
	// 	assert.strictEqual(a.y, s, 'setScalar: check y')
	// 	assert.strictEqual(a.z, s, 'setScalar: check z')

	// 	a.addScalar(s)
	// 	assert.strictEqual(a.x, 2 * s, 'addScalar: check x')
	// 	assert.strictEqual(a.y, 2 * s, 'addScalar: check y')
	// 	assert.strictEqual(a.z, 2 * s, 'addScalar: check z')

	// 	a.subScalar(2 * s)
	// 	assert.strictEqual(a.x, 0, 'subScalar: check x')
	// 	assert.strictEqual(a.y, 0, 'subScalar: check y')
	// 	assert.strictEqual(a.z, 0, 'subScalar: check z')
	// })
	// test('multiply/divide', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var b = new Vector3(2 * x, 2 * y, 2 * z)
	// 	var c = new Vector3(4 * x, 4 * y, 4 * z)

	// 	a.multiply(b)
	// 	assert.strictEqual(a.x, x * b.x, 'multiply: check x')
	// 	assert.strictEqual(a.y, y * b.y, 'multiply: check y')
	// 	assert.strictEqual(a.z, z * b.z, 'multiply: check z')

	// 	b.divide(c)
	// 	assert(Math.abs(b.x - 0.5) <= eps, 'divide: check z')
	// 	assert(Math.abs(b.y - 0.5) <= eps, 'divide: check z')
	// 	assert(Math.abs(b.z - 0.5) <= eps, 'divide: check z')
	// })
	// test('multiply/divide', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var b = new Vector3(-x, -y, -z)

	// 	a.multiplyScalar(-2)
	// 	assert(a.x == x * -2, 'Passed!')
	// 	assert(a.y == y * -2, 'Passed!')
	// 	assert(a.z == z * -2, 'Passed!')

	// 	b.multiplyScalar(-2)
	// 	assert(b.x == 2 * x, 'Passed!')
	// 	assert(b.y == 2 * y, 'Passed!')
	// 	assert(b.z == 2 * z, 'Passed!')

	// 	a.divideScalar(-2)
	// 	assert(a.x == x, 'Passed!')
	// 	assert(a.y == y, 'Passed!')
	// 	assert(a.z == z, 'Passed!')

	// 	b.divideScalar(-2)
	// 	assert(b.x == -x, 'Passed!')
	// 	assert(b.y == -y, 'Passed!')
	// 	assert(b.z == -z, 'Passed!')
	// })
	// test('project/unproject', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var camera = new PerspectiveCamera(75, 16 / 9, 0.1, 300.0)
	// 	var projected = new Vector3(-0.36653213611158914, -0.9774190296309043, 1.0506835611870624)

	// 	a.project(camera)
	// 	assert(Math.abs(a.x - projected.x) <= eps, 'project: check x')
	// 	assert(Math.abs(a.y - projected.y) <= eps, 'project: check y')
	// 	assert(Math.abs(a.z - projected.z) <= eps, 'project: check z')

	// 	a.unproject(camera)
	// 	assert(Math.abs(a.x - x) <= eps, 'unproject: check x')
	// 	assert(Math.abs(a.y - y) <= eps, 'unproject: check y')
	// 	assert(Math.abs(a.z - z) <= eps, 'unproject: check z')
	// })
	// test('length/lengthSq', () => {
	// 	var a = new Vector3(x, 0, 0)
	// 	var b = new Vector3(0, -y, 0)
	// 	var c = new Vector3(0, 0, z)
	// 	var d = new Vector3()

	// 	assert(a.length() == x, 'Passed!')
	// 	assert(a.lengthSq() == x * x, 'Passed!')
	// 	assert(b.length() == y, 'Passed!')
	// 	assert(b.lengthSq() == y * y, 'Passed!')
	// 	assert(c.length() == z, 'Passed!')
	// 	assert(c.lengthSq() == z * z, 'Passed!')
	// 	assert(d.length() == 0, 'Passed!')
	// 	assert(d.lengthSq() == 0, 'Passed!')

	// 	a.set(x, y, z)
	// 	assert(a.length() == Math.sqrt(x * x + y * y + z * z), 'Passed!')
	// 	assert(a.lengthSq() == x * x + y * y + z * z, 'Passed!')
	// })
	// test('lerp/clone', () => {
	// 	var a = new Vector3(x, 0, z)
	// 	var b = new Vector3(0, -y, 0)

	// 	assert(a.lerp(a, 0).equals(a.lerp(a, 0.5)), 'Passed!')
	// 	assert(a.lerp(a, 0).equals(a.lerp(a, 1)), 'Passed!')

	// 	assert(
	// 		a
	// 			.clone()
	// 			.lerp(b, 0)
	// 			.equals(a),
	// 		'Passed!'
	// 	)

	// 	assert(a.clone().lerp(b, 0.5).x == x * 0.5, 'Passed!')
	// 	assert(a.clone().lerp(b, 0.5).y == -y * 0.5, 'Passed!')
	// 	assert(a.clone().lerp(b, 0.5).z == z * 0.5, 'Passed!')

	// 	assert(
	// 		a
	// 			.clone()
	// 			.lerp(b, 1)
	// 			.equals(b),
	// 		'Passed!'
	// 	)
	// })
})

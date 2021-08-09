/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */

import { Vector3 } from './Vector3'
import { Vector4 } from './Vector4'
// import {Matrix3} from '../../../../src/math/Matrix3'
import { Matrix4 } from './Matrix4'
// import {Spherical} from '../../../../src/math/Spherical'
// import {Quaternion} from '../../../../src/math/Quaternion'
// import {Euler} from '../../../../src/math/Euler'
// import {Cylindrical} from '../../../../src/math/Cylindrical'
// import {BufferAttribute} from '../../../../src/core/BufferAttribute'
// import {PerspectiveCamera} from '../../../../src/cameras/PerspectiveCamera'
import { x, y, z, w, eps } from './test-constants'

function checkVector(v: Vector3, x: f32, y: f32, z: f32, decimals: i32 = 0): void {
	if (!decimals) {
		expect(v.x).toBe(x)
		expect(v.y).toBe(y)
		expect(v.z).toBe(z)
	} else {
		expect(v.x).toBeCloseTo(x, decimals)
		expect(v.y).toBeCloseTo(y, decimals)
		expect(v.z).toBeCloseTo(z, decimals)
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
		const a = new Vector3(x, y, z)
		const b = new Vector3(-x, -y, -z)

		a.add(b)
		expect(a.x).toBe(0)
		expect(a.y).toBe(0)
		expect(a.z).toBe(0)

		const c = new Vector3()
		c.addVectors(b, b)
		expect(c.x).toBe(-2 * x)
		expect(c.y).toBe(-2 * y)
		expect(c.z).toBe(-2 * z)
	})

	todo('addScalar')

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

	test('sub', () => {
		const a = new Vector3(x, y, z)
		const b = new Vector3(-x, -y, -z)

		a.sub(b)
		expect(a.x).toBe(2 * x)
		expect(a.y).toBe(2 * y)
		expect(a.z).toBe(2 * z)

		const c = new Vector3().subVectors(a, a)
		expect(c.x).toBe(0)
		expect(c.y).toBe(0)
		expect(c.z).toBe(0)
	})

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
	// 	expect(Mathf.abs(a.x - expected.x)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.y - expected.y)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.z - expected.z)).toBeLessThanOrEqual(eps)
	// })

	// test('applyAxisAngle', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var axis = new Vector3(0, 1, 0)
	// 	var angle = Mathf.PI / 4.0
	// 	var expected = new Vector3(3 * Mathf.sqrt(2), 3, Mathf.sqrt(2))

	// 	a.applyAxisAngle(axis, angle)
	// 	expect(Mathf.abs(a.x - expected.x)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.y - expected.y)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.z - expected.z)).toBeLessThanOrEqual(eps)
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
		m.makeRotationX(Mathf.PI)
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

	test('transformDirection', () => {
		const a = new Vector3(x, y, z)
		const m = new Matrix4()
		const transformed = new Vector3(0.3713906763541037, 0.5570860145311556, 0.7427813527082074)

		a.transformDirection(m)
		expect(Mathf.abs(a.x - transformed.x)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.y - transformed.y)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.z - transformed.z)).toBeLessThanOrEqual(eps)
	})

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
	// 	expect(Mathf.abs(a.x - clamped.x)).toBeLessThanOrEqual(0.001)
	// 	expect(Mathf.abs(a.y - clamped.y)).toBeLessThanOrEqual(0.001)
	// 	expect(Mathf.abs(a.z - clamped.z)).toBeLessThanOrEqual(0.001)
	// })

	// todo('clampLength')

	// todo('floor')

	// todo('ceil')

	// todo('round')

	// todo('roundToZero')

	test('negate', () => {
		const a = new Vector3(x, y, z)

		a.negate()
		expect(a.x).toBe(-x)
		expect(a.y).toBe(-y)
		expect(a.z).toBe(-z)
	})

	test('dot', () => {
		const a = new Vector3(x, y, z)
		const b = new Vector3(-x, -y, -z)
		const c = new Vector3()

		let result = a.dot(b)
		// expect(result).toBe(-x * x - y * y - z * z)
		expect(result).toBe(-x * x - y * y - z * z)

		result = a.dot(c)
		// expect(result).toBe(0)
		expect(result).toBe(0)
	})

	// todo('lengthSq')

	test('length', () => {
		const a = new Vector3(1, 2, 3)
		expect(a.length()).toBeCloseTo(3.74165738677, 11)
	})

	// test('manhattanLength', () => {
	// 	var a = new Vector3(x, 0, 0)
	// 	var b = new Vector3(0, -y, 0)
	// 	var c = new Vector3(0, 0, z)
	// 	var d = new Vector3()

	// 	expect(a.manhattanLength()).toBe(x)
	// 	expect(b.manhattanLength()).toBe(y)
	// 	expect(c.manhattanLength()).toBe(z)
	// 	expect(d.manhattanLength()).toBe(0)

	// 	a.set(x, y, z)
	// 	expect(a.manhattanLength()).toBe(Mathf.abs(x) + Mathf.abs(y) + Mathf.abs(z))
	// })

	test('normalize', () => {
		const a = new Vector3(x, 0, 0)
		const b = new Vector3(0, -y, 0)
		const c = new Vector3(0, 0, z)

		a.normalize()
		expect(a.length()).toBe(1)
		expect(a.x).toBe(1)

		b.normalize()
		expect(b.length()).toBe(1)
		expect(b.y).toBe(-1)

		c.normalize()
		expect(c.length()).toBe(1)
		expect(c.z).toBe(1)
	})

	// test('setLength', () => {
	// 	var a = new Vector3(x, 0, 0)

	// 	expect(a.length()).toBe(x)
	// 	a.setLength(y)
	// 	expect(a.length()).toBe(y)

	// 	var a = new Vector3(0, 0, 0)
	// 	expect(a.length()).toBe(0)
	// 	a.setLength(y)
	// 	expect(a.length()).toBe(0)
	// 	a.setLength()
	// 	expect(a.length()).toBeNaN()
	// })

	// todo('lerp')

	// todo('lerpVectors')

	test('cross', () => {
		const a = new Vector3(x, y, z)
		const b = new Vector3(2 * x, -y, f32(0.5 * z))
		const crossed = new Vector3(18, 12, -18)

		a.cross(b)
		expect(Mathf.abs(a.x - crossed.x)).toBeLessThan(eps)
		expect(Mathf.abs(a.y - crossed.y)).toBeLessThan(eps)
		expect(Mathf.abs(a.z - crossed.z)).toBeLessThan(eps)
	})

	test('crossVectors', () => {
		const a = new Vector3(x, y, z)
		const b = new Vector3(x, -y, z)
		const c = new Vector3()
		const crossed = new Vector3(24, 0, -12)

		c.crossVectors(a, b)
		expect(Mathf.abs(c.x - crossed.x)).toBeLessThan(eps)
		expect(Mathf.abs(c.y - crossed.y)).toBeLessThan(eps)
		expect(Mathf.abs(c.z - crossed.z)).toBeLessThan(eps)
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
	// 	assert.equal(a.angleTo(b), Mathf.PI)

	// 	var x = new Vector3(1, 0, 0)
	// 	var y = new Vector3(0, 1, 0)
	// 	var z = new Vector3(0, 0, 1)

	// 	assert.equal(x.angleTo(y), Mathf.PI / 2)
	// 	assert.equal(x.angleTo(z), Mathf.PI / 2)
	// 	assert.equal(z.angleTo(x), Mathf.PI / 2)

	// 	assert(Mathf.abs(x.angleTo(new Vector3(1, 1, 0)) - Mathf.PI / 4) < 0.0000001)
	// })

	test('distanceToSquared', () => {
		const a = new Vector3(1, 3, 4)
		const b = new Vector3(3, 2, 5)
		expect(a.distanceToSquared(b)).toBe(6)
	})

	test('distanceTo', () => {
		const a = new Vector3(1, 3, 4)
		const b = new Vector3(3, 2, 5)
		expect(a.distanceTo(b)).toBeCloseTo(2.449489742783178, 15)
	})

	// todo('manhattanDistanceTo')

	// test('setFromSpherical', () => {
	// 	var a = new Vector3()
	// 	var phi = Mathf.acos(-0.5)
	// 	var theta = Mathf.sqrt(Mathf.PI) * phi
	// 	var sph = new Spherical(10, phi, theta)
	// 	var expected = new Vector3(-4.677914006701843, -5, -7.288149322420796)

	// 	a.setFromSpherical(sph)
	// 	expect(Mathf.abs(a.x - expected.x)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.y - expected.y)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.z - expected.z)).toBeLessThanOrEqual(eps)
	// })

	// test('setFromCylindrical', () => {
	// 	var a = new Vector3()
	// 	var cyl = new Cylindrical(10, Mathf.PI * 0.125, 20)
	// 	var expected = new Vector3(3.826834323650898, 20, 9.238795325112868)

	// 	a.setFromCylindrical(cyl)
	// 	expect(Mathf.abs(a.x - expected.x)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.y - expected.y)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.z - expected.z)).toBeLessThanOrEqual(eps)
	// })

	test('setFromMatrixPosition', () => {
		const a = new Vector3()
		const m = new Matrix4()
		m.set(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53)

		a.setFromMatrixPosition(m)
		expect(a.x).toBe(7)
		expect(a.y).toBe(19)
		expect(a.z).toBe(37)
	})

	// test('setFromMatrixScale', () => {
	// 	var a = new Vector3()
	// 	var m = new Matrix4().set(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53)
	// 	var expected = new Vector3(25.573423705088842, 31.921779399024736, 35.70714214271425)

	// 	a.setFromMatrixScale(m)
	// 	expect(Mathf.abs(a.x - expected.x)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.y - expected.y)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.z - expected.z)).toBeLessThanOrEqual(eps)
	// })

	test('setFromMatrixColumn', () => {
		const a = new Vector3()
		const m = new Matrix4()
		m.set(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53)

		a.setFromMatrixColumn(m, 0)
		expect(a.x).toBe(2)
		expect(a.y).toBe(11)
		expect(a.z).toBe(23)

		a.setFromMatrixColumn(m, 2)
		expect(a.x).toBe(5)
		expect(a.y).toBe(17)
		expect(a.z).toBe(31)
	})

	test('equals', () => {
		const a = new Vector3(x, 0, z)
		const b = new Vector3(0, -y, 0)

		expect(a.x).not.toBe(b.x)
		expect(a.y).not.toBe(b.y)
		expect(a.z).not.toBe(b.z)

		expect(a.equals(b)).toBeFalsy()
		expect(b.equals(a)).toBeFalsy()

		a.copy(b)
		expect(a.x).toBe(b.x)
		expect(a.y).toBe(b.y)
		expect(a.z).toBe(b.z)

		expect(a.equals(b)).toBeTruthy()
		expect(b.equals(a)).toBeTruthy()
	})

	test('fromArray', () => {
		const a = new Vector3()
		const array: f32[] = [1, 2, 3, 4, 5, 6]

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
		expect(array).toStrictEqual([x, y, z])

		array = []
		a.toArray(array)
		// assert.strictEqual(array[0], x, 'With array, no offset: check x')
		// assert.strictEqual(array[1], y, 'With array, no offset: check y')
		// assert.strictEqual(array[2], z, 'With array, no offset: check z')
		expect(array).toStrictEqual([x, y, z])

		array = [100, 0, 0, 0]
		a.toArray(array, 1)
		expect(array).toStrictEqual([100, x, y, z])
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
	// 	expect(a.x).toBe(0)
	// 	expect(a.y).toBe(0)
	// 	expect(a.z).toBe(0)

	// 	a.setX(x)
	// 	a.setY(y)
	// 	a.setZ(z)

	// 	expect(a.x).toBe(x)
	// 	expect(a.y).toBe(y)
	// 	expect(a.z).toBe(z)
	// })
	// test('setComponent,getComponent', () => {
	// 	var a = new Vector3()
	// 	expect(a.x).toBe(0)
	// 	expect(a.y).toBe(0)
	// 	expect(a.z).toBe(0)

	// 	a.setComponent(0, 1)
	// 	a.setComponent(1, 2)
	// 	a.setComponent(2, 3)
	// 	expect(a.getComponent(0)).toBe(1)
	// 	expect(a.getComponent(1)).toBe(2)
	// 	expect(a.getComponent(2)).toBe(3)
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
	// 	expect(c.x).toBe(-x)
	// 	expect(c.y).toBe(-y)
	// 	expect(c.z).toBe(-z)

	// 	c.copy(a).max(b)
	// 	expect(c.x).toBe(x)
	// 	expect(c.y).toBe(y)
	// 	expect(c.z).toBe(z)

	// 	c.set(-2 * x, 2 * y, -2 * z)
	// 	c.clamp(b, a)
	// 	expect(c.x).toBe(-x)
	// 	expect(c.y).toBe(y)
	// 	expect(c.z).toBe(-z)
	// })
	// test('distanceTo/distanceToSquared', () => {
	// 	var a = new Vector3(x, 0, 0)
	// 	var b = new Vector3(0, -y, 0)
	// 	var c = new Vector3(0, 0, z)
	// 	var d = new Vector3()

	// 	expect(a.distanceTo(d)).toBe(x)
	// 	expect(a.distanceToSquared(d)).toBe(x * x)

	// 	expect(b.distanceTo(d)).toBe(y)
	// 	expect(b.distanceToSquared(d)).toBe(y * y)

	// 	expect(c.distanceTo(d)).toBe(z)
	// 	expect(c.distanceToSquared(d)).toBe(z * z)
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
	// 	expect(Mathf.abs(b.x - 0.5)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(b.y - 0.5)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(b.z - 0.5)).toBeLessThanOrEqual(eps)
	// })
	// test('multiply/divide', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var b = new Vector3(-x, -y, -z)

	// 	a.multiplyScalar(-2)
	// 	expect(a.x).toBe(x * -2)
	// 	expect(a.y).toBe(y * -2)
	// 	expect(a.z).toBe(z * -2)

	// 	b.multiplyScalar(-2)
	// 	expect(b.x).toBe(2 * x)
	// 	expect(b.y).toBe(2 * y)
	// 	expect(b.z).toBe(2 * z)

	// 	a.divideScalar(-2)
	// 	expect(a.x).toBe(x)
	// 	expect(a.y).toBe(y)
	// 	expect(a.z).toBe(z)

	// 	b.divideScalar(-2)
	// 	expect(b.x).toBe(-x)
	// 	expect(b.y).toBe(-y)
	// 	expect(b.z).toBe(-z)
	// })
	// test('project/unproject', () => {
	// 	var a = new Vector3(x, y, z)
	// 	var camera = new PerspectiveCamera(75, 16 / 9, 0.1, 300.0)
	// 	var projected = new Vector3(-0.36653213611158914, -0.9774190296309043, 1.0506835611870624)

	// 	a.project(camera)
	// 	expect(Mathf.abs(a.x - projected.x)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.y - projected.y)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.z - projected.z)).toBeLessThanOrEqual(eps)

	// 	a.unproject(camera)
	// 	expect(Mathf.abs(a.x - x)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.y - y)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.z - z)).toBeLessThanOrEqual(eps)
	// })
	// test('length/lengthSq', () => {
	// 	var a = new Vector3(x, 0, 0)
	// 	var b = new Vector3(0, -y, 0)
	// 	var c = new Vector3(0, 0, z)
	// 	var d = new Vector3()

	// 	expect(a.length()).toBe(x)
	// 	expect(a.lengthSq()).toBe(x * x)
	// 	expect(b.length()).toBe(y)
	// 	expect(b.lengthSq()).toBe(y * y)
	// 	expect(c.length()).toBe(z)
	// 	expect(c.lengthSq()).toBe(z * z)
	// 	expect(d.length()).toBe(0)
	// 	expect(d.lengthSq()).toBe(0)

	// 	a.set(x, y, z)
	// 	expect(a.length()).toBe(Mathf.sqrt(x * x + y * y + z * z))
	// 	expect(a.lengthSq()).toBe(x * x + y * y + z * z)
	// })
	// test('lerp/clone', () => {
	// 	var a = new Vector3(x, 0, z)
	// 	var b = new Vector3(0, -y, 0)

	// 	expect(a.lerp(a, 0).equals(a.lerp(a, 0.5))).toBeTruthy()
	// 	expect(a.lerp(a, 0).equals(a.lerp(a, 1))).toBeTruthy()

	// 	assert(
	// 		a
	// 			.clone()
	// 			.lerp(b, 0)
	// 			.equals(a),
	// 		'Passed!'
	// 	)

	// 	expect(a.clone().lerp(b, 0.5).x).toBe(x * 0.5)
	// 	expect(a.clone().lerp(b, 0.5).y).toBe(-y * 0.5)
	// 	expect(a.clone().lerp(b, 0.5).z).toBe(z * 0.5)

	// 	assert(
	// 		a
	// 			.clone()
	// 			.lerp(b, 1)
	// 			.equals(b),
	// 		'Passed!'
	// 	)
	// })
})

/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */
import {Vector4} from './Vector4'
import {Matrix4} from './Matrix4'
// import {BufferAttribute} from '../core/BufferAttribute'
import {x, y, z, w, eps} from './test-constants'

describe('Vector4', () => {
	// INSTANCING
	test('constructor', () => {
		var a = new Vector4()
		expect(a.x).toBe(0)
		expect(a.y).toBe(0)
		expect(a.z).toBe(0)
		expect(a.w).toBe(1)

		a = new Vector4(x, y, z, w)
		expect(a.x).toBe(x)
		expect(a.y).toBe(y)
		expect(a.z).toBe(z)
		expect(a.w).toBe(w)
	})

	// PUBLIC STUFF
	todo('isVector4')

	test('set', () => {
		var a = new Vector4()
		expect(a.x).toBe(0)
		expect(a.y).toBe(0)
		expect(a.z).toBe(0)
		expect(a.w).toBe(1)

		a.set(x, y, z, w)
		expect(a.x).toBe(x)
		expect(a.y).toBe(y)
		expect(a.z).toBe(z)
		expect(a.w).toBe(w)
	})

	todo('setScalar')
	todo('setX')
	todo('setY')
	todo('setZ')
	todo('setW')
	todo('setComponent')
	todo('getComponent')
	todo('clone')

	test('copy', () => {
		var a = new Vector4(x, y, z, w)
		var b = new Vector4()
		b.copy(a)
		expect(b.x).toBe(x)
		expect(b.y).toBe(y)
		expect(b.z).toBe(z)
		expect(b.w).toBe(w)

		// ensure that it is a true copy
		a.x = 0
		a.y = -1
		a.z = -2
		a.w = -3
		expect(b.x).toBe(x)
		expect(b.y).toBe(y)
		expect(b.z).toBe(z)
		expect(b.w).toBe(w)
	})

	// test('add', () => {
	// 	var a = new Vector4(x, y, z, w)
	// 	var b = new Vector4(-x, -y, -z, -w)

	// 	a.add(b)
	// 	expect(a.x).toBe(0)
	// 	expect(a.y).toBe(0)
	// 	expect(a.z).toBe(0)
	// 	expect(a.w).toBe(0)

	// 	var c = new Vector4().addVectors(b, b)
	// 	expect(c.x).toBe(-2 * x)
	// 	expect(c.y).toBe(-2 * y)
	// 	expect(c.z).toBe(-2 * z)
	// 	expect(c.w).toBe(-2 * w)
	// })

	todo('addScalar')
	todo('addVectors')

	// test('addScaledVector', () => {
	// 	var a = new Vector4(x, y, z, w)
	// 	var b = new Vector4(6, 7, 8, 9)
	// 	var s = 3

	// 	a.addScaledVector(b, s)
	// 	assert.strictEqual(a.x, x + b.x * s, 'Check x')
	// 	assert.strictEqual(a.y, y + b.y * s, 'Check y')
	// 	assert.strictEqual(a.z, z + b.z * s, 'Check z')
	// 	assert.strictEqual(a.w, w + b.w * s, 'Check w')
	// })

	// test('sub', () => {
	// 	var a = new Vector4(x, y, z, w)
	// 	var b = new Vector4(-x, -y, -z, -w)

	// 	a.sub(b)
	// 	expect(a.x).toBe(2 * x)
	// 	expect(a.y).toBe(2 * y)
	// 	expect(a.z).toBe(2 * z)
	// 	expect(a.w).toBe(2 * w)

	// 	var c = new Vector4().subVectors(a, a)
	// 	expect(c.x).toBe(0)
	// 	expect(c.y).toBe(0)
	// 	expect(c.z).toBe(0)
	// 	expect(c.w).toBe(0)
	// })

	todo('subScalar')
	todo('subVectors')
	todo('multiplyScalar')

	test('applyMatrix4', () => {
		var a = new Vector4(x, y, z, w)
		var m = new Matrix4()
		m.makeRotationX(Mathf.PI)
		var expected = new Vector4(2, -3, -4, 5)

		a.applyMatrix4(m)
		expect(Mathf.abs(a.x - expected.x)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.y - expected.y)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.z - expected.z)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.w - expected.w)).toBeLessThanOrEqual(eps)

		a.set(x, y, z, w)
		m.makeTranslation(5, 7, 11)
		expected.set(27, 38, 59, 5)

		a.applyMatrix4(m)
		expect(Mathf.abs(a.x - expected.x)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.y - expected.y)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.z - expected.z)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.w - expected.w)).toBeLessThanOrEqual(eps)

		a.set(x, y, z, w)
		m.set(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0)
		expected.set(2, 3, 4, 4)

		a.applyMatrix4(m)
		expect(Mathf.abs(a.x - expected.x)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.y - expected.y)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.z - expected.z)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.w - expected.w)).toBeLessThanOrEqual(eps)

		a.set(x, y, z, w)
		m.set(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53)
		expected.set(68, 224, 442, 664)

		a.applyMatrix4(m)
		expect(Mathf.abs(a.x - expected.x)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.y - expected.y)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.z - expected.z)).toBeLessThanOrEqual(eps)
		expect(Mathf.abs(a.w - expected.w)).toBeLessThanOrEqual(eps)
	})

	todo('divideScalar')
	todo('setAxisAngleFromQuaternion')
	todo('setAxisAngleFromRotationMatrix')
	todo('min')
	todo('max')
	todo('clamp')

	// test('clampScalar', () => {
	// 	var a = new Vector4(-0.1, 0.01, 0.5, 1.5)
	// 	var clamped = new Vector4(0.1, 0.1, 0.5, 1.0)

	// 	a.clampScalar(0.1, 1.0)
	// 	expect(Mathf.abs(a.x - clamped.x)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.y - clamped.y)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.z - clamped.z)).toBeLessThanOrEqual(eps)
	// 	expect(Mathf.abs(a.w - clamped.w)).toBeLessThanOrEqual(eps)
	// })

	todo('clampLength')
	todo('floor')
	todo('ceil')
	todo('round')
	todo('roundToZero')

	// test('negate', () => {
	// 	var a = new Vector4(x, y, z, w)

	// 	a.negate()
	// 	expect(a.x).toBe(-x)
	// 	expect(a.y).toBe(-y)
	// 	expect(a.z).toBe(-z)
	// 	expect(a.w).toBe(-w)
	// })

	// test('dot', () => {
	// 	var a = new Vector4(x, y, z, w)
	// 	var b = new Vector4(-x, -y, -z, -w)
	// 	var c = new Vector4(0, 0, 0, 0)

	// 	var result = a.dot(b)
	// 	expect(result).toBe(-x * x - y * y - z * z - w * w)

	// 	var result = a.dot(c)
	// 	expect(result).toBe(0)
	// })

	todo('lengthSq')
	todo('length')

	// test('manhattanLength', () => {
	// 	var a = new Vector4(x, 0, 0, 0)
	// 	var b = new Vector4(0, -y, 0, 0)
	// 	var c = new Vector4(0, 0, z, 0)
	// 	var d = new Vector4(0, 0, 0, w)
	// 	var e = new Vector4(0, 0, 0, 0)

	// 	expect(a.manhattanLength()).toBe(x)
	// 	expect(b.manhattanLength()).toBe(y)
	// 	expect(c.manhattanLength()).toBe(z)
	// 	expect(d.manhattanLength()).toBe(w)
	// 	expect(e.manhattanLength()).toBe(0)

	// 	a.set(x, y, z, w)
	// 	expect(a.manhattanLength()).toBe(Mathf.abs(x) + Mathf.abs(y) + Mathf.abs(z) + Mathf.abs(w))
	// })

	// test('normalize', () => {
	// 	var a = new Vector4(x, 0, 0, 0)
	// 	var b = new Vector4(0, -y, 0, 0)
	// 	var c = new Vector4(0, 0, z, 0)
	// 	var d = new Vector4(0, 0, 0, -w)

	// 	a.normalize()
	// 	expect(a.length()).toBe(1)
	// 	expect(a.x).toBe(1)

	// 	b.normalize()
	// 	expect(b.length()).toBe(1)
	// 	expect(b.y).toBe(-1)

	// 	c.normalize()
	// 	expect(c.length()).toBe(1)
	// 	expect(c.z).toBe(1)

	// 	d.normalize()
	// 	expect(d.length()).toBe(1)
	// 	expect(d.w).toBe(-1)
	// })

	// test('setLength', () => {
	// 	var a = new Vector4(x, 0, 0, 0)

	// 	expect(a.length()).toBe(x)
	// 	a.setLength(y)
	// 	expect(a.length()).toBe(y)

	// 	var a = new Vector4(0, 0, 0, 0)
	// 	expect(a.length()).toBe(0)
	// 	a.setLength(y)
	// 	expect(a.length()).toBe(0)
	// 	a.setLength()
	// 	expect(a.length()).toBeNaN()
	// })

	todo('lerp')
	todo('lerpVectors')

	test('equals', () => {
		var a = new Vector4(x, 0, z, 0)
		var b = new Vector4(0, -y, 0, -w)

		expect(a.x).not.toBe(b.x)
		expect(a.y).not.toBe(b.y)
		expect(a.z).not.toBe(b.z)
		expect(a.w).not.toBe(b.w)

		expect(a.equals(b)).toBeFalsy()
		expect(b.equals(a)).toBeFalsy()

		a.copy(b)
		expect(a.x).toBe(b.x)
		expect(a.y).toBe(b.y)
		expect(a.z).toBe(b.z)
		expect(a.w).toBe(b.w)

		expect(a.equals(b)).toBeTruthy()
		expect(b.equals(a)).toBeTruthy()
	})

	// test('fromArray', () => {
	// 	var a = new Vector4()
	// 	var array = [1, 2, 3, 4, 5, 6, 7, 8]

	// 	a.fromArray(array)
	// 	assert.strictEqual(a.x, 1, 'No offset: check x')
	// 	assert.strictEqual(a.y, 2, 'No offset: check y')
	// 	assert.strictEqual(a.z, 3, 'No offset: check z')
	// 	assert.strictEqual(a.w, 4, 'No offset: check w')

	// 	a.fromArray(array, 4)
	// 	assert.strictEqual(a.x, 5, 'With offset: check x')
	// 	assert.strictEqual(a.y, 6, 'With offset: check y')
	// 	assert.strictEqual(a.z, 7, 'With offset: check z')
	// 	assert.strictEqual(a.w, 8, 'With offset: check w')
	// })

	// test('toArray', () => {
	// 	var a = new Vector4(x, y, z, w)

	// 	var array = a.toArray()
	// 	assert.strictEqual(array[0], x, 'No array, no offset: check x')
	// 	assert.strictEqual(array[1], y, 'No array, no offset: check y')
	// 	assert.strictEqual(array[2], z, 'No array, no offset: check z')
	// 	assert.strictEqual(array[3], w, 'No array, no offset: check w')

	// 	var array = []
	// 	a.toArray(array)
	// 	assert.strictEqual(array[0], x, 'With array, no offset: check x')
	// 	assert.strictEqual(array[1], y, 'With array, no offset: check y')
	// 	assert.strictEqual(array[2], z, 'With array, no offset: check z')
	// 	assert.strictEqual(array[3], w, 'With array, no offset: check w')

	// 	var array = []
	// 	a.toArray(array, 1)
	// 	assert.strictEqual(array[0], undefined, 'With array and offset: check [0]')
	// 	assert.strictEqual(array[1], x, 'With array and offset: check x')
	// 	assert.strictEqual(array[2], y, 'With array and offset: check y')
	// 	assert.strictEqual(array[3], z, 'With array and offset: check z')
	// 	assert.strictEqual(array[4], w, 'With array and offset: check w')
	// })

	// test('fromBufferAttribute', () => {
	// 	var a = new Vector4()
	// 	var attr = new BufferAttribute(new Float32Array([1, 2, 3, 4, 5, 6, 7, 8]), 4)

	// 	a.fromBufferAttribute(attr, 0)
	// 	assert.strictEqual(a.x, 1, 'Offset 0: check x')
	// 	assert.strictEqual(a.y, 2, 'Offset 0: check y')
	// 	assert.strictEqual(a.z, 3, 'Offset 0: check z')
	// 	assert.strictEqual(a.w, 4, 'Offset 0: check w')

	// 	a.fromBufferAttribute(attr, 1)
	// 	assert.strictEqual(a.x, 5, 'Offset 1: check x')
	// 	assert.strictEqual(a.y, 6, 'Offset 1: check y')
	// 	assert.strictEqual(a.z, 7, 'Offset 1: check z')
	// 	assert.strictEqual(a.w, 8, 'Offset 1: check w')
	// })

	// // TODO (Itee) refactor/split
	// test('setX,setY,setZ,setW', () => {
	// 	var a = new Vector4()
	// 	expect(a.x).toBe(0)
	// 	expect(a.y).toBe(0)
	// 	expect(a.z).toBe(0)
	// 	expect(a.w).toBe(1)

	// 	a.setX(x)
	// 	a.setY(y)
	// 	a.setZ(z)
	// 	a.setW(w)

	// 	expect(a.x).toBe(x)
	// 	expect(a.y).toBe(y)
	// 	expect(a.z).toBe(z)
	// 	expect(a.w).toBe(w)
	// })
	// test('setComponent,getComponent', () => {
	// 	var a = new Vector4()
	// 	expect(a.x).toBe(0)
	// 	expect(a.y).toBe(0)
	// 	expect(a.z).toBe(0)
	// 	expect(a.w).toBe(1)

	// 	a.setComponent(0, 1)
	// 	a.setComponent(1, 2)
	// 	a.setComponent(2, 3)
	// 	a.setComponent(3, 4)
	// 	expect(a.getComponent(0)).toBe(1)
	// 	expect(a.getComponent(1)).toBe(2)
	// 	expect(a.getComponent(2)).toBe(3)
	// 	expect(a.getComponent(3)).toBe(4)
	// })
	// test('setComponent/getComponent exceptions', () => {
	// 	var a = new Vector4()

	// 	assert.throws(
	// 		function() {
	// 			a.setComponent(4, 0)
	// 		},
	// 		/index is out of range/,
	// 		'setComponent with an out of range index throws Error'
	// 	)
	// 	assert.throws(
	// 		function() {
	// 			a.getComponent(4)
	// 		},
	// 		/index is out of range/,
	// 		'getComponent with an out of range index throws Error'
	// 	)
	// })
	// test('setScalar/addScalar/subScalar', () => {
	// 	var a = new Vector4()
	// 	var s = 3

	// 	a.setScalar(s)
	// 	assert.strictEqual(a.x, s, 'setScalar: check x')
	// 	assert.strictEqual(a.y, s, 'setScalar: check y')
	// 	assert.strictEqual(a.z, s, 'setScalar: check z')
	// 	assert.strictEqual(a.w, s, 'setScalar: check w')

	// 	a.addScalar(s)
	// 	assert.strictEqual(a.x, 2 * s, 'addScalar: check x')
	// 	assert.strictEqual(a.y, 2 * s, 'addScalar: check y')
	// 	assert.strictEqual(a.z, 2 * s, 'addScalar: check z')
	// 	assert.strictEqual(a.w, 2 * s, 'addScalar: check w')

	// 	a.subScalar(2 * s)
	// 	assert.strictEqual(a.x, 0, 'subScalar: check x')
	// 	assert.strictEqual(a.y, 0, 'subScalar: check y')
	// 	assert.strictEqual(a.z, 0, 'subScalar: check z')
	// 	assert.strictEqual(a.w, 0, 'subScalar: check w')
	// })
	// test('multiply/divide', () => {
	// 	var a = new Vector4(x, y, z, w)
	// 	var b = new Vector4(-x, -y, -z, -w)

	// 	a.multiplyScalar(-2)
	// 	expect(a.x).toBe(x * -2)
	// 	expect(a.y).toBe(y * -2)
	// 	expect(a.z).toBe(z * -2)
	// 	expect(a.w).toBe(w * -2)

	// 	b.multiplyScalar(-2)
	// 	expect(b.x).toBe(2 * x)
	// 	expect(b.y).toBe(2 * y)
	// 	expect(b.z).toBe(2 * z)
	// 	expect(b.w).toBe(2 * w)

	// 	a.divideScalar(-2)
	// 	expect(a.x).toBe(x)
	// 	expect(a.y).toBe(y)
	// 	expect(a.z).toBe(z)
	// 	expect(a.w).toBe(w)

	// 	b.divideScalar(-2)
	// 	expect(b.x).toBe(-x)
	// 	expect(b.y).toBe(-y)
	// 	expect(b.z).toBe(-z)
	// 	expect(b.w).toBe(-w)
	// })
	// test('min/max/clamp', () => {
	// 	var a = new Vector4(x, y, z, w)
	// 	var b = new Vector4(-x, -y, -z, -w)
	// 	var c = new Vector4()

	// 	c.copy(a).min(b)
	// 	expect(c.x).toBe(-x)
	// 	expect(c.y).toBe(-y)
	// 	expect(c.z).toBe(-z)
	// 	expect(c.w).toBe(-w)

	// 	c.copy(a).max(b)
	// 	expect(c.x).toBe(x)
	// 	expect(c.y).toBe(y)
	// 	expect(c.z).toBe(z)
	// 	expect(c.w).toBe(w)

	// 	c.set(-2 * x, 2 * y, -2 * z, 2 * w)
	// 	c.clamp(b, a)
	// 	expect(c.x).toBe(-x)
	// 	expect(c.y).toBe(y)
	// 	expect(c.z).toBe(-z)
	// 	expect(c.w).toBe(w)
	// })
	// test('length/lengthSq', () => {
	// 	var a = new Vector4(x, 0, 0, 0)
	// 	var b = new Vector4(0, -y, 0, 0)
	// 	var c = new Vector4(0, 0, z, 0)
	// 	var d = new Vector4(0, 0, 0, w)
	// 	var e = new Vector4(0, 0, 0, 0)

	// 	expect(a.length()).toBe(x)
	// 	expect(a.lengthSq()).toBe(x * x)
	// 	expect(b.length()).toBe(y)
	// 	expect(b.lengthSq()).toBe(y * y)
	// 	expect(c.length()).toBe(z)
	// 	expect(c.lengthSq()).toBe(z * z)
	// 	expect(d.length()).toBe(w)
	// 	expect(d.lengthSq()).toBe(w * w)
	// 	expect(e.length()).toBe(0)
	// 	expect(e.lengthSq()).toBe(0)

	// 	a.set(x, y, z, w)
	// 	expect(a.length()).toBe(Mathf.sqrt(x * x + y * y + z * z + w * w))
	// 	expect(a.lengthSq()).toBe(x * x + y * y + z * z + w * w)
	// })
	// test('lerp/clone', () => {
	// 	var a = new Vector4(x, 0, z, 0)
	// 	var b = new Vector4(0, -y, 0, -w)

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
	// 	expect(a.clone().lerp(b, 0.5).w).toBe(-w * 0.5)

	// 	assert(
	// 		a
	// 			.clone()
	// 			.lerp(b, 1)
	// 			.equals(b),
	// 		'Passed!'
	// 	)
	// })
})

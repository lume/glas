/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */
import {Vector4} from './Vector4'
import {Matrix4} from './Matrix4'
// import {BufferAttribute} from '../core/BufferAttribute'
import {x, y, z, w, eps} from './Constants.tests'

describe('Vector4', () => {
	// INSTANCING
	test('constructor', () => {
		var a = new Vector4()
		assert(a.x == 0, 'Passed!')
		assert(a.y == 0, 'Passed!')
		assert(a.z == 0, 'Passed!')
		assert(a.w == 1, 'Passed!')

		a = new Vector4(x, y, z, w)
		assert(a.x === x, 'Passed!')
		assert(a.y === y, 'Passed!')
		assert(a.z === z, 'Passed!')
		assert(a.w === w, 'Passed!')
	})

	// PUBLIC STUFF
	todo('isVector4')

	test('set', () => {
		var a = new Vector4()
		assert(a.x == 0, 'Passed!')
		assert(a.y == 0, 'Passed!')
		assert(a.z == 0, 'Passed!')
		assert(a.w == 1, 'Passed!')

		a.set(x, y, z, w)
		assert(a.x == x, 'Passed!')
		assert(a.y == y, 'Passed!')
		assert(a.z == z, 'Passed!')
		assert(a.w == w, 'Passed!')
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
		assert(b.x == x, 'Passed!')
		assert(b.y == y, 'Passed!')
		assert(b.z == z, 'Passed!')
		assert(b.w == w, 'Passed!')

		// ensure that it is a true copy
		a.x = 0
		a.y = -1
		a.z = -2
		a.w = -3
		assert(b.x == x, 'Passed!')
		assert(b.y == y, 'Passed!')
		assert(b.z == z, 'Passed!')
		assert(b.w == w, 'Passed!')
	})

	// test('add', () => {
	// 	var a = new Vector4(x, y, z, w)
	// 	var b = new Vector4(-x, -y, -z, -w)

	// 	a.add(b)
	// 	assert(a.x == 0, 'Passed!')
	// 	assert(a.y == 0, 'Passed!')
	// 	assert(a.z == 0, 'Passed!')
	// 	assert(a.w == 0, 'Passed!')

	// 	var c = new Vector4().addVectors(b, b)
	// 	assert(c.x == -2 * x, 'Passed!')
	// 	assert(c.y == -2 * y, 'Passed!')
	// 	assert(c.z == -2 * z, 'Passed!')
	// 	assert(c.w == -2 * w, 'Passed!')
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
	// 	assert(a.x == 2 * x, 'Passed!')
	// 	assert(a.y == 2 * y, 'Passed!')
	// 	assert(a.z == 2 * z, 'Passed!')
	// 	assert(a.w == 2 * w, 'Passed!')

	// 	var c = new Vector4().subVectors(a, a)
	// 	assert(c.x == 0, 'Passed!')
	// 	assert(c.y == 0, 'Passed!')
	// 	assert(c.z == 0, 'Passed!')
	// 	assert(c.w == 0, 'Passed!')
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
		assert(Mathf.abs(a.x - expected.x) <= eps, 'Rotation matrix: check x')
		assert(Mathf.abs(a.y - expected.y) <= eps, 'Rotation matrix: check y')
		assert(Mathf.abs(a.z - expected.z) <= eps, 'Rotation matrix: check z')
		assert(Mathf.abs(a.w - expected.w) <= eps, 'Rotation matrix: check w')

		a.set(x, y, z, w)
		m.makeTranslation(5, 7, 11)
		expected.set(27, 38, 59, 5)

		a.applyMatrix4(m)
		assert(Mathf.abs(a.x - expected.x) <= eps, 'Translation matrix: check x')
		assert(Mathf.abs(a.y - expected.y) <= eps, 'Translation matrix: check y')
		assert(Mathf.abs(a.z - expected.z) <= eps, 'Translation matrix: check z')
		assert(Mathf.abs(a.w - expected.w) <= eps, 'Translation matrix: check w')

		a.set(x, y, z, w)
		m.set(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0)
		expected.set(2, 3, 4, 4)

		a.applyMatrix4(m)
		assert(Mathf.abs(a.x - expected.x) <= eps, 'Custom matrix: check x')
		assert(Mathf.abs(a.y - expected.y) <= eps, 'Custom matrix: check y')
		assert(Mathf.abs(a.z - expected.z) <= eps, 'Custom matrix: check z')
		assert(Mathf.abs(a.w - expected.w) <= eps, 'Custom matrix: check w')

		a.set(x, y, z, w)
		m.set(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53)
		expected.set(68, 224, 442, 664)

		a.applyMatrix4(m)
		assert(Mathf.abs(a.x - expected.x) <= eps, 'Bogus matrix: check x')
		assert(Mathf.abs(a.y - expected.y) <= eps, 'Bogus matrix: check y')
		assert(Mathf.abs(a.z - expected.z) <= eps, 'Bogus matrix: check z')
		assert(Mathf.abs(a.w - expected.w) <= eps, 'Bogus matrix: check w')
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
	// 	assert(Mathf.abs(a.x - clamped.x) <= eps, 'Check x')
	// 	assert(Mathf.abs(a.y - clamped.y) <= eps, 'Check y')
	// 	assert(Mathf.abs(a.z - clamped.z) <= eps, 'Check z')
	// 	assert(Mathf.abs(a.w - clamped.w) <= eps, 'Check w')
	// })

	todo('clampLength')
	todo('floor')
	todo('ceil')
	todo('round')
	todo('roundToZero')

	// test('negate', () => {
	// 	var a = new Vector4(x, y, z, w)

	// 	a.negate()
	// 	assert(a.x == -x, 'Passed!')
	// 	assert(a.y == -y, 'Passed!')
	// 	assert(a.z == -z, 'Passed!')
	// 	assert(a.w == -w, 'Passed!')
	// })

	// test('dot', () => {
	// 	var a = new Vector4(x, y, z, w)
	// 	var b = new Vector4(-x, -y, -z, -w)
	// 	var c = new Vector4(0, 0, 0, 0)

	// 	var result = a.dot(b)
	// 	assert(result == -x * x - y * y - z * z - w * w, 'Passed!')

	// 	var result = a.dot(c)
	// 	assert(result == 0, 'Passed!')
	// })

	todo('lengthSq')
	todo('length')

	// test('manhattanLength', () => {
	// 	var a = new Vector4(x, 0, 0, 0)
	// 	var b = new Vector4(0, -y, 0, 0)
	// 	var c = new Vector4(0, 0, z, 0)
	// 	var d = new Vector4(0, 0, 0, w)
	// 	var e = new Vector4(0, 0, 0, 0)

	// 	assert(a.manhattanLength() == x, 'Positive x')
	// 	assert(b.manhattanLength() == y, 'Negative y')
	// 	assert(c.manhattanLength() == z, 'Positive z')
	// 	assert(d.manhattanLength() == w, 'Positive w')
	// 	assert(e.manhattanLength() == 0, 'Empty initialization')

	// 	a.set(x, y, z, w)
	// 	assert(a.manhattanLength() == Mathf.abs(x) + Mathf.abs(y) + Mathf.abs(z) + Mathf.abs(w), 'All components')
	// })

	// test('normalize', () => {
	// 	var a = new Vector4(x, 0, 0, 0)
	// 	var b = new Vector4(0, -y, 0, 0)
	// 	var c = new Vector4(0, 0, z, 0)
	// 	var d = new Vector4(0, 0, 0, -w)

	// 	a.normalize()
	// 	assert(a.length() == 1, 'Passed!')
	// 	assert(a.x == 1, 'Passed!')

	// 	b.normalize()
	// 	assert(b.length() == 1, 'Passed!')
	// 	assert(b.y == -1, 'Passed!')

	// 	c.normalize()
	// 	assert(c.length() == 1, 'Passed!')
	// 	assert(c.z == 1, 'Passed!')

	// 	d.normalize()
	// 	assert(d.length() == 1, 'Passed!')
	// 	assert(d.w == -1, 'Passed!')
	// })

	// test('setLength', () => {
	// 	var a = new Vector4(x, 0, 0, 0)

	// 	assert(a.length() == x, 'Passed!')
	// 	a.setLength(y)
	// 	assert(a.length() == y, 'Passed!')

	// 	var a = new Vector4(0, 0, 0, 0)
	// 	assert(a.length() == 0, 'Passed!')
	// 	a.setLength(y)
	// 	assert(a.length() == 0, 'Passed!')
	// 	a.setLength()
	// 	assert(isNaN(a.length()), 'Passed!')
	// })

	todo('lerp')
	todo('lerpVectors')

	test('equals', () => {
		var a = new Vector4(x, 0, z, 0)
		var b = new Vector4(0, -y, 0, -w)

		assert(a.x != b.x, 'Passed!')
		assert(a.y != b.y, 'Passed!')
		assert(a.z != b.z, 'Passed!')
		assert(a.w != b.w, 'Passed!')

		assert(!a.equals(b), 'Passed!')
		assert(!b.equals(a), 'Passed!')

		a.copy(b)
		assert(a.x == b.x, 'Passed!')
		assert(a.y == b.y, 'Passed!')
		assert(a.z == b.z, 'Passed!')
		assert(a.w == b.w, 'Passed!')

		assert(a.equals(b), 'Passed!')
		assert(b.equals(a), 'Passed!')
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
	// 	assert(a.x == 0, 'Passed!')
	// 	assert(a.y == 0, 'Passed!')
	// 	assert(a.z == 0, 'Passed!')
	// 	assert(a.w == 1, 'Passed!')

	// 	a.setX(x)
	// 	a.setY(y)
	// 	a.setZ(z)
	// 	a.setW(w)

	// 	assert(a.x == x, 'Passed!')
	// 	assert(a.y == y, 'Passed!')
	// 	assert(a.z == z, 'Passed!')
	// 	assert(a.w == w, 'Passed!')
	// })
	// test('setComponent,getComponent', () => {
	// 	var a = new Vector4()
	// 	assert(a.x == 0, 'Passed!')
	// 	assert(a.y == 0, 'Passed!')
	// 	assert(a.z == 0, 'Passed!')
	// 	assert(a.w == 1, 'Passed!')

	// 	a.setComponent(0, 1)
	// 	a.setComponent(1, 2)
	// 	a.setComponent(2, 3)
	// 	a.setComponent(3, 4)
	// 	assert(a.getComponent(0) == 1, 'Passed!')
	// 	assert(a.getComponent(1) == 2, 'Passed!')
	// 	assert(a.getComponent(2) == 3, 'Passed!')
	// 	assert(a.getComponent(3) == 4, 'Passed!')
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
	// 	assert(a.x == x * -2, 'Passed!')
	// 	assert(a.y == y * -2, 'Passed!')
	// 	assert(a.z == z * -2, 'Passed!')
	// 	assert(a.w == w * -2, 'Passed!')

	// 	b.multiplyScalar(-2)
	// 	assert(b.x == 2 * x, 'Passed!')
	// 	assert(b.y == 2 * y, 'Passed!')
	// 	assert(b.z == 2 * z, 'Passed!')
	// 	assert(b.w == 2 * w, 'Passed!')

	// 	a.divideScalar(-2)
	// 	assert(a.x == x, 'Passed!')
	// 	assert(a.y == y, 'Passed!')
	// 	assert(a.z == z, 'Passed!')
	// 	assert(a.w == w, 'Passed!')

	// 	b.divideScalar(-2)
	// 	assert(b.x == -x, 'Passed!')
	// 	assert(b.y == -y, 'Passed!')
	// 	assert(b.z == -z, 'Passed!')
	// 	assert(b.w == -w, 'Passed!')
	// })
	// test('min/max/clamp', () => {
	// 	var a = new Vector4(x, y, z, w)
	// 	var b = new Vector4(-x, -y, -z, -w)
	// 	var c = new Vector4()

	// 	c.copy(a).min(b)
	// 	assert(c.x == -x, 'Passed!')
	// 	assert(c.y == -y, 'Passed!')
	// 	assert(c.z == -z, 'Passed!')
	// 	assert(c.w == -w, 'Passed!')

	// 	c.copy(a).max(b)
	// 	assert(c.x == x, 'Passed!')
	// 	assert(c.y == y, 'Passed!')
	// 	assert(c.z == z, 'Passed!')
	// 	assert(c.w == w, 'Passed!')

	// 	c.set(-2 * x, 2 * y, -2 * z, 2 * w)
	// 	c.clamp(b, a)
	// 	assert(c.x == -x, 'Passed!')
	// 	assert(c.y == y, 'Passed!')
	// 	assert(c.z == -z, 'Passed!')
	// 	assert(c.w == w, 'Passed!')
	// })
	// test('length/lengthSq', () => {
	// 	var a = new Vector4(x, 0, 0, 0)
	// 	var b = new Vector4(0, -y, 0, 0)
	// 	var c = new Vector4(0, 0, z, 0)
	// 	var d = new Vector4(0, 0, 0, w)
	// 	var e = new Vector4(0, 0, 0, 0)

	// 	assert(a.length() == x, 'Passed!')
	// 	assert(a.lengthSq() == x * x, 'Passed!')
	// 	assert(b.length() == y, 'Passed!')
	// 	assert(b.lengthSq() == y * y, 'Passed!')
	// 	assert(c.length() == z, 'Passed!')
	// 	assert(c.lengthSq() == z * z, 'Passed!')
	// 	assert(d.length() == w, 'Passed!')
	// 	assert(d.lengthSq() == w * w, 'Passed!')
	// 	assert(e.length() == 0, 'Passed!')
	// 	assert(e.lengthSq() == 0, 'Passed!')

	// 	a.set(x, y, z, w)
	// 	assert(a.length() == Mathf.sqrt(x * x + y * y + z * z + w * w), 'Passed!')
	// 	assert(a.lengthSq() == x * x + y * y + z * z + w * w, 'Passed!')
	// })
	// test('lerp/clone', () => {
	// 	var a = new Vector4(x, 0, z, 0)
	// 	var b = new Vector4(0, -y, 0, -w)

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
	// 	assert(a.clone().lerp(b, 0.5).w == -w * 0.5, 'Passed!')

	// 	assert(
	// 		a
	// 			.clone()
	// 			.lerp(b, 1)
	// 			.equals(b),
	// 		'Passed!'
	// 	)
	// })
})

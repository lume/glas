/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / https://github.com/trusktr
 */
import {Euler, EulerRotationOrder, eulerEquals} from './Euler'
import {Matrix4, matrixEquals4} from './Matrix4'
import {Quaternion, quatEquals} from './Quaternion'
import {Vector3} from './Vector3'
import {x, y, z} from './Constants.tests'

const eulerZero = new Euler(0, 0, 0, EulerRotationOrder.XYZ)
const eulerAxyz = new Euler(1, 0, 0, EulerRotationOrder.XYZ)
const eulerAzyx = new Euler(0, 1, 0, EulerRotationOrder.ZYX)

let calls: i32 = 0
let succeedCalls: i32 = 0
let failCalls: i32 = 0

describe('Euler', () => {
	// INSTANCING
	test('Instancing', () => {
		var a = new Euler()
		assert(a.equals(eulerZero), 'Passed!')
		assert(!a.equals(eulerAxyz), 'Passed!')
		assert(!a.equals(eulerAzyx), 'Passed!')
	})

	// STATIC STUFF
	todo('RotationOrders')

	todo('DefaultOrder')

	// PROPERTIES STUFF
	todo('x')

	todo('y')

	todo('z')

	todo('order')

	// PUBLIC STUFF
	todo('isEuler')

	test('set/setFromVector3/toVector3', () => {
		var a = new Euler()

		a.set(0, 1, 0, EulerRotationOrder.ZYX)
		assert(a.equals(eulerAzyx), 'Passed!')
		assert(!a.equals(eulerAxyz), 'Passed!')
		assert(!a.equals(eulerZero), 'Passed!')

		var vec = new Vector3(0, 1, 0)

		var b = new Euler()
		b.setFromVector3(vec, EulerRotationOrder.ZYX)
		assert(a.equals(b), 'Passed!')

		var c = b.toVector3()
		assert(c.equals(vec), 'Passed!')
	})

	test('clone/copy/equals', () => {
		var a = eulerAxyz.clone()
		assert(a.equals(eulerAxyz), 'Passed!')
		assert(!a.equals(eulerZero), 'Passed!')
		assert(!a.equals(eulerAzyx), 'Passed!')

		a.copy(eulerAzyx)
		assert(a.equals(eulerAzyx), 'Passed!')
		assert(!a.equals(eulerAxyz), 'Passed!')
		assert(!a.equals(eulerZero), 'Passed!')
	})

	test('Quaternion.setFromEuler/Euler.fromQuaternion', () => {
		var testValues: Array<Euler> = [eulerZero, eulerAxyz, eulerAzyx]
		for (var i = 0; i < testValues.length; i++) {
			var v = testValues[i]
			var q = new Quaternion()
			q.setFromEuler(v)

			var v2 = new Euler()
			v2.setFromQuaternion(q, v.order)
			var q2 = new Quaternion()
			q2.setFromEuler(v2)
			assert(quatEquals(q, q2), 'Passed!')
		}
	})

	test('Matrix4.setFromEuler/Euler.fromRotationMatrix', () => {
		var testValues: Array<Euler> = [eulerZero, eulerAxyz, eulerAzyx]
		for (var i = 0; i < testValues.length; i++) {
			var v = testValues[i]
			var m = new Matrix4()
			m.makeRotationFromEuler(v)

			var v2 = new Euler()
			v2.setFromRotationMatrix(m, v.order)
			var m2 = new Matrix4()
			m2.makeRotationFromEuler(v2)
			assert(matrixEquals4(m, m2, 0.0001), 'Passed!')
		}
	})

	todo('reorder')
	// test('reorder', () => {
	// 	var testValues: Array<Euler> = [eulerZero, eulerAxyz, eulerAzyx]
	// 	for (var i = 0; i < testValues.length; i++) {
	// 		var v = testValues[i]
	// 		var q = new Quaternion().setFromEuler(v)

	// 		v.reorder('YZX')
	// 		var q2 = new Quaternion().setFromEuler(v)
	// 		assert(quatEquals(q, q2), 'Passed!')

	// 		v.reorder('ZXY')
	// 		var q3 = new Quaternion().setFromEuler(v)
	// 		assert(quatEquals(q, q3), 'Passed!')
	// 	}
	// })

	test('set/get properties, check callbacks', () => {
		var a = new Euler()
		calls = 0
		a.onChange(function() {
			calls++
		})

		a.x = 1
		a.y = 2
		a.z = 3
		a.order = EulerRotationOrder.ZYX

		assert(a.x == 1, 'get: check x')
		assert(a.y == 2, 'get: check y')
		assert(a.z == 3, 'get: check z')
		assert(a.order == EulerRotationOrder.ZYX, 'get: check order')

		assert(calls == 4, 'set: onChange called expected number of times')
	})

	test('clone/copy, check callbacks', () => {
		var a = new Euler(1, 2, 3, EulerRotationOrder.ZXY)
		var b = new Euler(4, 5, 6, EulerRotationOrder.XZY)
		succeedCalls = 0
		const cbSucceed = (): void => {
			succeedCalls++
			assert(true, 'it should be called')
		}
		failCalls = 0
		const cbFail = (): void => {
			failCalls++
			assert(false, 'this should not happen')
		}
		a.onChange(cbFail)
		b.onChange(cbFail)

		// clone doesn't trigger onChange
		a = b.clone()
		assert(a.equals(b), 'clone: check if a equals b')

		// copy triggers onChange once
		a = new Euler(1, 2, 3, EulerRotationOrder.ZXY)
		a.onChange(cbSucceed)
		a.copy(b)
		assert(a.equals(b), 'copy: check if a equals b')
		assert(succeedCalls == 1, 'onChange called')
		assert(failCalls == 0, 'onChange called')
	})

	todo('toArray')
	// test('toArray', () => {
	// 	var order = 'YXZ'
	// 	var a = new Euler(x, y, z, order)

	// 	var array = a.toArray()
	// 	assert.strictEqual(array[0], x, 'No array, no offset: check x')
	// 	assert.strictEqual(array[1], y, 'No array, no offset: check y')
	// 	assert.strictEqual(array[2], z, 'No array, no offset: check z')
	// 	assert.strictEqual(array[3], order, 'No array, no offset: check order')

	// 	var array = []
	// 	a.toArray(array)
	// 	assert.strictEqual(array[0], x, 'With array, no offset: check x')
	// 	assert.strictEqual(array[1], y, 'With array, no offset: check y')
	// 	assert.strictEqual(array[2], z, 'With array, no offset: check z')
	// 	assert.strictEqual(array[3], order, 'With array, no offset: check order')

	// 	var array = []
	// 	a.toArray(array, 1)
	// 	assert.strictEqual(array[0], undefined, 'With array and offset: check [0]')
	// 	assert.strictEqual(array[1], x, 'With array and offset: check x')
	// 	assert.strictEqual(array[2], y, 'With array and offset: check y')
	// 	assert.strictEqual(array[3], z, 'With array and offset: check z')
	// 	assert.strictEqual(array[4], order, 'With array and offset: check order')
	// })

	todo('fromArray')
	// test('fromArray', () => {
	// 	var a = new Euler()
	// 	var array = [x, y, z]
	// 	var cb = function() {
	// 		assert.step('onChange called')
	// 	}
	// 	a.onChange(cb)

	// 	a.fromArray(array)
	// 	assert.strictEqual(a.x, x, 'No order: check x')
	// 	assert.strictEqual(a.y, y, 'No order: check y')
	// 	assert.strictEqual(a.z, z, 'No order: check z')
	// 	assert.strictEqual(a.order, 'XYZ', 'No order: check order')

	// 	a = new Euler()
	// 	array = [x, y, z, 'ZXY']
	// 	a.onChange(cb)
	// 	a.fromArray(array)
	// 	assert.strictEqual(a.x, x, 'With order: check x')
	// 	assert.strictEqual(a.y, y, 'With order: check y')
	// 	assert.strictEqual(a.z, z, 'With order: check z')
	// 	assert.strictEqual(a.order, 'ZXY', 'With order: check order')

	// 	assert.verifySteps(Array(2).fill('onChange called'))
	// })

	todo('onChange')

	todo('onChangeCallback')

	// OTHERS
	todo('gimbalLocalQuat')
	// test('gimbalLocalQuat', () => {
	// 	// known problematic quaternions
	// 	var q1 = new Quaternion(0.5207769385244341, -0.4783214164122354, 0.520776938524434, 0.47832141641223547)
	// 	var q2 = new Quaternion(0.11284905712620674, 0.6980437630368944, -0.11284905712620674, 0.6980437630368944)

	// 	var eulerOrder = 'ZYX'

	// 	// create Euler directly from a Quaternion
	// 	var eViaQ1 = new Euler().setFromQuaternion(q1, eulerOrder) // there is likely a bug here

	// 	// create Euler from Quaternion via an intermediate Matrix4
	// 	var mViaQ1 = new Matrix4().makeRotationFromQuaternion(q1)
	// 	var eViaMViaQ1 = new Euler().setFromRotationMatrix(mViaQ1, eulerOrder)

	// 	// the results here are different
	// 	assert(eulerEquals(eViaQ1, eViaMViaQ1), 'Passed!') // this result is correct
	// })
})

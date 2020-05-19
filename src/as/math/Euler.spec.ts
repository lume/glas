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
		expect(a.equals(eulerZero)).toBeTruthy()
		expect(a.equals(eulerAxyz)).toBeFalsy()
		expect(a.equals(eulerAzyx)).toBeFalsy()
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
		expect(a.equals(eulerAzyx)).toBeTruthy()
		expect(a.equals(eulerAxyz)).toBeFalsy()
		expect(a.equals(eulerZero)).toBeFalsy()

		var vec = new Vector3(0, 1, 0)

		var b = new Euler()
		b.setFromVector3(vec, EulerRotationOrder.ZYX)
		expect(a.equals(b)).toBeTruthy()

		var c = b.toVector3()
		expect(c.equals(vec)).toBeTruthy()
	})

	test('clone/copy/equals', () => {
		var a = eulerAxyz.clone()
		expect(a.equals(eulerAxyz)).toBeTruthy()
		expect(a.equals(eulerZero)).toBeFalsy()
		expect(a.equals(eulerAzyx)).toBeFalsy()

		a.copy(eulerAzyx)
		expect(a.equals(eulerAzyx)).toBeTruthy()
		expect(a.equals(eulerAxyz)).toBeFalsy()
		expect(a.equals(eulerZero)).toBeFalsy()
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
			expect(quatEquals(q, q2)).toBeTruthy()
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
			expect(matrixEquals4(m, m2, 0.0001)).toBeTruthy();
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
	// 		expect(quatEquals(q, q2)).toBeTruthy()

	// 		v.reorder('ZXY')
	// 		var q3 = new Quaternion().setFromEuler(v)
	// 		expect(quatEquals(q, q3)).toBeTruthy()
	// 	}
	// })

	test('set/get properties, check callbacks', () => {
		var a = new Euler()
		calls = 0
		a.onChange(function () {
			calls++
		})

		a.x = 1
		a.y = 2
		a.z = 3
		a.order = EulerRotationOrder.ZYX

		expect(a.x).toBe(1)
		expect(a.y).toBe(2)
		expect(a.z).toBe(3)
		expect(a.order).toBe(EulerRotationOrder.ZYX)

		expect(calls).toBe(4)
	})

	test('clone/copy, check callbacks', () => {
		var a = new Euler(1, 2, 3, EulerRotationOrder.ZXY)
		var b = new Euler(4, 5, 6, EulerRotationOrder.XZY)
		succeedCalls = 0
		const cbSucceed = (): void => {
			succeedCalls++
		}
		failCalls = 0
		const cbFail = (): void => {
			failCalls++
			abort("fails");
			unreachable();
		}
		a.onChange(cbFail)
		b.onChange(cbFail)

		// clone doesn't trigger onChange
		a = b.clone()
		expect(a.equals(b)).toBeTruthy();

		// copy triggers onChange once
		a = new Euler(1, 2, 3, EulerRotationOrder.ZXY)
		a.onChange(cbSucceed)
		a.copy(b)
		expect(a.equals(b)).toBeTruthy();
		expect(succeedCalls).toBe(1)
		expect(failCalls).toBe(0)
	})

	todo('toArray')
	// test('toArray', () => {
	// 	var order = 'YXZ'
	// 	var a = new Euler(x, y, z, order)

	// 	var array = a.toArray()
	// 	expect(array[0]).toBe(x)
	// 	expect(array[1]).toBe(y)
	// 	expect(array[2]).toBe(z)
	// 	expect(array[3]).toBe(order)

	// 	var array = []
	// 	a.toArray(array)
	// 	expect(array[0].toBe(x)
	// 	expect(array[1].toBe(y)
	// 	expect(array[2].toBe(z)
	// 	expect(array[3].toBe(order)

	// 	var array = []
	// 	a.toArray(array, 1)
	// 	expect(array[0].toBe(undefined)
	// 	expect(array[1].toBe(x)
	// 	expect(array[2].toBe(y)
	// 	expect(array[3].toBe(z)
	// 	expect(array[4].toBe(order)
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

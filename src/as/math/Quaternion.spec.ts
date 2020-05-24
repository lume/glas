/**
 * @author bhouston / http://exocortex.com
 * @author tschw
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */

import {Quaternion} from './Quaternion'
import {Vector3} from './Vector3'
// import {Vector4} from './Vector4'
import {Euler, EulerRotationOrder} from './Euler'
// import {Matrix4} from './Matrix4'
import {x, y, z, w, eps} from './Constants.tests'
import {Matrix4} from './Matrix4'

const orders: EulerRotationOrder[] = [0, 1, 2, 3, 4, 5]
let changeCount = 0

const eulerAngles = new Euler(0.1, -0.3, 0.25)

function qSub(a: Quaternion, b: Quaternion): Quaternion {
	var result = new Quaternion()
	result.copy(a)

	result.x -= b.x
	result.y -= b.y
	result.z -= b.z
	result.w -= b.w

	return result
}

// function doSlerpObject(aArr, bArr, t) {
// 	var a = new Quaternion().fromArray(aArr),
// 		b = new Quaternion().fromArray(bArr),
// 		c = new Quaternion().fromArray(aArr)

// 	c.slerp(b, t)

// 	return {
// 		equals: function(x, y, z, w, maxError) {
// 			if (maxError === undefined) maxError = Number.EPSILON

// 			return (
// 				Mathf.abs(x - c.x) <= maxError &&
// 				Mathf.abs(y - c.y) <= maxError &&
// 				Mathf.abs(z - c.z) <= maxError &&
// 				Mathf.abs(w - c.w) <= maxError
// 			)
// 		},

// 		length: c.length(),

// 		dotA: c.dot(a),
// 		dotB: c.dot(b),
// 	}
// }

// function doSlerpArray(a, b, t) {
// 	var result = [0, 0, 0, 0]

// 	Quaternion.slerpFlat(result, 0, a, 0, b, 0, t)

// 	function arrDot(a, b) {
// 		return a[0] * b[0] + a[1] * b[1] + a[2] * b[2] + a[3] * b[3]
// 	}

// 	return {
// 		equals: function(x, y, z, w, maxError) {
// 			if (maxError === undefined) maxError = Number.EPSILON

// 			return (
// 				Mathf.abs(x - result[0]) <= maxError &&
// 				Mathf.abs(y - result[1]) <= maxError &&
// 				Mathf.abs(z - result[2]) <= maxError &&
// 				Mathf.abs(w - result[3]) <= maxError
// 			)
// 		},

// 		length: Mathf.sqrt(arrDot(result, result)),

// 		dotA: arrDot(result, a),
// 		dotB: arrDot(result, b),
// 	}
// }

// function slerpTestSkeleton(doSlerp, maxError, assert) {
// 	var a, b, result

// 	a = [0.6753410084407496, 0.4087830051091744, 0.32856700410659473, 0.5185120064806223]

// 	b = [0.6602792107657797, 0.43647413932562285, 0.35119011210236006, 0.5001871596632682]

// 	var maxNormError = 0

// 	function isNormal(result) {
// 		var normError = Mathf.abs(1 - result.length)
// 		maxNormError = Mathf.max(maxNormError, normError)
// 		return normError <= maxError
// 	}

// 	result = doSlerp(a, b, 0)
// 	assert.ok(result.equals(a[0], a[1], a[2], a[3], 0), 'Exactly A @ t = 0')

// 	result = doSlerp(a, b, 1)
// 	assert.ok(result.equals(b[0], b[1], b[2], b[3], 0), 'Exactly B @ t = 1')

// 	result = doSlerp(a, b, 0.5)
// 	assert.ok(Mathf.abs(result.dotA - result.dotB) <= Number.EPSILON, 'Symmetry at 0.5')
// 	assert.ok(isNormal(result), 'Approximately normal (at 0.5)')

// 	result = doSlerp(a, b, 0.25)
// 	assert.ok(result.dotA > result.dotB, 'Interpolating at 0.25')
// 	assert.ok(isNormal(result), 'Approximately normal (at 0.25)')

// 	result = doSlerp(a, b, 0.75)
// 	assert.ok(result.dotA < result.dotB, 'Interpolating at 0.75')
// 	assert.ok(isNormal(result), 'Approximately normal (at 0.75)')

// 	var D = Mathf.SQRT1_2

// 	result = doSlerp([1, 0, 0, 0], [0, 0, 1, 0], 0.5)
// 	assert.ok(result.equals(D, 0, D, 0), 'X/Z diagonal from axes')
// 	assert.ok(isNormal(result), 'Approximately normal (X/Z diagonal)')

// 	result = doSlerp([0, D, 0, D], [0, -D, 0, D], 0.5)
// 	assert.ok(result.equals(0, 0, 0, 1), 'W-Unit from diagonals')
// 	assert.ok(isNormal(result), 'Approximately normal (W-Unit)')
// }

function changeEulerOrder(euler: Euler, order: EulerRotationOrder): Euler {
	return new Euler(euler.x, euler.y, euler.z, order)
}

describe('Quaternion', () => {
	// INSTANCING
	describe('.constructor', () => {
		it('creates new Quaternions', () => {
			let a = new Quaternion()
			checkQuaternion(a, 0, 0, 0, 1)

			a = new Quaternion(x, y, z, w)
			checkQuaternion(a, x, y, z, w)
		})
	})

	// // STATIC STUFF
	// describe('slerp', assert => {
	// 	slerpTestSkeleton(doSlerpObject, Number.EPSILON, assert)
	// })

	// describe('slerpFlat', assert => {
	// 	slerpTestSkeleton(doSlerpArray, Number.EPSILON, assert)
	// })

	describe('.onChange and property setters/getters', () => {
		it('handles change events', () => {
			const expectedChangeCount = 4
			// assert.expect(8)

			var a = new Quaternion()
			a.onChange(function (): void {
				changeCount++
			})

			a.x = x
			a.y = y
			a.z = z
			a.w = w

			expect(changeCount).toBe(expectedChangeCount)

			expect(a.x).toBe(x)
			expect(a.y).toBe(y)
			expect(a.z).toBe(z)
			expect(a.w).toBe(w)
		})
	})

	// QUnit.todo('x', assert => {
	// 	assert.ok(false, "everything's gonna be alright")
	// })

	// QUnit.todo('y', assert => {
	// 	assert.ok(false, "everything's gonna be alright")
	// })

	// QUnit.todo('z', assert => {
	// 	assert.ok(false, "everything's gonna be alright")
	// })

	// QUnit.todo('w', assert => {
	// 	assert.ok(false, "everything's gonna be alright")
	// })

	// // PUBLIC STUFF
	// describe('set', assert => {
	// 	var a = new Quaternion()
	// 	assert.ok(a.x == 0, 'Passed!')
	// 	assert.ok(a.y == 0, 'Passed!')
	// 	assert.ok(a.z == 0, 'Passed!')
	// 	assert.ok(a.w == 1, 'Passed!')

	// 	a.set(x, y, z, w)
	// 	assert.ok(a.x == x, 'Passed!')
	// 	assert.ok(a.y == y, 'Passed!')
	// 	assert.ok(a.z === z, 'Passed!')
	// 	assert.ok(a.w === w, 'Passed!')
	// })

	// QUnit.todo('clone', assert => {
	// 	assert.ok(false, "everything's gonna be alright")
	// })

	describe('copy', () => {
		var a = new Quaternion(x, y, z, w)
		var b = new Quaternion()
		b.copy(a)
		expect(b.x).toBe(x)
		expect(b.y).toBe(y)
		expect(b.z).toBe(z)
		expect(b.w).toBe(w)

		// ensure that it is a true copy
		a.x = 0
		a.y = -1
		a.z = 0
		a.w = -1
		expect(b.x).toBe(x)
		expect(b.y).toBe(y)
	})

	describe('.setFromEuler/.setFromQuaternion', () => {
		it('sets from a Euler', () => {
			const angles: Vector3[] = [new Vector3(1, 0, 0), new Vector3(0, 1, 0), new Vector3(0, 0, 1)]

			// ensure euler conversion to/from Quaternion matches.
			for (let i = 0; i < orders.length; i++) {
				for (let j = 0; j < angles.length; j++) {
					const eulers2 = new Euler()
					const quaternion = new Quaternion()
					eulers2.setFromQuaternion(
						quaternion.setFromEuler(new Euler(angles[j].x, angles[j].y, angles[j].z, orders[i])),
						orders[i]
					)
					const newAngle = new Vector3(eulers2.x, eulers2.y, eulers2.z)
					expect(newAngle.distanceTo(angles[j]) < 0.001).toBe(true)
				}
			}
		})
	})

	// describe('setFromAxisAngle', assert => {
	// 	// TODO: find cases to validate.
	// 	// assert.ok( true, "Passed!" );

	// 	var zero = new Quaternion()

	// 	var a = new Quaternion().setFromAxisAngle(new Vector3(1, 0, 0), 0)
	// 	assert.ok(a.equals(zero), 'Passed!')
	// 	a = new Quaternion().setFromAxisAngle(new Vector3(0, 1, 0), 0)
	// 	assert.ok(a.equals(zero), 'Passed!')
	// 	a = new Quaternion().setFromAxisAngle(new Vector3(0, 0, 1), 0)
	// 	assert.ok(a.equals(zero), 'Passed!')

	// 	var b1 = new Quaternion().setFromAxisAngle(new Vector3(1, 0, 0), Mathf.PI)
	// 	assert.ok(!a.equals(b1), 'Passed!')
	// 	var b2 = new Quaternion().setFromAxisAngle(new Vector3(1, 0, 0), -Mathf.PI)
	// 	assert.ok(!a.equals(b2), 'Passed!')

	// 	b1.multiply(b2)
	// 	assert.ok(a.equals(b1), 'Passed!')
	// })

	describe('setFromEuler/setFromRotationMatrix', () => {
		// ensure euler conversion for Quaternion matches that of Matrix4
		for (var i = 0; i < orders.length; i++) {
			var q = new Quaternion()
			q.setFromEuler(changeEulerOrder(eulerAngles, orders[i]))
			var m = new Matrix4()
			m.makeRotationFromEuler(changeEulerOrder(eulerAngles, orders[i]))
			var q2 = new Quaternion()
			q2.setFromRotationMatrix(m)

			expect(qSub(q, q2).length()).toBeLessThanOrEqual(0.001)
		}
	})

	// describe('setFromRotationMatrix', assert => {
	// 	// contrived examples purely to please the god of code coverage...
	// 	// match conditions in various 'else [if]' blocks

	// 	var a = new Quaternion()
	// 	var q = new Quaternion(-9, -2, 3, -4).normalize()
	// 	var m = new Matrix4().makeRotationFromQuaternion(q)
	// 	var expected = new Vector4(0.8581163303210332, 0.19069251784911848, -0.2860387767736777, 0.38138503569823695)

	// 	a.setFromRotationMatrix(m)
	// 	assert.ok(Mathf.abs(a.x - expected.x) <= eps, 'm11 > m22 && m11 > m33: check x')
	// 	assert.ok(Mathf.abs(a.y - expected.y) <= eps, 'm11 > m22 && m11 > m33: check y')
	// 	assert.ok(Mathf.abs(a.z - expected.z) <= eps, 'm11 > m22 && m11 > m33: check z')
	// 	assert.ok(Mathf.abs(a.w - expected.w) <= eps, 'm11 > m22 && m11 > m33: check w')

	// 	var q = new Quaternion(-1, -2, 1, -1).normalize()
	// 	m.makeRotationFromQuaternion(q)
	// 	var expected = new Vector4(0.37796447300922714, 0.7559289460184544, -0.37796447300922714, 0.37796447300922714)

	// 	a.setFromRotationMatrix(m)
	// 	assert.ok(Mathf.abs(a.x - expected.x) <= eps, 'm22 > m33: check x')
	// 	assert.ok(Mathf.abs(a.y - expected.y) <= eps, 'm22 > m33: check y')
	// 	assert.ok(Mathf.abs(a.z - expected.z) <= eps, 'm22 > m33: check z')
	// 	assert.ok(Mathf.abs(a.w - expected.w) <= eps, 'm22 > m33: check w')
	// })

	// describe('setFromUnitVectors', assert => {
	// 	var a = new Quaternion()
	// 	var b = new Vector3(1, 0, 0)
	// 	var c = new Vector3(0, 1, 0)
	// 	var expected = new Quaternion(0, 0, Mathf.sqrt(2) / 2, Mathf.sqrt(2) / 2)

	// 	a.setFromUnitVectors(b, c)
	// 	assert.ok(Mathf.abs(a.x - expected.x) <= eps, 'Check x')
	// 	assert.ok(Mathf.abs(a.y - expected.y) <= eps, 'Check y')
	// 	assert.ok(Mathf.abs(a.z - expected.z) <= eps, 'Check z')
	// 	assert.ok(Mathf.abs(a.w - expected.w) <= eps, 'Check w')
	// })

	// describe('angleTo', assert => {
	// 	var a = new Quaternion()
	// 	var b = new Quaternion().setFromEuler(new Euler(0, Mathf.PI, 0))
	// 	var c = new Quaternion().setFromEuler(new Euler(0, Mathf.PI * 2, 0))

	// 	assert.ok(a.angleTo(a) === 0, 'Passed!')
	// 	assert.ok(a.angleTo(b) === Mathf.PI, 'Passed!')
	// 	assert.ok(a.angleTo(c) === 0, 'Passed!')
	// })

	// describe('rotateTowards', assert => {
	// 	var a = new Quaternion()
	// 	var b = new Quaternion().setFromEuler(new Euler(0, Mathf.PI, 0))
	// 	var c = new Quaternion()

	// 	var halfPI = Mathf.PI * 0.5

	// 	a.rotateTowards(b, 0)
	// 	assert.ok(a.equals(a) === true, 'Passed!')

	// 	a.rotateTowards(b, Mathf.PI * 2) // test overshoot
	// 	assert.ok(a.equals(b) === true, 'Passed!')

	// 	a.set(0, 0, 0, 1)
	// 	a.rotateTowards(b, halfPI)
	// 	assert.ok(a.angleTo(c) - halfPI <= eps, 'Passed!')
	// })

	// describe('inverse/conjugate', assert => {
	// 	var a = new Quaternion(x, y, z, w)

	// 	// TODO: add better validation here.

	// 	var b = a.clone().conjugate()

	// 	assert.ok(a.x == -b.x, 'Passed!')
	// 	assert.ok(a.y == -b.y, 'Passed!')
	// 	assert.ok(a.z == -b.z, 'Passed!')
	// 	assert.ok(a.w == b.w, 'Passed!')
	// })

	// QUnit.todo('dot', assert => {
	// 	assert.ok(false, "everything's gonna be alright")
	// })

	// describe('normalize/length/lengthSq', assert => {
	// 	var a = new Quaternion(x, y, z, w)

	// 	assert.ok(a.length() != 1, 'Passed!')
	// 	assert.ok(a.lengthSq() != 1, 'Passed!')
	// 	a.normalize()
	// 	assert.ok(a.length() == 1, 'Passed!')
	// 	assert.ok(a.lengthSq() == 1, 'Passed!')

	// 	a.set(0, 0, 0, 0)
	// 	assert.ok(a.lengthSq() == 0, 'Passed!')
	// 	assert.ok(a.length() == 0, 'Passed!')
	// 	a.normalize()
	// 	assert.ok(a.lengthSq() == 1, 'Passed!')
	// 	assert.ok(a.length() == 1, 'Passed!')
	// })

	// describe('multiplyQuaternions/multiply', assert => {
	// 	var angles = [new Euler(1, 0, 0), new Euler(0, 1, 0), new Euler(0, 0, 1)]

	// 	var q1 = new Quaternion().setFromEuler(changeEulerOrder(angles[0], 'XYZ'))
	// 	var q2 = new Quaternion().setFromEuler(changeEulerOrder(angles[1], 'XYZ'))
	// 	var q3 = new Quaternion().setFromEuler(changeEulerOrder(angles[2], 'XYZ'))

	// 	var q = new Quaternion().multiplyQuaternions(q1, q2).multiply(q3)

	// 	var m1 = new Matrix4().makeRotationFromEuler(changeEulerOrder(angles[0], 'XYZ'))
	// 	var m2 = new Matrix4().makeRotationFromEuler(changeEulerOrder(angles[1], 'XYZ'))
	// 	var m3 = new Matrix4().makeRotationFromEuler(changeEulerOrder(angles[2], 'XYZ'))

	// 	var m = new Matrix4().multiplyMatrices(m1, m2).multiply(m3)

	// 	var qFromM = new Quaternion().setFromRotationMatrix(m)

	// 	assert.ok(qSub(q, qFromM).length() < 0.001, 'Passed!')
	// })

	// describe('premultiply', assert => {
	// 	var a = new Quaternion(x, y, z, w)
	// 	var b = new Quaternion(2 * x, -y, -2 * z, w)
	// 	var expected = new Quaternion(42, -32, -2, 58)

	// 	a.premultiply(b)
	// 	assert.ok(Mathf.abs(a.x - expected.x) <= eps, 'Check x')
	// 	assert.ok(Mathf.abs(a.y - expected.y) <= eps, 'Check y')
	// 	assert.ok(Mathf.abs(a.z - expected.z) <= eps, 'Check z')
	// 	assert.ok(Mathf.abs(a.w - expected.w) <= eps, 'Check w')
	// })

	// QUnit.todo('slerp', assert => {
	// 	assert.ok(false, "everything's gonna be alright")
	// })

	// describe('equals', assert => {
	// 	var a = new Quaternion(x, y, z, w)
	// 	var b = new Quaternion(-x, -y, -z, -w)

	// 	assert.ok(a.x != b.x, 'Passed!')
	// 	assert.ok(a.y != b.y, 'Passed!')

	// 	assert.ok(!a.equals(b), 'Passed!')
	// 	assert.ok(!b.equals(a), 'Passed!')

	// 	a.copy(b)
	// 	assert.ok(a.x == b.x, 'Passed!')
	// 	assert.ok(a.y == b.y, 'Passed!')

	// 	assert.ok(a.equals(b), 'Passed!')
	// 	assert.ok(b.equals(a), 'Passed!')
	// })

	// QUnit.todo('fromArray', assert => {
	// 	assert.ok(false, "everything's gonna be alright")
	// })

	// describe('toArray', assert => {
	// 	var a = new Quaternion(x, y, z, w)

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

	// // QUnit.todo('onChangeCallback', assert => {
	// // 	assert.ok(false, "everything's gonna be alright")
	// // })

	// // OTHERS
	// describe('multiplyVector3', assert => {
	// 	var angles = [new Euler(1, 0, 0), new Euler(0, 1, 0), new Euler(0, 0, 1)]

	// 	// ensure euler conversion for Quaternion matches that of Matrix4
	// 	for (var i = 0; i < orders.length; i++) {
	// 		for (var j = 0; j < angles.length; j++) {
	// 			var q = new Quaternion().setFromEuler(changeEulerOrder(angles[j], orders[i]))
	// 			var m = new Matrix4().makeRotationFromEuler(changeEulerOrder(angles[j], orders[i]))

	// 			var v0 = new Vector3(1, 0, 0)
	// 			var qv = v0.clone().applyQuaternion(q)
	// 			var mv = v0.clone().applyMatrix4(m)

	// 			assert.ok(qv.distanceTo(mv) < 0.001, 'Passed!')
	// 		}
	// 	}
	// })
})

function checkQuaternion(q: Quaternion, x: f64, y: f64, z: f64, w: f64): void {
	expect(q.x).toBe(x)
	expect(q.y).toBe(y)
	expect(q.z).toBe(z)
	expect(q.w).toBe(w)
}

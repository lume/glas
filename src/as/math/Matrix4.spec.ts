/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author trusktr / https://github.com/trusktr
 */

import {Matrix4, matrixEquals4} from './Matrix4'
import {Vector3} from './Vector3'
import {Euler, EulerRotationOrder, eulerEquals} from './Euler'
import {Quaternion} from './Quaternion'
import {Float32BufferAttribute} from '../core/BufferAttribute'
import * as _Math from './Math'
import {eps} from './Constants.tests'

describe('Maths', () => {
	describe('Matrix4', () => {
		test('constructor', () => {
			var a = new Matrix4()
			expect(a.determinant()).toBe(1)

			var b = new Matrix4()
			b.set(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
			expect(b.elements[0]).toBe(0)
			expect(b.elements[1]).toBe(4)
			expect(b.elements[2]).toBe(8)
			expect(b.elements[3]).toBe(12)
			expect(b.elements[4]).toBe(1)
			expect(b.elements[5]).toBe(5)
			expect(b.elements[6]).toBe(9)
			expect(b.elements[7]).toBe(13)
			expect(b.elements[8]).toBe(2)
			expect(b.elements[9]).toBe(6)
			expect(b.elements[10]).toBe(10)
			expect(b.elements[11]).toBe(14)
			expect(b.elements[12]).toBe(3)
			expect(b.elements[13]).toBe(7)
			expect(b.elements[14]).toBe(11)
			expect(b.elements[15]).toBe(15)

			expect(matrixEquals4(a, b)).toBeFalsy()
		})

		// PUBLIC STUFF
		todo('isMatrix4')

		test('set', () => {
			var b = new Matrix4()
			expect(b.determinant()).toBe(1)

			b.set(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
			expect(b.elements[0]).toBe(0)
			expect(b.elements[1]).toBe(4)
			expect(b.elements[2]).toBe(8)
			expect(b.elements[3]).toBe(12)
			expect(b.elements[4]).toBe(1)
			expect(b.elements[5]).toBe(5)
			expect(b.elements[6]).toBe(9)
			expect(b.elements[7]).toBe(13)
			expect(b.elements[8]).toBe(2)
			expect(b.elements[9]).toBe(6)
			expect(b.elements[10]).toBe(10)
			expect(b.elements[11]).toBe(14)
			expect(b.elements[12]).toBe(3)
			expect(b.elements[13]).toBe(7)
			expect(b.elements[14]).toBe(11)
			expect(b.elements[15]).toBe(15)
		})

		test('identity', () => {
			var b = new Matrix4()
			b.set(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
			expect(b.elements[0]).toBe(0)
			expect(b.elements[1]).toBe(4)
			expect(b.elements[2]).toBe(8)
			expect(b.elements[3]).toBe(12)
			expect(b.elements[4]).toBe(1)
			expect(b.elements[5]).toBe(5)
			expect(b.elements[6]).toBe(9)
			expect(b.elements[7]).toBe(13)
			expect(b.elements[8]).toBe(2)
			expect(b.elements[9]).toBe(6)
			expect(b.elements[10]).toBe(10)
			expect(b.elements[11]).toBe(14)
			expect(b.elements[12]).toBe(3)
			expect(b.elements[13]).toBe(7)
			expect(b.elements[14]).toBe(11)
			expect(b.elements[15]).toBe(15)

			var a = new Matrix4()
			expect(matrixEquals4(a, b)).toBeFalsy()

			b.identity()
			expect(matrixEquals4(a, b)).toBeTruthy()
		})

		test('clone', () => {
			var a = new Matrix4()
			a.set(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
			var b = a.clone()

			expect(matrixEquals4(a, b)).toBeTruthy()

			// ensure that it is a true copy
			a.elements[0] = 2
			expect(matrixEquals4(a, b)).toBeFalsy()
		})

		test('copy', () => {
			var a = new Matrix4()
			a.set(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
			var b = new Matrix4()
			b.copy(a)

			expect(matrixEquals4(a, b)).toBeTruthy()

			// ensure that it is a true copy
			a.elements[0] = 2
			expect(matrixEquals4(a, b)).toBeFalsy()
		})

		// test('copyPosition', assert => {
		// 	var a = new Matrix4().set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
		// 	var b = new Matrix4().set(1, 2, 3, 0, 5, 6, 7, 0, 9, 10, 11, 0, 13, 14, 15, 16)

		// 	assert.notOk(matrixEquals4(a, b), 'a and b initially not equal')

		// 	b.copyPosition(a)
		// 	assert.ok(matrixEquals4(a, b), 'a and b equal after copyPosition()')
		// })

		// test('makeBasis/extractBasis', assert => {
		// 	var identityBasis = [new Vector3(1, 0, 0), new Vector3(0, 1, 0), new Vector3(0, 0, 1)]
		// 	var a = new Matrix4().makeBasis(identityBasis[0], identityBasis[1], identityBasis[2])
		// 	var identity = new Matrix4()
		// 	assert.ok(matrixEquals4(a, identity), 'Passed!')

		// 	var testBases = [[new Vector3(0, 1, 0), new Vector3(-1, 0, 0), new Vector3(0, 0, 1)]]
		// 	for (var i = 0; i < testBases.length; i++) {
		// 		var testBasis = testBases[i]
		// 		var b = new Matrix4().makeBasis(testBasis[0], testBasis[1], testBasis[2])
		// 		var outBasis = [new Vector3(), new Vector3(), new Vector3()]
		// 		b.extractBasis(outBasis[0], outBasis[1], outBasis[2])
		// 		// check what goes in, is what comes out.
		// 		for (var j = 0; j < outBasis.length; j++) {
		// 			assert.ok(outBasis[j].equals(testBasis[j]), 'Passed!')
		// 		}

		// 		// get the basis out the hard war
		// 		for (var j = 0; j < identityBasis.length; j++) {
		// 			outBasis[j].copy(identityBasis[j])
		// 			outBasis[j].applyMatrix4(b)
		// 		}
		// 		// did the multiply method of basis extraction work?
		// 		for (var j = 0; j < outBasis.length; j++) {
		// 			assert.ok(outBasis[j].equals(testBasis[j]), 'Passed!')
		// 		}
		// 	}
		// })

		todo('extractRotation')

		test('makeRotationFromEuler/extractRotation', () => {
			var testValues: Array<Euler> = [
				new Euler(0, 0, 0, EulerRotationOrder.XYZ),
				new Euler(1, 0, 0, EulerRotationOrder.XYZ),
				new Euler(0, 1, 0, EulerRotationOrder.ZYX),
				new Euler(0, 0, 0.5, EulerRotationOrder.YZX),
				new Euler(0, 0, -0.5, EulerRotationOrder.YZX),
			]

			for (var i = 0; i < testValues.length; i++) {
				var v = testValues[i]

				var m = new Matrix4()
				m.makeRotationFromEuler(v)

				var v2 = new Euler()
				v2.setFromRotationMatrix(m, v.order)
				var m2 = new Matrix4()
				m2.makeRotationFromEuler(v2)

				// TODO restore the concatenated string messages, which currently cause a runtime error.
				// 'makeRotationFromEuler #' + i.toString() + ': original and Euler-derived matrices are equal'
				expect(matrixEquals4(m, m2, eps)).toBeTruthy()

				// 'makeRotationFromEuler #' + i.toString() + ': original and matrix-derived Eulers are equal'
				expect(eulerEquals(v, v2, eps)).toBeTruthy()

				var m3 = new Matrix4()
				m3.extractRotation(m2)
				var v3 = new Euler()
				v3.setFromRotationMatrix(m3, v.order)

				// TODO restore the concatenated string messages, which currently cause a runtime error.
				// 'extractRotation #' + i.toString() + ': original and extracted matrices are equal'
				expect(matrixEquals4(m, m3, eps)).toBeTruthy()

				// 'extractRotation #' + i.toString() + ': original and extracted Eulers are equal'
				expect(eulerEquals(v, v3, eps)).toBeTruthy()
			}
		})

		// test('lookAt', assert => {
		// 	var a = new Matrix4()
		// 	var expected = new Matrix4().identity()
		// 	var eye = new Vector3(0, 0, 0)
		// 	var target = new Vector3(0, 1, -1)
		// 	var up = new Vector3(0, 1, 0)

		// 	a.lookAt(eye, target, up)
		// 	var rotation = new Euler().setFromRotationMatrix(a)
		// 	assert.numEqual(rotation.x * (180 / Mathf.PI), 45, 'Check the rotation')

		// 	// eye and target are in the same position
		// 	eye.copy(target)
		// 	a.lookAt(eye, target, up)
		// 	assert.ok(matrixEquals4(a, expected), 'Check the result for eye == target')

		// 	// up and z are parallel
		// 	eye.set(0, 1, 0)
		// 	target.set(0, 0, 0)
		// 	a.lookAt(eye, target, up)
		// 	expected.set(1, 0, 0, 0, 0, 0.0001, 1, 0, 0, -1, 0.0001, 0, 0, 0, 0, 1)
		// 	assert.ok(matrixEquals4(a, expected), 'Check the result for when up and z are parallel')
		// })

		todo('multiply')

		todo('premultiply')

		test('multiplyMatrices', () => {
			// Reference:
			//
			// #!/usr/bin/env python
			// from __future__ import print_function
			// import numpy as np
			// print(
			//     np.dot(
			//         np.reshape([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53], (4, 4)),
			//         np.reshape([59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131], (4, 4))
			//     )
			// )
			//
			// [[ 1585  1655  1787  1861]
			//  [ 5318  5562  5980  6246]
			//  [10514 11006 11840 12378]
			//  [15894 16634 17888 18710]]
			var lhs = new Matrix4()
			lhs.set(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53)
			var rhs = new Matrix4()
			rhs.set(59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131)
			var ans = new Matrix4()

			ans.multiplyMatrices(lhs, rhs)

			expect(ans.elements[0]).toBe(1585)
			expect(ans.elements[1]).toBe(5318)
			expect(ans.elements[2]).toBe(10514)
			expect(ans.elements[3]).toBe(15894)
			expect(ans.elements[4]).toBe(1655)
			expect(ans.elements[5]).toBe(5562)
			expect(ans.elements[6]).toBe(11006)
			expect(ans.elements[7]).toBe(16634)
			expect(ans.elements[8]).toBe(1787)
			expect(ans.elements[9]).toBe(5980)
			expect(ans.elements[10]).toBe(11840)
			expect(ans.elements[11]).toBe(17888)
			expect(ans.elements[12]).toBe(1861)
			expect(ans.elements[13]).toBe(6246)
			expect(ans.elements[14]).toBe(12378)
			expect(ans.elements[15]).toBe(18710)
		})

		// test('multiplyScalar', assert => {
		// 	var b = new Matrix4().set(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
		// 	assert.ok(b.elements[0] == 0)
		// 	assert.ok(b.elements[1] == 4)
		// 	assert.ok(b.elements[2] == 8)
		// 	assert.ok(b.elements[3] == 12)
		// 	assert.ok(b.elements[4] == 1)
		// 	assert.ok(b.elements[5] == 5)
		// 	assert.ok(b.elements[6] == 9)
		// 	assert.ok(b.elements[7] == 13)
		// 	assert.ok(b.elements[8] == 2)
		// 	assert.ok(b.elements[9] == 6)
		// 	assert.ok(b.elements[10] == 10)
		// 	assert.ok(b.elements[11] == 14)
		// 	assert.ok(b.elements[12] == 3)
		// 	assert.ok(b.elements[13] == 7)
		// 	assert.ok(b.elements[14] == 11)
		// 	assert.ok(b.elements[15] == 15)

		// 	b.multiplyScalar(2)
		// 	assert.ok(b.elements[0] == 0 * 2)
		// 	assert.ok(b.elements[1] == 4 * 2)
		// 	assert.ok(b.elements[2] == 8 * 2)
		// 	assert.ok(b.elements[3] == 12 * 2)
		// 	assert.ok(b.elements[4] == 1 * 2)
		// 	assert.ok(b.elements[5] == 5 * 2)
		// 	assert.ok(b.elements[6] == 9 * 2)
		// 	assert.ok(b.elements[7] == 13 * 2)
		// 	assert.ok(b.elements[8] == 2 * 2)
		// 	assert.ok(b.elements[9] == 6 * 2)
		// 	assert.ok(b.elements[10] == 10 * 2)
		// 	assert.ok(b.elements[11] == 14 * 2)
		// 	assert.ok(b.elements[12] == 3 * 2)
		// 	assert.ok(b.elements[13] == 7 * 2)
		// 	assert.ok(b.elements[14] == 11 * 2)
		// 	assert.ok(b.elements[15] == 15 * 2)
		// })

		// test('applyToBufferAttribute', assert => {
		// 	var a = new Matrix4().set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
		// 	var attr = new Float32BufferAttribute([1, 2, 1, 3, 0, 3], 3)
		// 	var expected = new Float32BufferAttribute(
		// 		[
		// 			0.1666666716337204,
		// 			0.4444444477558136,
		// 			0.7222222089767456,
		// 			0.1599999964237213,
		// 			0.4399999976158142,
		// 			0.7200000286102295,
		// 		],
		// 		3
		// 	)

		// 	var applied = a.applyToBufferAttribute(attr)

		// 	assert.strictEqual(
		// 		expected.count,
		// 		applied.count,
		// 		'Applied buffer and expected buffer have the same number of entries'
		// 	)

		// 	for (var i = 0, l = expected.count; i < l; i++) {
		// 		assert.ok(Mathf.abs(applied.getX(i) - expected.getX(i)) <= eps, 'Check x')
		// 		assert.ok(Mathf.abs(applied.getY(i) - expected.getY(i)) <= eps, 'Check y')
		// 		assert.ok(Mathf.abs(applied.getZ(i) - expected.getZ(i)) <= eps, 'Check z')
		// 	}
		// })

		test('determinant', () => {
			var a = new Matrix4()
			expect(a.determinant()).toBe(1)

			a.elements[0] = 2
			expect(a.determinant()).toBe(2)

			a.elements[0] = 0
			expect(a.determinant()).toBe(0)

			// calculated via http://www.euclideanspace.com/maths/algebra/matrix/functions/determinant/fourD/index.htm
			a.set(2, 3, 4, 5, -1, -21, -3, -4, 6, 7, 8, 10, -8, -9, -10, -12)
			expect(a.determinant()).toBe(76)
		})

		// test('transpose', assert => {
		// 	var a = new Matrix4()
		// 	var b = a.clone().transpose()
		// 	assert.ok(matrixEquals4(a, b), 'Passed!')

		// 	var b = new Matrix4().set(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
		// 	var c = b.clone().transpose()
		// 	assert.ok(!matrixEquals4(b, c), 'Passed!')
		// 	c.transpose()
		// 	assert.ok(matrixEquals4(b, c), 'Passed!')
		// })

		todo('setPosition')

		test('getInverse', () => {
			var identity = new Matrix4()

			var a = new Matrix4()
			var b = new Matrix4()
			b.set(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
			var c = new Matrix4()
			c.set(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)

			expect(matrixEquals4(a, b)).toBeFalsy()
			b.getInverse(a)
			expect(matrixEquals4(b, new Matrix4())).toBeTruthy()

			expect(b.getInverse(c)).toBeFalsy()

			var testMatrices: Array<Matrix4> = [
				new Matrix4(),
				new Matrix4(),
				new Matrix4(),
				new Matrix4(),
				new Matrix4(),
				new Matrix4(),
				new Matrix4(),
				new Matrix4(),
				new Matrix4(),
				new Matrix4(),
				new Matrix4(),
			]

			testMatrices[0].makeRotationX(0.3)
			testMatrices[1].makeRotationX(-0.3)
			testMatrices[2].makeRotationY(0.3)
			testMatrices[3].makeRotationY(-0.3)
			testMatrices[4].makeRotationZ(0.3)
			testMatrices[5].makeRotationZ(-0.3)
			testMatrices[6].makeScale(1, 2, 3)
			testMatrices[7].makeScale(1 / 8, 1 / 2, 1 / 3)
			testMatrices[8].makePerspective(-1, 1, 1, -1, 1, 1000)
			testMatrices[9].makePerspective(-16, 16, 9, -9, 0.1, 10000)
			testMatrices[10].makeTranslation(1, 2, 3)

			for (var i = 0, il = testMatrices.length; i < il; i++) {
				var m = testMatrices[i]

				var mInverse = new Matrix4()
				expect(mInverse.getInverse(m)).toBeTruthy()
				var mSelfInverse = m.clone()
				mSelfInverse.getInverse(mSelfInverse)

				// self-inverse should the same as inverse
				expect(matrixEquals4(mSelfInverse, mInverse)).toBeTruthy()

				// the determinant of the inverse should be the reciprocal

				expect(m.determinant() * mInverse.determinant()).toBeCloseTo(1)

				var mProduct = new Matrix4()
				mProduct.multiplyMatrices(m, mInverse)

				// the determinant of the identity matrix is 1
				expect(mProduct.determinant()).toBeCloseTo(1)
				expect(matrixEquals4(mProduct, identity)).toBeTruthy()
			}
		})

		todo('scale')

		test('getMaxScaleOnAxis', () => {
			var a = new Matrix4()
			a.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
			var expected = Mathf.sqrt(3 * 3 + 7 * 7 + 11 * 11)
			expect(a.getMaxScaleOnAxis()).toBeCloseTo(expected)
		})

		todo('makeTranslation')

		todo('makeRotationX')

		todo('makeRotationY')

		todo('makeRotationZ')

		// test('makeRotationAxis', assert => {
		// 	var axis = new Vector3(1.5, 0.0, 1.0).normalize()
		// 	var radians = _Math.degToRad(45)
		// 	var a = new Matrix4().makeRotationAxis(axis, radians)

		// 	var expected = new Matrix4().set(
		// 		0.9098790095958609,
		// 		-0.39223227027636803,
		// 		0.13518148560620882,
		// 		0,
		// 		0.39223227027636803,
		// 		0.7071067811865476,
		// 		-0.588348405414552,
		// 		0,
		// 		0.13518148560620882,
		// 		0.588348405414552,
		// 		0.7972277715906868,
		// 		0,
		// 		0,
		// 		0,
		// 		0,
		// 		1
		// 	)

		// 	assert.ok(matrixEquals4(a, expected), 'Check numeric result')
		// })

		todo('makeScale')

		todo('makeShear')

		test('compose/decompose', () => {
			var tValues: Array<Vector3> = [
				new Vector3(),
				new Vector3(3, 0, 0),
				new Vector3(0, 4, 0),
				new Vector3(0, 0, 5),
				new Vector3(-6, 0, 0),
				new Vector3(0, -7, 0),
				new Vector3(0, 0, -8),
				new Vector3(-2, 5, -9),
				new Vector3(-2, -5, -9),
			]

			var sValues: Array<Vector3> = [
				new Vector3(1, 1, 1),
				new Vector3(2, 2, 2),
				new Vector3(1, -1, 1),
				new Vector3(-1, 1, 1),
				new Vector3(1, 1, -1),
				new Vector3(2, -2, 1),
				new Vector3(-1, 2, -2),
				new Vector3(-1, -1, -1),
				new Vector3(-2, -2, -2),
			]

			var rValues: Array<Quaternion> = [
				new Quaternion(),
				new Quaternion(),
				new Quaternion(),
				new Quaternion(0, 0.9238795292366128, 0, 0.38268342717215614),
			]

			rValues[1].setFromEuler(new Euler(1, 1, 0))
			rValues[2].setFromEuler(new Euler(1, -1, 1))

			for (var ti = 0; ti < tValues.length; ti++) {
				for (var si = 0; si < sValues.length; si++) {
					for (var ri = 0; ri < rValues.length; ri++) {
						var t = tValues[ti]
						var s = sValues[si]
						var r = rValues[ri]

						var m = new Matrix4()
						m.compose(t, r, s)
						var t2 = new Vector3()
						var r2 = new Quaternion()
						var s2 = new Vector3()

						m.decompose(t2, r2, s2)

						var m2 = new Matrix4()
						m2.compose(t2, r2, s2)

						/*
						// debug code
						var matrixIsSame = matrixEquals4( m, m2 );
						if ( ! matrixIsSame ) {

							console.log( t, s, r );
							console.log( t2, s2, r2 );
							console.log( m, m2 );

						}
						*/

						expect(matrixEquals4(m, m2)).toBeTruthy()
					}
				}
			}
		})

		todo('makePerspective')

		test('makeOrthographic', () => {
			var a = new Matrix4().makeOrthographic(-1, 1, -1, 1, 1, 100)
			var expected = new Matrix4().set(1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -2 / 99, -101 / 99, 0, 0, 0, 1)

			expect(matrixEquals4(a, expected)).toBeTruthy()
		})

		// test('equals', assert => {
		// 	var a = new Matrix4().set(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
		// 	var b = new Matrix4().set(0, -1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)

		// 	assert.notOk(a.equals(b), 'Check that a does not equal b')
		// 	assert.notOk(b.equals(a), 'Check that b does not equal a')

		// 	a.copy(b)
		// 	assert.ok(a.equals(b), 'Check that a equals b after copy()')
		// 	assert.ok(b.equals(a), 'Check that b equals a after copy()')
		// })

		todo('fromArray')

		// test('toArray', assert => {
		// 	var a = new Matrix4().set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
		// 	var noOffset = [1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15, 4, 8, 12, 16]
		// 	var withOffset = [undefined, 1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15, 4, 8, 12, 16]

		// 	var array = a.toArray()
		// 	assert.deepEqual(array, noOffset, 'No array, no offset')

		// 	var array = []
		// 	a.toArray(array)
		// 	assert.deepEqual(array, noOffset, 'With array, no offset')

		// 	var array = []
		// 	a.toArray(array, 1)
		// 	assert.deepEqual(array, withOffset, 'With array, with offset')
		// })
	})
})

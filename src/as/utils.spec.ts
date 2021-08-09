/**
 * @author alemures / https://github.com/alemures
 * @author TristanVALCKE / https://github.com/Itee
 * @author corruptedzulu / https://github.com/corruptedzulu
 */

import { arrayMin, arrayMax } from './utils'

describe('utils', () => {
	test('arrayMin', () => {
		expect(arrayMin([])).toStrictEqual(Infinity)
		expect(arrayMin([5])).toStrictEqual(5)
		expect(arrayMin([1, 5, 10])).toStrictEqual(1)
		expect(arrayMin([5, 1, 10])).toStrictEqual(1)
		expect(arrayMin([10, 5, 1])).toStrictEqual(1)
		expect(arrayMax([-0, 0])).toStrictEqual(-0)
		expect(arrayMin([-Infinity, 0, Infinity])).toStrictEqual(-Infinity)
	})

	test('arrayMax', () => {
		expect(arrayMax([])).toStrictEqual(-Infinity)
		expect(arrayMax([5])).toStrictEqual(5)
		expect(arrayMax([10, 5, 1])).toStrictEqual(10)
		expect(arrayMax([1, 10, 5])).toStrictEqual(10)
		expect(arrayMax([1, 5, 10])).toStrictEqual(10)
		expect(arrayMax([-0, 0])).toStrictEqual(0)
		expect(arrayMax([-Infinity, 0, Infinity])).toStrictEqual(Infinity)
	})
})

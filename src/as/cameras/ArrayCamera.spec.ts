import {ArrayCamera} from './ArrayCamera'

describe('ArrayCamera', () => {
	test('constructor', () => {
		// error goes away if you comment out the following line
		expect(new ArrayCamera().cameras).toStrictEqual([])
	})

	test('isArrayCamera', () => {
		expect(new ArrayCamera().isArrayCamera).toBe(true)
	})
})

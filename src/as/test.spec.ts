import {num} from './test'
// import {SHORT} from 'aswebglue/src/WebGL'
import {SHORT} from 'aswebglue'

describe('aswebglue', () => {
	it('was imported', () => {
		expect(num).toBe(SHORT * 2)
	})
})

// import {SHORT} from 'aswebglue' // FIXME: Broken in AssemblyScript
import {SHORT} from '../../node_modules/aswebglue/src/webgl'

// setup
const num: u32 = SHORT * 2

/**
 * tests our import of aswebglue by multiply WebGL.SHORT by two.
 */
describe('aswebglue', () => {
	it('was imported', () => {
		expect(num).toBe(SHORT * 2)
	})
})

// import {SHORT} from 'aswebglue' // FIXME: Broken in AssemblyScript, https://github.com/AssemblyScript/assemblyscript/issues/1679
import {SHORT} from '../../node_modules/aswebglue/src/WebGL'

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

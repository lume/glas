import {num} from './test'
import {logf32, SHORT, WebGLRenderingContext} from '../../node_modules/aswebglue/src/WebGL'

describe('aswebglue', () => {
	it('was imported', () => {
		const gl = new WebGLRenderingContext('canvas', 'webgl2')

		expect(gl instanceof WebGLRenderingContext).toBe(true)
		logf32(1.234)
		expect(num).toBe(SHORT * 2)
	})
})

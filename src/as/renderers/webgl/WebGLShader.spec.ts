/**
 * @see https://tenner-joshua.gitbook.io/as-pect/as-api
 * @author Kara Rawson / https://github.com/ZoeDreams
 * @author Joe Pea / https://github.com/trusktr
 */

import { WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { WebGLShader } from './WebGLShader'

const vertexShaderCode = /*glsl*/ `
	varying vec3 vUv;

	void main() {
		vUv = position;

		vec4 modelViewPosition = modelViewMatrix * vec4(position, 1.0);
		gl_Position = projectionMatrix * modelViewPosition;
	}
`

describe('Renderers', (): void => {
	describe('WebGL', (): void => {
		describe('WebGLShader', (): void => {
			it('works', (): void => {
				const gl = new WebGLRenderingContext('someCanvas', 'webgl')
				const shader = WebGLShader(gl, gl.VERTEX_SHADER, vertexShaderCode)

				// If we get here, it means WebGLShader made a round-trip
				// to/from JS and called the gl.compileShader() function on the
				// JS side.
				// TODO catch errors on the JS side, and force testing to exit non-zero in that case.
				expect(shader >= 0).toBe(true)
			})
		})
	})
})

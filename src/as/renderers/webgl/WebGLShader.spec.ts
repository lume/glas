import {WebGlShader} from './WebGLShader'

/**
 * @see https://tenner-joshua.gitbook.io/as-pect/as-api
 * @author Kara Rawson / https://github.com/ZoeDreams
 */

describe('Renderers', (): void => {
	describe('WebGL', (): void => {
		describe('WebGLShader', (): void => {
			/// not yet supported
			/// TODO need to figure out how to load a headless canvas instance of ctx
			xtest('constructor', (): void => {
				// const gl = new WebGLRenderingContext()
				// const t = gl.VERTEX_SHADER
				// const ss = getVertexShader()
				// const s = new WebGlShader(gl, t, ss)
				// expect(s.shader).toBe(s)
			})
		})
	})
})

function getVertexShader(): string {
	return `
        varying vec3 vUv; 

        void main() {
        vUv = position; 

        vec4 modelViewPosition = modelViewMatrix * vec4(position, 1.0);
        gl_Position = projectionMatrix * modelViewPosition; 
        }
    `
}

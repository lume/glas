/// THREE.js.r105 ///
/**
 * @author Kara Rawson / https://github.com/ZoeDreams
 * @author Joe Pea / https://github.com/trusktr
 */

import { GLenum, WebGLRenderingContext, WebGLShader as GLShader } from '../../../../node_modules/aswebglue/src/WebGL'

/**
 * A lower level function to compile either a vertex or fragment shader.
 *
 * @param gl the WebGlRenderingContext from a <canvas> element.
 * @param type the enum of the shader type
 * @param source the shader source code represented as a string
 *
 * @see https://threejs.org/docs/#api/en/renderers/webgl/WebGLShader
 */
export function WebGLShader(gl: WebGLRenderingContext, type: GLenum, source: string): GLShader {
	const shader: GLShader = gl.createShader(type)
	gl.shaderSource(shader, source)
	gl.compileShader(shader)
	return shader
}

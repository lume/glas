/// THREE.js.r105 ///
/**
 * @version 0.0.1
 * @author Kara Rawson / https://github.com/ZoeDreams
 */

/**
 * A lower level function to compile either a vertex or fragment shader.
 *
 * @param gl the WebGlRenderingContext which is used by the rendering engine
 * @param type the enum of the shader type
 * @param source the shader source code represented as a string`
 *
 * @see https://threejs.org/docs/#api/en/renderers/webgl/WebGLShader
 * 
 * @todo Update WebGLShader.spec.ts test when we figure out how to load the ctx by as-pect 
 */

export function WebGLShader(gl: WebGLRenderingContext, type: number, source: string): WebGLShader {
	var shader: WebGLShader = gl.createShader(type)
	gl.shaderSource(shader, source)
	gl.compileShader(shader)
	return shader;
}

/// THREE.js.r105 ///
/**
 * @author mrdoob / http://mrdoob.com/
 * @author Kara Rawson / rawsonkara@gmail.com
 */

 import { WebGLRenderingContext_ } from "../WebGLRenderingContext_";

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

export function WebGLShader(gl: WebGLRenderingContext_, type: number, source: string): WebGLShader {
	
	/// TODO implement WebGLShader_ placeholder library in the renderer root.
	
	var shader: WebGLShader = gl.createShader(type)
	gl.shaderSource(shader, source)
	gl.compileShader(shader)
	return shader;
}

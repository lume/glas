/// THREE.js.r105

/**
 * A lower level function to compile either a vertex or fragment shader.
 *
 * @param gl the WebGlRenderingContext which is used by the rendering engine
 * @param type the enum of the shader type
 * @param string the shader source code represented as a string
 *  
 * @example
 * const gl = renderer.getContext();
 *
 * const glVertexShader = new THREE.WebGLShader( gl, gl.VERTEX_SHADER, vertexSourceCode );
 * const glFragmentShader = new THREE.WebGLShader( gl, gl.FRAGMENT_SHADER, fragmentSourceCode );
 *
 * const program = gl.createProgram();
 *
 * gl.attachShader( program, glVertexShader );
 * gl.attachShader( program, glFragmentShader );
 *
 * gl.linkProgram( program );
 * 
 * @see https://threejs.org/docs/#api/en/renderers/webgl/WebGLShader
 * 
 * @author Kara Rawson / https://github.com/ZoeDreams
 */
export class WebGlShader {
	shader: WebGLShader

	constructor(gl: WebGLRenderingContext, type: GLenum, source: string) {
		this.shader = gl.createShader(type)

		gl.shaderSource(this.shader, source)
		gl.compileShader(this.shader)
	}
}

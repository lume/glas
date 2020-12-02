/**
 * @author mrdoob / http://mrdoob.com/
 * @author Kara Rawson / rawsonkara@gmail.com
 */

import {WebGLRenderingContext_} from "../WebGLRenderingContext_";
import {WebGL2RenderingContext_} from "../WebGL2RenderingContext_";

/**
 * a general purpose classes without a constructor for animating geometry within
 * GLAS. This class requires explicitly setting either the 'WebGLRenderingContext' or
 * 'WebGL2RenderingContext' depending on the version of GL and GLSL you with to use.
 * 
 * NOTE: This is a terribly overloaded term. Animation in this case actually refers to
 * the callback function which is passed by reference into the requestAnimationFrame. 
 * This is a bit confusing with a mesh's animation sequence which is completely different
 * uses the same wording.
 */
export class WebGLAnimation {

	/// Our temporary WebGLContexts, to be implemented
	context: WebGLRenderingContext_ | null = null
	context2: WebGL2RenderingContext_ | null = null

	/**
	 * starts our animation loop
	 */
	start(): void {
		/// ...
	}

	stop(): void {
		/// ...
	}

	setAnimationLoop( callback: Function ): void {
		/// ...
	}

	setContext(gl: WebGLRenderingContext_ | null, gl2: WebGL2RenderingContext_ | null): void {
		if(gl) {
			this.context = gl
			this.context2 = null
			return

		} 
		else if(gl2) {
			this.context = null
			this.context2 = gl2
			return
		} 

		/// TODO exception handling not yet supported
		//else {
		//	throw new Exception("webgl or webgl2 must be provided to 'setContext()'")
		//}
	}
}

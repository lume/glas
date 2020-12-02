/**
 * @author mrdoob / http://mrdoob.com/
 * @author Kara Rawson / rawsonkara@gmail.com
 */

import { WebGLRenderingContext } from "../WebGLRenderingContext";
import { WebGL2RenderingContext } from "../WebGL2RenderingContext";

/**
 * our requestion animation frames root callback function. Recusrively calls itself
 * unless isAnimating flag is set to false
 * 
 * @todo this could be optimized to not have an if check.. make two types of animators for gl and gl2
 */
export class WebGLAnimationFrame {

	/**
	 * recursive callback function which is called by the WebGLRenderingContext for gl or gl2
	 * @param time the current time as an unsigned integer. This could overflow.. really big number
	 * @param frame the amount of times the gl_scene has rendered within our context
	 * @param animator the webgl animation class that handles the recursive callback
	 */
	onAnimationFrame(time: u64, frame: u64, animator: WebGLAnimation): void {
		if (!animator.isAnimating) return;

		this.onAnimationFrame(time, frame, animator);

		if (animator.context) {
			animator.context.requestAnimationFrame(animator.animationLoop);
			return
		}
		if (animator.context2) {
			animator.context2.requestAnimationFrame(animator.animationLoop);
		}
	}
}

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

	context: WebGLRenderingContext | null = null
	context2: WebGL2RenderingContext | null = null

	isAnimating: bool = false
	animationLoop: WebGLAnimationFrame = new WebGLAnimationFrame()

	/**
	 * starts our animation loop in gl land
	 */
	start(): void {

		if (this.isAnimating) return
		if (this.setAnimationLoop === null) return

		if (this.context) {
			this.context.requestAnimationFrame(this.animationLoop)
		}
		else if (!this.context && this.context2) {
			this.context2.requestAnimationFrame(this.animationLoop)
		}

		this.isAnimating = true
	}

	/**
	 * stops our animation loop in gl land
	 */
	stop(): void {
		this.isAnimating = false
	}

	/**
	 * a recursive call back function that is used to call itself to loop the update of the
	 * GLAS webgl scene and gl_objects
	 * @param callback sets our animation frame that is looped. aka animation loop
	 */
	setAnimationLoop(callback: WebGLAnimationFrame): void {
		this.animationLoop = callback
	}

	/**
	 * sets our local redering context which is used by our animator that calls rendering animation
	 * frame recursively
	 * @param gl version 1 of webgl used by most browsers
	 * @param gl2 version 2 of webgl which supports additional texture features and custom XR and VR devices
	 */
	setContext(gl: WebGLRenderingContext | null, gl2: WebGL2RenderingContext | null): void {
		if (gl) {
			this.context = gl
			this.context2 = null
			return

		}
		else if (gl2) {
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

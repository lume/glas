/**
 * @author Kara Rawson / rawsonkara@gmail.com
 */

import { WebGLAnimationFrame } from './webgl/WebGLAnimation'

/**
 * simple placeholder class until we get support with AS web glue which is meant 
 * to provide access to the underlying context canvas element that exposes the 
 * GL layer of the browser.
 */
export class WebGLRenderingContext {
   context: i8 = 1  // version placeholder

   //// TODO needs ASGLue module to access native context canvas of GL in the browser

   // functions or properties required for testing

   requestAnimationFrame(animationLoop: WebGLAnimationFrame): void {
      // animationLoop.onAnimationFrame(0,0,animationLoop)
   }
}

/* lib.dom.d.ts -- interface reference from the domlib
interface WebGL2RenderingContext extends WebGL2RenderingContextBase, WebGL2RenderingContextOverloads, WebGLRenderingContextBase {
}
*/
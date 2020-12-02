/**
 * @author Kara Rawson / rawsonkara@gmail.com
 */

import { WebGLRenderingContext_ } from "./WebGLRenderingContext_";

/**
 * Test class used to verify that we have the WebGLRenderingContext placeholder
 * within GLAS. This will be replaced with the real WebGLRenderingContext class.
 */
describe('Renderers', () => {
   test('WebGLRenderingContext_', (): void => {
      var context: WebGLRenderingContext_ = new WebGLRenderingContext_()
      expect(context.context).toBe(1,
         "Make sure we are using version 1.x of WebGL in the 'WebGLRenderingContext' class")
   })
})

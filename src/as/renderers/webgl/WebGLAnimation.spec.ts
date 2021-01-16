/**
 * @author Kara Rawson / rawsonkara@gmail.com
 */

import { WebGLAnimation } from './WebGLAnimation'
import { WebGLRenderingContext } from "../WebGLRenderingContext";
import { WebGL2RenderingContext } from "../WebGL2RenderingContext";

/**
 * @todo make sure we test the WebGLAnimationFrame
 */

describe('Renderers', () => {
  describe('WebGL', () => {
    describe('WebGLAnimation', () => {
      todo('start')
      todo('stop')
      todo('setAnimationLoop')
      todo('WebGlAnimationFrame_callback')
      test('setContext', (): void => {
        var animation = new WebGLAnimation()
        var gl: WebGLRenderingContext = new WebGLRenderingContext()
        var gl2: WebGL2RenderingContext = new WebGL2RenderingContext()

        animation.setContext(gl, null)

        expect(animation.context).not.toBeNull("WebGLRenderingContext should not be null")
        expect(animation.context2).toBeNull("WebGL2RenderingContext should be null")
        expect(animation.context).toStrictEqual(gl, "WebGLRenderingContext should be type gl")

        animation.setContext(null, gl2)

        expect(animation.context).toBeNull("WebGLRenderingContext should be null")
        expect(animation.context2).not.toBeNull("WebGL2RenderingContext should not be null")
        expect(animation.context2).toStrictEqual(gl2, "WebGLRenderingContext should be type gl2")
      })
    })
  })
})

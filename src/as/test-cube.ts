/**
 * @author Rick Battagline / https://embed.com/wasm
 */

// import {WebGLRenderingContext, WebGLShader, WebGLProgram, logf32} from './WebGL'
// import {WebGLRenderingContext, WebGLShader, WebGLProgram, logf32} from 'aswebglue'
// import {WebGLRenderingContext, WebGLShader, WebGLProgram, logf32} from 'aswebglue/src/WebGL'
import {WebGLRenderingContext, WebGLShader, WebGLProgram, logf32} from '../../node_modules/aswebglue/src/WebGL'

declare function callFn(fn: (n: f32) => void): void

const VERTEX_SHADER_CODE: string = /*glsl*/ `#version 200 es
  precision highp float;

  attribute vec3 position;
  attribute vec3 color;
  varying vec4 c;

  void main() {
    mat4 mRotateTranslate = mat4(
       1.0, 0.0,       0.0,        0.0, // column 1
       0.0, cos(-0.2),-sin(-0.2), -0.2, // column 2
       0.0, sin(-0.0), cos(-0.2),  0.0, // column 3
       0.0, 0.0,       0.0,        1.0  // column 4
    );

    gl_Position = vec4( position, 1.0 ) * mRotateTranslate;
    c = vec4(color, 1.0);
  }
`
const FRAGMENT_SHADER_CODE: string = /*glsl*/ `#version 300 es
  precision highp float;
  varying vec4 c;
  // out vec4 color;

  void main() {
    gl_FragColor = c;
  }
`

// initialize webgl
// var gl = new WebGLRenderingContext('cnvs', 'webgl2')
var gl = new WebGLRenderingContext('cnvs', 'webgl')

let vertex_shader: WebGLShader = gl.createShader(gl.VERTEX_SHADER)
gl.shaderSource(vertex_shader, VERTEX_SHADER_CODE)
gl.compileShader(vertex_shader)

let fragment_shader: WebGLShader = gl.createShader(gl.FRAGMENT_SHADER)
gl.shaderSource(fragment_shader, FRAGMENT_SHADER_CODE)
gl.compileShader(fragment_shader)

let program: WebGLProgram = gl.createProgram()

gl.attachShader(program, vertex_shader)
gl.attachShader(program, fragment_shader)

gl.linkProgram(program)

gl.useProgram(program)

let buffer = gl.createBuffer()
gl.bindBuffer(gl.ARRAY_BUFFER, buffer)

let position_al = gl.getAttribLocation(program, 'position')
gl.enableVertexAttribArray(position_al)

let color_al = gl.getAttribLocation(program, 'color')
gl.enableVertexAttribArray(color_al)

gl.enable(gl.DEPTH_TEST)

// prettier-ignore
let cube_data: StaticArray<StaticArray<f32>> = [
  // front face
  // X     Y    Z    R    G    B
  [
    -0.5, -0.5, 0.5, 1.0, 0.0, 0.0,
    -0.5,  0.5, 0.5, 1.0, 0.0, 0.0,
     0.5, -0.5, 0.5, 1.0, 0.0, 0.0,
     0.5,  0.5, 0.5, 1.0, 0.0, 0.0,
  ],
  //  back face
  [
    -0.5, -0.5, -0.5, 0.0, 1.0, 0.0,
    -0.5,  0.5, -0.5, 0.0, 1.0, 0.0,
     0.5, -0.5, -0.5, 0.0, 1.0, 0.0,
     0.5,  0.5, -0.5, 0.0, 1.0, 0.0,
  ],
  //  left face
  [
    -0.5, -0.5, -0.5, 0.0, 0.0, 1.0,
    -0.5, -0.5,  0.5, 0.0, 0.0, 1.0,
    -0.5,  0.5, -0.5, 0.0, 0.0, 1.0,
    -0.5,  0.5,  0.5, 0.0, 0.0, 1.0,
  ],
  //  right face
  [
     0.5, -0.5, -0.5, 1.0, 0.7, 0.0,
     0.5, -0.5,  0.5, 1.0, 0.7, 0.0,
     0.5,  0.5, -0.5, 1.0, 0.7, 0.0,
     0.5,  0.5,  0.5, 1.0, 0.7, 0.0,
  ],
  //  top face
  [
    -0.5, 0.5, -0.5, 1.0, 0.0, 0.7,
    -0.5, 0.5,  0.5, 1.0, 0.0, 0.7,
     0.5, 0.5, -0.5, 1.0, 0.0, 0.7,
     0.5, 0.5,  0.5, 1.0, 0.0, 0.7,
  ],
  //  bottom face
  [
    -0.5, -0.5, -0.5, 0.0, 1.0, 0.7,
    -0.5, -0.5,  0.5, 0.0, 1.0, 0.7,
     0.5, -0.5, -0.5, 0.0, 1.0, 0.7,
     0.5, -0.5,  0.5, 0.0, 1.0, 0.7,
  ]
];

function rotate(theta: f32): void {
	for (var i: i32 = 0; i < cube_data.length; i++) {
		for (var coord_i: i32 = 0; coord_i < cube_data[i].length; coord_i += 6) {
			let x: f32 = cube_data[i][coord_i]
			let z: f32 = cube_data[i][coord_i + 2]

			let x1: f32 = x * Mathf.cos(theta) - z * Mathf.sin(theta)

			let z1: f32 = z * Mathf.cos(theta) + x * Mathf.sin(theta)

			cube_data[i][coord_i] = x1
			cube_data[i][coord_i + 2] = z1
		}
	}
	return
}

export function test(): void {
	callFn((n: f32) => {
		logf32(n)
	})
}

export function displayLoop(delta: i32): void {
	let r: f32 = <f32>delta / 10000.0
	rotate(r)

	gl.clearColor(0.0, 0.0, 0.0, 1.0)
	gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT)

	for (var i: i32 = 0; i < 6; i++) {
		gl.bufferData<f32>(gl.ARRAY_BUFFER, cube_data[i], gl.DYNAMIC_DRAW)
		//                                   dimensions | data_type | normalize | stride | offset
		gl.vertexAttribPointer(position_al, 3, gl.FLOAT, +false, 24, 0)
		gl.vertexAttribPointer(color_al, 3, gl.FLOAT, +false, 24, 12)
		gl.drawArrays(gl.TRIANGLE_STRIP, 0, 4)
	}
}

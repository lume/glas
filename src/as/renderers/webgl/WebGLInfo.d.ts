import {WebGLProgram} from './WebGLProgram'

/**
 * An object with a series of statistical information about the graphics board memory and the rendering process.
 */
export class WebGLInfo {
	autoReset: boolean
	memory: {
		geometries: f32
		textures: f32
	}
	programs: WebGLProgram[] | null
	render: {
		calls: f32
		frame: f32
		lines: f32
		points: f32
		triangles: f32
	}
	reset(): void
}

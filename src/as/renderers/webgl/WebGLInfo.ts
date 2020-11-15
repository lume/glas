import {WebGLProgram} from './WebGLProgram'

class MemoryInfo {
	geometries: f32
	textures: f32
}

class RenderInfo {
	calls: f32
	frame: i32
	lines: f32
	points: f32
	triangles: f32
}

/**
 * An object with a series of statistical information about the graphics board memory and the rendering process.
 *
 * @see https://github.com/mrdoob/three.js/blob/dev/src/renderers/webgl/WebGLInfo.js
 *
 * @author Joe Pea / http://github.com/trusktr
 * @author Kara Rawson / https://github.com/ZoeDreams
 */


	triangles: f32
}
	triangles: f32
}

export class WebGLInfo {
	autoReset: boolean

	memory: MemoryInfo = {
		geometries: 0,
		textures: 0,
	} as MemoryInfo

	programs: WebGLProgram[] | null

	render: RenderInfo = {
		calls: 0,
		frame: 0,
		lines: 0,
		points: 0,
		triangles: 0,
	} as RenderInfo

	reset(): void {
		this.render.frame++
		this.render.calls = 0
		this.render.triangles = 0
		this.render.points = 0
		this.render.lines = 0
	}
}

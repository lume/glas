import { WebGLRenderer } from '../WebGLRenderer'
import { WebGLProgram } from './WebGLProgram'
import { WebGLCapabilities } from './WebGLCapabilities'
import { WebGLExtensions } from './WebGLExtensions'
import { WebGLCubeMaps } from './WebGLCubeMaps'
import { WebGLBindingStates } from './WebGLBindingStates'
import { WebGLClipping } from './WebGLClipping'
import { ShaderMaterial } from '../../materials/ShaderMaterial'

export class WebGLPrograms {
	programs: WebGLProgram[] = []

	constructor(
		renderer: WebGLRenderer,
		cubemaps: WebGLCubeMaps,
		extensions: WebGLExtensions,
		capabilities: WebGLCapabilities,
		bindingStates: WebGLBindingStates,
		clipping: WebGLClipping
	) {}

	getParameters(material: ShaderMaterial, lights: any, fog: any, nClipPlanes: f32, object: any): any {
		// TODO: implement getParameters
		return {}
	}

	getProgramCode(material: ShaderMaterial, parameters: any): string {
		// TODO: implement getProgramCode
		return ''
	}

	acquireProgram(material: ShaderMaterial, parameters: any, code: string): WebGLProgram {
		// TODO: implement acquireProgram
		return null!
	}

	releaseProgram(program: WebGLProgram): void {
		// TODO: implement releaseProgram
	}
}
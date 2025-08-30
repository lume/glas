import { WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { WebGLExtensions } from './WebGLExtensions'
import { WebGLAttributes } from './WebGLAttributes'
import { WebGLProgram } from './WebGLProgram'
import { WebGLCapabilities } from './WebGLCapabilities'
import { Object3D } from '../../core/Object3D'
import { BufferGeometry } from '../../core/BufferGeometry'
import { BufferAttribute } from '../../core/BufferAttribute'
import { Material } from '../../materials/Material'

export class WebGLBindingStates {
	constructor(
		private gl: WebGLRenderingContext,
		private extensions: WebGLExtensions,
		private attributes: WebGLAttributes,
		private capabilities: WebGLCapabilities
	) {}

	setup(object: Object3D, material: Material, program: WebGLProgram, geometry: BufferGeometry, index: BufferAttribute): void {
		// TODO: implement setup
	}

	reset(): void {
		// TODO: implement reset
	}

	resetDefaultState(): void {
		// TODO: implement resetDefaultState
	}

	dispose(): void {
		// TODO: implement dispose
	}

	releaseStatesOfGeometry(): void {
		// TODO: implement releaseStatesOfGeometry
	}

	releaseStatesOfProgram(): void {
		// TODO: implement releaseStatesOfProgram
	}

	initAttributes(): void {
		// TODO: implement initAttributes
	}

	enableAttribute(attribute: i32): void {
		// TODO: implement enableAttribute
	}

	disableUnusedAttributes(): void {
		// TODO: implement disableUnusedAttributes
	}
}
// r125 - WebGLBackground implementation in AssemblyScript
import { Side } from '../../constants'
import { Color } from '../../math/Color'
import { Scene } from '../../scenes/Scene'
import { Camera } from '../../cameras/Camera'
import { WebGLState } from './WebGLState'
import { WebGLObjects } from './WebGLObjects'

// Forward declarations for types we'll need but may not be fully implemented yet
export class RenderList {
	// Mock render list for now
	unshift(object: any, geometry: any, material: any, groupOrder: f32, z: f32, group: any): void {
		// TODO: Implement render list functionality
	}
}

export class Mesh {
	geometry: any = null
	material: any = null
	matrixWorld: any = null
	onBeforeRender: ((renderer: any, scene: any, camera: any) => void) | null = null

	constructor(geometry: any, material: any) {
		this.geometry = geometry
		this.material = material
	}
}

export class BoxBufferGeometry {
	constructor(width: f32, height: f32, depth: f32) {
		// Mock implementation
	}

	removeAttribute(name: string): void {
		// Mock implementation
	}
}

export class PlaneBufferGeometry {
	constructor(width: f32, height: f32) {
		// Mock implementation  
	}

	removeAttribute(name: string): void {
		// Mock implementation
	}
}

export class ShaderMaterial {
	type: string = ""
	uniforms: Map<string, any> = new Map()
	vertexShader: string = ""
	fragmentShader: string = ""
	side: Side = Side.FrontSide
	depthTest: boolean = true
	depthWrite: boolean = true
	fog: boolean = true
	needsUpdate: boolean = false

	constructor(params: any) {
		// Mock implementation
	}
}

export class Texture {
	version: i32 = 0
	isTexture: boolean = true
	isCubeTexture: boolean = false
	isWebGLRenderTargetCube: boolean = false
	matrixAutoUpdate: boolean = true
	matrix: any = null

	updateMatrix(): void {
		// Mock implementation
	}
}

export class WebGLBackground {
	private clearColor: Color = new Color(0x000000)
	private clearAlpha: f32 = 0.0
	private planeMesh: Mesh | null = null
	private boxMesh: Mesh | null = null
	private currentBackground: any = null
	private currentBackgroundVersion: i32 = 0

	constructor(
		private renderer: any, // WebGLRenderer
		private state: WebGLState,
		private objects: WebGLObjects,
		private premultipliedAlpha: boolean
	) {}

	render(renderList: RenderList, scene: Scene, camera: Camera, forceClear: boolean = false): void {
		let background = scene.background

		// Ignore background in AR/VR
		// TODO: Add VR support when available
		// const vr = this.renderer.vr
		// const session = vr.getSession && vr.getSession()
		// if (session && session.environmentBlendMode === 'additive') {
		// 	background = null
		// }

		if (background === null) {
			this.setClear(this.clearColor, this.clearAlpha)
			this.currentBackground = null
			this.currentBackgroundVersion = 0
		} else if (background && (background as any).isColor) {
			this.setClear(background as Color, 1.0)
			forceClear = true
			this.currentBackground = null
			this.currentBackgroundVersion = 0
		}

		if (this.renderer.autoClear || forceClear) {
			this.renderer.clear(
				this.renderer.autoClearColor,
				this.renderer.autoClearDepth,
				this.renderer.autoClearStencil
			)
		}

		// Handle cube texture backgrounds
		if (background && 
			((background as Texture).isCubeTexture || (background as Texture).isWebGLRenderTargetCube)) {
			
			if (this.boxMesh === null) {
				this.boxMesh = new Mesh(
					new BoxBufferGeometry(1, 1, 1),
					new ShaderMaterial({
						type: 'BackgroundCubeMaterial',
						// uniforms: cloneUniforms(ShaderLib.cube.uniforms),
						// vertexShader: ShaderLib.cube.vertexShader,  
						// fragmentShader: ShaderLib.cube.fragmentShader,
						side: Side.BackSide,
						depthTest: false,
						depthWrite: false,
						fog: false,
					})
				)

				this.boxMesh.geometry.removeAttribute('normal')
				this.boxMesh.geometry.removeAttribute('uv')

				this.boxMesh.onBeforeRender = (renderer: any, scene: any, camera: any): void => {
					// this.matrixWorld.copyPosition(camera.matrixWorld)
				}

				// TODO: Add property descriptor support when available
				// Object.defineProperty(boxMesh.material, 'map', {
				// 	get: function() {
				// 		return this.uniforms.tCube.value
				// 	},
				// })

				this.objects.update(this.boxMesh)
			}

			const texture = (background as Texture).isWebGLRenderTargetCube ? 
				(background as any).texture : background as Texture

			// this.boxMesh.material.uniforms.tCube.value = texture
			// this.boxMesh.material.uniforms.tFlip.value = 
			// 	(background as Texture).isWebGLRenderTargetCube ? 1 : -1

			if (this.currentBackground !== background || 
				this.currentBackgroundVersion !== texture.version) {
				this.boxMesh.material.needsUpdate = true

				this.currentBackground = background
				this.currentBackgroundVersion = texture.version
			}

			// Push to the pre-sorted opaque render list
			renderList.unshift(this.boxMesh, this.boxMesh.geometry, this.boxMesh.material, 0, 0, null)

		} else if (background && (background as Texture).isTexture) {
			// Handle 2D texture backgrounds
			if (this.planeMesh === null) {
				this.planeMesh = new Mesh(
					new PlaneBufferGeometry(2, 2),
					new ShaderMaterial({
						type: 'BackgroundMaterial',
						// uniforms: cloneUniforms(ShaderLib.background.uniforms),
						// vertexShader: ShaderLib.background.vertexShader,
						// fragmentShader: ShaderLib.background.fragmentShader,
						side: Side.FrontSide,
						depthTest: false,
						depthWrite: false,
						fog: false,
					})
				)

				this.planeMesh.geometry.removeAttribute('normal')

				// TODO: Add property descriptor support when available
				// Object.defineProperty(planeMesh.material, 'map', {
				// 	get: function() {
				// 		return this.uniforms.t2D.value
				// 	},
				// })

				this.objects.update(this.planeMesh)
			}

			const bgTexture = background as Texture
			// this.planeMesh.material.uniforms.t2D.value = bgTexture

			if (bgTexture.matrixAutoUpdate === true) {
				bgTexture.updateMatrix()
			}

			// this.planeMesh.material.uniforms.uvTransform.value.copy(bgTexture.matrix)

			if (this.currentBackground !== background || 
				this.currentBackgroundVersion !== bgTexture.version) {
				this.planeMesh.material.needsUpdate = true

				this.currentBackground = background
				this.currentBackgroundVersion = bgTexture.version
			}

			// Push to the pre-sorted opaque render list
			renderList.unshift(this.planeMesh, this.planeMesh.geometry, this.planeMesh.material, 0, 0, null)
		}
	}

	private setClear(color: Color, alpha: f32): void {
		// TODO: Implement state.buffers.color.setClear when WebGLState is ready
		// this.state.buffers.color.setClear(color.r, color.g, color.b, alpha, this.premultipliedAlpha)
	}

	getClearColor(): Color {
		return this.clearColor
	}

	setClearColor(color: Color, alpha: f32 = 1.0): void {
		this.clearColor.copy(color)
		this.clearAlpha = alpha
		this.setClear(this.clearColor, this.clearAlpha)
	}

	getClearAlpha(): f32 {
		return this.clearAlpha
	}

	setClearAlpha(alpha: f32): void {
		this.clearAlpha = alpha
		this.setClear(this.clearColor, this.clearAlpha)
	}
}
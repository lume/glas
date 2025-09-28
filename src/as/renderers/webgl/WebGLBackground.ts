// r125 - WebGLBackground implementation in AssemblyScript
import { Side } from '../../constants'
import { Color } from '../../math/Color'
import { Scene } from '../../scenes/Scene'
import { Camera } from '../../cameras/Camera'
import { WebGLState } from './WebGLState'
import { WebGLObjects } from './WebGLObjects'
import { Mesh } from '../../objects/Mesh'
import { BoxGeometry } from '../../geometries/BoxGeometry'
import { PlaneGeometry } from '../../geometries/PlaneGeometry'
import { Material } from '../../materials/Material'
import { ShaderMaterial } from '../../materials/ShaderMaterial'
import { WebGLRenderList } from './WebGLRenderLists'

export interface Texture {
	version: i32
	isTexture: boolean
	isCubeTexture: boolean
	isWebGLRenderTargetCube: boolean
	matrixAutoUpdate: boolean
	matrix: any

	updateMatrix(): void
}

export class WebGLBackground {
	private clearColor: Color = new Color(0x000000)
	private clearAlpha: f32 = 0.0
	private planeMesh: Mesh<PlaneGeometry> | null = null
	private boxMesh: Mesh<BoxGeometry> | null = null
	private currentBackground: any = null
	private currentBackgroundVersion: i32 = 0

	constructor(
		private renderer: any, // WebGLRenderer
		private state: WebGLState,
		private objects: WebGLObjects,
		private premultipliedAlpha: boolean
	) {}

	render(renderList: WebGLRenderList, scene: Scene, camera: Camera, forceClear: boolean = false): void {
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
				const boxGeometry = new BoxGeometry(1, 1, 1, 1, 1, 1)
				const boxMaterial = new ShaderMaterial({
					type: 'BackgroundCubeMaterial',
					// uniforms: cloneUniforms(ShaderLib.cube.uniforms),
					// vertexShader: ShaderLib.cube.vertexShader,  
					// fragmentShader: ShaderLib.cube.fragmentShader,
					side: Side.BackSide,
					depthTest: false,
					depthWrite: false,
					fog: false,
				})

				this.boxMesh = new Mesh<BoxGeometry>(boxGeometry, [boxMaterial])

				// Remove normal and uv attributes
				// boxGeometry.removeAttribute('normal')
				// boxGeometry.removeAttribute('uv')

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
				this.boxMesh.materials[0].needsUpdate = true

				this.currentBackground = background
				this.currentBackgroundVersion = texture.version
			}

			// Push to the pre-sorted opaque render list
			renderList.unshift(this.boxMesh, this.boxMesh.geometry, this.boxMesh.materials[0], 0, 0, null)

		} else if (background && (background as Texture).isTexture) {
			// Handle 2D texture backgrounds
			if (this.planeMesh === null) {
				const planeGeometry = new PlaneGeometry(2, 2)
				const planeMaterial = new ShaderMaterial({
					type: 'BackgroundMaterial',
					// uniforms: cloneUniforms(ShaderLib.background.uniforms),
					// vertexShader: ShaderLib.background.vertexShader,
					// fragmentShader: ShaderLib.background.fragmentShader,
					side: Side.FrontSide,
					depthTest: false,
					depthWrite: false,
					fog: false,
				})

				this.planeMesh = new Mesh<PlaneGeometry>(planeGeometry, [planeMaterial])

				// Remove normal attribute
				// planeGeometry.removeAttribute('normal')

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
				this.planeMesh.materials[0].needsUpdate = true

				this.currentBackground = background
				this.currentBackgroundVersion = bgTexture.version
			}

			// Push to the pre-sorted opaque render list
			renderList.unshift(this.planeMesh, this.planeMesh.geometry, this.planeMesh.materials[0], 0, 0, null)
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
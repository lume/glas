/**
 * Tests for WebGLBackground - based on Three.js r125 WebGLBackground functionality
 */

import { WebGLBackground, Texture } from './WebGLBackground'
import { WebGLState } from './WebGLState'
import { WebGLObjects } from './WebGLObjects'
import { WebGLRenderList } from './WebGLRenderLists'
import { Color } from '../../math/Color'
import { Scene } from '../../scenes/Scene'
import { Camera } from '../../cameras/Camera'
import { Mesh } from '../../objects/Mesh'
import { BoxGeometry } from '../../geometries/BoxGeometry'
import { PlaneGeometry } from '../../geometries/PlaneGeometry'
import { ShaderMaterial } from '../../materials/ShaderMaterial'

// Mock implementations for testing
class MockWebGLRenderer {
	autoClear: boolean = true
	autoClearColor: boolean = true
	autoClearDepth: boolean = true
	autoClearStencil: boolean = true

	private clearCalled: boolean = false

	clear(color: boolean, depth: boolean, stencil: boolean): void {
		this.clearCalled = true
	}

	wasClearCalled(): boolean {
		return this.clearCalled
	}

	resetClearFlag(): void {
		this.clearCalled = false
	}
}

class MockWebGLState extends WebGLState {
	constructor() {
		super()
	}
}

class MockWebGLObjects extends WebGLObjects {
	private updatedObjects: any[] = []

	update(object: any): void {
		this.updatedObjects.push(object)
	}

	getUpdatedObjects(): any[] {
		return this.updatedObjects
	}

	resetUpdatedObjects(): void {
		this.updatedObjects = []
	}
}

class MockWebGLRenderList extends WebGLRenderList {
	private items: any[] = []

	unshift(object: any, geometry: any, material: any, groupOrder: f32, z: f32, group: any): void {
		this.items.unshift({
			object,
			geometry,
			material,
			groupOrder,
			z,
			group
		})
	}

	getItems(): any[] {
		return this.items
	}

	reset(): void {
		this.items = []
	}
}

class MockScene extends Scene {
	background: any = null

	constructor(background: any = null) {
		super()
		this.background = background
	}
}

class MockCamera extends Camera {
	constructor() {
		super()
	}
}

class MockColorBackground extends Color {
	isColor: boolean = true

	constructor(color: i32 = 0x000000) {
		super(color)
	}
}

class MockTexture implements Texture {
	isTexture: boolean = true
	isCubeTexture: boolean = false
	isWebGLRenderTargetCube: boolean = false
	version: i32 = 1
	matrixAutoUpdate: boolean = true
	matrix: any = null

	constructor(isCube: boolean = false, isRenderTarget: boolean = false) {
		this.isCubeTexture = isCube
		this.isWebGLRenderTargetCube = isRenderTarget
	}

	incrementVersion(): void {
		this.version++
	}

	updateMatrix(): void {
		// Mock implementation
	}
}

describe('WebGLBackground', () => {
	let renderer: MockWebGLRenderer
	let state: MockWebGLState
	let objects: MockWebGLObjects
	let background: WebGLBackground
	let renderList: MockWebGLRenderList
	let scene: MockScene
	let camera: MockCamera

	beforeEach(() => {
		renderer = new MockWebGLRenderer()
		state = new MockWebGLState()
		objects = new MockWebGLObjects()
		background = new WebGLBackground(renderer, state, objects, false)
		renderList = new MockWebGLRenderList()
		scene = new MockScene()
		camera = new MockCamera()
	})

	describe('constructor', () => {
		test('should create WebGLBackground instance', () => {
			expect(background).toBeDefined()
		})

		test('should initialize with premultiplied alpha', () => {
			const bgWithAlpha = new WebGLBackground(renderer, state, objects, true)
			expect(bgWithAlpha).toBeDefined()
		})
	})

	describe('clear color management', () => {
		test('should have default clear color and alpha', () => {
			const clearColor = background.getClearColor()
			expect(clearColor.r).toBe(0)
			expect(clearColor.g).toBe(0)
			expect(clearColor.b).toBe(0)
			expect(background.getClearAlpha()).toBe(0)
		})

		test('should set clear color', () => {
			const testColor = new Color(0xff0000) // Red
			background.setClearColor(testColor, 0.5)

			const clearColor = background.getClearColor()
			expect(clearColor.r).toBe(1)
			expect(clearColor.g).toBe(0)
			expect(clearColor.b).toBe(0)
			expect(background.getClearAlpha()).toBe(0.5)
		})

		test('should set clear alpha', () => {
			background.setClearAlpha(0.8)
			expect(background.getClearAlpha()).toBe(0.8)
		})
	})

	describe('render method - no background', () => {
		test('should clear when scene has no background', () => {
			scene.background = null
			renderer.resetClearFlag()

			background.render(renderList, scene, camera, false)

			expect(renderer.wasClearCalled()).toBe(true)
			expect(renderList.getItems().length).toBe(0)
		})

		test('should force clear when background is null and forceClear is true', () => {
			scene.background = null
			renderer.autoClear = false
			renderer.resetClearFlag()

			background.render(renderList, scene, camera, true)

			expect(renderer.wasClearCalled()).toBe(true)
		})
	})

	describe('render method - color background', () => {
		test('should handle color background', () => {
			const colorBg = new MockColorBackground(0x00ff00) // Green
			scene.background = colorBg
			renderer.resetClearFlag()

			background.render(renderList, scene, camera, false)

			expect(renderer.wasClearCalled()).toBe(true)
			expect(renderList.getItems().length).toBe(0)
		})
	})

	describe('render method - texture background', () => {
		test('should handle 2D texture background', () => {
			const textureBg = new MockTexture(false, false)
			scene.background = textureBg
			renderList.reset()
			objects.resetUpdatedObjects()

			background.render(renderList, scene, camera, false)

			// Should create and add plane mesh to render list
			expect(renderList.getItems().length).toBe(1)
			expect(objects.getUpdatedObjects().length).toBe(1)

			const renderItem = renderList.getItems()[0]
			expect(renderItem.object).toBeDefined()
			expect(renderItem.geometry).toBeDefined()
			expect(renderItem.material).toBeDefined()
		})

		test('should reuse plane mesh for subsequent renders with same texture', () => {
			const textureBg = new MockTexture(false, false)
			scene.background = textureBg
			
			// First render
			background.render(renderList, scene, camera, false)
			const firstUpdateCount = objects.getUpdatedObjects().length

			renderList.reset()
			objects.resetUpdatedObjects()

			// Second render with same texture
			background.render(renderList, scene, camera, false)

			expect(renderList.getItems().length).toBe(1)
			expect(objects.getUpdatedObjects().length).toBe(0) // Should not update again
		})

		test('should update material when texture version changes', () => {
			const textureBg = new MockTexture(false, false)
			scene.background = textureBg

			// First render
			background.render(renderList, scene, camera, false)
			let renderItem = renderList.getItems()[0]
			expect(renderItem.material.needsUpdate).toBe(true)

			// Reset material update flag
			renderItem.material.needsUpdate = false
			renderList.reset()

			// Change texture version and render again
			textureBg.incrementVersion()
			background.render(renderList, scene, camera, false)

			renderItem = renderList.getItems()[0]
			expect(renderItem.material.needsUpdate).toBe(true)
		})
	})

	describe('render method - cube texture background', () => {
		test('should handle cube texture background', () => {
			const cubeBg = new MockTexture(true, false)
			scene.background = cubeBg
			renderList.reset()
			objects.resetUpdatedObjects()

			background.render(renderList, scene, camera, false)

			// Should create and add box mesh to render list
			expect(renderList.getItems().length).toBe(1)
			expect(objects.getUpdatedObjects().length).toBe(1)

			const renderItem = renderList.getItems()[0]
			expect(renderItem.object).toBeDefined()
			expect(renderItem.geometry).toBeDefined()
			expect(renderItem.material).toBeDefined()
		})

		test('should handle WebGL render target cube', () => {
			const renderTargetCube = new MockTexture(false, true)
			scene.background = renderTargetCube
			renderList.reset()
			objects.resetUpdatedObjects()

			background.render(renderList, scene, camera, false)

			expect(renderList.getItems().length).toBe(1)
			expect(objects.getUpdatedObjects().length).toBe(1)
		})

		test('should reuse box mesh for subsequent renders', () => {
			const cubeBg = new MockTexture(true, false)
			scene.background = cubeBg

			// First render
			background.render(renderList, scene, camera, false)
			const firstUpdateCount = objects.getUpdatedObjects().length

			renderList.reset()
			objects.resetUpdatedObjects()

			// Second render with same cube texture
			background.render(renderList, scene, camera, false)

			expect(renderList.getItems().length).toBe(1)
			expect(objects.getUpdatedObjects().length).toBe(0) // Should not update again
		})

		test('should update box material when cube texture version changes', () => {
			const cubeBg = new MockTexture(true, false)
			scene.background = cubeBg

			// First render
			background.render(renderList, scene, camera, false)
			let renderItem = renderList.getItems()[0]
			expect(renderItem.material.needsUpdate).toBe(true)

			// Reset material update flag
			renderItem.material.needsUpdate = false
			renderList.reset()

			// Change texture version and render again
			cubeBg.incrementVersion()
			background.render(renderList, scene, camera, false)

			renderItem = renderList.getItems()[0]
			expect(renderItem.material.needsUpdate).toBe(true)
		})
	})

	describe('autoClear behavior', () => {
		test('should respect renderer autoClear setting', () => {
			renderer.autoClear = false
			renderer.resetClearFlag()
			scene.background = null

			background.render(renderList, scene, camera, false)

			expect(renderer.wasClearCalled()).toBe(false)
		})

		test('should clear when forceClear is true regardless of autoClear', () => {
			renderer.autoClear = false
			renderer.resetClearFlag() 
			scene.background = null

			background.render(renderList, scene, camera, true)

			expect(renderer.wasClearCalled()).toBe(true)
		})
	})

	describe('background switching', () => {
		test('should handle switching from no background to color background', () => {
			// Start with no background
			scene.background = null
			background.render(renderList, scene, camera, false)

			// Switch to color background
			scene.background = new MockColorBackground(0xff0000)
			renderer.resetClearFlag()
			renderList.reset()

			background.render(renderList, scene, camera, false)

			expect(renderer.wasClearCalled()).toBe(true)
			expect(renderList.getItems().length).toBe(0)
		})

		test('should handle switching from texture to cube texture', () => {
			// Start with 2D texture
			scene.background = new MockTexture(false, false)
			background.render(renderList, scene, camera, false)
			expect(renderList.getItems().length).toBe(1)

			// Switch to cube texture
			scene.background = new MockTexture(true, false)
			renderList.reset()

			background.render(renderList, scene, camera, false)

			expect(renderList.getItems().length).toBe(1)
			// Both plane and box meshes should now exist but only box should be in render list
		})
	})
})
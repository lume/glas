import { Camera } from './Camera'
import { Object3D } from '../core'

// @unmanaged
@final
class OrthographicView {
	enabled: boolean
	fullWidth: f32
	fullHeight: f32
	offsetX: f32
	offsetY: f32
	width: f32
	height: f32
}

/**
 * Camera with orthographic projection
 *
 * @example
 * var camera = new THREE.OrthographicCamera( width / - 2, width / 2, height / 2, height / - 2, 1, 1000 );
 * scene.add( camera );
 *
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/cameras/OrthographicCamera.js">src/cameras/OrthographicCamera.js</a>
 */
export class OrthographicCamera extends Camera {
	readonly isOrthographicCamera: boolean = true

	type: string = 'OrthographicCamera'

	zoom: f32 = 1
	view: OrthographicView | null = null

	/**
	 * @param left `f32` - Camera frustum left plane.
	 * @param right `f32` - Camera frustum right plane.
	 * @param top `f32` - Camera frustum top plane.
	 * @param bottom `f32` - Camera frustum bottom plane.
	 * @param near `f32` - Camera frustum near plane.
	 * @param far `f32` - Camera frustum far plane.
	 */
	constructor(
		public left: f32 = -1,
		public right: f32 = 1,
		public top: f32 = 1,
		public bottom: f32 = -1,
		public near: f32 = 0.1,
		public far: f32 = 2000
	) {
		super()
		this.updateProjectionMatrix()
	}

	setViewOffset(fullWidth: f32, fullHeight: f32, offsetX: f32, offsetY: f32, width: f32, height: f32): void {
		let view = this.view

		if (!view) {
			this.view = view = {
				enabled: true,
				fullWidth: 1,
				fullHeight: 1,
				offsetX: 0,
				offsetY: 0,
				width: 1,
				height: 1,
			}
		}

		view.enabled = true
		view.fullWidth = fullWidth
		view.fullHeight = fullHeight
		view.offsetX = offsetX
		view.offsetY = offsetY
		view.width = width
		view.height = height

		this.updateProjectionMatrix()
	}

	clearViewOffset(): void {
		const view = this.view

		if (view) {
			view.enabled = false
		}

		this.updateProjectionMatrix()
	}

	/**
	 * Updates the camera projection matrix. Must be called after change of parameters.
	 */
	updateProjectionMatrix(): void {
		const dx = (this.right - this.left) / (2 * this.zoom)
		const dy = (this.top - this.bottom) / (2 * this.zoom)
		const cx = (this.right + this.left) / 2
		const cy = (this.top + this.bottom) / 2

		let left = cx - dx
		let right = cx + dx
		let top = cy + dy
		let bottom = cy - dy

		const view = this.view

		if (view && view.enabled) {
			const zoomW = this.zoom / (view.width / view.fullWidth)
			const zoomH = this.zoom / (view.height / view.fullHeight)
			const scaleW = (this.right - this.left) / view.width
			const scaleH = (this.top - this.bottom) / view.height

			left += scaleW * (view.offsetX / zoomW)
			right = left + scaleW * (view.width / zoomW)
			top -= scaleH * (view.offsetY / zoomH)
			bottom = top - scaleH * (view.height / zoomH)
		}

		this.projectionMatrix.makeOrthographic(left, right, top, bottom, this.near, this.far)

		this.projectionMatrixInverse.getInverse(this.projectionMatrix)
	}

	// TODO copy method in Camera class
	// clone(): OrthographicCamera {
	// 	return new OrthographicCamera().copy(this)
	// }

	// toJSON(meta) {
	// 	const data = Object3D.prototype.toJSON.call(this, meta)

	// 	data.object.zoom = this.zoom
	// 	data.object.left = this.left
	// 	data.object.right = this.right
	// 	data.object.top = this.top
	// 	data.object.bottom = this.bottom
	// 	data.object.near = this.near
	// 	data.object.far = this.far

	// 	if (this.view !== null) data.object.view = Object.assign({}, this.view)

	// 	return data
	// }
}

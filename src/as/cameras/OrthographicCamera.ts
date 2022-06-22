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
	/**
	 * @param left Camera frustum left plane.
	 * @param right Camera frustum right plane.
	 * @param top Camera frustum top plane.
	 * @param bottom Camera frustum bottom plane.
	 * @param near Camera frustum near plane.
	 * @param far Camera frustum far plane.
	 */

	type: string = 'OrthographicCamera'

	zoom: f32 = 1
	view: null | OrthographicView = null
	isOrthographicCamera: boolean = true

	/**
	 * Camera frustum left plane.
	 */
	//  left: f32

	/**
	 * Camera frustum right plane.
	 */
	//  right: f32

	/**
	 * Camera frustum top plane.
	 */
	//  top: f32

	/**
	 * Camera frustum bottom plane.
	 */
	//  bottom: f32

	/**
	 * Camera frustum near plane.
	 */
	//  near: f32

	/**
	 * Camera frustum far plane.
	 */
	//  far: f32

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

	updateProjectionMatrix(): void {
		const dx = (this.right - this.left) / (2 * this.zoom)
		const dy = (this.top - this.bottom) / (2 * this.zoom)
		const cx = (this.right + this.left) / 2
		const cy = (this.top + this.bottom) / 2

		let left = cx - dx
		let right = cx + dx
		let top = cy + dy
		let bottom = cy - dy

		if (this.view !== null && this.view.enabled) {
			const zoomW = this.zoom / (this.view.width / this.view.fullWidth)
			const zoomH = this.zoom / (this.view.height / this.view.fullHeight)
			const scaleW = (this.right - this.left) / this.view.width
			const scaleH = (this.top - this.bottom) / this.view.height

			left += scaleW * (this.view.offsetX / zoomW)
			right = left + scaleW * (this.view.width / zoomW)
			top -= scaleH * (this.view.offsetY / zoomH)
			bottom = top - scaleH * (this.view.height / zoomH)
		}

		this.projectionMatrix.makeOrthographic(left, right, top, bottom, this.near, this.far)

		this.projectionMatrixInverse.getInverse(this.projectionMatrix)
	}

	setViewOffset(fullWidth: f32, fullHeight: f32, offsetX: f32, offsetY: f32, width: f32, height: f32): void {
		if (this.view === null) {
			this.view = {
				enabled: true,
				fullWidth: 1,
				fullHeight: 1,
				offsetX: 0,
				offsetY: 0,
				width: 1,
				height: 1,
			}
		}

		this.view.enabled = true
		this.view.fullWidth = fullWidth
		this.view.fullHeight = fullHeight
		this.view.offsetX = offsetX
		this.view.offsetY = offsetY
		this.view.width = width
		this.view.height = height

		this.updateProjectionMatrix()
	}

	clearViewOffset(): void {
		if (this.view !== null) {
			this.view.enabled = false
		}

		this.updateProjectionMatrix()
	}

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

	/**
	 * Updates the camera projection matrix. Must be called after change of parameters.
	 */
	// updateProjectionMatrix(): void
	// setViewOffset(fullWidth: f32, fullHeight: f32, offsetX: f32, offsetY: f32, width: f32, height: f32): void
	// clearViewOffset(): void
	// toJSON(meta?: any): any
}

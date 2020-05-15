import {Camera} from './Camera'

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
	constructor(left: f32, right: f32, top: f32, bottom: f32, near?: f32, far?: f32)

	type: 'OrthographicCamera'

	isOrthographicCamera: true

	zoom: f32
	view: null | {
		enabled: boolean
		fullWidth: f32
		fullHeight: f32
		offsetX: f32
		offsetY: f32
		width: f32
		height: f32
	}

	/**
	 * Camera frustum left plane.
	 */
	left: f32

	/**
	 * Camera frustum right plane.
	 */
	right: f32

	/**
	 * Camera frustum top plane.
	 */
	top: f32

	/**
	 * Camera frustum bottom plane.
	 */
	bottom: f32

	/**
	 * Camera frustum near plane.
	 */
	near: f32

	/**
	 * Camera frustum far plane.
	 */
	far: f32

	/**
	 * Updates the camera projection matrix. Must be called after change of parameters.
	 */
	updateProjectionMatrix(): void
	setViewOffset(fullWidth: f32, fullHeight: f32, offsetX: f32, offsetY: f32, width: f32, height: f32): void
	clearViewOffset(): void
	toJSON(meta?: any): any
}

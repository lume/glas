import {Camera} from './Camera'

/**
 * Camera with perspective projection.
 *
 * # example
 *     var camera = new THREE.PerspectiveCamera( 45, width / height, 1, 1000 );
 *     scene.add( camera );
 *
 * @source https://github.com/mrdoob/three.js/blob/master/src/cameras/PerspectiveCamera.js
 */
export class PerspectiveCamera extends Camera {
	/**
	 * @param fov Camera frustum vertical field of view. Default value is 50.
	 * @param aspect Camera frustum aspect ratio. Default value is 1.
	 * @param near Camera frustum near plane. Default value is 0.1.
	 * @param far Camera frustum far plane. Default value is 2000.
	 */
	constructor(fov?: f32, aspect?: f32, near?: f32, far?: f32)

	type: 'PerspectiveCamera'

	isPerspectiveCamera: true

	zoom: f32

	/**
	 * Camera frustum vertical field of view, from bottom to top of view, in degrees.
	 */
	fov: f32

	/**
	 * Camera frustum aspect ratio, window width divided by window height.
	 */
	aspect: f32

	/**
	 * Camera frustum near plane.
	 */
	near: f32

	/**
	 * Camera frustum far plane.
	 */
	far: f32

	focus: f32
	view: null | {
		enabled: boolean
		fullWidth: f32
		fullHeight: f32
		offsetX: f32
		offsetY: f32
		width: f32
		height: f32
	}
	filmGauge: f32
	filmOffset: f32

	setFocalLength(focalLength: f32): void
	getFocalLength(): f32
	getEffectiveFOV(): f32
	getFilmWidth(): f32
	getFilmHeight(): f32

	/**
	 * Sets an offset in a larger frustum. This is useful for multi-window or multi-monitor/multi-machine setups.
	 * For example, if you have 3x2 monitors and each monitor is 1920x1080 and the monitors are in grid like this:
	 *
	 *     +---+---+---+
	 *     | A | B | C |
	 *     +---+---+---+
	 *     | D | E | F |
	 *     +---+---+---+
	 *
	 * then for each monitor you would call it like this:
	 *
	 *     var w = 1920;
	 *     var h = 1080;
	 *     var fullWidth = w * 3;
	 *     var fullHeight = h * 2;
	 *
	 *     // A
	 *     camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 0, w, h );
	 *     // B
	 *     camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 0, w, h );
	 *     // C
	 *     camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 0, w, h );
	 *     // D
	 *     camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 1, w, h );
	 *     // E
	 *     camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 1, w, h );
	 *     // F
	 *     camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 1, w, h ); Note there is no reason monitors have to be the same size or in a grid.
	 *
	 * @param fullWidth full width of multiview setup
	 * @param fullHeight full height of multiview setup
	 * @param x horizontal offset of subcamera
	 * @param y vertical offset of subcamera
	 * @param width width of subcamera
	 * @param height height of subcamera
	 */
	setViewOffset(fullWidth: f32, fullHeight: f32, x: f32, y: f32, width: f32, height: f32): void
	clearViewOffset(): void

	/**
	 * Updates the camera projection matrix. Must be called after change of parameters.
	 */
	updateProjectionMatrix(): void
	toJSON(meta?: any): any

	/**
	 * @deprecated Use {@link PerspectiveCamera#setFocalLength .setFocalLength()} and {@link PerspectiveCamera#filmGauge .filmGauge} instead.
	 */
	setLens(focalLength: f32, frameHeight?: f32): void
}

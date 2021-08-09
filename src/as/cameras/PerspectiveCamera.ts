/**
 * @author mrdoob / http://mrdoob.com/
 * @author greggman / http://games.greggman.com/
 * @author zz85 / http://www.lab4games.net/zz85/blog
 * @author tschw
 * @author Joe Pea / http://github.com/trusktr
 */

import { Camera } from './Camera'
import * as MathUtils from '../math/MathUtils'

class ViewProperties {
	enabled: boolean
	fullWidth: f32
	fullHeight: f32
	offsetX: f32
	offsetY: f32
	width: f32
	height: f32
}

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
	// TODO, unable to override base class properties,
	// https://github.com/AssemblyScript/assemblyscript/issues/1091
	// readonly type: string = 'PerspectiveCamera'
	// isPerspectiveCamera: boolean = true

	zoom: f32 = 1

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

	focus: f32 = 10

	view: ViewProperties | null = null

	filmGauge: f32 = 35 // width of the film (default in millimeters)
	filmOffset: f32 = 0 // horizontal film offset (same unit as gauge)

	/**
	 * @param fov Camera frustum vertical field of view. Default value is 50.
	 * @param aspect Camera frustum aspect ratio. Default value is 1.
	 * @param near Camera frustum near plane. Default value is 0.1.
	 * @param far Camera frustum far plane. Default value is 2000.
	 */
	constructor(fov: f32 = 50, aspect: f32 = 1, near: f32 = 0.1, far: f32 = 2000) {
		super()

		this.type = 'PerspectiveCamera'
		this.isPerspectiveCamera = true

		this.fov = fov

		this.near = near
		this.far = far

		this.aspect = aspect

		this.updateProjectionMatrix()
	}

	// copy(source: Camera, recursive: boolean = false): this {
	// 	super.copy( source, recursive );

	// 	this.fov = source.fov;
	// 	this.zoom = source.zoom;

	// 	this.near = source.near;
	// 	this.far = source.far;
	// 	this.focus = source.focus;

	// 	this.aspect = source.aspect;
	// 	this.view = source.view === null ? null : Object.assign( {}, source.view );

	// 	this.filmGauge = source.filmGauge;
	// 	this.filmOffset = source.filmOffset;

	// 	return this;
	// }

	// clone(): PerspectiveCamera {
	// 	const p = new PerspectiveCamera()
	// 	p.copy(this)
	// 	return p
	// }

	// /**
	//  * Sets the FOV by focal length in respect to the current .filmGauge.
	//  *
	//  * The default film gauge is 35, so that the focal length can be specified for
	//  * a 35mm (full frame) camera.
	//  *
	//  * Values for focal length and film gauge must have the same unit.
	//  */
	// setFocalLength(focalLength: f32): void {
	// 	// see http://www.bobatkins.com/photography/technical/field_of_view.html
	// 	var vExtentSlope = (0.5 * this.getFilmHeight()) / focalLength

	// 	this.fov = _Math.RAD2DEG * 2 * Mathf.atan(vExtentSlope)
	// 	this.updateProjectionMatrix()
	// }

	// /**
	//  * Calculates the focal length from the current .fov and .filmGauge.
	//  */
	// getFocalLength(): f32 {
	// 	var vExtentSlope = Mathf.tan(_Math.DEG2RAD * 0.5 * this.fov)

	// 	return (0.5 * this.getFilmHeight()) / vExtentSlope
	// }

	// getEffectiveFOV(): f32 {
	// 	return _Math.RAD2DEG * 2 * Mathf.atan(Mathf.tan(_Math.DEG2RAD * 0.5 * this.fov) / this.zoom)
	// }

	getFilmWidth(): f32 {
		// film not completely covered in portrait format (aspect < 1)
		return this.filmGauge * Mathf.min(this.aspect, 1)
	}

	// getFilmHeight(): f32 {
	// 	// film not completely covered in landscape format (aspect > 1)
	// 	return this.filmGauge / Mathf.max(this.aspect, 1)
	// }

	// /**
	//  * Sets an offset in a larger frustum. This is useful for multi-window or multi-monitor/multi-machine setups.
	//  * For example, if you have 3x2 monitors and each monitor is 1920x1080 and the monitors are in grid like this:
	//  *
	//  *     +---+---+---+
	//  *     | A | B | C |
	//  *     +---+---+---+
	//  *     | D | E | F |
	//  *     +---+---+---+
	//  *
	//  * then for each monitor you would call it like this:
	//  *
	//  *     var w = 1920;
	//  *     var h = 1080;
	//  *     var fullWidth = w * 3;
	//  *     var fullHeight = h * 2;
	//  *
	//  *     // A
	//  *     camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 0, w, h );
	//  *     // B
	//  *     camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 0, w, h );
	//  *     // C
	//  *     camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 0, w, h );
	//  *     // D
	//  *     camera.setViewOffset( fullWidth, fullHeight, w * 0, h * 1, w, h );
	//  *     // E
	//  *     camera.setViewOffset( fullWidth, fullHeight, w * 1, h * 1, w, h );
	//  *     // F
	//  *     camera.setViewOffset( fullWidth, fullHeight, w * 2, h * 1, w, h ); Note there is no reason monitors have to be the same size or in a grid.
	//  *
	//  * @param fullWidth full width of multiview setup
	//  * @param fullHeight full height of multiview setup
	//  * @param x horizontal offset of subcamera
	//  * @param y vertical offset of subcamera
	//  * @param width width of subcamera
	//  * @param height height of subcamera
	//  */
	// setViewOffset(fullWidth: f32, fullHeight: f32, x: f32, y: f32, width: f32, height: f32): void {
	// 	this.aspect = fullWidth / fullHeight

	// 	if (this.view === null) {
	// 		this.view = new ViewProperties() {
	// 			enabled: true,
	// 			fullWidth: 1,
	// 			fullHeight: 1,
	// 			offsetX: 0,
	// 			offsetY: 0,
	// 			width: 1,
	// 			height: 1,
	// 		}
	// 	}

	// 	this.view.enabled = true
	// 	this.view.fullWidth = fullWidth
	// 	this.view.fullHeight = fullHeight
	// 	this.view.offsetX = x
	// 	this.view.offsetY = y
	// 	this.view.width = width
	// 	this.view.height = height

	// 	this.updateProjectionMatrix()
	// }

	// clearViewOffset(): void {
	// 	if (this.view !== null) {
	// 		this.view.enabled = false
	// 	}

	// 	this.updateProjectionMatrix()
	// }

	/**
	 * Updates the camera projection matrix. Must be called after change of parameters.
	 */
	updateProjectionMatrix(): void {
		var near = this.near,
			top: f32 = (near * Mathf.tan(MathUtils.degToRad(0.5 * this.fov))) / this.zoom,
			height: f32 = 2.0 * top,
			width: f32 = this.aspect * height,
			left: f32 = -0.5 * width,
			view = this.view

		if (view !== null && view.enabled) {
			const fullWidth = view.fullWidth,
				fullHeight = view.fullHeight

			left += (view.offsetX * width) / fullWidth
			top -= (view.offsetY * height) / fullHeight
			width *= view.width / fullWidth
			height *= view.height / fullHeight
		}

		const skew = this.filmOffset
		if (skew !== 0) left += (near * skew) / this.getFilmWidth()

		this.projectionMatrix.makePerspective(left, left + width, top, top - height, near, this.far)

		this.projectionMatrixInverse.getInverse(this.projectionMatrix)
	}

	// toJSON(meta?: any): any {
	// 	var data = super.toJSON(meta)

	// 	data.object.fov = this.fov
	// 	data.object.zoom = this.zoom

	// 	data.object.near = this.near
	// 	data.object.far = this.far
	// 	data.object.focus = this.focus

	// 	data.object.aspect = this.aspect

	// 	if (this.view !== null) data.object.view = Object.assign({}, this.view)

	// 	data.object.filmGauge = this.filmGauge
	// 	data.object.filmOffset = this.filmOffset

	// 	return data
	// }
}

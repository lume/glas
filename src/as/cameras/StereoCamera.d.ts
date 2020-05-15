import {PerspectiveCamera} from './PerspectiveCamera'
import {Camera} from './Camera'

export class StereoCamera extends Camera {
	constructor()

	type: 'StereoCamera'

	aspect: f32
	eyeSep: f32
	cameraL: PerspectiveCamera
	cameraR: PerspectiveCamera

	update(camera: PerspectiveCamera): void
}

import {Camera} from './Camera'

export class PerspectiveCamera extends Camera {
	zoom: f32 = 1
	fov: f32
	aspect: f32
	near: f32
	far: f32
	focus: f32 = 10
	filmGauge: f32 = 35 // width of the film (default in millimeters)
	filmOffset: f32 = 0 // horizontal film offset (same unit as gauge)
}

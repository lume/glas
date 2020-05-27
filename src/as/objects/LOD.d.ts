import {Object3D} from './../core/Object3D'
import {Raycaster} from './../core/Raycaster'
import {Camera} from './../cameras/Camera'
import {Intersection} from '../core/Raycaster'

export class LOD extends Object3D {
	constructor()

	type: 'LOD'

	levels: {distance: f32; object: Object3D}[]

	addLevel(object: Object3D, distance?: f32): this
	getObjectForDistance(distance: f32): Object3D
	raycast(raycaster: Raycaster, intersects: Intersection[]): void
	update(camera: Camera): void
	toJSON(meta: any): any

	/**
	 * @deprecated Use {@link LOD#levels .levels} instead.
	 */
	objects: any[]
}

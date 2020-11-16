import {WebGLGeometries} from './WebGLGeometries'
import {WebGLInfo} from './WebGLInfo'
import {Object3D} from '../../core/Object3D'
import {RenderItem} from './WebGLRenderLists'
import {Mesh} from '../../objects/Mesh'

/**
 * Generic class used to represent WebGL objects
 *
 * @author Joe Pea / http://github.com/trusktr
 * @author Kara Rawson / https://github.com/ZoeDreams
 */
export class WebGLObjects {
	private updateList: Map<i32, f32> = new Map()

	constructor(private geometries: WebGLGeometries, private info: WebGLInfo) {}

	update(object: Mesh): void {
		var frame = this.info.render.frame

		var geometry = object.geometry
		var buffergeometry = this.geometries.get(object, geometry)

		// Update once per frame

		if (!this.updateList.has(buffergeometry.id) || this.updateList.get(buffergeometry.id) !== frame) {
			// TODO `geometry` can be BufferGeometry too (Mesh needs .geometry
			// type to be updated) Currently it can only be Geometry, so
			// isGeometry is always true, for now.
			if (geometry.isGeometry) {
				buffergeometry.updateFromObject(object)
			}

			this.geometries.update(buffergeometry)

			this.updateList[buffergeometry.id] = frame
		}

		return buffergeometry
	}

	dispose(): void {
		this.updateList.clear()
	}
}

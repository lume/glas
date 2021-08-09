/**
 *
 */

import { Geometry } from '../../core/Geometry'
import { Object3D } from '../../core/Object3D'
import { BufferGeometry } from '../../core/BufferGeometry'

export class WebGLGeometries {
	constructor(gl: WebGLRenderingContext, extensions: any, _infoRender: any) {}

	get(object: Object3D, geometry: Geometry): BufferGeometry {
		var buffergeometry = geometries[geometry.id]

		if (buffergeometry) return buffergeometry

		geometry.addEventListener('dispose', onGeometryDispose)

		if (geometry.isBufferGeometry) {
			buffergeometry = geometry
		} else if (geometry.isGeometry) {
			if (geometry._bufferGeometry === undefined) {
				geometry._bufferGeometry = new BufferGeometry().setFromObject(object)
			}

			buffergeometry = geometry._bufferGeometry
		}

		geometries[geometry.id] = buffergeometry

		info.memory.geometries++

		return buffergeometry
	}
}

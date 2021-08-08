import {WebGLRenderingContext} from '../../../../node_modules/aswebglue/src/WebGL'
import {WebGLGeometries} from './WebGLGeometries'
import {WebGLAttributes} from './WebGLAttributes'
import {WebGLInfo} from './WebGLInfo'
import {Object3D} from '../../core/Object3D'
import {RenderItem} from './WebGLRenderLists'
import {Mesh} from '../../objects/Mesh'
import {BufferGeometry} from '../../core/BufferGeometry'

/**
 * Generic class used to represent WebGL objects
 *
 * @author Joe Pea / http://github.com/trusktr
 * @author Kara Rawson / https://github.com/ZoeDreams
 */
export class WebGLObjects {
	// TODO MEMLEAK Three.js used a WeakMap, which AS doesn't have, so we need
	// to manually dispose a geometry on `dispose`. See the next MEMLEAK
	// comment
	private updateMap: Map<BufferGeometry, f32> = new Map()

	constructor(
		private gl: WebGLRenderingContext,
		private geometries: WebGLGeometries,
		private attributes: WebGLAttributes,
		private info: WebGLInfo
	) {}

	update(object: Mesh): BufferGeometry {
		const frame = this.info.render.frame

		const geometry = object.geometry
		const buffergeometry = this.geometries.get(object, geometry)

		// Update once per frame

		if (!this.updateMap.has(buffergeometry) || this.updateMap.get(buffergeometry) !== frame) {
			if (!this.updateMap.has(buffergeometry)) {
				// TODO MEMLEAK setup dispose handler here once initially to remove the entry from updateMap. See the previous MEMLEAK comment.
			}

			this.geometries.update(buffergeometry)

			this.updateMap.set(buffergeometry, frame)
		}

		// TODO handle InstanedMesh
		// if ( object.isInstancedMesh ) {

		// 	if ( object.hasEventListener( 'dispose', onInstancedMeshDispose ) === false ) {

		// 		object.addEventListener( 'dispose', onInstancedMeshDispose );

		// 	}

		// 	this.attributes.update( object.instanceMatrix, gl.ARRAY_BUFFER );

		// 	if ( object.instanceColor !== null ) {

		// 		this.attributes.update( object.instanceColor, gl.ARRAY_BUFFER );

		// 	}

		// }

		return buffergeometry
	}

	dispose(): void {
		this.updateMap.clear()
	}

	// private onInstancedMeshDispose( event ) {

	// 	const instancedMesh = event.target;

	// 	instancedMesh.removeEventListener( 'dispose', onInstancedMeshDispose );

	// 	attributes.remove( instancedMesh.instanceMatrix );

	// 	if ( instancedMesh.instanceColor !== null ) attributes.remove( instancedMesh.instanceColor );

	// }
}

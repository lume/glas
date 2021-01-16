/**
 * @author mrdoob / http://mrdoob.com/
 * @author Mugen87 / https://github.com/Mugen87
 * @author corruptedzulu / http://github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */

import {Geometry} from '../core/Geometry'
import {BufferGeometry} from '../core/BufferGeometry'
import {BufferAttribute} from '../core/BufferAttribute'
import {Vector3} from '../math/Vector3'

export class BoxGeometryParameters {
	public width: f32
	public height: f32
	public depth: f32
	public widthSegments: i32
	public heightSegments: i32
	public depthSegments: i32
}

/**
 * BoxGeometry is the quadrilateral primitive geometry class. It is typically used for creating a cube or irregular quadrilateral of the dimensions provided within the (optional) 'width', 'height', & 'depth' constructor arguments.
 */
export class BoxGeometry extends Geometry {
	// Used for JSON serialization (we only need to import/export these
	// parameters, the rest is state created by the class at runtime).
	parameters: BoxGeometryParameters

	/**
	 * @param width — Width of the sides on the X axis.
	 * @param height — Height of the sides on the Y axis.
	 * @param depth — Depth of the sides on the Z axis.
	 * @param widthSegments — Number of segmented faces along the width of the sides.
	 * @param heightSegments — Number of segmented faces along the height of the sides.
	 * @param depthSegments — Number of segmented faces along the depth of the sides.
	 */
	constructor(
		width: f32 = 1,
		height: f32 = 1,
		depth: f32 = 1,
		widthSegments: i32 = 1,
		heightSegments: i32 = 1,
		depthSegments: i32 = 1
	) {
		super()

		this.type = 'BoxGeometry'

		this.parameters = {
			width,
			height,
			depth,
			widthSegments,
			heightSegments,
			depthSegments,
		} as BoxGeometryParameters

		// TODO For the initial demo we'll just use BoxBufferGeometry (which is
		// already implemented) instead of BoxGeometry. We can add BoxGeometry
		// later. BoxGeometry is a convenience wrapper for BoxBufferGeometry.
		//this.fromBufferGeometry(
		//	new BoxBufferGeometry(width, height, depth, widthSegments, heightSegments, depthSegments)
		//)

		this.mergeVertices()
	}
}

var vector = new Vector3()

// Extras / Geometries /////////////////////////////////////////////////////////////////////
export class BoxBufferGeometry extends BufferGeometry {
	// Used for JSON serialization (we only need to import/export these
	// parameters, the rest is state created by the class at runtime).
	parameters: BoxGeometryParameters

	// In Three.js this maps to either a Uint16BufferAttribute or a
	// Uint32BufferAttribute. For now we'll just use Uint32BufferAttribute.
	// TODO? Support both?
	private indices: u32[] = []

	private vertices: f32[] = []
	private normals: f32[] = []
	private uvs: f32[] = []

	// helper variables

	private numberOfVertices: i32 = 0
	private groupStart: i32 = 0

	constructor(
		width: f32 = 1,
		height: f32 = 1,
		depth: f32 = 1,
		widthSegments: i32 = 1,
		heightSegments: i32 = 1,
		depthSegments: i32 = 1
	) {
		super()

		this.type = 'BoxBufferGeometry'

		this.parameters = {
			width,
			height,
			depth,
			widthSegments,
			heightSegments,
			depthSegments,
		} as BoxGeometryParameters

		this.__buildPlane('z', 'y', 'x', -1, -1, depth, height, width, depthSegments, heightSegments, 0) // px
		this.__buildPlane('z', 'y', 'x', 1, -1, depth, height, -width, depthSegments, heightSegments, 1) // nx
		this.__buildPlane('x', 'z', 'y', 1, 1, width, depth, height, widthSegments, depthSegments, 2) // py
		this.__buildPlane('x', 'z', 'y', 1, -1, width, depth, -height, widthSegments, depthSegments, 3) // ny
		this.__buildPlane('x', 'y', 'z', 1, -1, width, height, depth, widthSegments, heightSegments, 4) // pz
		this.__buildPlane('x', 'y', 'z', -1, -1, width, height, -depth, widthSegments, heightSegments, 5) // nz

		// build geometry

		// Note, Three.js creates the index with itemSize of 1. Not sure that it
		// really matters in this case, it may just read the underlying typed
		// array directly.
		// TODO Ability to pass this.indices directly into this.setIndex.
		this.setIndex<BufferAttribute>(BufferAttribute.fromArrayOfUint32(this.indices, 1))

		this.addAttribute('position', BufferAttribute.fromArrayOfFloat32(this.vertices, 3))
		this.addAttribute('normal', BufferAttribute.fromArrayOfFloat32(this.normals, 3))
		this.addAttribute('uv', BufferAttribute.fromArrayOfFloat32(this.uvs, 2))
	}

	private __buildPlane(
		u: string,
		v: string,
		w: string,
		udir: f32,
		vdir: f32,
		width: f32,
		height: f32,
		depth: f32,
		gridX: i32,
		gridY: i32,
		materialIndex: i32
	): void {
		var segmentWidth = width / (gridX as f32)
		var segmentHeight = height / (gridY as f32)

		var widthHalf = width / 2.0
		var heightHalf = height / 2.0
		var depthHalf = depth / 2.0

		var gridX1 = gridX + 1
		var gridY1 = gridY + 1

		var vertexCounter = 0
		var groupCount = 0

		var ix: i32, iy: i32

		// generate vertices, normals and uvs

		for (iy = 0; iy < gridY1; iy++) {
			var y = (iy as f32) * segmentHeight - heightHalf

			for (ix = 0; ix < gridX1; ix++) {
				var x = (ix as f32) * segmentWidth - widthHalf

				// set values to correct vector component

				vector.setComponent(u, x * udir)
				vector.setComponent(v, y * vdir)
				vector.setComponent(w, depthHalf)

				// now apply vector to vertex buffer

				this.vertices.push(vector.x)
				this.vertices.push(vector.y)
				this.vertices.push(vector.z)

				// set values to correct vector component

				vector.setComponent(u, 0)
				vector.setComponent(v, 0)
				vector.setComponent(w, depth > 0 ? 1 : -1)

				// now apply vector to normal buffer

				this.normals.push(vector.x)
				this.normals.push(vector.y)
				this.normals.push(vector.z)

				// uvs

				this.uvs.push((ix as f32) / (gridX as f32))
				this.uvs.push(1.0 - (iy as f32) / (gridY as f32))

				// counters

				vertexCounter += 1
			}
		}

		// indices

		// 1. you need three indices to draw a single face
		// 2. a single segment consists of two faces
		// 3. so we need to generate six (2*3) indices per segment

		for (iy = 0; iy < gridY; iy++) {
			for (ix = 0; ix < gridX; ix++) {
				var a: u32 = this.numberOfVertices + ix + gridX1 * iy
				var b: u32 = this.numberOfVertices + ix + gridX1 * (iy + 1)
				var c: u32 = this.numberOfVertices + (ix + 1) + gridX1 * (iy + 1)
				var d: u32 = this.numberOfVertices + (ix + 1) + gridX1 * iy

				// faces

				this.indices.push(a)
				this.indices.push(b)
				this.indices.push(d)
				this.indices.push(b)
				this.indices.push(c)
				this.indices.push(d)

				// increase counter

				groupCount += 6
			}
		}

		// add a group to the geometry. this will ensure multi material support

		this.addGroup(this.groupStart, groupCount, materialIndex)

		// calculate new start value for groups

		this.groupStart += groupCount

		// update total number of vertices

		this.numberOfVertices += vertexCounter
	}
}

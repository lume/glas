/**
 * @author mrdoob / http://mrdoob.com/
 * @author Mugen87 / https://github.com/Mugen87
 * @author Joe Pea / http://github.com/trusktr
 */

import { BufferGeometry } from '../core/BufferGeometry'
import { Float32BufferAttribute } from '../core/BufferAttribute'

export class PlaneGeometryParameters {
	public width: f32
	public height: f32
	public widthSegments: i32
	public heightSegments: i32
}

/**
 * PlaneGeometry is a simple rectangular plane geometry class
 */
export class PlaneGeometry extends BufferGeometry {
	// Used for JSON serialization
	parameters: PlaneGeometryParameters

	constructor(width: f32 = 1, height: f32 = 1, widthSegments: i32 = 1, heightSegments: i32 = 1) {
		super()

		this.parameters = new PlaneGeometryParameters()
		this.parameters.width = width
		this.parameters.height = height  
		this.parameters.widthSegments = widthSegments
		this.parameters.heightSegments = heightSegments

		const width_half = width / 2
		const height_half = height / 2

		const gridX = widthSegments
		const gridY = heightSegments

		const gridX1 = gridX + 1
		const gridY1 = gridY + 1

		const segment_width = width / gridX
		const segment_height = height / gridY

		// Buffers
		const indices: i32[] = []
		const vertices: f32[] = []
		const normals: f32[] = []
		const uvs: f32[] = []

		// Generate vertices, normals and uvs
		for (let iy = 0; iy < gridY1; iy++) {
			const y = iy * segment_height - height_half

			for (let ix = 0; ix < gridX1; ix++) {
				const x = ix * segment_width - width_half

				vertices.push(x, -y, 0)
				normals.push(0, 0, 1)
				uvs.push(ix / gridX)
				uvs.push(1 - (iy / gridY))
			}
		}

		// Indices
		for (let iy = 0; iy < gridY; iy++) {
			for (let ix = 0; ix < gridX; ix++) {
				const a = ix + gridX1 * iy
				const b = ix + gridX1 * (iy + 1)
				const c = (ix + 1) + gridX1 * (iy + 1)
				const d = (ix + 1) + gridX1 * iy

				// Faces
				indices.push(a, b, d)
				indices.push(b, c, d)
			}
		}

		// Build geometry
		this.setIndex(indices)
		this.setAttribute('position', new Float32BufferAttribute(vertices.length / 3, 3))
		this.attributes.get('position')!.copyArray(vertices)
		
		this.setAttribute('normal', new Float32BufferAttribute(normals.length / 3, 3))
		this.attributes.get('normal')!.copyArray(normals)
		
		this.setAttribute('uv', new Float32BufferAttribute(uvs.length / 2, 2))
		this.attributes.get('uv')!.copyArray(uvs)
	}
}
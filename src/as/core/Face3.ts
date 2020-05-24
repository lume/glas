import {Vector3} from './../math/Vector3'
import {Color} from './../math/Color'

/**
 * @author mrdoob / http://mrdoob.com/
 * @author kile / http://kile.stravaganza.org/
 * @author alteredq / http://alteredqualia.com/
 * @author mikael emtinger / http://gomo.se/
 * @author zz85 / http://www.lab4games.net/zz85/blog
 * @author bhouston / http://clara.io
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

/**
 * Triangle face.
 *
 * @source https://github.com/mrdoob/three.js/blob/master/src/core/Face3.js
 */
export class Face3 {
	normal = new Vector3()
	color = new Color()

	/**
	 * @param a Vertex A index.
	 * @param b Vertex B index.
	 * @param c Vertex C index.
	 * @param normal Face normal or array of vertex normals.
	 * @param color Face color or array of vertex colors.
	 * @param materialIndex Material index.
	 */
	//TODO: uncomment and use this constructor declaration when initializing optional parameters is figured out
	constructor(
		a: f32,
		b: f32,
		c: f32,
		normals: Array<Vector3> = [],
		colors: Array<Color> = [],
		materialIndex: f32 = 0
	) {
		// constructor(a: f32, b: f32, c: f32, materialIndex: f32 = 0) {
		this.a = a
		this.b = b
		this.c = c

		this.vertexNormals = normals
		this.vertexColors = colors
		this.materialIndex = materialIndex

		this.id = 0
	}

	//TODO: multiple constructor implementations are not allowed
	// constructor(a: f32, b: f32, c: f32, normal?: Vector3, vertexColors?: Color[], materialIndex?: f32) {}

	// constructor(a: f32, b: f32, c: f32, vertexNormals?: Vector3[], color?: Color, materialIndex?: f32)

	// constructor(a: f32, b: f32, c: f32, vertexNormals?: Vector3[], vertexColors?: Color[], materialIndex?: f32)

	/**
	 * Vertex A index.
	 */
	a: f32

	/**
	 * Vertex B index.
	 */
	b: f32

	/**
	 * Vertex C index.
	 */
	c: f32

	/**
	 * Face normal.
	 */
	normal: Vector3

	/**
	 * Array of 4 vertex normals.
	 */
	vertexNormals: Vector3[]

	/**
	 * Face color.
	 */
	color: Color

	/**
	 * Array of 4 vertex normals.
	 */
	vertexColors: Color[]

	/**
	 * Material index (points to {@link Geometry.materials}).
	 */
	materialIndex: f32

	id: i32

	clone(): Face3 {
		// TODO
		// return new Face3(this.a, this.b, this.c, this.normal, this.color, this.materialIndex).copy(this)
		return new Face3(this.a, this.b, this.c, this.materialIndex).copy(this)
	}

	copy(source: Face3): this {
		this.a = source.a
		this.b = source.b
		this.c = source.c

		this.normal.copy(source.normal)
		this.color.copy(source.color)

		this.materialIndex = source.materialIndex

		for (var i = 0, il = source.vertexNormals.length; i < il; i++) {
			this.vertexNormals[i] = source.vertexNormals[i].clone()
		}

		for (var i = 0, il = source.vertexColors.length; i < il; i++) {
			this.vertexColors[i] = source.vertexColors[i].clone()
		}

		this.id = source.id

		return this
	}
}

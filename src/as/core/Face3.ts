// Based on Three.js 0.121.1

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
 * @author Joe Pea / http://github.com/trusktr
 */

/**
 * Triangle face.
 *
 * @source https://github.com/mrdoob/three.js/blob/master/src/core/Face3.js
 */
export class Face3 {
	id: i32 = 0

	/**
	 * @param a Vertex A index.
	 * @param b Vertex B index.
	 * @param c Vertex C index.
	 * @param normals (optional) Face normal (1-item array) or array of vertex normals.
	 * Length should be 0 (no normal provided), 1 (1 normal for all vertices),
	 * or 3 (one normal per vertex). Default: []
	 * @param color (optional) Face color (1-item array) or array of vertex colors. Like
	 * normals, length should be 0 (no color provided), 1 (one colors for all
	 * vertices), or 3 (one color per vertex). Default: []
	 * @param materialIndex (optional) Material index (points to {@link Geometry.materials}). Default: 0.
	 */
	constructor(
		public a: i32,
		public b: i32,
		public c: i32,
		normals: Array<Vector3> = [],
		colors: Array<Color> = [],
		public materialIndex: i32 = 0
	) {
		let len = normals.length
		if (!(len === 0 || len === 1 || len === 3))
			throw new Error('Invalid normals arg provided. Length should be 0, 1, or 3. Length was: ' + len.toString())

		len = colors.length
		if (!(len === 0 || len === 1 || len === 3))
			throw new Error('Invalid colors arg provided. Length should be 0, 1, or 3.')

		len = normals.length
		this.normal = len === 1 ? normals[0] : new Vector3()
		this.vertexNormals = len === 0 || len === 1 ? [new Vector3(), new Vector3(), new Vector3()] : normals

		len = colors.length
		this.color = len === 1 ? colors[0] : new Color()
		this.vertexColors = len === 0 || len === 1 ? [new Color(), new Color(), new Color()] : colors
	}

	/**
	 * Face normal.
	 */
	normal: Vector3

	/**
	 * Array of 3 vertex normals.
	 */
	vertexNormals: Vector3[]

	/**
	 * Face color.
	 */
	color: Color

	/**
	 * Array of 3 vertex colors.
	 */
	vertexColors: Color[]

	clone(): Face3 {
		return new Face3(this.a, this.b, this.c, this.vertexNormals, this.vertexColors, this.materialIndex).copy(this)
	}

	copy(source: Face3): this {
		this.a = source.a
		this.b = source.b
		this.c = source.c

		this.normal.copy(source.normal)
		this.color.copy(source.color)

		this.materialIndex = source.materialIndex

		for (let i = 0, il = source.vertexNormals.length; i < il; i++) {
			this.vertexNormals[i] = source.vertexNormals[i].clone()
		}

		for (let i = 0, il = source.vertexColors.length; i < il; i++) {
			this.vertexColors[i] = source.vertexColors[i].clone()
		}

		return this
	}
}

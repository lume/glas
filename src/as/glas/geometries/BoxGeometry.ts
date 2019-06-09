import { Geometry } from '../core/Geometry';
import { BufferGeometry } from '../core/BufferGeometry';
import { Float32BufferAttribute } from '../core/BufferAttribute.js';
import { Vector3 } from '../math/Vector3.js';


/**
 * @author mrdoob / http://mrdoob.com/
 * @author Mugen87 / https://github.com/Mugen87
 * @author corruptedzulu / http://github.com/corruptedzulu
 */


// Extras / Geometries /////////////////////////////////////////////////////////////////////
export class BoxBufferGeometry extends BufferGeometry {

	constructor(
		width?: number,
		height?: number,
		depth?: number,
		widthSegments?: number,
		heightSegments?: number,
		depthSegments?: number
	) {
        super();
    }

	parameters: {
		width: number;
		height: number;
		depth: number;
		widthSegments: number;
		heightSegments: number;
		depthSegments: number;
	};

}

/**
 * BoxGeometry is the quadrilateral primitive geometry class. It is typically used for creating a cube or irregular quadrilateral of the dimensions provided within the (optional) 'width', 'height', & 'depth' constructor arguments.
 */
export class BoxGeometry extends Geometry {

    width: number;
    height: number;
    depth: number;
    widthSegments: number;
    heightSegments: number;
    depthSegments: number;

	/**
	 * @param width — Width of the sides on the X axis.
	 * @param height — Height of the sides on the Y axis.
	 * @param depth — Depth of the sides on the Z axis.
	 * @param widthSegments — Number of segmented faces along the width of the sides.
	 * @param heightSegments — Number of segmented faces along the height of the sides.
	 * @param depthSegments — Number of segmented faces along the depth of the sides.
	 */
	constructor(
		width: number,
		height: number,
		depth: number,
		widthSegments: number,
		heightSegments: number,
		depthSegments: number
	) {
        super();
        this.width = width = 1;
        this.height = height = 1;
        this.depth = depth = 1;
        this.widthSegments = widthSegments = 1;
        this.heightSegments = heightSegments = 1;
        this.depthSegments = depthSegments = 1;
    }


}
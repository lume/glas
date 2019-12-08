import { Geometry } from '../core/Geometry';
import { BufferGeometry } from '../core/BufferGeometry';
import { Float32BufferAttribute } from '../core/BufferAttribute.js';
import { Vector3 } from '../math/Vector3';


/**
 * @author mrdoob / http://mrdoob.com/
 * @author Mugen87 / https://github.com/Mugen87
 * @author corruptedzulu / http://github.com/corruptedzulu
 */


// Extras / Geometries /////////////////////////////////////////////////////////////////////
export class BoxBufferGeometry extends BufferGeometry {

    parameters: {
		width: number;
		height: number;
		depth: number;
		widthSegments: number;
		heightSegments: number;
		depthSegments: number;
	};


    indices: number[] = [];
	vertices: number[] = [];
	normals: number[] = [];
	uvs: number[] = [];

	// helper variables

	numberOfVertices = 0;
    groupStart = 0;
    
    scope = this;


	constructor(
		width: number = 1,
		height: number = 1,
		depth: number = 1,
		widthSegments: number = 1,
		heightSegments: number = 1,
		depthSegments: number = 1
	) {
        super();

        this.buildPlane( 'z', 'y', 'x', - 1, - 1, depth, height, width, depthSegments, heightSegments, 0 ); // px
        this.buildPlane( 'z', 'y', 'x', 1, - 1, depth, height, - width, depthSegments, heightSegments, 1 ); // nx
        this.buildPlane( 'x', 'z', 'y', 1, 1, width, depth, height, widthSegments, depthSegments, 2 ); // py
        this.buildPlane( 'x', 'z', 'y', 1, - 1, width, depth, - height, widthSegments, depthSegments, 3 ); // ny
        this.buildPlane( 'x', 'y', 'z', 1, - 1, width, height, depth, widthSegments, heightSegments, 4 ); // pz
        this.buildPlane( 'x', 'y', 'z', - 1, - 1, width, height, - depth, widthSegments, heightSegments, 5 ); // nz

        // build geometry

        this.setIndex( this.indices );
        this.addAttribute( 'position', new Float32BufferAttribute( this.vertices, 3 ) );
        this.addAttribute( 'normal', new Float32BufferAttribute( this.normals, 3 ) );
        this.addAttribute( 'uv', new Float32BufferAttribute( this.uvs, 2 ) );
    }

	

    buildPlane( u: string, v: string, w: string, udir: i64, vdir: i64, width: i64, height: i64, depth: i64, gridX: i64, gridY: i64, materialIndex: i64 ) {

		var segmentWidth = width / gridX;
		var segmentHeight = height / gridY;

		var widthHalf = width / 2;
		var heightHalf = height / 2;
		var depthHalf = depth / 2;

		var gridX1 = gridX + 1;
		var gridY1 = gridY + 1;

		var vertexCounter = 0;
		var groupCount = 0;

		var ix, iy;

		var vector = new Vector3();

		// generate vertices, normals and uvs

		for ( iy = 0; iy < gridY1; iy ++ ) {

			var y = iy * segmentHeight - heightHalf;

			for ( ix = 0; ix < gridX1; ix ++ ) {

				var x = ix * segmentWidth - widthHalf;

				// set values to correct vector component

				vector.setX( x * udir );
				vector.setY( y * vdir );
				vector.setZ( depthHalf );

				// now apply vector to vertex buffer

                this.vertices.push( vector.x );
                this.vertices.push( vector.y );
                this.vertices.push( vector.z );

				// set values to correct vector component

				vector.setX( 0 );
                vector.setY( 0 );
                vector.setZ( depth > 0 ? 1 : - 1 );

				// now apply vector to normal buffer

                this.normals.push( vector.x );
                this.normals.push( vector.y );
                this.normals.push( vector.z );


				// uvs

				this.uvs.push( ix / gridX );
				this.uvs.push( 1 - ( iy / gridY ) );

				// counters

				vertexCounter += 1;

			}

		}

		// indices

		// 1. you need three indices to draw a single face
		// 2. a single segment consists of two faces
		// 3. so we need to generate six (2*3) indices per segment

		for ( iy = 0; iy < gridY; iy ++ ) {

			for ( ix = 0; ix < gridX; ix ++ ) {

				var a = this.numberOfVertices + ix + gridX1 * iy;
				var b = this.numberOfVertices + ix + gridX1 * ( iy + 1 );
				var c = this.numberOfVertices + ( ix + 1 ) + gridX1 * ( iy + 1 );
				var d = this.numberOfVertices + ( ix + 1 ) + gridX1 * iy;

				// faces

                this.indices.push( a );
                this.indices.push( b );
                this.indices.push( d );
                this.indices.push( b );
                this.indices.push( c );
                this.indices.push( d );

				// increase counter

				groupCount += 6;

			}

		}

		// add a group to the geometry. this will ensure multi material support

		this.scope.addGroup( this.groupStart, groupCount, materialIndex );

		// calculate new start value for groups

		this.groupStart += groupCount;

		// update total number of vertices

		this.numberOfVertices += vertexCounter;

	}

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
		width: number = 1,
		height: number = 1,
		depth: number = 1,
		widthSegments: number = 1,
		heightSegments: number = 1,
		depthSegments: number = 1
	) {
        super();

        this.fromBufferGeometry( new BoxBufferGeometry( width, height, depth, widthSegments, heightSegments, depthSegments ) );
	    this.mergeVertices();
    }


}
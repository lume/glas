import { Line } from './Line.js';
import { Vector3 } from '../math/Vector3';
import { Float32BufferAttribute } from '../core/BufferAttribute.js';

/**
 * @author mrdoob / http://mrdoob.com/
 */

function LineSegments( geometry, material ) {

	Line.call( this, geometry, material );

	this.type = 'LineSegments';

}

LineSegments.prototype = Object.assign( Object.create( Line.prototype ), {

	constructor: LineSegments,

	isLineSegments: true,

	computeLineDistances: ( function () {

		const start = new Vector3();
		const end = new Vector3();

		return function computeLineDistances() {

			const geometry = this.geometry;

			if ( geometry.isBufferGeometry ) {

				// we assume non-indexed geometry

				if ( geometry.index === null ) {

					const positionAttribute = geometry.attributes.position;
					const lineDistances = [];

					for ( let i = 0, l = positionAttribute.count; i < l; i += 2 ) {

						start.fromBufferAttribute( positionAttribute, i );
						end.fromBufferAttribute( positionAttribute, i + 1 );

						lineDistances[ i ] = ( i === 0 ) ? 0 : lineDistances[ i - 1 ];
						lineDistances[ i + 1 ] = lineDistances[ i ] + start.distanceTo( end );

					}

					geometry.addAttribute( 'lineDistance', new Float32BufferAttribute( lineDistances, 1 ) );

				} else {

					console.warn( 'THREE.LineSegments.computeLineDistances(): Computation only possible with non-indexed BufferGeometry.' );

				}

			} else if ( geometry.isGeometry ) {

				const vertices = geometry.vertices;
				const lineDistances = geometry.lineDistances;

				for ( let i = 0, l = vertices.length; i < l; i += 2 ) {

					start.copy( vertices[ i ] );
					end.copy( vertices[ i + 1 ] );

					lineDistances[ i ] = ( i === 0 ) ? 0 : lineDistances[ i - 1 ];
					lineDistances[ i + 1 ] = lineDistances[ i ] + start.distanceTo( end );

				}

			}

			return this;

		};

	}() )

} );


export { LineSegments };

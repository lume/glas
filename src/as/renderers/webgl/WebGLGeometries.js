/**
 * @author mrdoob / http://mrdoob.com/
 */

import { Uint16BufferAttribute, Uint32BufferAttribute } from '../../core/BufferAttribute.js';
import { BufferGeometry } from '../../core/BufferGeometry.js';
import { arrayMax } from '../../utils.js';

function WebGLGeometries( gl, attributes, info ) {

	const geometries = {};
	const wireframeAttributes = {};

	function onGeometryDispose( event ) {

		const geometry = event.target;
		const buffergeometry = geometries[ geometry.id ];

		if ( buffergeometry.index !== null ) {

			attributes.remove( buffergeometry.index );

		}

		for ( let name in buffergeometry.attributes ) {

			attributes.remove( buffergeometry.attributes[ name ] );

		}

		geometry.removeEventListener( 'dispose', onGeometryDispose );

		delete geometries[ geometry.id ];

		const attribute = wireframeAttributes[ buffergeometry.id ];

		if ( attribute ) {

			attributes.remove( attribute );
			delete wireframeAttributes[ buffergeometry.id ];

		}

		//

		info.memory.geometries --;

	}

	function get( object, geometry ) {

		const buffergeometry = geometries[ geometry.id ];

		if ( buffergeometry ) return buffergeometry;

		geometry.addEventListener( 'dispose', onGeometryDispose );

		if ( geometry.isBufferGeometry ) {

			buffergeometry = geometry;

		} else if ( geometry.isGeometry ) {

			if ( geometry._bufferGeometry === undefined ) {

				geometry._bufferGeometry = new BufferGeometry().setFromObject( object );

			}

			buffergeometry = geometry._bufferGeometry;

		}

		geometries[ geometry.id ] = buffergeometry;

		info.memory.geometries ++;

		return buffergeometry;

	}

	function update( geometry ) {

		const index = geometry.index;
		const geometryAttributes = geometry.attributes;

		if ( index !== null ) {

			attributes.update( index, gl.ELEMENT_ARRAY_BUFFER );

		}

		for ( let name in geometryAttributes ) {

			attributes.update( geometryAttributes[ name ], gl.ARRAY_BUFFER );

		}

		// morph targets

		const morphAttributes = geometry.morphAttributes;

		for ( let name in morphAttributes ) {

			const array = morphAttributes[ name ];

			for ( let i = 0, l = array.length; i < l; i ++ ) {

				attributes.update( array[ i ], gl.ARRAY_BUFFER );

			}

		}

	}

	function getWireframeAttribute( geometry ) {

		const attribute = wireframeAttributes[ geometry.id ];

		if ( attribute ) return attribute;

		const indices = [];

		const geometryIndex = geometry.index;
		const geometryAttributes = geometry.attributes;

		// console.time( 'wireframe' );

		if ( geometryIndex !== null ) {

			const array = geometryIndex.array;

		for ( let i = 0, l = array.length; i < l; i += 3 ) {

				const a = array[ i + 0 ];
				const b = array[ i + 1 ];
				const c = array[ i + 2 ];

				indices.push( a, b, b, c, c, a );

			}

		} else {

			const array = geometryAttributes.position.array;

			for ( let i = 0, l = ( array.length / 3 ) - 1; i < l; i += 3 ) {

				const a = i + 0;
				const b = i + 1;
				const c = i + 2;

				indices.push( a, b, b, c, c, a );

			}

		}

		// console.timeEnd( 'wireframe' );

		attribute = new ( arrayMax( indices ) > 65535 ? Uint32BufferAttribute : Uint16BufferAttribute )( indices, 1 );

		attributes.update( attribute, gl.ELEMENT_ARRAY_BUFFER );

		wireframeAttributes[ geometry.id ] = attribute;

		return attribute;

	}

	return {

		get: get,
		update: update,

		getWireframeAttribute: getWireframeAttribute

	};

}


export { WebGLGeometries };

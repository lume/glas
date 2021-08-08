// r125

import { Uint16BufferAttribute, Uint32BufferAttribute } from '../../core/BufferAttribute.js';
import { arrayMax } from '../../utils.js';

function WebGLGeometries( gl, attributes, info, bindingStates ) {

	function onGeometryDispose( event ) {
		
		// ...MOVED to .ts...

		// TODO
		if ( geometry.isInstancedBufferGeometry === true ) {

			delete geometry._maxInstanceCount;

		}

		// ...MOVED to .ts...

	}

	function get( object, geometry ) {
		// MOVED to .ts
	}

	function update( geometry ) {
		// MOVED to .ts
	}

	function updateWireframeAttribute( geometry ) {
		// MOVED to .ts
	}

	function getWireframeAttribute( geometry ) {
		// MOVED to .ts
	}

	return {

		get: get,
		update: update,

		getWireframeAttribute: getWireframeAttribute

	};

}


export { WebGLGeometries };

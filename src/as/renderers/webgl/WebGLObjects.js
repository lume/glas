/**
 * @author mrdoob / http://mrdoob.com/
 */

function WebGLObjects( geometries, info ) {

	var updateList = {};

	function update( object ) {

	}

	function dispose() {

		updateList = {};

	}

	return {

		update: update,
		dispose: dispose

	};

}


export { WebGLObjects };

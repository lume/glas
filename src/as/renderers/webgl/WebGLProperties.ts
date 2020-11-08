/**
 * @author fordacious / fordacious.github.io
 * @author Joe Pea / http://github.com/trusktr
 */

// NOTE The WebGLProperties class from Three.js was nothing more than a Map,
// with a convenience helper for returning a newly-created value in case get was
// called on an object that was not yet added. We removed the unnecessary
// methods, and we made it non-generic so to fit in AS's strict type system.
//
// Instead of having one WebGLProperties class as in Three.js, we will have
// differing classes (f.e. MaterialProperties) depending on what types of
// properties they contains.

import {Material} from './../../materials/Material'
import {WebGLProgram} from './WebGLProgram'

export class MatProps {
	program: WebGLProgram | null = null
}

export class MaterialProperties {
	readonly map: Map<Material, MatProps> = new Map()

	get(mat: Material): MatProps {
		let props: MatProps

		if (!this.map.has(mat)) this.map.set(mat, (props = new MatProps()))
		else props = this.map.get(mat)

		return props
	}
}

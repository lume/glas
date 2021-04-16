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

/** @abstract */
export class MapWithDefault<Key, Value> {
	map: Map<Key, Value> = new Map()

	get(key: Key): Value {
		let value: Value | null = null

		if (!this.map.has(key)) this.map.set(key, (value = this.createValue()))
		else value = this.map.get(key)

		return value
	}

	/** @abstract */
	protected createValue(): Value {
		throw new Error('Subclass should implement')
	}
}

export class MaterialProperties extends MapWithDefault<Material, MatProps> {
	protected createValue(): MatProps {
		return new MatProps()
	}
}

// TODO update to more generic DRY version once it is supported. See
// https://discord.com/channels/721472913886281818/721497900932137090/832291205906956290
// {{

// /** @abstract */
// export class MapWithDefault<Key, Value> extends Map<Key, Value> {
// 	get(key: Key): Value {
// 		let value: Value | null = null

// 		if (!this.has(key)) this.set(key, (value = this.createValue()))
// 		else value = super.get(key)

// 		return value
// 	}

// 	/** @abstract */
// 	protected createValue(): Value {
// 		throw new Error('Subclass should implement')
// 	}
// }

// export class MaterialProperties extends MapWithDefault<Material, MatProps> {
// 	protected createValue(): MatProps {
// 		return new MatProps()
// 	}
// }

// }}

// export class RenderItemProps {
// 	buffers: null = null // TODO
// }

// export class RenderItemProperties extends MapWithDefault<RenderItem, RenderItemProps> {
// 	protected createValue(): RenderItemProps {
// 		return new RenderItemProps()
// 	}
// }

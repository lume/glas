import {Color} from './../math/Color'

export interface IFog {
	name: string
	color: Color
	clone(): this
	toJSON(): any
}

/**
 * This class contains the parameters that define linear fog, i.e., that grows linearly denser with the distance.
 */
export class Fog implements IFog {
	constructor(hex: f32, near?: f32, far?: f32)

	name: string

	/**
	 * Fog color.
	 */
	color: Color

	/**
	 * The minimum distance to start applying fog. Objects that are less than 'near' units from the active camera won't be affected by fog.
	 */
	near: f32

	/**
	 * The maximum distance at which fog stops being calculated and applied. Objects that are more than 'far' units away from the active camera won't be affected by fog.
	 * Default is 1000.
	 */
	far: f32

	clone(): this
	toJSON(): any
}

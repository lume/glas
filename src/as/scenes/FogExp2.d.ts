import {Color} from './../math/Color'
import {IFog} from './Fog'
/**
 * This class contains the parameters that define linear fog, i.e., that grows exponentially denser with the distance.
 */
export class FogExp2 implements IFog {
	constructor(hex: f32 | string, density?: f32)

	name: string
	color: Color

	/**
	 * Defines how fast the fog will grow dense.
	 * Default is 0.00025.
	 */
	density: f32

	clone(): this
	toJSON(): any
}

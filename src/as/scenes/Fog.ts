import {Color} from '../math/Color'

/**
 * This class contains the parameters that define linear fog, i.e., that grows linearly denser with the distance.
 */
export class Fog {
	constructor(
		/**
		 * Fog color.
		 */
		public color = new Color(),
		/**
		 * The minimum distance to start applying fog. Objects that are less than 'near' units from the active camera won't be affected by fog.
		 */
		public near: f32 = 1,
		/**
		 * The maximum distance at which fog stops being calculated and applied. Objects that are more than 'far' units away from the active camera won't be affected by fog.
		 * Default is 1000.
		 */
		public far: f32 = 1000
	) {}

	name: string = ''

	clone(): Fog {
		return new Fog(this.color, this.near, this.far)
	}

	// toJSON(): any {}
}

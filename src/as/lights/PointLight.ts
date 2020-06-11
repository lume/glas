/**
 * @author mrdoob / http://mrdoob.com/
 * @author Joe Pea / http://github.com/trusktr
 */

import {Color} from './../math/Color'
import {Light} from './Light'
// import {PointLightShadow} from './PointLightShadow'

/**
 * @example
 * const light = new THREE.PointLight( 0xff0000, 1, 100 );
 * light.position.set( 50, 50, 50 );
 * scene.add( light );
 */
export class PointLight extends Light {
	constructor(
		color: Color = new Color(),
		intensity: number = 1,
		/**
		 * If non-zero, light will attenuate linearly from maximum intensity at
		 * light position down to zero at distance.
		 * Default - 0.0.
		 */
		distance: number = 0,
		/** for physically correct lights, should be 2. */
		public decay: number = 1
	) {
		super(color, intensity, distance) // FIXME distance should not be passed to Light, see FIXME in Light.ts
		this.type = 'PointLight'
	}

	readonly isPointLight: true = true

	get power(): number {
		// intensity = power per solid angle.
		// ref: equation (15) from https://seblagarde.files.wordpress.com/2015/07/course_notes_moving_frostbite_to_pbr_v32.pdf
		return this.intensity * 4 * Mathf.PI
	}
	set power(power: number) {
		// intensity = power per solid angle.
		// ref: equation (15) from https://seblagarde.files.wordpress.com/2015/07/course_notes_moving_frostbite_to_pbr_v32.pdf
		this.intensity = power / (4 * Mathf.PI)
	}

	// shadow = new PointLightShadow()

	// copy(source) {
	// 	Light.prototype.copy.call(this, source)

	// 	this.distance = source.distance
	// 	this.decay = source.decay

	// 	this.shadow = source.shadow.clone()

	// 	return this
	// }
}

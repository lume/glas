/**
 * @author mrdoob / http://mrdoob.com/
 * @author alteredq / http://alteredqualia.com/
 * @author Joe Pea / https://github.com/trusktr
 */

import {Color} from './../math/Color'
// import { LightShadow } from './LightShadow';
import {Object3D} from './../core/Object3D'

/**
 * Abstract base class for lights.
 */
export class Light extends Object3D {
	constructor(
		public color: Color = new Color(),
		/**
		 * Light's intensity.
		 * Default - 1.0.
		 */
		public intensity: f32 = 1,

		// FIXME This is not needed by lights, just PointLights or similar, but
		// Three.js code in WebGLLights reads this property from all lights,
		// therefore it needs to exist here or else it is a type error.
		public distance: f32 = 0
	) {
		super()
		this.type = 'Light'
		this.isLight = true
		this.receiveShadow = false
	}

	// shadow: LightShadow;

	// copy(source: Light) {
	// 	super.copy(source)

	// 	this.color.copy(source.color)
	// 	this.intensity = source.intensity

	// 	return this
	// }

	// toJSON(meta) {
	// 	const data = Object3D.prototype.toJSON.call(this, meta)

	// 	data.object.color = this.color.getHex()
	// 	data.object.intensity = this.intensity

	// 	if (this.groundColor !== undefined) data.object.groundColor = this.groundColor.getHex()

	// 	if (this.distance !== undefined) data.object.distance = this.distance
	// 	if (this.angle !== undefined) data.object.angle = this.angle
	// 	if (this.decay !== undefined) data.object.decay = this.decay
	// 	if (this.penumbra !== undefined) data.object.penumbra = this.penumbra

	// 	if (this.shadow !== undefined) data.object.shadow = this.shadow.toJSON()

	// 	return data
	// }
}

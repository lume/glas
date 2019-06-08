/**
 * @author mrdoob / http://mrdoob.com/
 * @author Joe Pea / https://github.com/trusktr
 */

export class Layers {
	/**
	 * A bit mask storing which of the 32 layers this layer's object is currently
	 * a member of. Membership is initially set to layer 0.
	 */
	mask: u32 = 1 | 0

	/**
	 * Set this layer's object as member of the given *layer*, and remove membership to all other layers.
	 * @param layer An integer from 0 to 31.
	 */
	set(layer: i32): void {
		this.mask = (1 << layer) | 0
	}

	/**
	 * Set this layer's object as member of the given *layer*.
	 * @param layer An integer from 0 to 31.
	 */
	enable(layer: i32): void {
		this.mask |= (1 << layer) | 0
	}

	/**
	 * Toggle this layer's object's membership of the given *layer*.
	 * @param layer An integer from 0 to 31.
	 */
	toggle(layer: i32): void {
		this.mask ^= (1 << layer) | 0
	}

	/**
	 * Set this layer's object as not member of the given *layer*.
	 * @param layer An integer from 0 to 31.
	 */
	disable(layer: i32): void {
		this.mask &= ~((1 << layer) | 0)
	}

	/**
	 * Checks to see if the given Layers object matches the same set of layers.
	 * @param layers Another Layers object to compare this one to.
	 * @returns true if this and the passed *layers* object represent membership to the same set of layers.
	 */
	test(layers: Layers): boolean {
		return (this.mask & layers.mask) !== 0
	}
}

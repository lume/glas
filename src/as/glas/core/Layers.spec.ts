/**
 * @author moraxy / https://github.com/moraxy
 * @author Joe Pea / https://github.com/trusktr
 */

import {Layers} from './Layers'

describe('Layers', () => {
	// PUBLIC STUFF
	describe('.set', () => {
		it('sets the specified bit to 1, all others to 0.', () => {
			const a = new Layers()

			a.set(0)
			expect<u32>(a.mask).toBe(1)

			a.set(1)
			expect<u32>(a.mask).toBe(2)

			a.set(2)
			expect<u32>(a.mask).toBe(4)
		})
	})

	describe('.test', () => {
		// it("compares to see if the other layer's bits match this layer's bits", () => {
		const a = new Layers()
		const b = new Layers()

		expect<bool>(a.test(b)).toBe(true)

		a.set(1)
		expect<bool>(a.test(b)).toBe(false)

		b.toggle(1)
		expect<bool>(a.test(b)).toBe(true)
	})
	// })
})

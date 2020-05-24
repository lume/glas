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
			expect(a.mask).toBe(1)

			a.set(1)
			expect(a.mask).toBe(2)

			a.set(2)
			expect(a.mask).toBe(4)
		})
	})

	describe('.enable', () => {
		it('sets the specified bit to 1 (leaves other bits alone)', () => {
			const a = new Layers()

			a.set(0)
			a.enable(0)
			expect(a.mask).toBe(1)

			a.set(0)
			a.enable(1)
			expect(a.mask).toBe(3)

			a.set(1)
			a.enable(0)
			expect(a.mask).toBe(3)

			a.set(1)
			a.enable(1)
			expect(a.mask).toBe(2)
		})
	})

	describe('.toggle', () => {
		it('toggles the specified bit (leaves other bits alone)', () => {
			const a = new Layers()

			a.set(0)
			a.toggle(0)
			expect(a.mask).toBe(0)

			a.set(0)
			a.toggle(1)
			expect(a.mask).toBe(3)

			a.set(1)
			a.toggle(0)
			expect(a.mask).toBe(3)

			a.set(1)
			a.toggle(1)
			expect(a.mask).toBe(0)
		})
	})

	describe('.disable', () => {
		it('sets the specified bit to 0 (leaves other bits alone)', () => {
			const a = new Layers()

			a.set(0)
			a.disable(0)
			expect(a.mask).toBe(0)

			a.set(0)
			a.disable(1)
			expect(a.mask).toBe(1)

			a.set(1)
			a.disable(0)
			expect(a.mask).toBe(2)

			a.set(1)
			a.disable(1)
			expect(a.mask).toBe(0)

			// TODO, doesn't compile, https://github.com/AssemblyScript/assemblyscript/issues/645
			// expect(a.test2(2)).toBeTruthy()
			// expect(a.test2(false)).toBeFalsy()
		})
	})

	describe('.test', () => {
		it("compares to see if the other layer's bits match this layer's bits", () => {
			const a = new Layers()
			const b = new Layers()

			expect(a.test(b)).toBeTruthy()

			a.set(1)
			expect(a.test(b)).toBeFalsy()

			b.toggle(1)
			expect(a.test(b)).toBeTruthy()
		})
	})
})

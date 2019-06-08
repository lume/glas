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

	describe('.enable', () => {
		it('sets the specified bit to 1 (leaves other bits alone)', () => {
			const a = new Layers()

			a.set(0)
			a.enable(0)
			// assert.strictEqual(a.mask, 1, 'Enable channel 0 with mask 0')
			expect<u32>(a.mask).toBe(1)

			a.set(0)
			a.enable(1)
			// assert.strictEqual(a.mask, 3, 'Enable channel 1 with mask 0')
			expect<u32>(a.mask).toBe(3)

			a.set(1)
			a.enable(0)
			// assert.strictEqual(a.mask, 3, 'Enable channel 0 with mask 1')
			expect<u32>(a.mask).toBe(3)

			a.set(1)
			a.enable(1)
			// assert.strictEqual(a.mask, 2, 'Enable channel 1 with mask 1')
			expect<u32>(a.mask).toBe(2)
		})
	})

	describe('.toggle', () => {
		it('toggles the specified bit (leaves other bits alone)', () => {
			const a = new Layers()

			a.set(0)
			a.toggle(0)
			// assert.strictEqual(a.mask, 0, 'Toggle channel 0 with mask 0')
			expect<u32>(a.mask).toBe(0)

			a.set(0)
			a.toggle(1)
			// assert.strictEqual(a.mask, 3, 'Toggle channel 1 with mask 0')
			expect<u32>(a.mask).toBe(3)

			a.set(1)
			a.toggle(0)
			// assert.strictEqual(a.mask, 3, 'Toggle channel 0 with mask 1')
			expect<u32>(a.mask).toBe(3)

			a.set(1)
			a.toggle(1)
			// assert.strictEqual(a.mask, 0, 'Toggle channel 1 with mask 1')
			expect<u32>(a.mask).toBe(0)
		})
	})

	describe('.disable', () => {
		it('sets the specified bit to 0 (leaves other bits alone)', () => {
			const a = new Layers()

			a.set(0)
			a.disable(0)
			// assert.strictEqual(a.mask, 0, 'Disable channel 0 with mask 0')
			expect<u32>(a.mask).toBe(0)

			a.set(0)
			a.disable(1)
			// assert.strictEqual(a.mask, 1, 'Disable channel 1 with mask 0')
			expect<u32>(a.mask).toBe(1)

			a.set(1)
			a.disable(0)
			// assert.strictEqual(a.mask, 2, 'Disable channel 0 with mask 1')
			expect<u32>(a.mask).toBe(2)

			a.set(1)
			a.disable(1)
			// assert.strictEqual(a.mask, 0, 'Disable channel 1 with mask 1')
			expect<u32>(a.mask).toBe(0)
		})
	})

	describe('.test', () => {
		it("compares to see if the other layer's bits match this layer's bits", () => {
			const a = new Layers()
			const b = new Layers()

			// assert.ok(a.test(b), 'Start out true')
			expect<bool>(a.test(b)).toBe(true)

			a.set(1)
			// assert.notOk(a.test(b), 'Set channel 1 in a and fail the QUnit.test')
			expect<bool>(a.test(b)).toBe(false)

			b.toggle(1)
			// assert.ok(a.test(b), 'Toggle channel 1 in b and pass again')
			expect<bool>(a.test(b)).toBe(true)
		})
	})
})

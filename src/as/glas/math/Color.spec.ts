/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */
/* global QUnit */

import {Color, HSL} from './Color'
// import {eps} from './Constants.tests'

describe('Color', () => {
	// INSTANCING
	describe('.constructor', () => {
		test('default args', () => {
			// default ctor
			const c = new Color()
			expect<f64>(c.r).toBe(0)
			expect<f64>(c.g).toBe(0)
			expect<f64>(c.b).toBe(0)
		})

		test('rgb args', () => {
			// rgb ctor
			const c = new Color(1, 1, 1)
			expect<f64>(c.r).toBe(1)
			expect<f64>(c.g).toBe(1)
			expect<f64>(c.b).toBe(1)
		})
	})

	// TODO, see TODO on Color.set
	// describe('set', () => {
	// 	// test('set with other Color', () => {
	// 	// 	const a = new Color()
	// 	// 	const b = new Color(0.5, 0, 0)
	// 	// 	a.set(b)
	// 	// 	expect<boolean>(a.equals(b)).toBe(true)
	// 	// })
	// 	// test('set with hex', () => {
	// 	// 	const a = new Color()
	// 	// 	const c = new Color(0xff0000)
	// 	// 	a.set(0xff0000)
	// 	// 	expect<boolean>(a.equals(c)).toBe(true)
	// 	// })
	// 	// todo(
	// 	// 	'set with string'
	// 	// 	/*
	// 	// 	,() => {
	// 	// 		const d = new Color(0, 1.0, 0)
	// 	// 		a.set('rgb(0,255,0)')
	// 	// 		expect<boolean>(a.equals(d)).toBe(true)
	// 	// 	}
	// 	// 	*/
	// 	// )
	// })

	// TODO
	// QUnit.todo('setScalar', () => {
	// 	assert.ok(false, "everything's gonna be alright")
	// })

	describe('.setHex', () => {
		it('sets the color values using a hex number', () => {
			const c = new Color()
			c.setHex(0xfa8072)
			expect<u32>(c.getHex()).toBe(0xfa8072)
		})
	})

	// TODO
	// QUnit.todo('setRGB', () => {
	// 	assert.ok(false, "everything's gonna be alright")
	// })

	describe('.setHSL', () => {
		it('sets color from HSL values', () => {
			const c = new Color()
			const hsl: HSL = {h: 0, s: 0, l: 0}

			c.setHSL(0, 0, 0)
			c.getHSL(hsl)

			expect<f64>(hsl.h).toBe(0)
			expect<f64>(hsl.s).toBe(0)
			expect<f64>(hsl.l).toBe(0)

			// TODO, math isn't working here
			// c.setHSL(0.75, 1.0, 0.25)
			// c.getHSL(hsl)

			// expect<f64>(hsl.h).toBe(0.75)
			// expect<f64>(hsl.s).toBe(1.0)
			// expect<f64>(hsl.l).toBe(0.25)
		})
	})

	// QUnit.todo('setStyle', () => {
	// 	assert.ok(false, "everything's gonna be alright")
	// })

	describe('.clone', () => {
		it('creates a new Color with the same values', () => {
			// TODO string colors
			// const c = new Color('teal')

			const c = new Color(0.2, 0.3, 0.4)
			const c2 = c.clone()
			// assert.ok(c2.getHex() == 0x008080, 'Hex c2: ' + c2.getHex())
			expect<boolean>(c.equals(c2)).toBe(true)
		})
	})

	describe('.copy', () => {
		it('copies values from another Color', () => {
			const c = new Color(0.1, 0.2, 0.3)
			const b = new Color()

			b.copy(c)

			checkColor(b, 0.1, 0.2, 0.3)
		})
	})

	// describe('copyGammaToLinear', () => {
	// 	const c = new Color()
	// 	const c2 = new Color()
	// 	c2.setRGB(0.3, 0.5, 0.9)
	// 	c.copyGammaToLinear(c2)
	// 	assert.ok(c.r == 0.09, 'Red c: ' + c.r + ' Red c2: ' + c2.r)
	// 	assert.ok(c.g == 0.25, 'Green c: ' + c.g + ' Green c2: ' + c2.g)
	// 	assert.ok(c.b == 0.81, 'Blue c: ' + c.b + ' Blue c2: ' + c2.b)
	// })

	// describe('copyLinearToGamma', () => {
	// 	const c = new Color()
	// 	const c2 = new Color()
	// 	c2.setRGB(0.09, 0.25, 0.81)
	// 	c.copyLinearToGamma(c2)
	// 	assert.ok(c.r == 0.3, 'Red c: ' + c.r + ' Red c2: ' + c2.r)
	// 	assert.ok(c.g == 0.5, 'Green c: ' + c.g + ' Green c2: ' + c2.g)
	// 	assert.ok(c.b == 0.9, 'Blue c: ' + c.b + ' Blue c2: ' + c2.b)
	// })

	// describe('convertGammaToLinear', () => {
	// 	const c = new Color()
	// 	c.setRGB(0.3, 0.5, 0.9)
	// 	c.convertGammaToLinear()
	// 	assert.ok(c.r == 0.09, 'Red: ' + c.r)
	// 	assert.ok(c.g == 0.25, 'Green: ' + c.g)
	// 	assert.ok(c.b == 0.81, 'Blue: ' + c.b)
	// })

	// describe('convertLinearToGamma', () => {
	// 	const c = new Color()
	// 	c.setRGB(4, 9, 16)
	// 	c.convertLinearToGamma()
	// 	assert.ok(c.r == 2, 'Red: ' + c.r)
	// 	assert.ok(c.g == 3, 'Green: ' + c.g)
	// 	assert.ok(c.b == 4, 'Blue: ' + c.b)
	// })

	// describe('getHex', () => {
	// 	const c = new Color('red')
	// 	const res = c.getHex()
	// 	assert.ok(res == 0xff0000, 'Hex: ' + res)
	// })

	// describe('getHexString', () => {
	// 	const c = new Color('tomato')
	// 	const res = c.getHexString()
	// 	assert.ok(res == 'ff6347', 'Hex: ' + res)
	// })

	// describe('getHSL', () => {
	// 	const c = new Color(0x80ffff)
	// 	const hsl = {h: 0, s: 0, l: 0}
	// 	c.getHSL(hsl)

	// 	assert.ok(hsl.h == 0.5, 'hue: ' + hsl.h)
	// 	assert.ok(hsl.s == 1.0, 'saturation: ' + hsl.s)
	// 	assert.ok(Math.round(parseFloat(hsl.l) * 100) / 100 == 0.75, 'lightness: ' + hsl.l)
	// })

	// describe('getStyle', () => {
	// 	const c = new Color('plum')
	// 	const res = c.getStyle()
	// 	assert.ok(res == 'rgb(221,160,221)', 'style: ' + res)
	// })

	// describe('offsetHSL', () => {
	// 	const a = new Color('hsl(120,50%,50%)')
	// 	const b = new Color(0.36, 0.84, 0.648)

	// 	a.offsetHSL(0.1, 0.1, 0.1)

	// 	assert.ok(Math.abs(a.r - b.r) <= eps, 'Check r')
	// 	assert.ok(Math.abs(a.g - b.g) <= eps, 'Check g')
	// 	assert.ok(Math.abs(a.b - b.b) <= eps, 'Check b')
	// })

	// describe('add', () => {
	// 	const a = new Color(0x0000ff)
	// 	const b = new Color(0xff0000)
	// 	const c = new Color(0xff00ff)

	// 	a.add(b)

	// 	assert.ok(a.equals(c), 'Check new value')
	// })

	// QUnit.todo('addColors', () => {
	// 	assert.ok(false, "everything's gonna be alright")
	// })

	// describe('addScalar', () => {
	// 	const a = new Color(0.1, 0.0, 0.0)
	// 	const b = new Color(0.6, 0.5, 0.5)

	// 	a.addScalar(0.5)

	// 	assert.ok(a.equals(b), 'Check new value')
	// })

	// describe('sub', () => {
	// 	const a = new Color(0x0000cc)
	// 	const b = new Color(0xff0000)
	// 	const c = new Color(0x0000aa)

	// 	a.sub(b)
	// 	assert.strictEqual(a.getHex(), 0xcc, 'Difference too large')

	// 	a.sub(c)
	// 	assert.strictEqual(a.getHex(), 0x22, 'Difference fine')
	// })

	// describe('multiply', () => {
	// 	const a = new Color(1, 0, 0.5)
	// 	const b = new Color(0.5, 1, 0.5)
	// 	const c = new Color(0.5, 0, 0.25)

	// 	a.multiply(b)
	// 	assert.ok(a.equals(c), 'Check new value')
	// })

	describe('.multiplyScalar', () => {
		it('multiplies the color values by a scalar number', () => {
			const a = new Color(0.25, 0, 0.5)
			const b = new Color(0.5, 0, 1)

			a.multiplyScalar(2)

			expect<boolean>(a.equals(b)).toBe(true)
		})
	})

	// describe('copyHex', () => {
	// 	const c = new Color()
	// 	const c2 = new Color(0xf5fffa)
	// 	c.copy(c2)
	// 	assert.ok(c.getHex() == c2.getHex(), 'Hex c: ' + c.getHex() + ' Hex c2: ' + c2.getHex())
	// })

	// describe('copyColorString', () => {
	// 	const c = new Color()
	// 	const c2 = new Color('ivory')
	// 	c.copy(c2)
	// 	assert.ok(c.getHex() == c2.getHex(), 'Hex c: ' + c.getHex() + ' Hex c2: ' + c2.getHex())
	// })

	describe('setRGB', () => {
		it('sets RGB values', () => {
			const c = new Color()
			c.setRGB(1, 0.2, 0.1)
			checkColor(c, 1, 0.2, 0.1)
		})
	})

	// describe('lerp', () => {
	// 	const c = new Color()
	// 	const c2 = new Color()
	// 	c.setRGB(0, 0, 0)
	// 	c.lerp(c2, 0.2)
	// 	assert.ok(c.r == 0.2, 'Red: ' + c.r)
	// 	assert.ok(c.g == 0.2, 'Green: ' + c.g)
	// 	assert.ok(c.b == 0.2, 'Blue: ' + c.b)
	// })

	// describe('equals', () => {
	// 	const a = new Color(0.5, 0.0, 1.0)
	// 	const b = new Color(0.5, 1.0, 0.0)

	// 	assert.strictEqual(a.r, b.r, 'Components: r is equal')
	// 	assert.notStrictEqual(a.g, b.g, 'Components: g is not equal')
	// 	assert.notStrictEqual(a.b, b.b, 'Components: b is not equal')

	// 	assert.notOk(a.equals(b), 'equals(): a not equal b')
	// 	assert.notOk(b.equals(a), 'equals(): b not equal a')

	// 	a.copy(b)
	// 	assert.strictEqual(a.r, b.r, 'Components after copy(): r is equal')
	// 	assert.strictEqual(a.g, b.g, 'Components after copy(): g is equal')
	// 	assert.strictEqual(a.b, b.b, 'Components after copy(): b is equal')

	// 	assert.ok(a.equals(b), 'equals() after copy(): a equals b')
	// 	assert.ok(b.equals(a), 'equals() after copy(): b equals a')
	// })

	// describe('fromArray', () => {
	// 	const a = new Color()
	// 	const array = [0.5, 0.6, 0.7, 0, 1, 0]

	// 	a.fromArray(array)
	// 	assert.strictEqual(a.r, 0.5, 'No offset: check r')
	// 	assert.strictEqual(a.g, 0.6, 'No offset: check g')
	// 	assert.strictEqual(a.b, 0.7, 'No offset: check b')

	// 	a.fromArray(array, 3)
	// 	assert.strictEqual(a.r, 0, 'With offset: check r')
	// 	assert.strictEqual(a.g, 1, 'With offset: check g')
	// 	assert.strictEqual(a.b, 0, 'With offset: check b')
	// })

	// describe('toArray', () => {
	// 	const r = 0.5,
	// 		g = 1.0,
	// 		b = 0.0
	// 	const a = new Color(r, g, b)

	// 	const array = a.toArray()
	// 	assert.strictEqual(array[0], r, 'No array, no offset: check r')
	// 	assert.strictEqual(array[1], g, 'No array, no offset: check g')
	// 	assert.strictEqual(array[2], b, 'No array, no offset: check b')

	// 	const array = []
	// 	a.toArray(array)
	// 	assert.strictEqual(array[0], r, 'With array, no offset: check r')
	// 	assert.strictEqual(array[1], g, 'With array, no offset: check g')
	// 	assert.strictEqual(array[2], b, 'With array, no offset: check b')

	// 	const array = []
	// 	a.toArray(array, 1)
	// 	assert.strictEqual(array[0], undefined, 'With array and offset: check [0]')
	// 	assert.strictEqual(array[1], r, 'With array and offset: check r')
	// 	assert.strictEqual(array[2], g, 'With array and offset: check g')
	// 	assert.strictEqual(array[3], b, 'With array and offset: check b')
	// })

	// describe('toJSON', () => {
	// 	const a = new Color(0.0, 0.0, 0.0)
	// 	const b = new Color(0.0, 0.5, 0.0)
	// 	const c = new Color(1.0, 0.0, 0.0)
	// 	const d = new Color(1.0, 1.0, 1.0)

	// 	assert.strictEqual(a.toJSON(), 0x000000, 'Check black')
	// 	assert.strictEqual(b.toJSON(), 0x007f00, 'Check half-blue')
	// 	assert.strictEqual(c.toJSON(), 0xff0000, 'Check red')
	// 	assert.strictEqual(d.toJSON(), 0xffffff, 'Check white')
	// })

	// // OTHERS
	// describe('setWithNum', () => {
	// 	const c = new Color()
	// 	c.set(0xff0000)
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g === 0, 'Green: ' + c.g)
	// 	assert.ok(c.b === 0, 'Blue: ' + c.b)
	// })

	// describe('setWithString', () => {
	// 	const c = new Color()
	// 	c.set('silver')
	// 	assert.ok(c.getHex() == 0xc0c0c0, 'Hex c: ' + c.getHex())
	// })

	// describe('setStyleRGBRed', () => {
	// 	const c = new Color()
	// 	c.setStyle('rgb(255,0,0)')
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g === 0, 'Green: ' + c.g)
	// 	assert.ok(c.b === 0, 'Blue: ' + c.b)
	// })

	// describe('setStyleRGBARed', () => {
	// 	const c = new Color()
	// 	c.setStyle('rgba(255,0,0,0.5)')
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g === 0, 'Green: ' + c.g)
	// 	assert.ok(c.b === 0, 'Blue: ' + c.b)
	// })

	// describe('setStyleRGBRedWithSpaces', () => {
	// 	const c = new Color()
	// 	c.setStyle('rgb( 255 , 0,   0 )')
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g === 0, 'Green: ' + c.g)
	// 	assert.ok(c.b === 0, 'Blue: ' + c.b)
	// })

	// describe('setStyleRGBARedWithSpaces', () => {
	// 	const c = new Color()
	// 	c.setStyle('rgba( 255,  0,  0  , 1 )')
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g === 0, 'Green: ' + c.g)
	// 	assert.ok(c.b === 0, 'Blue: ' + c.b)
	// })

	// describe('setStyleRGBPercent', () => {
	// 	const c = new Color()
	// 	c.setStyle('rgb(100%,50%,10%)')
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g == 0.5, 'Green: ' + c.g)
	// 	assert.ok(c.b == 0.1, 'Blue: ' + c.b)
	// })

	// describe('setStyleRGBAPercent', () => {
	// 	const c = new Color()
	// 	c.setStyle('rgba(100%,50%,10%, 0.5)')
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g == 0.5, 'Green: ' + c.g)
	// 	assert.ok(c.b == 0.1, 'Blue: ' + c.b)
	// })

	// describe('setStyleRGBPercentWithSpaces', () => {
	// 	const c = new Color()
	// 	c.setStyle('rgb( 100% ,50%  , 10% )')
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g == 0.5, 'Green: ' + c.g)
	// 	assert.ok(c.b == 0.1, 'Blue: ' + c.b)
	// })

	// describe('setStyleRGBAPercentWithSpaces', () => {
	// 	const c = new Color()
	// 	c.setStyle('rgba( 100% ,50%  ,  10%, 0.5 )')
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g == 0.5, 'Green: ' + c.g)
	// 	assert.ok(c.b == 0.1, 'Blue: ' + c.b)
	// })

	// describe('setStyleHSLRed', () => {
	// 	const c = new Color()
	// 	c.setStyle('hsl(360,100%,50%)')
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g === 0, 'Green: ' + c.g)
	// 	assert.ok(c.b === 0, 'Blue: ' + c.b)
	// })

	// describe('setStyleHSLARed', () => {
	// 	const c = new Color()
	// 	c.setStyle('hsla(360,100%,50%,0.5)')
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g === 0, 'Green: ' + c.g)
	// 	assert.ok(c.b === 0, 'Blue: ' + c.b)
	// })

	// describe('setStyleHSLRedWithSpaces', () => {
	// 	const c = new Color()
	// 	c.setStyle('hsl(360,  100% , 50% )')
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g === 0, 'Green: ' + c.g)
	// 	assert.ok(c.b === 0, 'Blue: ' + c.b)
	// })

	// describe('setStyleHSLARedWithSpaces', () => {
	// 	const c = new Color()
	// 	c.setStyle('hsla( 360,  100% , 50%,  0.5 )')
	// 	assert.ok(c.r == 1, 'Red: ' + c.r)
	// 	assert.ok(c.g === 0, 'Green: ' + c.g)
	// 	assert.ok(c.b === 0, 'Blue: ' + c.b)
	// })

	// describe('setStyleHexSkyBlue', () => {
	// 	const c = new Color()
	// 	c.setStyle('#87CEEB')
	// 	assert.ok(c.getHex() == 0x87ceeb, 'Hex c: ' + c.getHex())
	// })

	// describe('setStyleHexSkyBlueMixed', () => {
	// 	const c = new Color()
	// 	c.setStyle('#87cEeB')
	// 	assert.ok(c.getHex() == 0x87ceeb, 'Hex c: ' + c.getHex())
	// })

	// describe('setStyleHex2Olive', () => {
	// 	const c = new Color()
	// 	c.setStyle('#F00')
	// 	assert.ok(c.getHex() == 0xff0000, 'Hex c: ' + c.getHex())
	// })

	// describe('setStyleHex2OliveMixed', () => {
	// 	const c = new Color()
	// 	c.setStyle('#f00')
	// 	assert.ok(c.getHex() == 0xff0000, 'Hex c: ' + c.getHex())
	// })

	// describe('setStyleColorName', () => {
	// 	const c = new Color()
	// 	c.setStyle('powderblue')
	// 	assert.ok(c.getHex() == 0xb0e0e6, 'Hex c: ' + c.getHex())
	// })
})

function checkColor(c: Color, r: f64, g: f64, b: f64): void {
	expect<f64>(c.r).toBe(r)
	expect<f64>(c.g).toBe(g)
	expect<f64>(c.b).toBe(b)
}

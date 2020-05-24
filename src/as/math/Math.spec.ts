/**
 * @author humbletim / https://github.com/humbletim
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / https://github.com/trusktr
 */
import * as ThreeMath from './Math'

describe('Math', () => {
	// PUBLIC STUFF
	todo('generateUUID')
	// test('generateUUID', () => {
	// 	var a = ThreeMath.generateUUID()
	// 	var regex = /[A-Z0-9]{8}-[A-Z0-9]{4}-4[A-Z0-9]{3}-[A-Z0-9]{4}-[A-Z0-9]{12}/i
	// 	// note the fixed '4' here ----------^

	// 	expect(regex.test(a)).toBeTruthy()
	// })

	test('clamp', () => {
		expect(ThreeMath.clamp(0.5, 0, 1)).toBe(0.5)
		expect(ThreeMath.clamp(0, 0, 1)).toBe(0)
		expect(ThreeMath.clamp(-0.1, 0, 1)).toBe(0)
		expect(ThreeMath.clamp(1.1, 0, 1)).toBe(1)
	})

	test('euclideanModulo', () => {
		expect(ThreeMath.euclideanModulo(6, 0)).toBeNaN()
		expect(ThreeMath.euclideanModulo(6, 1)).toBe(0)
		expect(ThreeMath.euclideanModulo(6, 2)).toBe(0)
		expect(ThreeMath.euclideanModulo(6, 5)).toBe(1)
		expect(ThreeMath.euclideanModulo(6, 6)).toBe(0)
		expect(ThreeMath.euclideanModulo(6, 7)).toBe(6)
	})

	test('mapLinear', () => {
		expect(ThreeMath.mapLinear(0.5, 0, 1, 0, 10)).toBe(5)
		expect(ThreeMath.mapLinear(0.0, 0, 1, 0, 10)).toBe(0)
		expect(ThreeMath.mapLinear(1.0, 0, 1, 0, 10)).toBe(10)
	})

	todo('lerp')

	test('smoothstep', () => {
		expect(ThreeMath.smoothstep(-1, 0, 2)).toBe(0)
		expect(ThreeMath.smoothstep(0, 0, 2)).toBe(0)
		expect(ThreeMath.smoothstep(0.5, 0, 2)).toBe(0.15625)
		expect(ThreeMath.smoothstep(1, 0, 2)).toBe(0.5)
		expect(ThreeMath.smoothstep(1.5, 0, 2)).toBe(0.84375)
		expect(ThreeMath.smoothstep(2, 0, 2)).toBe(1)
		expect(ThreeMath.smoothstep(3, 0, 2)).toBe(1)
	})

	todo('smootherstep')

	test('randInt', () => {
		var low = 1,
			high = 3
		var a = ThreeMath.randInt(low, high)

		expect(a).toBeGreaterThanOrEqual(low)
		expect(a).toBeLessThanOrEqual(high)
	})

	test('randFloat', () => {
		var low = 1,
			high = 3
		var a = ThreeMath.randFloat(low, high)

		expect(a).toBeGreaterThanOrEqual(low)
		expect(a).toBeLessThanOrEqual(high)
	})

	test('randFloatSpread', () => {
		var a = ThreeMath.randFloatSpread(3)

		expect(a).toBeGreaterThan(-3 / 2)
		expect(a).toBeLessThan(3 / 2)
	})

	test('degToRad', () => {
		expect(ThreeMath.degToRad(0)).toBe(0)
		expect(ThreeMath.degToRad(90)).toBe(Math.PI / 2)
		expect(ThreeMath.degToRad(180)).toBe(Math.PI)
		expect(ThreeMath.degToRad(360)).toBe(Math.PI * 2)
	})

	test('radToDeg', () => {
		expect(ThreeMath.radToDeg(0)).toBe(0)
		expect(ThreeMath.radToDeg(Math.PI / 2)).toBe(90)
		expect(ThreeMath.radToDeg(Math.PI)).toBe(180)
		expect(ThreeMath.radToDeg(Math.PI * 2)).toBe(360)
	})

	test('isPowerOfTwo', () => {
		expect(ThreeMath.isPowerOfTwo(0)).toBeFalsy()
		expect(ThreeMath.isPowerOfTwo(1)).toBeTruthy()
		expect(ThreeMath.isPowerOfTwo(2)).toBeTruthy()
		expect(ThreeMath.isPowerOfTwo(3)).toBeFalsy()
		expect(ThreeMath.isPowerOfTwo(4)).toBeTruthy()
	})

	test('ceilPowerOfTwo', () => {
		expect(ThreeMath.ceilPowerOfTwo(1)).toBe(1)
		expect(ThreeMath.ceilPowerOfTwo(3)).toBe(4)
		expect(ThreeMath.ceilPowerOfTwo(4)).toBe(4)
	})

	test('floorPowerOfTwo', () => {
		expect(ThreeMath.floorPowerOfTwo(1)).toBe(1)
		expect(ThreeMath.floorPowerOfTwo(3)).toBe(2)
		expect(ThreeMath.floorPowerOfTwo(4)).toBe(4)
	})
})

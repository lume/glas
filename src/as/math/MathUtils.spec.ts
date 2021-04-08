/**
 * @author humbletim / https://github.com/humbletim
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / https://github.com/trusktr
 */
import * as MathUtils from './MathUtils'

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
		expect(MathUtils.clamp(0.5, 0, 1)).toBe(0.5)
		expect(MathUtils.clamp(0, 0, 1)).toBe(0)
		expect(MathUtils.clamp(-0.1, 0, 1)).toBe(0)
		expect(MathUtils.clamp(1.1, 0, 1)).toBe(1)
	})

	test('euclideanModulo', () => {
		expect(MathUtils.euclideanModulo(6, 0)).toBeNaN()
		expect(MathUtils.euclideanModulo(6, 1)).toBe(0)
		expect(MathUtils.euclideanModulo(6, 2)).toBe(0)
		expect(MathUtils.euclideanModulo(6, 5)).toBe(1)
		expect(MathUtils.euclideanModulo(6, 6)).toBe(0)
		expect(MathUtils.euclideanModulo(6, 7)).toBe(6)
	})

	test('mapLinear', () => {
		expect(MathUtils.mapLinear(0.5, 0, 1, 0, 10)).toBe(5)
		expect(MathUtils.mapLinear(0.0, 0, 1, 0, 10)).toBe(0)
		expect(MathUtils.mapLinear(1.0, 0, 1, 0, 10)).toBe(10)
	})

	todo('lerp')

	test('smoothstep', () => {
		expect(MathUtils.smoothstep(-1, 0, 2)).toBe(0)
		expect(MathUtils.smoothstep(0, 0, 2)).toBe(0)
		expect(MathUtils.smoothstep(0.5, 0, 2)).toBe(0.15625)
		expect(MathUtils.smoothstep(1, 0, 2)).toBe(0.5)
		expect(MathUtils.smoothstep(1.5, 0, 2)).toBe(0.84375)
		expect(MathUtils.smoothstep(2, 0, 2)).toBe(1)
		expect(MathUtils.smoothstep(3, 0, 2)).toBe(1)
	})

	todo('smootherstep')

	test('randInt', () => {
		const low: f32 = 1,
			high: f32 = 3
		const a = MathUtils.randInt(low, high)

		expect(a).toBeGreaterThanOrEqual(low)
		expect(a).toBeLessThanOrEqual(high)
	})

	test('randFloat', () => {
		const low: f32 = 1,
			high: f32 = 3
		const a = MathUtils.randFloat(low, high)

		expect(a).toBeGreaterThanOrEqual(low)
		expect(a).toBeLessThanOrEqual(high)
	})

	test('randFloatSpread', () => {
		const a = MathUtils.randFloatSpread(3)

		expect(a).toBeGreaterThan(-3 / 2)
		expect(a).toBeLessThan(3 / 2)
	})

	test('degToRad', () => {
		expect(MathUtils.degToRad(0)).toBe(0)
		expect(MathUtils.degToRad(90)).toBe(Mathf.PI / 2)
		expect(MathUtils.degToRad(180)).toBe(Mathf.PI)
		expect(MathUtils.degToRad(360)).toBe(Mathf.PI * 2)
	})

	test('radToDeg', () => {
		expect(MathUtils.radToDeg(0)).toBe(0)
		expect(MathUtils.radToDeg(Mathf.PI / 2)).toBe(90)
		expect(MathUtils.radToDeg(Mathf.PI)).toBe(180)
		expect(MathUtils.radToDeg(Mathf.PI * 2)).toBe(360)
	})

	test('isPowerOfTwo', () => {
		expect(MathUtils.isPowerOfTwo(0)).toBeFalsy()
		expect(MathUtils.isPowerOfTwo(1)).toBeTruthy()
		expect(MathUtils.isPowerOfTwo(2)).toBeTruthy()
		expect(MathUtils.isPowerOfTwo(3)).toBeFalsy()
		expect(MathUtils.isPowerOfTwo(4)).toBeTruthy()
	})

	test('ceilPowerOfTwo', () => {
		expect(MathUtils.ceilPowerOfTwo(1)).toBe(1)
		expect(MathUtils.ceilPowerOfTwo(3)).toBe(4)
		expect(MathUtils.ceilPowerOfTwo(4)).toBe(4)
	})

	test('floorPowerOfTwo', () => {
		expect(MathUtils.floorPowerOfTwo(1)).toBe(1)
		expect(MathUtils.floorPowerOfTwo(3)).toBe(2)
		expect(MathUtils.floorPowerOfTwo(4)).toBe(4)
	})
})

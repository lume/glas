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

	// 	assert(regex.test(a), 'Generated UUID matches the expected pattern')
	// })

	test('clamp', () => {
		assert(ThreeMath.clamp(0.5, 0, 1) == 0.5, 'Value already within limits')
		assert(ThreeMath.clamp(0, 0, 1) == 0, 'Value equal to one limit')
		assert(ThreeMath.clamp(-0.1, 0, 1) == 0, 'Value too low')
		assert(ThreeMath.clamp(1.1, 0, 1) == 1, 'Value too high')
	})

	test('euclideanModulo', () => {
		assert(isNaN(ThreeMath.euclideanModulo(6, 0)), 'Division by zero returns NaN')
		assert(ThreeMath.euclideanModulo(6, 1) == 0, 'Divison by trivial divisor')
		assert(ThreeMath.euclideanModulo(6, 2) == 0, 'Divison by non-trivial divisor')
		assert(ThreeMath.euclideanModulo(6, 5) == 1, 'Divison by itself - 1')
		assert(ThreeMath.euclideanModulo(6, 6) == 0, 'Divison by itself')
		assert(ThreeMath.euclideanModulo(6, 7) == 6, 'Divison by itself + 1')
	})

	test('mapLinear', () => {
		assert(ThreeMath.mapLinear(0.5, 0, 1, 0, 10) == 5, 'Value within range')
		assert(ThreeMath.mapLinear(0.0, 0, 1, 0, 10) == 0, 'Value equal to lower boundary')
		assert(ThreeMath.mapLinear(1.0, 0, 1, 0, 10) == 10, 'Value equal to upper boundary')
	})

	todo('lerp')

	test('smoothstep', () => {
		assert(ThreeMath.smoothstep(-1, 0, 2) == 0, 'Value lower than minimum')
		assert(ThreeMath.smoothstep(0, 0, 2) == 0, 'Value equal to minimum')
		assert(ThreeMath.smoothstep(0.5, 0, 2) == 0.15625, 'Value within limits')
		assert(ThreeMath.smoothstep(1, 0, 2) == 0.5, 'Value within limits')
		assert(ThreeMath.smoothstep(1.5, 0, 2) == 0.84375, 'Value within limits')
		assert(ThreeMath.smoothstep(2, 0, 2) == 1, 'Value equal to maximum')
		assert(ThreeMath.smoothstep(3, 0, 2) == 1, 'Value highter than maximum')
	})

	todo('smootherstep')

	test('randInt', () => {
		var low: f32 = 1,
			high: f32 = 3
		var a = ThreeMath.randInt(low, high)

		assert(a >= low, 'Value equal to or higher than lower limit')
		assert(a <= high, 'Value equal to or lower than upper limit')
	})

	test('randFloat', () => {
		var low: f32 = 1,
			high: f32 = 3
		var a = ThreeMath.randFloat(low, high)

		assert(a >= low, 'Value equal to or higher than lower limit')
		assert(a <= high, 'Value equal to or lower than upper limit')
	})

	test('randFloatSpread', () => {
		var a = ThreeMath.randFloatSpread(3)

		assert(a > -3 / 2, 'Value higher than lower limit')
		assert(a < 3 / 2, 'Value lower than upper limit')
	})

	test('degToRad', () => {
		assert(ThreeMath.degToRad(0) == 0, '0 degrees')
		assert(ThreeMath.degToRad(90) == Mathf.PI / 2, '90 degrees')
		assert(ThreeMath.degToRad(180) == Mathf.PI, '180 degrees')
		assert(ThreeMath.degToRad(360) == Mathf.PI * 2, '360 degrees')
	})

	test('radToDeg', () => {
		assert(ThreeMath.radToDeg(0) == 0, '0 radians')
		assert(ThreeMath.radToDeg(Mathf.PI / 2) == 90, 'Mathf.PI / 2 radians')
		assert(ThreeMath.radToDeg(Mathf.PI) == 180, 'Mathf.PI radians')
		assert(ThreeMath.radToDeg(Mathf.PI * 2) == 360, 'Mathf.PI * 2 radians')
	})

	test('isPowerOfTwo', () => {
		assert(!ThreeMath.isPowerOfTwo(0), '0 is not a PoT')
		assert(ThreeMath.isPowerOfTwo(1), '1 is a PoT')
		assert(ThreeMath.isPowerOfTwo(2), '2 is a PoT')
		assert(!ThreeMath.isPowerOfTwo(3), '3 is not a PoT')
		assert(ThreeMath.isPowerOfTwo(4), '4 is a PoT')
	})

	test('ceilPowerOfTwo', () => {
		assert(ThreeMath.ceilPowerOfTwo(1) == 1, 'Closest higher PoT to 1 is 1')
		assert(ThreeMath.ceilPowerOfTwo(3) == 4, 'Closest higher PoT to 3 is 4')
		assert(ThreeMath.ceilPowerOfTwo(4) == 4, 'Closest higher PoT to 4 is 4')
	})

	test('floorPowerOfTwo', () => {
		assert(ThreeMath.floorPowerOfTwo(1) == 1, 'Closest lower PoT to 1 is 1')
		assert(ThreeMath.floorPowerOfTwo(3) == 2, 'Closest lower PoT to 3 is 2')
		assert(ThreeMath.floorPowerOfTwo(4) == 4, 'Closest lower PoT to 4 is 4')
	})
})

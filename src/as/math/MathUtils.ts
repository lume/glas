// Based on Three.js r105, but renamed to MathUtils to match newer Three.
// Update to newer Three later...

/**
 * @author alteredq / http://alteredqualia.com/
 * @author mrdoob / http://mrdoob.com/
 * @author corruptedzulu / http://www.github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/math/Math">src/math/Math</a>
 */

export const DEG2RAD: f32 = Mathf.PI / 180
export const RAD2DEG: f32 = 180 / Mathf.PI

// TODO document here
export function toString(source: i32, radix: i8): string {
	let result: string = ''

	return result
}

	//digit := number % 16
function _toHexString(number: i32, result: string = ''): string {
	//lookup digit character in hex string array
	//add digit character to the beginning of the string
	//recurse while number > 16

	const hexValues: string[] = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F']
	const digit: i32 = number % 16

	if (number > 16) {
		// convert next digit
		_toHexString(number / 16, hexValues[digit] + result)
	}

	return hexValues[digit] + result
}

export function generateUUID(): string {
	//var lut: string[] = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F']
	var lut: string[] = []
	var charVal: string = ''
	var iVal: string = ''
	var sixteen: i32 = 16

	for (var i = 0; i < 256; i++) {
		charVal = i < 16 ? '0' : ''
		iVal = _toHexString(i)
		// iVal = i.toString(sixteen)
		lut[i] = charVal + iVal
	}

	NativeMathf.seedRandom(12345678)

	var d0: u32 = u32(Mathf.random() * 0xffffffff) //| 0
	var d1: u32 = u32(Mathf.random() * 0xffffffff) //| 0
	var d2: u32 = u32(Mathf.random() * 0xffffffff) //| 0
	var d3: u32 = u32(Mathf.random() * 0xffffffff) //| 0

	// var uuid: string =
	// 	lut[d0 & 0xf] +
	// 	lut[(d0 >> 4) & 0xf] +
	// 	lut[(d0 >> 8) & 0xf] +
	// 	lut[(d0 >> 12) & 0xf] +
	// 	lut[(d0 >> 16) & 0xf] +
	// 	lut[(d0 >> 20) & 0xf] +
	// 	lut[(d0 >> 24) & 0xf] +
	// 	lut[(d0 >> 28) & 0xf] +
	// 	'-' +
	// 	lut[d1 & 0xf] +
	// 	lut[(d1 >> 4) & 0xf] +
	// 	lut[(d1 >> 8) & 0xf] +
	// 	lut[(d1 >> 12) & 0xf] +
	// 	'-' +
	// 	lut[((d1 >> 16) & 0x0f) | 0x40] +
	// 	lut[(d1 >> 20) & 0xf] +
	// 	lut[((d1 >> 16) & 0x0f) | 0x40] +
	// 	lut[(d1 >> 28) & 0xf] +
	// 	'-' +
	// 	lut[d2 & 0xf] +
	// 	lut[(d2 >> 4) & 0xf] +
	// 	lut[(d2 >> 8) & 0xf] +
	// 	lut[(d2 >> 12) & 0xf] +
	// 	'-' +
	// 	lut[(d2 >> 16) & 0xf] +
	// 	lut[(d2 >> 20) & 0xf] +
	// 	lut[(d2 >> 24) & 0xf] +
	// 	lut[(d2 >> 28) & 0xf] +
	// 	lut[d3 & 0xf] +
	// 	lut[(d3 >> 4) & 0xf] +
	// 	lut[(d3 >> 8) & 0xf] +
	// 	lut[(d3 >> 12) & 0xf] +
	// 	lut[(d3 >> 16) & 0xf] +
	// 	lut[(d3 >> 20) & 0xf] +
	// 	lut[(d3 >> 24) & 0xf] +
	// 	lut[(d3 >> 28) & 0xf]

	var uuid =
		lut[d0 & 0xff] +
		lut[(d0 >> 8) & 0xff] +
		lut[(d0 >> 16) & 0xff] +
		lut[(d0 >> 24) & 0xff] +
		'-' +
		lut[d1 & 0xff] +
		lut[(d1 >> 8) & 0xff] +
		'-' +
		lut[((d1 >> 16) & 0x0f) | 0x40] +
		lut[(d1 >> 24) & 0xff] +
		'-' +
		lut[(d2 & 0x3f) | 0x80] +
		lut[(d2 >> 8) & 0xff] +
		'-' +
		lut[(d2 >> 16) & 0xff] +
		lut[(d2 >> 24) & 0xff] +
		lut[d3 & 0xff] +
		lut[(d3 >> 8) & 0xff] +
		lut[(d3 >> 16) & 0xff] +
		lut[(d3 >> 24) & 0xff]

	// use .toUpperCase() here to flatten concatenated strings to save heap memory space?
	return uuid
}

/**
 * Clamps the x to be between a and b.
 *
 * @param value Value to be clamped.
 * @param min Minimum value
 * @param max Maximum value.
 */
export function clamp(value: f32, min: f32, max: f32): f32 {
	return Mathf.max(min, Mathf.min(max, value))
}

export function euclideanModulo(n: f32, m: f32): f32 {
	return ((n % m) + m) % m
}

/**
 * Linear mapping of x from range [a1, a2] to range [b1, b2].
 *
 * @param x Value to be mapped.
 * @param a1 Minimum value for range A.
 * @param a2 Maximum value for range A.
 * @param b1 Minimum value for range B.
 * @param b2 Maximum value for range B.
 */
export function mapLinear(x: f32, a1: f32, a2: f32, b1: f32, b2: f32): f32 {
	return b1 + ((x - a1) * (b2 - b1)) / (a2 - a1)
}

/**
 * Returns a value linearly interpolated from two known points based
 * on the given interval - t = 0 will return x and t = 1 will return y.
 *
 * @param x Start point.
 * @param y End point.
 * @param t interpolation factor in the closed interval [0, 1]
 * @return {f32}
 */
export function lerp(x: f32, y: f32, t: f32): f32 {
	return (1 - t) * x + t * y
}

export function smoothstep(x: f32, min: f32, max: f32): f32 {
	if (x <= min) return 0
	if (x >= max) return 1

	x = (x - min) / (max - min)

	return x * x * (3 - 2 * x)
}

export function smootherstep(x: f32, min: f32, max: f32): f32 {
	if (x <= min) return 0
	if (x >= max) return 1

	x = (x - min) / (max - min)

	return x * x * x * (x * (x * 6 - 15) + 10)
}

/**
 * Random integer from low to high interval.
 */
export function randInt(low: f32, high: f32): f32 {
	NativeMathf.seedRandom(12345678)
	return low + Mathf.floor(Mathf.random() * (high - low + 1))
}

/**
 * Random float from low to high interval.
 */
export function randFloat(low: f32, high: f32): f32 {
	NativeMathf.seedRandom(12345678)
	return low + Mathf.random() * (high - low)
}

/**
 * Random float from - range / 2 to range / 2 interval.
 */
export function randFloatSpread(range: f32): f32 {
	NativeMathf.seedRandom(12345678)
	return range * (0.5 - Mathf.random())
}

export function degToRad(degrees: f32): f32 {
	return degrees * DEG2RAD
}

export function radToDeg(radians: f32): f32 {
	return radians * RAD2DEG
}

export function isPowerOfTwo(value: i64): boolean {
	return (value & (value - 1)) === 0 && value !== 0
}

export function ceilPowerOfTwo(value: f32): f32 {
	return Mathf.pow(2, Mathf.ceil(Mathf.log(value) / Mathf.LN2))
}

export function floorPowerOfTwo(value: f32): f32 {
	return Mathf.pow(2, Mathf.floor(Mathf.log(value) / Mathf.LN2))
}

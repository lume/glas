/**
 * @author alteredq / http://alteredqualia.com/
 * @author mrdoob / http://mrdoob.com/
 * @author corruptedzulu / http://www.github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/math/Math">src/math/Math</a>
 */

export const DEG2RAD: number = Math.PI / 180.0
export const RAD2DEG: number = 180.0 / Math.PI

export function toString(source: i32, radix: i8): string {
	let result: string = ''

	return result
}

export function generateUUID(): string {
	var lut = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F']

	NativeMath.seedRandom(12345678)
	var d0 = (Math.random() * 0xffffffff) | 0
	var d1 = (Math.random() * 0xffffffff) | 0
	var d2 = (Math.random() * 0xffffffff) | 0
	var d3 = (Math.random() * 0xffffffff) | 0
	var uuid =
		lut[d0 & 0xf] +
		lut[(d0 >> 4) & 0xf] +
		lut[(d0 >> 8) & 0xf] +
		lut[(d0 >> 12) & 0xf] +
		lut[(d0 >> 16) & 0xf] +
		lut[(d0 >> 20) & 0xf] +
		lut[(d0 >> 24) & 0xf] +
		lut[(d0 >> 28) & 0xf] +
		'-' +
		lut[d1 & 0xf] +
		lut[(d1 >> 4) & 0xf] +
		lut[(d1 >> 8) & 0xf] +
		lut[(d1 >> 12) & 0xf] +
		'-' +
		lut[((d1 >> 16) & 0x0f) | 0x40] +
		lut[(d1 >> 20) & 0xf] +
		lut[((d1 >> 16) & 0x0f) | 0x40] +
		lut[(d1 >> 28) & 0xf] +
		'-' +
		lut[d2 & 0xf] +
		lut[(d2 >> 4) & 0xf] +
		lut[(d2 >> 8) & 0xf] +
		lut[(d2 >> 12) & 0xf] +
		'-' +
		lut[(d2 >> 16) & 0xf] +
		lut[(d2 >> 20) & 0xf] +
		lut[(d2 >> 24) & 0xf] +
		lut[(d2 >> 28) & 0xf] +
		lut[d3 & 0xf] +
		lut[(d3 >> 4) & 0xf] +
		lut[(d3 >> 8) & 0xf] +
		lut[(d3 >> 12) & 0xf] +
		lut[(d3 >> 16) & 0xf] +
		lut[(d3 >> 20) & 0xf] +
		lut[(d3 >> 24) & 0xf] +
		lut[(d3 >> 28) & 0xf]

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
export function clamp(value: number, min: number, max: number): number {
	return Math.max(min, Math.min(max, value))
}

export function euclideanModulo(n: number, m: number): number {
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
export function mapLinear(x: number, a1: number, a2: number, b1: number, b2: number): number {
	return b1 + ((x - a1) * (b2 - b1)) / (a2 - a1)
}

/**
 * Returns a value linearly interpolated from two known points based
 * on the given interval - t = 0 will return x and t = 1 will return y.
 *
 * @param x Start point.
 * @param y End point.
 * @param t interpolation factor in the closed interval [0, 1]
 * @return {number}
 */
export function lerp(x: number, y: number, t: number): number {
	return (1 - t) * x + t * y
}

export function smoothstep(x: number, min: number, max: number): number {
	if (x <= min) return 0
	if (x >= max) return 1

	x = (x - min) / (max - min)

	return x * x * (3 - 2 * x)
}

export function smootherstep(x: number, min: number, max: number): number {
	if (x <= min) return 0
	if (x >= max) return 1

	x = (x - min) / (max - min)

	return x * x * x * (x * (x * 6 - 15) + 10)
}

/**
 * Random integer from low to high interval.
 */
export function randInt(low: number, high: number): number {
	NativeMath.seedRandom(12345678)
	return low + Math.floor(Math.random() * (high - low + 1))
}

/**
 * Random float from low to high interval.
 */
export function randFloat(low: number, high: number): number {
	NativeMath.seedRandom(12345678)
	return low + Math.random() * (high - low)
}

/**
 * Random float from - range / 2 to range / 2 interval.
 */
export function randFloatSpread(range: number): number {
	NativeMath.seedRandom(12345678)
	return range * (0.5 - Math.random())
}

export function degToRad(degrees: number): number {
	return degrees * DEG2RAD
}

export function radToDeg(radians: number): number {
	return radians * RAD2DEG
}

export function isPowerOfTwo(value: i64): boolean {
	return (value & (value - 1)) === 0 && value !== 0
}

export function ceilPowerOfTwo(value: number): number {
	return Math.pow(2, Math.ceil(Math.log(value) / Math.LN2))
}

export function floorPowerOfTwo(value: number): number {
	return Math.pow(2, Math.floor(Math.log(value) / Math.LN2))
}

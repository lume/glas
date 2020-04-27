/**
 * @author mrdoob / http://mrdoob.com/
 * @author corruptedzulu / https://github.com/corruptedzulu
 */

// export function arrayMin(array: number[]): number
// export function arrayMax(array: number[]): number

function arrayMin(array: f32[]): f32 {
	if (array.length === 0) return Infinity

	var min = array[0]

	for (var i = 1, l = array.length; i < l; ++i) {
		if (array[i] < min) min = array[i]
	}

	return min
}

function arrayMax(array: f32[]): f32 {
	if (array.length === 0) return -Infinity

	var max = array[0]

	for (var i = 1, l = array.length; i < l; ++i) {
		if (array[i] > max) max = array[i]
	}

	return max
}

export {arrayMin, arrayMax}

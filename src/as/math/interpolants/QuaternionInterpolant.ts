import { Interpolant } from '../Interpolant'
import { Quaternion } from '../Quaternion.js'

/**
 * Spherical linear unit quaternion interpolant.
 *
 * @author tschw
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

export class QuaternionLinearInterpolant extends Interpolant {
	constructor(parameterPositions: any, samplesValues: any, sampleSize: f32, resultBuffer?: any) {
		super(parameterPositions, samplesValues, sampleSize, resultBuffer)
	}

	interpolate_(i1: f32, t0: f32, t: f32, t1: f32): any {
		let result = this.resultBuffer
		const values = this.samplesValues,
			stride = this.valueSize,
			offset = i1 * stride,
			alpha = (t - t0) / (t1 - t0)

		// FIXME? https://github.com/mrdoob/three.js/commit/4126288ad3f53fcd9b6ebe4817fb3b674fd543c5#commitcomment-46387562
		for (let end = offset + stride; offset !== end; offset += 4) {
			Quaternion.slerpFlat(result, 0, values, offset - stride, values, offset, alpha)
		}

		return result
	}
}

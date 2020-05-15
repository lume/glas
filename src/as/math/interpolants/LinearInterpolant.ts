import {Interpolant} from '../Interpolant'

/**
 * @author tschw
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

export class LinearInterpolant extends Interpolant {
	constructor(parameterPositions: any, samplesValues: any, sampleSize: f32, resultBuffer?: any) {
		super(parameterPositions, samplesValues, sampleSize, resultBuffer)
	}

	interpolate_(i1: f32, t0: f32, t: f32, t1: f32): any {
		var result = this.resultBuffer,
			values = this.samplesValues,
			stride = this.valueSize,
			offset1 = i1 * stride,
			offset0 = offset1 - stride,
			weight1 = (t - t0) / (t1 - t0),
			weight0 = 1 - weight1

		for (var i = 0; i !== stride; ++i) {
			result[i] = values[offset0 + i] * weight0 + values[offset1 + i] * weight1
		}

		return result
	}
}

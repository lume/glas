import { Interpolant } from '../Interpolant'

/**
 * Interpolant that evaluates to the sample value at the position preceeding
 * the parameter.
 *
 * @author tschw
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

export class DiscreteInterpolant extends Interpolant {
	constructor(parameterPositions: any, samplesValues: any, sampleSize: f32, resultBuffer?: any) {
		super(parameterPositions, samplesValues, sampleSize, resultBuffer)
	}

	interpolate_(i1: f32, t0: f32, t: f32, t1: f32): any {
		return this.copySampleValue_(i1 - 1, 0, 0)
	}
}

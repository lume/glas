import {Interpolant} from '../Interpolant'

/**
 * Interpolant that evaluates to the sample value at the position preceeding
 * the parameter.
 *
 * @author tschw
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

export class DiscreteInterpolant extends Interpolant {
	constructor(parameterPositions: any, samplesValues: any, sampleSize: number, resultBuffer?: any) {
		super(parameterPositions, samplesValues, sampleSize, resultBuffer)
	}

	interpolate_(i1: number, t0: number, t: number, t1: number): any {
		return this.copySampleValue_(i1 - 1, 0, 0)
	}
}

import {Interpolant} from '../Interpolant'

/**
 * Fast and simple cubic spline interpolant.
 *
 * It was derived from a Hermitian construction setting the first derivative
 * at each sample position to the linear slope between neighboring positions
 * over their parameter interval.
 *
 * @author tschw
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

export class CubicInterpolant extends Interpolant {
	_weightPrev: number
	_offsetPrev: number
	_weightNext: number
	_offsetNext: number

	constructor(parameterPositions: any, samplesValues: any, sampleSize: number, resultBuffer?: any) {
		super(parameterPositions, samplesValues, sampleSize, resultBuffer)

		this._weightPrev = -0
		this._offsetPrev = -0
		this._weightNext = -0
		this._offsetNext = -0
	}

	interpolate_(i1: number, t0: number, t: number, t1: number): any {
		var result = this.resultBuffer,
			values = this.samplesValues,
			stride = this.valueSize,
			o1 = i1 * stride,
			o0 = o1 - stride,
			oP = this._offsetPrev,
			oN = this._offsetNext,
			wP = this._weightPrev,
			wN = this._weightNext,
			p = (t - t0) / (t1 - t0),
			pp = p * p,
			ppp = pp * p

		// evaluate polynomials

		var sP = -wP * ppp + 2 * wP * pp - wP * p
		var s0 = (1 + wP) * ppp + (-1.5 - 2 * wP) * pp + (-0.5 + wP) * p + 1
		var s1 = (-1 - wN) * ppp + (1.5 + wN) * pp + 0.5 * p
		var sN = wN * ppp - wN * pp

		// combine data linearly

		for (var i = 0; i !== stride; ++i) {
			result[i] = sP * values[oP + i] + s0 * values[o0 + i] + s1 * values[o1 + i] + sN * values[oN + i]
		}

		return result
	}
}

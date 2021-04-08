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
	_weightPrev: f32
	_offsetPrev: f32
	_weightNext: f32
	_offsetNext: f32

	constructor(parameterPositions: any, samplesValues: any, sampleSize: f32, resultBuffer?: any) {
		super(parameterPositions, samplesValues, sampleSize, resultBuffer)

		this._weightPrev = -0
		this._offsetPrev = -0
		this._weightNext = -0
		this._offsetNext = -0
	}

	interpolate_(i1: f32, t0: f32, t: f32, t1: f32): any {
		let result = this.resultBuffer
		const values = this.samplesValues,
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

		const sP = -wP * ppp + 2 * wP * pp - wP * p
		const s0 = (1 + wP) * ppp + (-1.5 - 2 * wP) * pp + (-0.5 + wP) * p + 1
		const s1 = (-1 - wN) * ppp + (1.5 + wN) * pp + 0.5 * p
		const sN = wN * ppp - wN * pp

		// combine data linearly

		for (let i = 0; i !== stride; ++i) {
			result[i] = sP * values[oP + i] + s0 * values[o0 + i] + s1 * values[o1 + i] + sN * values[oN + i]
		}

		return result
	}
}

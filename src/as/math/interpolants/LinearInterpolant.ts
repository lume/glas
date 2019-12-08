import { Interpolant } from '../Interpolant';

/**
 * @author tschw
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

export class LinearInterpolant extends Interpolant {

	constructor(parameterPositions: any, samplesValues: any, sampleSize: number, resultBuffer?: any) {
        super(parameterPositions, samplesValues, sampleSize, resultBuffer);
    }

	interpolate_( i1: number, t0: number, t: number, t1: number ): any {
        var result = this.resultBuffer,
			values = this.samplesValues,
			stride = this.valueSize,

			offset1 = i1 * stride,
			offset0 = offset1 - stride,

			weight1 = ( t - t0 ) / ( t1 - t0 ),
			weight0 = 1 - weight1;

		for ( var i = 0; i !== stride; ++ i ) {

			result[ i ] =
					values[ offset0 + i ] * weight0 +
					values[ offset1 + i ] * weight1;

		}

		return result;
    }

}
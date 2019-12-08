import { Interpolant } from '../Interpolant';
import { Quaternion } from '../Quaternion.js';

/**
 * Spherical linear unit quaternion interpolant.
 *
 * @author tschw
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

export class QuaternionLinearInterpolant extends Interpolant {

	constructor(parameterPositions: any, samplesValues: any, sampleSize: number, resultBuffer?: any
	) {
        super(parameterPositions, samplesValues, sampleSize, resultBuffer);
    }

	interpolate_( i1: number, t0: number, t: number, t1: number ): any {
        var result = this.resultBuffer,
			values = this.samplesValues,
			stride = this.valueSize,

			offset = i1 * stride,

			alpha = ( t - t0 ) / ( t1 - t0 );

		for ( var end = offset + stride; offset !== end; offset += 4 ) {

			Quaternion.slerpFlat( result, 0, values, offset - stride, values, offset, alpha );

		}

		return result;
    }

}
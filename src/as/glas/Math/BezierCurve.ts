export class BezierCurve {
	/**
	 *
	 * Changed Number types to float 64s (f64)
	 *
	 * Returns the cubic Bezier interpolated value (float) at "t" (float) from the given x1, y1, x2, y2 floats
	 * @param t defines the time
	 * @param x1 defines the left coordinate on X axis
	 * @param y1 defines the left coordinate on Y axis
	 * @param x2 defines the right coordinate on X axis
	 * @param y2 defines the right coordinate on Y axis
	 * @returns the interpolated value
	 */
	public static Interpolate(t: f64, x1: f64, y1: f64, x2: f64, y2: f64): f64 {
		// Extract X (which is equal to time here)
		var f0 = 1 - 3 * x2 + 3 * x1
		var f1 = 3 * x2 - 6 * x1
		var f2 = 3 * x1

		var refinedT = t
		for (var i = 0; i < 5; i++) {
			var refinedT2 = refinedT * refinedT
			var refinedT3 = refinedT2 * refinedT

			var x = f0 * refinedT3 + f1 * refinedT2 + f2 * refinedT
			var slope = 1.0 / (3.0 * f0 * refinedT2 + 2.0 * f1 * refinedT + f2)
			refinedT -= (x - t) * slope
			refinedT = Math.min(1, Math.max(0, refinedT))
		}

		// Resolve cubic bezier for the given x
		return (
			3 * Math.pow(1 - refinedT, 2) * refinedT * y1 +
			3 * (1 - refinedT) * Math.pow(refinedT, 2) * y2 +
			Math.pow(refinedT, 3)
		)
	}
}

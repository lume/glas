// const EPSILON: f64 = 0.001

/**
 * Class representing a vector containing 2 coordinates
 */
export class Vector2 {
	/**
	 * Creates a new Vector2 from the given x and y coordinates
	 * @param x defines the first coordinate
	 * @param y defines the second coordinate
	 */
	public constructor(
		/** defines the first coordinate */
		public x: f64 = 0,
		/** defines the second coordinate */
		public y: f64 = 0
	) {}

	/**
	 * Gets class name
	 * @returns the string "Vector2"
	 */
	public getClassName(): string {
		return 'Vector2'
	}

	/**
	 * Gets a string with the Vector2 coordinates
	 * @returns a string with the Vector2 coordinates
	 */
	public toString(): string {
		return '{X: ' + this.x.toString() + ', Y: ' + this.y.toString() + '}'
	}

	/**
	 * Sets the Vector2 coordinates in the given array from the given index.
	 * @param array defines the source array
	 * @param index defines the offset in source array
	 * @returns the current Vector2
	 */
	public intoArray(array: f64[], index: i32 = 0): this {
		array[index] = this.x
		array[index + 1] = this.y
		return this
	}

	/**
	 * Copy the current vector to an array
	 * @returns a new array with 2 elements: the Vector2 coordinates.
	 */
	public asArray(): f64[] {
		return [this.x, this.y]
	}

	/**
	 * Sets the Vector2 coordinates with the given Vector2 coordinates
	 * @param source defines the source Vector2
	 * @returns the current updated Vector2
	 */
	public copy(source: Vector2): this {
		this.x = source.x
		this.y = source.y
		return this
	}

	/**
	 * Sets the Vector2 coordinates with the given floats
	 * @param x defines the first coordinate
	 * @param y defines the second coordinate
	 * @returns the current updated Vector2
	 */
	public set(x: f64, y: f64): this {
		this.x = x
		this.y = y
		return this
	}

	/**
	 * Add another vector with the current one
	 * @param other defines the other vector
	 * @returns the current updated Vector2
	 */
	public add(other: Vector2): this {
		return this.set(this.x + other.x, this.y + other.y)
	}

	/**
	 * Gets a new Vector2 by adding the current Vector2 coordinates to the given Vector3 x, y coordinates
	 * @param other defines the other vector
	 * @returns the current updated Vector2
	 */
	// TODO
	// public addVector3(other: Vector3): Vector2 {
	//     return this.set(this.x + other.x, this.y + other.y);
	// }

	/**
	 * Subtract other from the current vector
	 * @param other the other vector to subtract
	 * @returns the current updated Vector2
	 */
	public subtract(other: Vector2): this {
		return this.set(this.x - other.x, this.y - other.y)
	}

	/**
	 * Multiply the current vector by another vector
	 * @param other defines the other vector
	 * @returns the current updated Vector2
	 */
	public multiply(other: Vector2): this {
		return this.set(this.x * other.x, this.y * other.y)
	}

	/**
	 * Sets this Vector2's coordinates multiplied by the given floats
	 * @param x defines the first coordinate
	 * @param y defines the second coordinate
	 * @returns the current updated Vector2
	 */
	public multiplyFloats(x: f64, y: f64): this {
		return this.set(this.x * x, this.y * y)
	}

	/**
	 * Sets the current Vector2's coordinates divided by the given one's coordinates
	 * @param other defines the other vector
	 * @returns the current updated Vector2
	 */
	public divide(other: Vector2): this {
		return this.set(this.x / other.x, this.y / other.y)
	}

	/**
	 * Negate the coordinates of the current Vector2
	 * @returns the current updated Vector2
	 */
	public negate(): this {
		return this.set(-this.x, -this.y)
	}

	/**
	 * Multiply the Vector2 coordinates by scale
	 * @param scale defines the scaling factor
	 * @returns the current updated Vector2
	 */
	public scale(scale: f64): this {
		return this.set(this.x * scale, this.y * scale)
	}

	/**
	 * Determines whether the other Vector2 has the same coordinates as this one
	 * @param other defines the other vector
	 * @returns true if the given vector coordinates strictly equal the current Vector2 ones
	 */
	public equals(other: Vector2): boolean {
		return this.x === other.x && this.y === other.y
	}

	/**
	 * Gets a boolean if two vectors are equals (using an epsilon value)
	 * @param other defines the other vector
	 * @param epsilon defines the minimal distance to consider equality
	 * @returns true if the given vector coordinates are close to the current ones by a distance of epsilon.
	 */
	// TODO
	// public equalsWithEpsilon(other: Vector2, epsilon: f64 = EPSILON): boolean {
	//     return other && Scalar.WithinEpsilon(this.x, other.x, epsilon) && Scalar.WithinEpsilon(this.y, other.y, epsilon);
	// }

	/**
	 * Floors (truncates the decimals of) the coordinates of the current Vector2
	 * @returns the current updated Vector2
	 */
	public floor(): this {
		return this.set(Math.floor(this.x), Math.floor(this.y))
	}

	/**
	 * Rounds the coordinates of the current Vector2 to the nearest whole number
	 * @returns the current updated Vector2
	 */
	public round(): this {
		return this.set(Math.round(this.x), Math.round(this.y))
	}

	/**
	 * Set the coordinates of the current Vector2 to their fractional parts
	 * @returns the current updated Vector2
	 */
	public fract(): this {
		return this.set(this.x - Math.floor(this.x), this.y - Math.floor(this.y))
	}

	/**
	 * Gets the length of the vector
	 * @returns the vector length (float)
	 */
	public get length(): f64 {
		return Math.sqrt(this.x * this.x + this.y * this.y)
	}

	/**
	 * Gets the vector squared length
	 * @returns the vector squared length (float)
	 */
	public get lengthSquared(): f64 {
		return this.x * this.x + this.y * this.y
	}

	/**
	 * The surface area of the Vector2 dimensions: x * y (float).
	 */
	public get area(): f64 {
		return this.x * this.y
	}

	/**
	 * Normalize the vector (convert to a 1-unit-long vector)
	 * @returns the current updated Vector2
	 */
	public normalize(): this {
		const len = this.length

		if (len === 0) return this

		const num = 1.0 / len

		this.x *= num
		this.y *= num

		return this
	}

	/**
	 * Gets a new Vector2 copied from the current Vector2
	 * @returns a new Vector2
	 */
	public clone(): Vector2 {
		return new Vector2(this.x, this.y)
	}

	// Statics

	/**
	 * Gets a new Vector2(0, 0)
	 * @returns a new Vector2
	 */
	public static Zero(): Vector2 {
		return new Vector2(0, 0)
	}

	/**
	 * Gets a new Vector2(1, 1)
	 * @returns a new Vector2
	 */
	public static One(): Vector2 {
		return new Vector2(1, 1)
	}

	/**
	 * Gets a new Vector2 set from the given index element of the given array
	 * @param array defines the data source
	 * @param offset defines the offset in the data source
	 * @returns a new Vector2
	 */
	// TODO
	// public static FromArray(array: ArrayLike<f64>, offset: i32 = 0): Vector2 {
	//     return new Vector2(array[offset], array[offset + 1]);
	// }

	/**
	 * Sets "result" from the given index element of the given array
	 * @param array defines the data source
	 * @param offset defines the offset in the data source
	 * @param result defines the target vector
	 */
	// TODO
	// public static FromArrayToRef(array: ArrayLike<f64>, offset: i32, result: Vector2): void {
	//     result.x = array[offset];
	//     result.y = array[offset + 1];
	// }

	/**
	 * Creates a new Vector2 located at "amount" (float) on the CatmullRom spline defined by the given four Vector2
	 * @param v1 defines 1st point of control
	 * @param v2 defines 2nd point of control
	 * @param v3 defines 3rd point of control
	 * @param v4 defines 4th point of control
	 * @param amount defines the interpolation factor (between zero and one, inclusive, where 0 is start of the spline, and 1 is end of the spline)
	 * @returns a new Vector2
	 */
	public static CatmullRom(v1: Vector2, v2: Vector2, v3: Vector2, v4: Vector2, amount: f64): Vector2 {
		const squared = amount * amount
		const cubed = amount * squared

		const x: f64 =
			0.5 *
			(2.0 * v2.x +
				(-v1.x + v3.x) * amount +
				(2.0 * v1.x - 5.0 * v2.x + 4.0 * v3.x - v4.x) * squared +
				(-v1.x + 3.0 * v2.x - 3.0 * v3.x + v4.x) * cubed)

		const y: f64 =
			0.5 *
			(2.0 * v2.y +
				(-v1.y + v3.y) * amount +
				(2.0 * v1.y - 5.0 * v2.y + 4.0 * v3.y - v4.y) * squared +
				(-v1.y + 3.0 * v2.y - 3.0 * v3.y + v4.y) * cubed)

		return new Vector2(x, y)
	}

	/**
	 * Returns a new Vector2 set with same the coordinates than "value" ones if the vector "value" is in the square defined by "min" and "max".
	 * If a coordinate of "value" is lower than "min" coordinates, the returned Vector2 is given this "min" coordinate.
	 * If a coordinate of "value" is greater than "max" coordinates, the returned Vector2 is given this "max" coordinate
	 * @param value defines the value to clamp
	 * @param min defines the lower limit
	 * @param max defines the upper limit
	 * @returns a new Vector2
	 */
	public static Clamp(value: Vector2, min: Vector2, max: Vector2): Vector2 {
		let x = value.x
		x = x > max.x ? max.x : x
		x = x < min.x ? min.x : x

		let y = value.y
		y = y > max.y ? max.y : y
		y = y < min.y ? min.y : y

		return new Vector2(x, y)
	}

	/**
	 * Returns a new Vector2 located at "amount" (float) on the Hermite spline defined by the vectors "value1", "value3", "tangent1", "tangent2"
	 * @param value1 defines the 1st control point
	 * @param tangent1 defines the outgoing tangent
	 * @param value2 defines the 2nd control point
	 * @param tangent2 defines the incoming tangent
	 * @param amount defines the interpolation factor
	 * @returns a new Vector2
	 */
	public static Hermite(
		value1: Vector2,
		tangent1: Vector2,
		value2: Vector2,
		tangent2: Vector2,
		amount: f64
	): Vector2 {
		const squared = amount * amount
		const cubed = amount * squared
		const part1 = 2.0 * cubed - 3.0 * squared + 1.0
		const part2 = -2.0 * cubed + 3.0 * squared
		const part3 = cubed - 2.0 * squared + amount
		const part4 = cubed - squared

		const x = value1.x * part1 + value2.x * part2 + tangent1.x * part3 + tangent2.x * part4
		const y = value1.y * part1 + value2.y * part2 + tangent1.y * part3 + tangent2.y * part4

		return new Vector2(x, y)
	}

	/**
	 * Returns a new Vector2 located at "amount" (float) on the linear interpolation between the vector "start" adn the vector "end".
	 * @param start defines the start vector
	 * @param end defines the end vector
	 * @param amount defines the interpolation factor
	 * @returns a new Vector2
	 */
	public static Lerp(start: Vector2, end: Vector2, amount: f64): Vector2 {
		return new Vector2(0, 0).lerp(start, end, amount)
	}

	/**
	 * Set this Vector2 to the linear interpolation "amount" between "start" and "end"
	 * @param start starting vector to lerp between
	 * @param end end vector to lerp between
	 * @param amount amount to lerp between the start and end values. A number in the range of 0 to 1, inclusive.
	 * @returns the updated vector.
	 */
	public lerp(start: Vector2, end: Vector2, amount: f64): this {
		return this.set(start.x + (end.x - start.x) * amount, start.y + (end.y - start.y) * amount)
	}

	/**
	 * Gets the dot product of the vector "left" and the vector "right"
	 * @param left defines first vector
	 * @param right defines second vector
	 * @returns the dot product (float)
	 */
	public static Dot(left: Vector2, right: Vector2): f64 {
		return left.x * right.x + left.y * right.y
	}

	/**
	 * Gets a new Vector2 set with the minimal coordinate values from the "left" and "right" vectors
	 * @param left defines 1st vector
	 * @param right defines 2nd vector
	 * @returns a new Vector2
	 */
	public static Minimize(left: Vector2, right: Vector2): Vector2 {
		const x = left.x < right.x ? left.x : right.x
		const y = left.y < right.y ? left.y : right.y
		return new Vector2(x, y)
	}

	/**
	 * Gets a new Vecto2 set with the maximal coordinate values from the "left" and "right" vectors
	 * @param left defines 1st vector
	 * @param right defines 2nd vector
	 * @returns a new Vector2
	 */
	public static Maximize(left: Vector2, right: Vector2): Vector2 {
		const x = left.x > right.x ? left.x : right.x
		const y = left.y > right.y ? left.y : right.y
		return new Vector2(x, y)
	}

	/**
	 * Gets a new Vector2 set with the transformed coordinates of the given vector by the given transformation matrix
	 * @param vector defines the vector to transform
	 * @param transformation defines the matrix to apply
	 * @returns a new Vector2
	 */
	// TODO
	// public static Transform(vector: Vector2, transformation: Matrix): Vector2 {
	//     let r = Vector2.Zero();
	//     Vector2.TransformToRef(vector, transformation, r);
	//     return r;
	// }

	/**
	 * Transforms the given vector coordinates by the given transformation matrix and stores the result in the vector "result" coordinates
	 * @param vector defines the vector to transform
	 * @param transformation defines the matrix to apply
	 * @param result defines the target vector
	 */
	// TODO
	// public static TransformToRef(vector: Vector2, transformation: Matrix, result: Vector2) {
	//     const m = transformation.m;
	//     const x = (vector.x * m[0]) + (vector.y * m[4]) + m[12];
	//     const y = (vector.x * m[1]) + (vector.y * m[5]) + m[13];
	//     result.x = x;
	//     result.y = y;
	// }

	/**
	 * Determines if a given vector is included in a triangle
	 * @param p defines the vector to test
	 * @param p0 defines 1st triangle point
	 * @param p1 defines 2nd triangle point
	 * @param p2 defines 3rd triangle point
	 * @returns true if the point "p" is in the triangle defined by the vertors "p0", "p1", "p2"
	 */
	public static PointInTriangle(p: Vector2, p0: Vector2, p1: Vector2, p2: Vector2): boolean {
		let a = (1 / 2) * (-p1.y * p2.x + p0.y * (-p1.x + p2.x) + p0.x * (p1.y - p2.y) + p1.x * p2.y)
		let sign = a < 0 ? -1 : 1
		let s = (p0.y * p2.x - p0.x * p2.y + (p2.y - p0.y) * p.x + (p0.x - p2.x) * p.y) * sign
		let t = (p0.x * p1.y - p0.y * p1.x + (p0.y - p1.y) * p.x + (p1.x - p0.x) * p.y) * sign

		return s > 0 && t > 0 && s + t < 2 * a * sign
	}

	/**
	 * Gets the distance between the vectors "value1" and "value2"
	 * @param value1 defines first vector
	 * @param value2 defines second vector
	 * @returns the distance between vectors
	 */
	public static Distance(value1: Vector2, value2: Vector2): f64 {
		return Math.sqrt(Vector2.DistanceSquared(value1, value2))
	}

	/**
	 * Returns the squared distance between the vectors "value1" and "value2"
	 * @param value1 defines first vector
	 * @param value2 defines second vector
	 * @returns the squared distance between vectors
	 */
	public static DistanceSquared(value1: Vector2, value2: Vector2): f64 {
		const x = value1.x - value2.x
		const y = value1.y - value2.y
		return x * x + y * y
	}

	/**
	 * Gets a new Vector2 located at the center of the vectors "value1" and "value2"
	 * @param value1 defines first vector
	 * @param value2 defines second vector
	 * @returns a new Vector2
	 */
	public static Center(value1: Vector2, value2: Vector2): Vector2 {
		const center = value1.add(value2)
		center.scale(0.5)
		return center
	}

	/**
	 * Gets the shortest distance (float) between the point "p" and the segment defined by the two points "segA" and "segB".
	 * @param p defines the middle point
	 * @param segA defines one point of the segment
	 * @param segB defines the other point of the segment
	 * @returns the shortest distance
	 */
	public static DistanceOfPointFromSegment(p: Vector2, segA: Vector2, segB: Vector2): f64 {
		let l2 = Vector2.DistanceSquared(segA, segB)
		if (l2 === 0.0) {
			return Vector2.Distance(p, segA)
		}
		let v = segB.subtract(segA)
		let t = Math.max(0, Math.min(1, Vector2.Dot(p.subtract(segA), v) / l2))
		let proj = segA.add(v.multiplyFloats(t, t))
		return Vector2.Distance(p, proj)
	}
}

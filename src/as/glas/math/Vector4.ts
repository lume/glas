// Deferring conversion to TS until needed.

import {Matrix4} from './Matrix4'
import {Quaternion} from './Quaternion'
import {Matrix3} from './Matrix3'
import {BufferAttribute} from './../core/BufferAttribute'
import {Vector} from './Vector2'

/**
 * @deprecated use {@link Vector3 THREE.Vector3} instead.
 */

/**
 * @author supereggbert / http://www.paulbrunt.co.uk/
 * @author philogb / http://blog.thejit.org/
 * @author mikael emtinger / http://gomo.se/
 * @author egraether / http://egraether.com/
 * @author WestLangley / http://github.com/WestLangley
 * @author corruptedzulu / http://github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */

/**
 * 4D vector.
 *
 * ( class Vector4 implements Vector<Vector4> )
 */
export class Vector4 /*implements Vector*/ {
	x: number
	y: number
	z: number
	w: number
	isVector4: bool = true

	constructor(x: number = 0, y: number = 0, z: number = 0, w: number = 0) {
		this.x = x
		this.y = y
		this.z = z
		this.w = w
	}

	/**
	 * Sets value of this vector.
	 */
	set(x: number, y: number, z: number, w: number): this {
		return this
	}

	/**
	 * Sets all values of this vector.
	 */
	setScalar(scalar: number): this {
		return this
	}

	/**
	 * Sets X component of this vector.
	 */
	setX(x: number): this {
		return this
	}

	/**
	 * Sets Y component of this vector.
	 */
	setY(y: number): this {
		return this
	}

	/**
	 * Sets Z component of this vector.
	 */
	setZ(z: number): this {
		return this
	}

	/**
	 * Sets w component of this vector.
	 */
	setW(w: number): this {
		return this
	}

	setComponent(index: number, value: number): this {
		return this
	}

	getComponent(index: number): number {
		return index
	}

	/**
	 * Clones this vector.
	 */
	clone(): this {
		return this
	}

	/**
	 * Copies value of v to this vector.
	 */
	copy(v: Vector4): this {
		return this
	}

	/**
	 * Adds v to this vector.
	 */
	add(v: Vector4, w?: Vector4): this {
		return this
	}

	addScalar(scalar: number): this {
		return this
	}

	/**
	 * Sets this vector to a + b.
	 */
	addVectors(a: Vector4, b: Vector4): this {
		return this
	}

	addScaledVector(v: Vector4, s: number): this {
		return this
	}
	/**
	 * Subtracts v from this vector.
	 */
	sub(v: Vector4): this {
		return this
	}

	subScalar(s: number): this {
		return this
	}

	/**
	 * Sets this vector to a - b.
	 */
	subVectors(a: Vector4, b: Vector4): this {
		return this
	}

	/**
	 * Multiplies this vector by scalar s.
	 */
	multiplyScalar(s: number): this {
		return this
	}

	applyMatrix4(m: Matrix4): this {
		return this
	}

	/**
	 * Divides this vector by scalar s.
	 * Set vector to ( 0, 0, 0 ) if s == 0.
	 */
	divideScalar(s: number): this {
		return this
	}

	/**
	 * http://www.euclideanspace.com/maths/geometry/rotations/conversions/quaternionToAngle/index.htm
	 * @param q is assumed to be normalized
	 */
	setAxisAngleFromQuaternion(q: Quaternion): this {
		return this
	}

	/**
	 * http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToAngle/index.htm
	 * @param m assumes the upper 3x3 of m is a pure rotation matrix (i.e, unscaled)
	 */
	setAxisAngleFromRotationMatrix(m: Matrix3): this {
		return this
	}

	min(v: Vector4): this {
		return this
	}
	max(v: Vector4): this {
		return this
	}
	clamp(min: Vector4, max: Vector4): this {
		return this
	}
	clampScalar(min: number, max: number): this {
		return this
	}
	floor(): this {
		return this
	}
	ceil(): this {
		return this
	}
	round(): this {
		return this
	}
	roundToZero(): this {
		return this
	}

	/**
	 * Inverts this vector.
	 */
	negate(): this {
		return this
	}

	/**
	 * Computes dot product of this vector and v.
	 */
	dot(v: Vector4): number {
		return 0
	}

	/**
	 * Computes squared length of this vector.
	 */
	lengthSq(): number {
		return 0
	}

	/**
	 * Computes length of this vector.
	 */
	length(): number {
		return 0
	}

	/**
	 * Computes the Manhattan length of this vector.
	 *
	 * @return {number}
	 *
	 * @see {@link http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry}
	 */
	manhattanLength(): number {
		return 0
	}

	/**
	 * Normalizes this vector.
	 */
	normalize(): this {
		return this
	}
	/**
	 * Normalizes this vector and multiplies it by l.
	 */
	setLength(length: number): this {
		return this
	}

	/**
	 * Linearly interpolate between this vector and v with alpha factor.
	 */
	lerp(v: Vector4, alpha: number): this {
		return this
	}

	lerpVectors(v1: Vector4, v2: Vector4, alpha: number): this {
		return this
	}

	/**
	 * Checks for strict equality of this vector and v.
	 */
	equals(v: Vector4): boolean {
		return false
	}

	fromArray(xyzw: number[], offset: number): this {
		return this
	}

	toArray(xyzw: number[], offset: number): number[] {
		return xyzw
	}

	fromBufferAttribute(attribute: BufferAttribute, index: number, offset?: number): this {
		return this
	}
}

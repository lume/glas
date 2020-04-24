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
 * @deprecated use {@link Vector3 THREE.Vector3} instead.
 */

import {Matrix4} from './Matrix4'
// import {Quaternion} from './Quaternion'
// import {Matrix3} from './Matrix3'
// import {BufferAttribute} from './../core/BufferAttribute'
// import {Vector} from './Vector2'

var min: Vector4 | null = null
var max: Vector4 | null = null

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
	readonly isVector4: bool = true

	constructor(x: number = 0, y: number = 0, z: number = 0, w: number = 1) {
		this.x = x
		this.y = y
		this.z = z
		this.w = w
	}

	/**
	 * Sets value of this vector.
	 */
	set(x: number, y: number, z: number, w: number): this {
		this.x = x
		this.y = y
		this.z = z
		this.w = w

		return this
	}

	// /**
	//  * Sets all values of this vector.
	//  */
	// setScalar(scalar: number): this {
	// 	this.x = scalar
	// 	this.y = scalar
	// 	this.z = scalar
	// 	this.w = scalar

	// 	return this
	// }

	// /**
	//  * Sets X component of this vector.
	//  */
	// setX(x: number): this {
	// 	this.x = x

	// 	return this
	// }

	// /**
	//  * Sets Y component of this vector.
	//  */
	// setY(y: number): this {
	// 	this.y = y

	// 	return this
	// }

	// /**
	//  * Sets Z component of this vector.
	//  */
	// setZ(z: number): this {
	// 	this.z = z

	// 	return this
	// }

	// /**
	//  * Sets w component of this vector.
	//  */
	// setW(w: number): this {
	// 	this.w = w

	// 	return this
	// }

	// setComponent(index: number, value: number): this {
	// 	switch (index) {
	// 		case 0:
	// 			this.x = value
	// 			break
	// 		case 1:
	// 			this.y = value
	// 			break
	// 		case 2:
	// 			this.z = value
	// 			break
	// 		case 3:
	// 			this.w = value
	// 			break
	// 		default:
	// 			throw new Error('index is out of range: ' + index)
	// 	}

	// 	return this
	// }

	// getComponent(index: i32): number {
	// 	switch (index) {
	// 		case 0:
	// 			return this.x
	// 		case 1:
	// 			return this.y
	// 		case 2:
	// 			return this.z
	// 		case 3:
	// 			return this.w
	// 		default:
	// 			throw new Error('index is out of range: ' + index)
	// 	}
	// }

	/**
	 * Clones this vector.
	 */
	clone(): Vector4 {
		return new Vector4(this.x, this.y, this.z, this.w)
	}

	/**
	 * Copies value of v to this vector.
	 */
	copy(v: Vector4): this {
		this.x = v.x
		this.y = v.y
		this.z = v.z
		this.w = v.w

		return this
	}

	// /**
	//  * Adds v to this vector.
	//  */
	// add(v: Vector4): this {
	// 	this.x += v.x
	// 	this.y += v.y
	// 	this.z += v.z
	// 	this.w += v.w

	// 	return this
	// }

	// addScalar(scalar: number): this {
	// 	this.x += scalar
	// 	this.y += scalar
	// 	this.z += scalar
	// 	this.w += scalar

	// 	return this
	// }

	// /**
	//  * Sets this vector to a + b.
	//  */
	// addVectors(a: Vector4, b: Vector4): this {
	// 	this.x = a.x + b.x
	// 	this.y = a.y + b.y
	// 	this.z = a.z + b.z
	// 	this.w = a.w + b.w

	// 	return this
	// }

	// addScaledVector(v: Vector4, scale: number): this {
	// 	this.x += v.x * scale
	// 	this.y += v.y * scale
	// 	this.z += v.z * scale
	// 	this.w += v.w * scale

	// 	return this
	// }
	// /**
	//  * Subtracts v from this vector.
	//  */
	// sub(v: Vector4): this {
	// 	this.x -= v.x
	// 	this.y -= v.y
	// 	this.z -= v.z
	// 	this.w -= v.w

	// 	return this
	// }

	// subScalar(scalar: number): this {
	// 	this.x -= scalar
	// 	this.y -= scalar
	// 	this.z -= scalar
	// 	this.w -= scalar

	// 	return this
	// }

	// /**
	//  * Sets this vector to a - b.
	//  */
	// subVectors(a: Vector4, b: Vector4): this {
	// 	this.x = a.x - b.x
	// 	this.y = a.y - b.y
	// 	this.z = a.z - b.z
	// 	this.w = a.w - b.w

	// 	return this
	// }

	/**
	 * Multiplies this vector by scalar s.
	 */
	multiplyScalar(scalar: number): this {
		this.x *= scalar
		this.y *= scalar
		this.z *= scalar
		this.w *= scalar

		return this
	}

	applyMatrix4(m: Matrix4): this {
		const x = this.x
		const y = this.y
		const z = this.z
		const w = this.w
		const e = m.elements

		this.x = e[0] * x + e[4] * y + e[8] * z + e[12] * w
		this.y = e[1] * x + e[5] * y + e[9] * z + e[13] * w
		this.z = e[2] * x + e[6] * y + e[10] * z + e[14] * w
		this.w = e[3] * x + e[7] * y + e[11] * z + e[15] * w

		return this
	}

	// /**
	//  * Divides this vector by scalar s.
	//  * Set vector to ( 0, 0, 0 ) if s == 0.
	//  */
	// divideScalar(scalar: number): this {
	// 	return this.multiplyScalar(1 / scalar)
	// }

	// /**
	//  * http://www.euclideanspace.com/maths/geometry/rotations/conversions/quaternionToAngle/index.htm
	//  * @param q is assumed to be normalized
	//  */
	// setAxisAngleFromQuaternion(q: Quaternion): this {
	// 	// http://www.euclideanspace.com/maths/geometry/rotations/conversions/quaternionToAngle/index.htm

	// 	// q is assumed to be normalized

	// 	this.w = 2 * Math.acos(q.w)

	// 	var s = Math.sqrt(1 - q.w * q.w)

	// 	if (s < 0.0001) {
	// 		this.x = 1
	// 		this.y = 0
	// 		this.z = 0
	// 	} else {
	// 		this.x = q.x / s
	// 		this.y = q.y / s
	// 		this.z = q.z / s
	// 	}

	// 	return this
	// }

	// /**
	//  * http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToAngle/index.htm
	//  * @param m assumes the upper 3x3 of m is a pure rotation matrix (i.e, unscaled)
	//  */
	// setAxisAngleFromRotationMatrix(m: Matrix3): this {
	// 	// http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToAngle/index.htm

	// 	// assumes the upper 3x3 of m is a pure rotation matrix (i.e, unscaled)

	// 	var angle,
	// 		x,
	// 		y,
	// 		z, // variables for result
	// 		epsilon = 0.01, // margin to allow for rounding errors
	// 		epsilon2 = 0.1, // margin to distinguish between 0 and 180 degrees
	// 		te = m.elements,
	// 		m11 = te[0],
	// 		m12 = te[4],
	// 		m13 = te[8],
	// 		m21 = te[1],
	// 		m22 = te[5],
	// 		m23 = te[9],
	// 		m31 = te[2],
	// 		m32 = te[6],
	// 		m33 = te[10]

	// 	if (Math.abs(m12 - m21) < epsilon && Math.abs(m13 - m31) < epsilon && Math.abs(m23 - m32) < epsilon) {
	// 		// singularity found
	// 		// first check for identity matrix which must have +1 for all terms
	// 		// in leading diagonal and zero in other terms

	// 		if (
	// 			Math.abs(m12 + m21) < epsilon2 &&
	// 			Math.abs(m13 + m31) < epsilon2 &&
	// 			Math.abs(m23 + m32) < epsilon2 &&
	// 			Math.abs(m11 + m22 + m33 - 3) < epsilon2
	// 		) {
	// 			// this singularity is identity matrix so angle = 0

	// 			this.set(1, 0, 0, 0)

	// 			return this // zero angle, arbitrary axis
	// 		}

	// 		// otherwise this singularity is angle = 180

	// 		angle = Math.PI

	// 		var xx = (m11 + 1) / 2
	// 		var yy = (m22 + 1) / 2
	// 		var zz = (m33 + 1) / 2
	// 		var xy = (m12 + m21) / 4
	// 		var xz = (m13 + m31) / 4
	// 		var yz = (m23 + m32) / 4

	// 		if (xx > yy && xx > zz) {
	// 			// m11 is the largest diagonal term

	// 			if (xx < epsilon) {
	// 				x = 0
	// 				y = 0.707106781
	// 				z = 0.707106781
	// 			} else {
	// 				x = Math.sqrt(xx)
	// 				y = xy / x
	// 				z = xz / x
	// 			}
	// 		} else if (yy > zz) {
	// 			// m22 is the largest diagonal term

	// 			if (yy < epsilon) {
	// 				x = 0.707106781
	// 				y = 0
	// 				z = 0.707106781
	// 			} else {
	// 				y = Math.sqrt(yy)
	// 				x = xy / y
	// 				z = yz / y
	// 			}
	// 		} else {
	// 			// m33 is the largest diagonal term so base result on this

	// 			if (zz < epsilon) {
	// 				x = 0.707106781
	// 				y = 0.707106781
	// 				z = 0
	// 			} else {
	// 				z = Math.sqrt(zz)
	// 				x = xz / z
	// 				y = yz / z
	// 			}
	// 		}

	// 		this.set(x, y, z, angle)

	// 		return this // return 180 deg rotation
	// 	}

	// 	// as we have reached here there are no singularities so we can handle normally

	// 	var s = Math.sqrt((m32 - m23) * (m32 - m23) + (m13 - m31) * (m13 - m31) + (m21 - m12) * (m21 - m12)) // used to normalize

	// 	if (Math.abs(s) < 0.001) s = 1

	// 	// prevent divide by zero, should not happen if matrix is orthogonal and should be
	// 	// caught by singularity test above, but I've left it in just in case

	// 	this.x = (m32 - m23) / s
	// 	this.y = (m13 - m31) / s
	// 	this.z = (m21 - m12) / s
	// 	this.w = Math.acos((m11 + m22 + m33 - 1) / 2)

	// 	return this
	// }

	// min(v: Vector4): this {
	// 	this.x = Math.min(this.x, v.x)
	// 	this.y = Math.min(this.y, v.y)
	// 	this.z = Math.min(this.z, v.z)
	// 	this.w = Math.min(this.w, v.w)

	// 	return this
	// }

	// max(v: Vector4): this {
	// 	this.x = Math.max(this.x, v.x)
	// 	this.y = Math.max(this.y, v.y)
	// 	this.z = Math.max(this.z, v.z)
	// 	this.w = Math.max(this.w, v.w)

	// 	return this
	// }

	// clamp(min: Vector4, max: Vector4): this {
	// 	// assumes min < max, componentwise

	// 	this.x = Math.max(min.x, Math.min(max.x, this.x))
	// 	this.y = Math.max(min.y, Math.min(max.y, this.y))
	// 	this.z = Math.max(min.z, Math.min(max.z, this.z))
	// 	this.w = Math.max(min.w, Math.min(max.w, this.w))

	// 	return this
	// }

	// clampScalar(minVal: number, maxVal: number): this {
	// 	if (min == null || max == null) {
	// 		min = new Vector4()
	// 		max = new Vector4()
	// 	}

	// 	min.set(minVal, minVal, minVal, minVal)
	// 	max.set(maxVal, maxVal, maxVal, maxVal)

	// 	return this.clamp(min, max)
	// }

	// clampLength(min: number, max: number) {
	// 	var length = this.length()

	// 	return this.divideScalar(length || 1).multiplyScalar(Math.max(min, Math.min(max, length)))
	// }

	// floor(): this {
	// 	this.x = Math.floor(this.x)
	// 	this.y = Math.floor(this.y)
	// 	this.z = Math.floor(this.z)
	// 	this.w = Math.floor(this.w)

	// 	return this
	// }

	// ceil(): this {
	// 	this.x = Math.ceil(this.x)
	// 	this.y = Math.ceil(this.y)
	// 	this.z = Math.ceil(this.z)
	// 	this.w = Math.ceil(this.w)

	// 	return this
	// }

	// round(): this {
	// 	this.x = Math.round(this.x)
	// 	this.y = Math.round(this.y)
	// 	this.z = Math.round(this.z)
	// 	this.w = Math.round(this.w)

	// 	return this
	// }

	// roundToZero(): this {
	// 	this.x = this.x < 0 ? Math.ceil(this.x) : Math.floor(this.x)
	// 	this.y = this.y < 0 ? Math.ceil(this.y) : Math.floor(this.y)
	// 	this.z = this.z < 0 ? Math.ceil(this.z) : Math.floor(this.z)
	// 	this.w = this.w < 0 ? Math.ceil(this.w) : Math.floor(this.w)

	// 	return this
	// }

	// /**
	//  * Inverts this vector.
	//  */
	// negate(): this {
	// 	this.x = -this.x
	// 	this.y = -this.y
	// 	this.z = -this.z
	// 	this.w = -this.w

	// 	return this
	// }

	// /**
	//  * Computes dot product of this vector and v.
	//  */
	// dot(v: Vector4): number {
	// 	return this.x * v.x + this.y * v.y + this.z * v.z + this.w * v.w
	// }

	// /**
	//  * Computes squared length of this vector.
	//  */
	// lengthSq(): number {
	// 	return this.x * this.x + this.y * this.y + this.z * this.z + this.w * this.w
	// }

	// /**
	//  * Computes length of this vector.
	//  */
	// length(): number {
	// 	return Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z + this.w * this.w)
	// }

	// /**
	//  * Computes the Manhattan length of this vector.
	//  *
	//  * @return {number}
	//  *
	//  * @see {@link http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry}
	//  */
	// manhattanLength(): number {
	// 	return Math.abs(this.x) + Math.abs(this.y) + Math.abs(this.z) + Math.abs(this.w)
	// }

	// /**
	//  * Normalizes this vector.
	//  */
	// normalize(): this {
	// 	return this.divideScalar(this.length() || 1)
	// }

	// /**
	//  * Normalizes this vector and multiplies it by l.
	//  */
	// setLength(length: number): this {
	// 	return this.normalize().multiplyScalar(length)
	// }

	// /**
	//  * Linearly interpolate between this vector and v with alpha factor.
	//  */
	// lerp(v: Vector4, alpha: number): this {
	// 	this.x += (v.x - this.x) * alpha
	// 	this.y += (v.y - this.y) * alpha
	// 	this.z += (v.z - this.z) * alpha
	// 	this.w += (v.w - this.w) * alpha

	// 	return this
	// }

	// lerpVectors(v1: Vector4, v2: Vector4, alpha: number): this {
	// 	return this.subVectors(v2, v1)
	// 		.multiplyScalar(alpha)
	// 		.add(v1)
	// }

	/**
	 * Checks for strict equality of this vector and v.
	 */
	equals(v: Vector4): boolean {
		return v.x === this.x && v.y === this.y && v.z === this.z && v.w === this.w
	}

	// fromArray(array: [number, number, number, number], offset: i32 = 0): this {
	// 	this.x = array[offset]
	// 	this.y = array[offset + 1]
	// 	this.z = array[offset + 2]
	// 	this.w = array[offset + 3]

	// 	return this
	// }

	// toArray(array: [number, number, number, number] = [0, 0, 0, 0], offset: i32 = 0): number[] {
	// 	array[offset] = this.x
	// 	array[offset + 1] = this.y
	// 	array[offset + 2] = this.z
	// 	array[offset + 3] = this.w

	// 	return array
	// }

	// fromBufferAttribute(attribute: BufferAttribute, index: i32): this {
	// 	this.x = attribute.getX(index)
	// 	this.y = attribute.getY(index)
	// 	this.z = attribute.getZ(index)
	// 	this.w = attribute.getW(index)

	// 	return this
	// }
}

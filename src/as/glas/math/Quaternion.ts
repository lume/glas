/**
 * @author mikael emtinger / http://gomo.se/
 * @author alteredq / http://alteredqualia.com/
 * @author WestLangley / http://github.com/WestLangley
 * @author bhouston / http://clara.io
 * @author Joe Pea / http://github.com/trusktr
 */

import * as _Math from './Math'
import {Euler} from './Euler'
// import {Vector3} from './Vector3'
// import {Matrix4} from './Matrix4'

type ChangeCallback = () => void

/**
 * Implementation of a quaternion. This is used for rotating things without
 * incurring the dreaded gimbal lock issue, amongst other advantages.
 *
 * @example
 * const quaternion = new THREE.Quaternion();
 * quaternion.setFromAxisAngle( new THREE.Vector3( 0, 1, 0 ), Math.PI / 2 );
 * const vector = new THREE.Vector3( 1, 0, 0 );
 * vector.applyQuaternion( quaternion );
 */
export class Quaternion {
	_x: f64
	_y: f64
	_z: f64
	_w: f64

	readonly isQuaternion: boolean = true

	onChangeCallback: ChangeCallback

	/**
	 * @param x x coordinate
	 * @param y y coordinate
	 * @param z z coordinate
	 * @param w w coordinate
	 */
	constructor(x: f64 = 0, y: f64 = 0, z: f64 = 0, w: f64 = 1) {
		this._x = x
		this._y = y
		this._z = z
		this._w = w
	}

	get x(): f64 {
		return this._x
	}
	set x(value: f64) {
		this._x = value
		this.onChangeCallback()
	}

	get y(): f64 {
		return this._y
	}
	set y(value: f64) {
		this._y = value
		this.onChangeCallback()
	}

	get z(): f64 {
		return this._z
	}
	set z(value: f64) {
		this._z = value
		this.onChangeCallback()
	}

	get w(): f64 {
		return this._w
	}
	set w(value: f64) {
		this._w = value
		this.onChangeCallback()
	}

	// /**
	//  * Sets values of this quaternion.
	//  * @param x x coordinate
	//  * @param y y coordinate
	//  * @param z z coordinate
	//  * @param w w coordinate
	//  */
	// set(x: f64, y: f64, z: f64, w: f64): this {
	// 	this._x = x
	// 	this._y = y
	// 	this._z = z
	// 	this._w = w

	// 	this.onChangeCallback()

	// 	return this
	// }

	// /**
	//  * Clones this quaternion, returning a new one with all the same property values.
	//  */
	// clone(): Quaternion {
	// 	return new Quaternion(this._x, this._y, this._z, this._w)
	// }

	// /**
	//  * Copies all data of the source quaternion to this quaternion.
	//  * @param source The quaternion to copy from.
	//  */
	// copy(source: Quaternion): this {
	// 	this._x = source.x
	// 	this._y = source.y
	// 	this._z = source.z
	// 	this._w = source.w

	// 	this.onChangeCallback()

	// 	return this
	// }

	/**
	 * Sets this quaternion from rotation specified by Euler angles.
	 * Adapted from http://www.mathworks.com/matlabcentral/fileexchange/20696-function-to-convert-between-dcm-euler-angles-quaternions-and-euler-vectors/content/SpinCalc.m
	 * @param euler The Euler angles from which to get rotation from.
	 * @param update
	 */
	setFromEuler(euler: Euler, update: boolean = true): this {
		// if (!(euler && euler.isEuler)) {
		// 	throw new Error(
		// 		'THREE.Quaternion: .setFromEuler() now expects an Euler rotation rather than a Vector3 and order.'
		// 	)
		// }

		const x = euler._x,
			y = euler._y,
			z = euler._z,
			order = euler.order

		const cos = Math.cos
		const sin = Math.sin

		const c1 = cos(x / 2)
		const c2 = cos(y / 2)
		const c3 = cos(z / 2)

		const s1 = sin(x / 2)
		const s2 = sin(y / 2)
		const s3 = sin(z / 2)

		if (order === 'XYZ') {
			this._x = s1 * c2 * c3 + c1 * s2 * s3
			this._y = c1 * s2 * c3 - s1 * c2 * s3
			this._z = c1 * c2 * s3 + s1 * s2 * c3
			this._w = c1 * c2 * c3 - s1 * s2 * s3
		} else if (order === 'YXZ') {
			this._x = s1 * c2 * c3 + c1 * s2 * s3
			this._y = c1 * s2 * c3 - s1 * c2 * s3
			this._z = c1 * c2 * s3 - s1 * s2 * c3
			this._w = c1 * c2 * c3 + s1 * s2 * s3
		} else if (order === 'ZXY') {
			this._x = s1 * c2 * c3 - c1 * s2 * s3
			this._y = c1 * s2 * c3 + s1 * c2 * s3
			this._z = c1 * c2 * s3 + s1 * s2 * c3
			this._w = c1 * c2 * c3 - s1 * s2 * s3
		} else if (order === 'ZYX') {
			this._x = s1 * c2 * c3 - c1 * s2 * s3
			this._y = c1 * s2 * c3 + s1 * c2 * s3
			this._z = c1 * c2 * s3 - s1 * s2 * c3
			this._w = c1 * c2 * c3 + s1 * s2 * s3
		} else if (order === 'YZX') {
			this._x = s1 * c2 * c3 + c1 * s2 * s3
			this._y = c1 * s2 * c3 + s1 * c2 * s3
			this._z = c1 * c2 * s3 - s1 * s2 * c3
			this._w = c1 * c2 * c3 - s1 * s2 * s3
		} else if (order === 'XZY') {
			this._x = s1 * c2 * c3 - c1 * s2 * s3
			this._y = c1 * s2 * c3 - s1 * c2 * s3
			this._z = c1 * c2 * s3 + s1 * s2 * c3
			this._w = c1 * c2 * c3 + s1 * s2 * s3
		}

		if (update) this.onChangeCallback()

		return this
	}

	// /**
	//  * Sets this quaternion from rotation specified by *axis* and *angle*.
	//  * Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/angleToQuaternion/index.htm.
	//  * Axis have to be normalized, angle is in radians.
	//  * @param axis A vector representing the axis of rotation, assumed to be normalized.
	//  * @param angle The angle of rotation around the axis.
	//  */
	// setFromAxisAngle(axis: Vector3, angle: f64): this {
	// 	const halfAngle = angle / 2
	// 	const s = Math.sin(halfAngle)

	// 	this._x = axis.x * s
	// 	this._y = axis.y * s
	// 	this._z = axis.z * s
	// 	this._w = Math.cos(halfAngle)

	// 	this.onChangeCallback()

	// 	return this
	// }

	// /**
	//  * Sets this quaternion from rotation component of *m*.
	//  * Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToQuaternion/index.htm.
	//  * @param m The matrix containing the rotation. The upper 3x3 of m is assumed
	//  * to be a pure rotation matrix (i.e, unscaled).
	//  */
	// setFromRotationMatrix(m: Matrix4): Quaternion {
	// 	const te = m.elements,
	// 		m11 = te[0],
	// 		m12 = te[4],
	// 		m13 = te[8],
	// 		m21 = te[1],
	// 		m22 = te[5],
	// 		m23 = te[9],
	// 		m31 = te[2],
	// 		m32 = te[6],
	// 		m33 = te[10],
	// 		trace = m11 + m22 + m33

	// 	let s: f64 = 0

	// 	if (trace > 0) {
	// 		s = 0.5 / Math.sqrt(trace + 1.0)

	// 		this._w = 0.25 / s
	// 		this._x = (m32 - m23) * s
	// 		this._y = (m13 - m31) * s
	// 		this._z = (m21 - m12) * s
	// 	} else if (m11 > m22 && m11 > m33) {
	// 		s = 2.0 * Math.sqrt(1.0 + m11 - m22 - m33)

	// 		this._w = (m32 - m23) / s
	// 		this._x = 0.25 * s
	// 		this._y = (m12 + m21) / s
	// 		this._z = (m13 + m31) / s
	// 	} else if (m22 > m33) {
	// 		s = 2.0 * Math.sqrt(1.0 + m22 - m11 - m33)

	// 		this._w = (m13 - m31) / s
	// 		this._x = (m12 + m21) / s
	// 		this._y = 0.25 * s
	// 		this._z = (m23 + m32) / s
	// 	} else {
	// 		s = 2.0 * Math.sqrt(1.0 + m33 - m11 - m22)

	// 		this._w = (m21 - m12) / s
	// 		this._x = (m13 + m31) / s
	// 		this._y = (m23 + m32) / s
	// 		this._z = 0.25 * s
	// 	}

	// 	this.onChangeCallback()

	// 	return this
	// }

	// /**
	//  * Sets this quaternion from the rotation found between vectors, where rotation is from *vFrom* to *vTo*.
	//  * Assumes direction vectors *vFrom* and *vTo* are normalized.
	//  * @param vFrom The vector that rotation starts from.
	//  * @param vTo The vector that rotation goes to.
	//  */
	// setFromUnitVectors(vFrom: Vector3, vTo: Vector3): this {
	// 	const EPS = 0.000001

	// 	let r = vFrom.dot(vTo) + 1

	// 	if (r < EPS) {
	// 		r = 0

	// 		if (Math.abs(vFrom.x) > Math.abs(vFrom.z)) {
	// 			this._x = -vFrom.y
	// 			this._y = vFrom.x
	// 			this._z = 0
	// 			this._w = r
	// 		} else {
	// 			this._x = 0
	// 			this._y = -vFrom.z
	// 			this._z = vFrom.y
	// 			this._w = r
	// 		}
	// 	} else {
	// 		// crossVectors( vFrom, vTo ); // inlined to avoid cyclic dependency on Vector3

	// 		this._x = vFrom.y * vTo.z - vFrom.z * vTo.y
	// 		this._y = vFrom.z * vTo.x - vFrom.x * vTo.z
	// 		this._z = vFrom.x * vTo.y - vFrom.y * vTo.x
	// 		this._w = r
	// 	}

	// 	return this.normalize()
	// }

	// /**
	//  * Returns the angle between this quaternion and quaternion *q* in radians.
	//  * @param q Another quaternion.
	//  */
	// angleTo(q: Quaternion): f64 {
	// 	return 2 * Math.acos(Math.abs(_Math.clamp(this.dot(q), -1, 1)))
	// }

	// /**
	//  * Rotates this quaternion by a given angular step to the defined quaternion q. The method ensures that the final quaternion will not overshoot q.
	//  * @param q The target quaternion.
	//  * @param step The angular step in radians.
	//  */
	// rotateTowards(q: Quaternion, step: f64): this {
	// 	var angle = this.angleTo(q)

	// 	if (angle === 0) return this

	// 	var t = Math.min(1, step / angle)

	// 	this.slerp(q, t)

	// 	return this
	// }

	// /**
	//  * Inverts this quaternion (). The quaternion is assumed to have unit length.
	//  */
	// inverse(): this {
	// 	return this.conjugate()
	// }

	// /**
	//  * Returns the rotational conjugate of this quaternion. The conjugate of a
	//  * quaternion represents the same rotation in the opposite direction about the
	//  * rotational axis.
	//  */
	// conjugate(): this {
	// 	this._x *= -1
	// 	this._y *= -1
	// 	this._z *= -1

	// 	this.onChangeCallback()

	// 	return this
	// }

	// /**
	//  * Calculates the [dot](https://en.wikipedia.org/wiki/Dot_product) product of
	//  * quaternion *v* and this one.
	//  * @param v Another quaternion.
	//  */
	// dot(v: Quaternion): f64 {
	// 	return this._x * v._x + this._y * v._y + this._z * v._z + this._w * v._w
	// }

	// /**
	//  * Computes the [Euclidean length](https://en.wikipedia.org/wiki/Euclidean_distance) (straight-line
	//  * length) of this quaternion, squared, considered as a 4 dimensional vector (what's a
	//  * straight line in 4D?). This can be useful if you are comparing the lengths
	//  * of two quaternions, as this is a slightly more efficient calculation than
	//  * [page:.length length]().
	//  */
	// lengthSq(): f64 {
	// 	return this._x * this._x + this._y * this._y + this._z * this._z + this._w * this._w
	// }

	// /**
	//  * Computes the [Euclidean length](https://en.wikipedia.org/wiki/Euclidean_distance) (straight-line
	//  * length) of this quaternion, considered as a 4 dimensional vector (what's a
	//  * straight line in 4D?).
	//  */
	// length(): f64 {
	// 	return Math.sqrt(this._x * this._x + this._y * this._y + this._z * this._z + this._w * this._w)
	// }

	// /**
	//  * [Normalizes](https://en.wikipedia.org/wiki/Normalized_vector) this
	//  * quaternion - that is, calculates the quaternion that performs the same
	//  * rotation as this one, but has [page:.length length] equal to *1*.
	//  */
	// normalize(): this {
	// 	var l = this.length()

	// 	if (l === 0) {
	// 		this._x = 0
	// 		this._y = 0
	// 		this._z = 0
	// 		this._w = 1
	// 	} else {
	// 		l = 1 / l

	// 		this._x = this._x * l
	// 		this._y = this._y * l
	// 		this._z = this._z * l
	// 		this._w = this._w * l
	// 	}

	// 	this.onChangeCallback()

	// 	return this
	// }

	// /**
	//  * Multiplies this quaternion by *q*.
	//  */
	// multiply(q: Quaternion): this {
	// 	return this.multiplyQuaternions(this, q)
	// }

	// /**
	//  * Pre-multiplies this quaternion by *q*.
	//  */
	// premultiply(q: Quaternion): this {
	// 	return this.multiplyQuaternions(q, this)
	// }

	// /**
	//  * Sets this quaternion to a x b
	//  * Adapted from http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/code/index.htm.
	//  */
	// multiplyQuaternions(a: Quaternion, b: Quaternion): this {
	// 	var qax = a._x,
	// 		qay = a._y,
	// 		qaz = a._z,
	// 		qaw = a._w
	// 	var qbx = b._x,
	// 		qby = b._y,
	// 		qbz = b._z,
	// 		qbw = b._w

	// 	this._x = qax * qbw + qaw * qbx + qay * qbz - qaz * qby
	// 	this._y = qay * qbw + qaw * qby + qaz * qbx - qax * qbz
	// 	this._z = qaz * qbw + qaw * qbz + qax * qby - qay * qbx
	// 	this._w = qaw * qbw - qax * qbx - qay * qby - qaz * qbz

	// 	this.onChangeCallback()

	// 	return this
	// }

	// /**
	//  * Handles the spherical linear interpolation between quaternions. *t*
	//  * represents the amount of rotation between this quaternion (where *t* is 0)
	//  * and *qb* (where *t* is 1). This quaternion is set to the result. Also see
	//  * the static version of *slerp*.
	//  * Adapted from http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/slerp/.
	//  * @param qb The other quaternion rotation.
	//  * @param t Interpolation factor in the closed interval [0, 1].
	//  */
	// slerp(qb: Quaternion, t: f64): this {
	// 	if (t === 0) return this
	// 	if (t === 1) return this.copy(qb)

	// 	var x = this._x,
	// 		y = this._y,
	// 		z = this._z,
	// 		w = this._w

	// 	var cosHalfTheta = w * qb._w + x * qb._x + y * qb._y + z * qb._z

	// 	if (cosHalfTheta < 0) {
	// 		this._w = -qb._w
	// 		this._x = -qb._x
	// 		this._y = -qb._y
	// 		this._z = -qb._z

	// 		cosHalfTheta = -cosHalfTheta
	// 	} else {
	// 		this.copy(qb)
	// 	}

	// 	if (cosHalfTheta >= 1.0) {
	// 		this._w = w
	// 		this._x = x
	// 		this._y = y
	// 		this._z = z

	// 		return this
	// 	}

	// 	var sqrSinHalfTheta = 1.0 - cosHalfTheta * cosHalfTheta

	// 	// TODO is it possible to have a number smaller than f64.EPSILON
	// 	if (sqrSinHalfTheta <= F64.EPSILON) {
	// 		var s = 1 - t
	// 		this._w = s * w + t * this._w
	// 		this._x = s * x + t * this._x
	// 		this._y = s * y + t * this._y
	// 		this._z = s * z + t * this._z

	// 		return this.normalize()
	// 	}

	// 	var sinHalfTheta = Math.sqrt(sqrSinHalfTheta)
	// 	var halfTheta = Math.atan2(sinHalfTheta, cosHalfTheta)
	// 	var ratioA = Math.sin((1 - t) * halfTheta) / sinHalfTheta,
	// 		ratioB = Math.sin(t * halfTheta) / sinHalfTheta

	// 	this._w = w * ratioA + this._w * ratioB
	// 	this._x = x * ratioA + this._x * ratioB
	// 	this._y = y * ratioA + this._y * ratioB
	// 	this._z = z * ratioA + this._z * ratioB

	// 	this.onChangeCallback()

	// 	return this
	// }

	// equals(q: Quaternion): boolean {
	// 	return q._x === this._x && q._y === this._y && q._z === this._z && q._w === this._w
	// }

	// fromArray(array: f64[], offset: i32 = 0): this {
	// 	this._x = array[offset]
	// 	this._y = array[offset + 1]
	// 	this._z = array[offset + 2]
	// 	this._w = array[offset + 3]

	// 	this.onChangeCallback()

	// 	return this
	// }

	// toArray(array: f64[] = [], offset: i32 = 0): f64[] {
	// 	if (array === undefined) array = []
	// 	if (offset === undefined) offset = 0

	// 	array[offset] = this._x
	// 	array[offset + 1] = this._y
	// 	array[offset + 2] = this._z
	// 	array[offset + 3] = this._w

	// 	return array
	// }

	onChange(callback: ChangeCallback): Quaternion {
		this.onChangeCallback = callback

		return this
	}

	// /**
	//  * Static version of *slerp* that helps assign the result on a re-usable cache object.
	//  */
	// static slerp(qa: Quaternion, qb: Quaternion, qm: Quaternion, t: f64): Quaternion {
	// 	return qm.copy(qa).slerp(qb, t)
	// }

	// /**
	//  * Fuzz-free, array-based Quaternion SLERP operation.
	//  * @param dst
	//  * @param dstOffset
	//  * @param src0
	//  * @param srcOffset0
	//  * @param src1
	//  * @param srcOffset1
	//  * @param t
	//  */
	// static slerpFlat(
	// 	dst: f64[],
	// 	dstOffset: i32,
	// 	src0: f64[],
	// 	srcOffset0: i32,
	// 	src1: f64[],
	// 	srcOffset1: i32,
	// 	t: f64
	// ): void {
	// 	var x0 = src0[srcOffset0 + 0],
	// 		y0 = src0[srcOffset0 + 1],
	// 		z0 = src0[srcOffset0 + 2],
	// 		w0 = src0[srcOffset0 + 3],
	// 		x1 = src1[srcOffset1 + 0],
	// 		y1 = src1[srcOffset1 + 1],
	// 		z1 = src1[srcOffset1 + 2],
	// 		w1 = src1[srcOffset1 + 3]

	// 	if (w0 !== w1 || x0 !== x1 || y0 !== y1 || z0 !== z1) {
	// 		var s = 1 - t,
	// 			cos = x0 * x1 + y0 * y1 + z0 * z1 + w0 * w1,
	// 			dir = cos >= 0 ? 1 : -1,
	// 			sqrSin = 1 - cos * cos

	// 		// Skip the Slerp for tiny steps to avoid numeric problems:
	// 		if (sqrSin > F64.EPSILON) {
	// 			var sin = Math.sqrt(sqrSin),
	// 				len = Math.atan2(sin, cos * dir)

	// 			s = Math.sin(s * len) / sin
	// 			t = Math.sin(t * len) / sin
	// 		}

	// 		var tDir = t * dir

	// 		x0 = x0 * s + x1 * tDir
	// 		y0 = y0 * s + y1 * tDir
	// 		z0 = z0 * s + z1 * tDir
	// 		w0 = w0 * s + w1 * tDir

	// 		// Normalize in case we just did a lerp:
	// 		if (s === 1 - t) {
	// 			var f = 1 / Math.sqrt(x0 * x0 + y0 * y0 + z0 * z0 + w0 * w0)

	// 			x0 *= f
	// 			y0 *= f
	// 			z0 *= f
	// 			w0 *= f
	// 		}
	// 	}

	// 	dst[dstOffset] = x0
	// 	dst[dstOffset + 1] = y0
	// 	dst[dstOffset + 2] = z0
	// 	dst[dstOffset + 3] = w0
	// }
}

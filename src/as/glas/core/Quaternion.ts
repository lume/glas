/**
 * @author mikael emtinger / http://gomo.se/
 * @author alteredq / http://alteredqualia.com/
 * @author WestLangley / http://github.com/WestLangley
 * @author bhouston / http://clara.io
 * @author Joe Pea / http://github.com/trusktr
 */

import {Euler} from './Euler'
import {Vector3} from './Vector3'
import {Matrix4} from './Matrix4'

/**
 * Implementation of a quaternion. This is used for rotating things without
 * incurring in the dreaded gimbal lock issue, amongst other advantages.
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

	isQuaternion: true

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

	/**
	 * Sets values of this quaternion.
	 * @param x x coordinate
	 * @param y y coordinate
	 * @param z z coordinate
	 * @param w w coordinate
	 */
	set(x: number, y: number, z: number, w: number): this {
		this._x = x
		this._y = y
		this._z = z
		this._w = w

		this.onChangeCallback()

		return this
	}

	/**
	 * Clones this quaternion, returning a new one with all the same property values.
	 */
	clone(): Quaternion {
		return new Quaternion(this._x, this._y, this._z, this._w)
	}

	/**
	 * Copies all data of the source quaternion to this quaternion.
	 * @param source The quaternion to copy from.
	 */
	copy(source: Quaternion): this {
		this._x = source.x
		this._y = source.y
		this._z = source.z
		this._w = source.w

		this.onChangeCallback()

		return this
	}

	/**
	 * Sets this quaternion from rotation specified by Euler angles.
	 * Adapted from http://www.mathworks.com/matlabcentral/fileexchange/20696-function-to-convert-between-dcm-euler-angles-quaternions-and-euler-vectors/content/SpinCalc.m
	 * @param euler The Euler angles from which to get rotation from.
	 * @param update
	 */
	setFromEuler(euler: Euler, update: boolean = true): this {
		if (!(euler && euler.isEuler)) {
			throw new Error(
				'THREE.Quaternion: .setFromEuler() now expects an Euler rotation rather than a Vector3 and order.'
			)
		}

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

	/**
	 * Sets this quaternion from rotation specified by *axis* and *angle*.
	 * Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/angleToQuaternion/index.htm.
	 * Axis have to be normalized, angle is in radians.
	 * @param axis A vector representing the axis of rotation, assumed to be normalized.
	 * @param angle The angle of rotation around the axis.
	 */
	setFromAxisAngle(axis: Vector3, angle: number): this {
		const halfAngle = angle / 2
		const s = Math.sin(halfAngle)

		this._x = axis.x * s
		this._y = axis.y * s
		this._z = axis.z * s
		this._w = Math.cos(halfAngle)

		this.onChangeCallback()

		return this
	}

	/**
	 * Sets this quaternion from rotation component of *m*.
	 * Adapted from http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToQuaternion/index.htm.
	 * @param m The matrix containing the rotation. The upper 3x3 of m is assumed
	 * to be a pure rotation matrix (i.e, unscaled).
	 */
	setFromRotationMatrix(m: Matrix4): Quaternion {
		const te = m.elements,
			m11 = te[0],
			m12 = te[4],
			m13 = te[8],
			m21 = te[1],
			m22 = te[5],
			m23 = te[9],
			m31 = te[2],
			m32 = te[6],
			m33 = te[10],
			trace = m11 + m22 + m33,
			s

		if (trace > 0) {
			s = 0.5 / Math.sqrt(trace + 1.0)

			this._w = 0.25 / s
			this._x = (m32 - m23) * s
			this._y = (m13 - m31) * s
			this._z = (m21 - m12) * s
		} else if (m11 > m22 && m11 > m33) {
			s = 2.0 * Math.sqrt(1.0 + m11 - m22 - m33)

			this._w = (m32 - m23) / s
			this._x = 0.25 * s
			this._y = (m12 + m21) / s
			this._z = (m13 + m31) / s
		} else if (m22 > m33) {
			s = 2.0 * Math.sqrt(1.0 + m22 - m11 - m33)

			this._w = (m13 - m31) / s
			this._x = (m12 + m21) / s
			this._y = 0.25 * s
			this._z = (m23 + m32) / s
		} else {
			s = 2.0 * Math.sqrt(1.0 + m33 - m11 - m22)

			this._w = (m21 - m12) / s
			this._x = (m13 + m31) / s
			this._y = (m23 + m32) / s
			this._z = 0.25 * s
		}

		this.onChangeCallback()

		return this
	}

	/**
	 * Sets this quaternion from the rotation found between vectors, where rotation is from *vFrom* to *vTo*.
	 * Assumes direction vectors *vFrom* and *vTo* are normalized.
	 * @param vFrom The vector that rotation starts from.
	 * @param vTo The vector that rotation goes to.
	 */
	setFromUnitVectors(vFrom: Vector3, vTo: Vector3): this {
		const EPS = 0.000001

		const r = vFrom.dot(vTo) + 1

		if (r < EPS) {
			r = 0

			if (Math.abs(vFrom.x) > Math.abs(vFrom.z)) {
				this._x = -vFrom.y
				this._y = vFrom.x
				this._z = 0
				this._w = r
			} else {
				this._x = 0
				this._y = -vFrom.z
				this._z = vFrom.y
				this._w = r
			}
		} else {
			// crossVectors( vFrom, vTo ); // inlined to avoid cyclic dependency on Vector3

			this._x = vFrom.y * vTo.z - vFrom.z * vTo.y
			this._y = vFrom.z * vTo.x - vFrom.x * vTo.z
			this._z = vFrom.x * vTo.y - vFrom.y * vTo.x
			this._w = r
		}

		return this.normalize()
	}

	angleTo(q: Quaternion): number
	rotateTowards(q: Quaternion, step: number): Quaternion

	/**
	 * Inverts this quaternion.
	 */
	inverse(): Quaternion

	conjugate(): Quaternion
	dot(v: Quaternion): number
	lengthSq(): number

	/**
	 * Computes length of this quaternion.
	 */
	length(): number

	/**
	 * Normalizes this quaternion.
	 */
	normalize(): this

	/**
	 * Multiplies this quaternion by b.
	 */
	multiply(q: Quaternion): Quaternion
	premultiply(q: Quaternion): Quaternion

	/**
	 * Sets this quaternion to a x b
	 * Adapted from http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/code/index.htm.
	 */
	multiplyQuaternions(a: Quaternion, b: Quaternion): Quaternion

	slerp(qb: Quaternion, t: number): Quaternion
	equals(v: Quaternion): boolean
	fromArray(n: number[]): Quaternion
	toArray(): number[]

	fromArray(xyzw: number[], offset?: number): Quaternion
	toArray(xyzw?: number[], offset?: number): number[]

	onChange(callback: Function): Quaternion
	onChangeCallback: Function

	/**
	 * Adapted from http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/slerp/.
	 */
	static slerp(qa: Quaternion, qb: Quaternion, qm: Quaternion, t: number): Quaternion

	static slerpFlat(
		dst: number[],
		dstOffset: number,
		src0: number[],
		srcOffset: number,
		src1: number[],
		stcOffset1: number,
		t: number
	): Quaternion

	/**
	 * @deprecated Use {@link Vector#applyQuaternion vector.applyQuaternion( quaternion )} instead.
	 */
	multiplyVector3(v: any): any
}

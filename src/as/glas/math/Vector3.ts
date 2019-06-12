/**
 * @author mrdoob / http://mrdoob.com/
 * @author kile / http://kile.stravaganza.org/
 * @author philogb / http://blog.thejit.org/
 * @author mikael emtinger / http://gomo.se/
 * @author egraether / http://egraether.com/
 * @author WestLangley / http://github.com/WestLangley
 * @author corruptedzulu / http://github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */

import {Quaternion} from './Quaternion'
import * as _Math from './Math'
import {Euler} from './Euler'
import {Matrix3} from './Matrix3'
import {Matrix4} from './Matrix4'
import {Camera} from './../cameras/Camera'
import {Spherical} from './Spherical'
import {Cylindrical} from './Cylindrical'
import {Vector} from './Vector2'
import {BufferAttribute} from '../core/BufferAttribute'

/**
 * 3D vector.
 *
 * @example
 * var a = new THREE.Vector3( 1, 0, 0 );
 * var b = new THREE.Vector3( 0, 1, 0 );
 * var c = new THREE.Vector3();
 * c.crossVectors( a, b );
 *
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/math/Vector3">src/math/Vector3</a>
 *
 * ( class Vector3 implements Vector<Vector3> )
 */
export class Vector3 /*implements Vector*/ {
	x: number
	y: number
	z: number
	isVector3: bool = true

	constructor(x: number = 0, y: number = 0, z: number = 0) {
		this.x = x
		this.y = y
		this.z = z
	}

	/**
	 * Sets value of this vector.
	 */
	set(x: number, y: number, z: number): this {
		this.x = x
		this.y = y
		this.z = z

		return this
	}

	// /**
	//  * Sets all values of this vector.
	//  */
	// setScalar(scalar: number): this {
	// 	this.x = scalar
	// 	this.y = scalar
	// 	this.z = scalar

	// 	return this
	// }

	// /**
	//  * Sets x value of this vector.
	//  */
	// setX(x: number): Vector3 {
	// 	this.x = x

	// 	return this
	// }

	// /**
	//  * Sets y value of this vector.
	//  */
	// setY(y: number): Vector3 {
	// 	this.y = y

	// 	return this
	// }

	// /**
	//  * Sets z value of this vector.
	//  */
	// setZ(z: number): Vector3 {
	// 	this.z = z

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
	// 		default:
	// 			throw new Error('index is out of range: ' + index)
	// 	}

	// 	return this
	// }

	// getComponent(index: number): number {
	// 	switch (index) {
	// 		case 0:
	// 			return this.x
	// 		case 1:
	// 			return this.y
	// 		case 2:
	// 			return this.z
	// 		default:
	// 			throw new Error('index is out of range: ' + index)
	// 	}
	// }

	// /**
	//  * Clones this vector.
	//  */
	clone(): Vector3 {
		return new Vector3(this.x, this.y, this.z)
	}

	/**
	 * Copies value of v to this vector.
	 */
	copy(v: Vector3): this {
		this.x = v.x
		this.y = v.y
		this.z = v.z

		return this
	}

	// /**
	//  * Adds v to this vector.
	//  */
	// add(a: Vector3): this {
	// 	// if ( w !== undefined ) {

	// 	// 	console.warn( 'THREE.Vector3: .add() now only accepts one argument. Use .addVectors( a, b ) instead.' );
	// 	// 	return this.addVectors( v, w );

	// 	// }

	// 	this.x += a.x
	// 	this.y += a.y
	// 	this.z += a.z

	// 	return this
	// }

	// addScalar(s: number): this {
	// 	this.x += s
	// 	this.y += s
	// 	this.z += s

	// 	return this
	// }

	// addScaledVector(v: Vector3, s: number): this {
	// 	this.x += v.x * s
	// 	this.y += v.y * s
	// 	this.z += v.z * s

	// 	return this
	// }

	/**
	 * Sets this vector to a + b.
	 */
	addVectors(a: Vector3, b: Vector3): this {
		this.x = a.x + b.x
		this.y = a.y + b.y
		this.z = a.z + b.z

		return this
	}

	// /**
	//  * Subtracts v from this vector.
	//  */
	// sub(a: Vector3): this {
	// 	// if ( w !== undefined ) {

	// 	// 	console.warn( 'THREE.Vector3: .sub() now only accepts one argument. Use .subVectors( a, b ) instead.' );
	// 	// 	return this.subVectors( v, w );

	// 	// }

	// 	this.x -= a.x
	// 	this.y -= a.y
	// 	this.z -= a.z

	// 	return this
	// }

	// subScalar(s: number): this {
	// 	this.x -= s
	// 	this.y -= s
	// 	this.z -= s

	// 	return this
	// }

	/**
	 * Sets this vector to a - b.
	 */
	subVectors(a: Vector3, b: Vector3): this {
		this.x = a.x - b.x
		this.y = a.y - b.y
		this.z = a.z - b.z

		return this
	}

	// multiply(v: Vector3): this {
	// 	// if ( w !== undefined ) {

	// 	// 	console.warn( 'THREE.Vector3: .multiply() now only accepts one argument. Use .multiplyVectors( a, b ) instead.' );
	// 	// 	return this.multiplyVectors( v, w );

	// 	// }

	// 	this.x *= v.x
	// 	this.y *= v.y
	// 	this.z *= v.z

	// 	return this
	// }

	/**
	 * Multiplies this vector by scalar s.
	 */
	multiplyScalar(scalar: number): this {
		this.x *= scalar
		this.y *= scalar
		this.z *= scalar

		return this
	}

	// multiplyVectors(a: Vector3, b: Vector3): this {
	// 	this.x = a.x * b.x
	// 	this.y = a.y * b.y
	// 	this.z = a.z * b.z

	// 	return this
	// }

	// applyEuler(euler: Euler): this {
	// 	var quaternion = new Quaternion()

	// 	// if ( ! ( euler && euler.isEuler ) ) {

	// 	//     console.error( 'THREE.Vector3: .applyEuler() now expects an Euler rotation rather than a Vector3 and order.' );

	// 	// }

	// 	return this.applyQuaternion(quaternion.setFromEuler(euler))
	// }

	// applyAxisAngle(axis: Vector3, angle: number): this {
	// 	var quaternion = new Quaternion()

	// 	return this.applyQuaternion(quaternion.setFromAxisAngle(axis, angle))
	// }

	// applyMatrix3(m: Matrix3): this {
	// 	var x = this.x,
	// 		y = this.y,
	// 		z = this.z
	// 	var e = m.elements

	// 	this.x = e[0] * x + e[3] * y + e[6] * z
	// 	this.y = e[1] * x + e[4] * y + e[7] * z
	// 	this.z = e[2] * x + e[5] * y + e[8] * z

	// 	return this
	// }

	applyMatrix4(m: Matrix4): this {
		var x = this.x,
			y = this.y,
			z = this.z
		var e = m.elements

		var w = 1 / (e[3] * x + e[7] * y + e[11] * z + e[15])

		this.x = (e[0] * x + e[4] * y + e[8] * z + e[12]) * w
		this.y = (e[1] * x + e[5] * y + e[9] * z + e[13]) * w
		this.z = (e[2] * x + e[6] * y + e[10] * z + e[14]) * w

		return this
	}

	// applyQuaternion(q: Quaternion): this {
	// 	var x = this.x,
	// 		y = this.y,
	// 		z = this.z
	// 	var qx = q.x,
	// 		qy = q.y,
	// 		qz = q.z,
	// 		qw = q.w

	// 	// calculate quat * vector

	// 	var ix = qw * x + qy * z - qz * y
	// 	var iy = qw * y + qz * x - qx * z
	// 	var iz = qw * z + qx * y - qy * x
	// 	var iw = -qx * x - qy * y - qz * z

	// 	// calculate result * inverse quat

	// 	this.x = ix * qw + iw * -qx + iy * -qz - iz * -qy
	// 	this.y = iy * qw + iw * -qy + iz * -qx - ix * -qz
	// 	this.z = iz * qw + iw * -qz + ix * -qy - iy * -qx

	// 	return this
	// }

	// project(camera: Camera): this {
	// 	return this.applyMatrix4(camera.matrixWorldInverse).applyMatrix4(camera.projectionMatrix)
	// }

	// unproject(camera: Camera): this {
	// 	return this.applyMatrix4(camera.projectionMatrixInverse).applyMatrix4(camera.matrixWorld)
	// }

	// transformDirection(m: Matrix4): this {
	// 	// input: THREE.Matrix4 affine matrix
	// 	// vector interpreted as a direction

	// 	var x = this.x,
	// 		y = this.y,
	// 		z = this.z
	// 	var e = m.elements

	// 	this.x = e[0] * x + e[4] * y + e[8] * z
	// 	this.y = e[1] * x + e[5] * y + e[9] * z
	// 	this.z = e[2] * x + e[6] * y + e[10] * z

	// 	return this.normalize()
	// }

	// divide(v: Vector3): this {
	// 	this.x /= v.x
	// 	this.y /= v.y
	// 	this.z /= v.z

	// 	return this
	// }

	/**
	 * Divides this vector by scalar.
	 * Set vector to ( 0, 0, 0 ) if s == 0.
	 */
	divideScalar(scalar: number): this {
		return this.multiplyScalar(1 / scalar)
	}

	min(v: Vector3): this {
		this.x = Math.min(this.x, v.x)
		this.y = Math.min(this.y, v.y)
		this.z = Math.min(this.z, v.z)

		return this
	}

	max(v: Vector3): this {
		this.x = Math.max(this.x, v.x)
		this.y = Math.max(this.y, v.y)
		this.z = Math.max(this.z, v.z)

		return this
	}

	// clamp(min: Vector3, max: Vector3): this {
	// 	this.x = Math.max(min.x, Math.min(max.x, this.x))
	// 	this.y = Math.max(min.y, Math.min(max.y, this.y))
	// 	this.z = Math.max(min.z, Math.min(max.z, this.z))

	// 	return this
	// }

	// clampScalar(min: number, max: number): this {
	// 	this.x = Math.max(min, Math.min(max, this.x))
	// 	this.y = Math.max(min, Math.min(max, this.y))
	// 	this.z = Math.max(min, Math.min(max, this.z))

	// 	return this
	// }

	// clampLength(min: number, max: number): this {
	// 	var length = this.length()

	// 	return this.divideScalar(length || 1).multiplyScalar(Math.max(min, Math.min(max, length)))
	// }

	// floor(): this {
	// 	this.x = Math.floor(this.x)
	// 	this.y = Math.floor(this.y)
	// 	this.z = Math.floor(this.z)

	// 	return this
	// }

	// ceil(): this {
	// 	this.x = Math.ceil(this.x)
	// 	this.y = Math.ceil(this.y)
	// 	this.z = Math.ceil(this.z)

	// 	return this
	// }

	// round(): this {
	// 	this.x = Math.round(this.x)
	// 	this.y = Math.round(this.y)
	// 	this.z = Math.round(this.z)

	// 	return this
	// }

	// roundToZero(): this {
	// 	this.x = this.x < 0 ? Math.ceil(this.x) : Math.floor(this.x)
	// 	this.y = this.y < 0 ? Math.ceil(this.y) : Math.floor(this.y)
	// 	this.z = this.z < 0 ? Math.ceil(this.z) : Math.floor(this.z)

	// 	return this
	// }

	// /**
	//  * Inverts this vector.
	//  */
	// negate(): this {
	// 	this.x = -this.x
	// 	this.y = -this.y
	// 	this.z = -this.z

	// 	return this
	// }

	/**
	 * Computes dot product of this vector and v.
	 */
	dot(v: Vector3): number {
		return this.x * v.x + this.y * v.y + this.z * v.z
	}

	// /**
	//  * Computes squared length of this vector.
	//  */
	// lengthSq(): number {
	// 	return this.x * this.x + this.y * this.y + this.z * this.z
	// }

	/**
	 * Computes length of this vector.
	 */
	length(): number {
		return Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z)
	}

	// /**
	//  * Computes the Manhattan length of this vector.
	//  *
	//  * @return {number}
	//  *
	//  * @see {@link http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry}
	//  */
	// manhattanLength(): number {
	// 	return Math.abs(this.x) + Math.abs(this.y) + Math.abs(this.z)
	// }

	/**
	 * Normalizes this vector.
	 */
	normalize(): this {
		return this.divideScalar(this.length() || 1)
	}

	// /**
	//  * Normalizes this vector and multiplies it by l.
	//  */
	// setLength(length: number): this {
	// 	return this.normalize().multiplyScalar(length)
	// }

	// lerp(v: Vector3, alpha: number): this {
	// 	this.x += (v.x - this.x) * alpha
	// 	this.y += (v.y - this.y) * alpha
	// 	this.z += (v.z - this.z) * alpha

	// 	return this
	// }

	// lerpVectors(v1: Vector3, v2: Vector3, alpha: number): this {
	// 	return this.subVectors(v2, v1)
	// 		.multiplyScalar(alpha)
	// 		.add(v1)
	// }

	/**
	 * Sets this vector to cross product of itself and v.
	 */
	cross(a: Vector3): this {
		// if ( w !== undefined ) {

		// 	console.warn( 'THREE.Vector3: .cross() now only accepts one argument. Use .crossVectors( a, b ) instead.' );
		// 	return this.crossVectors( v, w );

		// }

		return this.crossVectors(this, a)
	}

	/**
	 * Sets this vector to cross product of a and b.
	 */
	crossVectors(a: Vector3, b: Vector3): this {
		var ax = a.x,
			ay = a.y,
			az = a.z
		var bx = b.x,
			by = b.y,
			bz = b.z

		this.x = ay * bz - az * by
		this.y = az * bx - ax * bz
		this.z = ax * by - ay * bx

		return this
	}

	// projectOnVector(vector: Vector3): this {
	// 	var scalar = vector.dot(this) / vector.lengthSq()

	// 	return this.copy(vector).multiplyScalar(scalar)
	// }

	// projectOnPlane(planeNormal: Vector3): this {
	// 	var v1 = new Vector3(0, 0, 0)

	// 	v1.copy(this).projectOnVector(planeNormal)

	// 	return this.sub(v1)
	// }

	// reflect(vector: Vector3): this {
	// 	// reflect incident vector off plane orthogonal to normal
	// 	// normal is assumed to have unit length

	// 	var v1 = new Vector3(0, 0, 0)
	// 	var normal = new Vector3(1, 1, 1)

	// 	return this.sub(v1.copy(normal).multiplyScalar(2 * this.dot(normal)))
	// }

	// angleTo(v: Vector3): number {
	// 	var theta = this.dot(v) / Math.sqrt(this.lengthSq() * v.lengthSq())

	// 	// clamp, to handle numerical problems

	// 	return Math.acos(_Math.clamp(theta, -1, 1))
	// }

	// /**
	//  * Computes distance of this vector to v.
	//  */
	// distanceTo(v: Vector3): number {
	// 	return Math.sqrt(this.distanceToSquared(v))
	// }

	/**
	 * Computes squared distance of this vector to v.
	 */
	distanceToSquared(v: Vector3): number {
		var dx = this.x - v.x,
			dy = this.y - v.y,
			dz = this.z - v.z

		return dx * dx + dy * dy + dz * dz
	}

	// /**
	//  * Computes the Manhattan length (distance) from this vector to the given vector v
	//  *
	//  * @param {Vector3} v
	//  *
	//  * @return {number}
	//  *
	//  * @see {@link http://en.wikipedia.org/wiki/Taxicab_geometry|Wikipedia: Taxicab Geometry}
	//  */
	// manhattanDistanceTo(v: Vector3): number {
	// 	return Math.abs(this.x - v.x) + Math.abs(this.y - v.y) + Math.abs(this.z - v.z)
	// }

	// setFromSpherical(s: Spherical): this {
	// 	return this.setFromSphericalCoords(s.radius, s.phi, s.theta)
	// }

	// setFromSphericalCoords(radius: number, phi: number, theta: number): this {
	// 	var sinPhiRadius = Math.sin(phi) * radius

	// 	this.x = sinPhiRadius * Math.sin(theta)
	// 	this.y = Math.cos(phi) * radius
	// 	this.z = sinPhiRadius * Math.cos(theta)

	// 	return this
	// }

	// setFromCylindrical(c: Cylindrical): this {
	// 	return this.setFromCylindricalCoords(c.radius, c.theta, c.y)
	// }

	// setFromCylindricalCoords(radius: number, theta: number, y: number): this {
	// 	this.x = radius * Math.sin(theta)
	// 	this.y = y
	// 	this.z = radius * Math.cos(theta)

	// 	return this
	// }

	setFromMatrixPosition(m: Matrix4): this {
		var e = m.elements

		this.x = e[12]
		this.y = e[13]
		this.z = e[14]

		return this
	}

	// setFromMatrixScale(m: Matrix4): this {
	// 	var sx = this.setFromMatrixColumn(m, 0).length()
	// 	var sy = this.setFromMatrixColumn(m, 1).length()
	// 	var sz = this.setFromMatrixColumn(m, 2).length()

	// 	this.x = sx
	// 	this.y = sy
	// 	this.z = sz

	// 	return this
	// }

	// setFromMatrixColumn(matrix: Matrix4, index: number): Vector3 {
	// 	return this.fromArray(matrix.elements, index * 4)
	// }

	// /**
	//  * Checks for strict equality of this vector and v.
	//  */
	// equals(v: Vector3): boolean {
	// 	return v.x === this.x && v.y === this.y && v.z === this.z
	// }

	fromArray(array: number[], offset?: number): Vector3 {
		if (offset === undefined) offset = 0

		this.x = array[offset]
		this.y = array[offset + 1]
		this.z = array[offset + 2]

		return this
	}

	/**
	 * Returns an array [x, y, z], or copies x, y and z into the provided array.
	 * @param array (optional) array to store the vector to. If this is not provided, a new array will be created.
	 * @param offset (optional) optional offset into the array.
	 * @return The created or provided array.
	 */
	toArray(array?: number[], offset?: number): number[] {
		if (array === undefined) array = []
		if (offset === undefined) offset = 0

		array[offset] = this.x
		array[offset + 1] = this.y
		array[offset + 2] = this.z

		return array
	}

	// /**
	//  * Copies x, y and z into the provided array-like.
	//  * @param array array-like to store the vector to.
	//  * @param offset (optional) optional offset into the array.
	//  * @return The provided array-like.
	//  */
	// // toArray( xyz: ArrayLike<number>, offset?: number ): ArrayLike<number>;

	// fromBufferAttribute(attribute: BufferAttribute, index: number, offset?: number): this {
	// 	this.x = attribute.getX(index)
	// 	this.y = attribute.getY(index)
	// 	this.z = attribute.getZ(index)

	// 	return this
	// }
}

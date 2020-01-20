/**
 * @author bhouston / http://clara.io
 * @author Joe Pea / https://github.com/trusktr
 */
import {Vector3} from './Vector3'
// import {Sphere} from './Sphere'
// import {Line3} from './Line3'
// import {Box3} from './Box3'
// import {Matrix4} from './Matrix4'
// import {Matrix3} from './Matrix3'

export class Plane {
	normal: Vector3
	constant: number

	constructor(normal: Vector3 = new Vector3(1, 0, 0), constant: number = 0) {
		// normal is assumed to be normalized

		this.normal = normal
		this.constant = constant
	}

	// set(normal: Vector3, constant: number): Plane
	// set: function(normal, constant) {
	// 	this.normal.copy(normal)
	// 	this.constant = constant

	// 	return this
	// },

	setComponents(x: number, y: number, z: number, w: number): Plane {
		this.normal.set(x, y, z)
		this.constant = w

		return this
	}

	// setFromNormalAndCoplanarPoint(normal: Vector3, point: Vector3): Plane
	// setFromNormalAndCoplanarPoint: function(normal, point) {
	// 	this.normal.copy(normal)
	// 	this.constant = -point.dot(this.normal)

	// 	return this
	// },

	// setFromCoplanarPoints(a: Vector3, b: Vector3, c: Vector3): Plane
	// setFromCoplanarPoints: (function() {
	// 	var v1 = new Vector3()
	// 	var v2 = new Vector3()

	// 	return function setFromCoplanarPoints(a, b, c) {
	// 		var normal = v1
	// 			.subVectors(c, b)
	// 			.cross(v2.subVectors(a, b))
	// 			.normalize()

	// 		// Q: should an error be thrown if normal is zero (e.g. degenerate plane)?

	// 		this.setFromNormalAndCoplanarPoint(normal, a)

	// 		return this
	// 	}
	// })(),

	clone(): Plane {
		const p = new Plane()
		p.copy(this)
		return p
	}

	copy(plane: Plane): this {
		this.normal.copy(plane.normal)
		this.constant = plane.constant

		return this
	}

	normalize(): Plane {
		// Note: will lead to a divide by zero if the plane is invalid.

		var inverseNormalLength = 1.0 / this.normal.length()
		this.normal.multiplyScalar(inverseNormalLength)
		this.constant *= inverseNormalLength

		return this
	}

	// negate(): Plane
	// negate: function() {
	// 	this.constant *= -1
	// 	this.normal.negate()

	// 	return this
	// },

	distanceToPoint(point: Vector3): number {
		return this.normal.dot(point) + this.constant
	}

	// distanceToSphere(sphere: Sphere): number
	// distanceToSphere: function(sphere) {
	// 	return this.distanceToPoint(sphere.center) - sphere.radius
	// },

	projectPoint(point: Vector3, target: Vector3): Vector3 {
		return target
			.copy(this.normal)
			.multiplyScalar(-this.distanceToPoint(point))
			.add(point)
	}

	// intersectLine(line: Line3, target: Vector3): Vector3
	// intersectLine: (function() {
	// 	var v1 = new Vector3()

	// 	return function intersectLine(line, target) {
	// 		if (target === undefined) {
	// 			console.warn('THREE.Plane: .intersectLine() target is now required')
	// 			target = new Vector3()
	// 		}

	// 		var direction = line.delta(v1)

	// 		var denominator = this.normal.dot(direction)

	// 		if (denominator === 0) {
	// 			// line is coplanar, return origin
	// 			if (this.distanceToPoint(line.start) === 0) {
	// 				return target.copy(line.start)
	// 			}

	// 			// Unsure if this is the correct method to handle this case.
	// 			return undefined
	// 		}

	// 		var t = -(line.start.dot(this.normal) + this.constant) / denominator

	// 		if (t < 0 || t > 1) {
	// 			return undefined
	// 		}

	// 		return target
	// 			.copy(direction)
	// 			.multiplyScalar(t)
	// 			.add(line.start)
	// 	}
	// })(),

	// intersectsLine(line: Line3): boolean
	// intersectsLine: function(line) {
	// 	// Note: this tests if a line intersects the plane, not whether it (or its end-points) are coplanar with it.

	// 	var startSign = this.distanceToPoint(line.start)
	// 	var endSign = this.distanceToPoint(line.end)

	// 	return (startSign < 0 && endSign > 0) || (endSign < 0 && startSign > 0)
	// },

	// intersectsBox(box: Box3): boolean
	// intersectsBox: function(box) {
	// 	return box.intersectsPlane(this)
	// },

	// intersectsSphere(sphere: Sphere): boolean
	// intersectsSphere: function(sphere) {
	// 	return sphere.intersectsPlane(this)
	// },

	// coplanarPoint(target: Vector3): Vector3
	// coplanarPoint: function(target) {
	// 	if (target === undefined) {
	// 		console.warn('THREE.Plane: .coplanarPoint() target is now required')
	// 		target = new Vector3()
	// 	}

	// 	return target.copy(this.normal).multiplyScalar(-this.constant)
	// },

	// applyMatrix4(matrix: Matrix4, optionalNormalMatrix?: Matrix3): Plane
	// applyMatrix4: (function() {
	// 	var v1 = new Vector3()
	// 	var m1 = new Matrix3()

	// 	return function applyMatrix4(matrix, optionalNormalMatrix) {
	// 		var normalMatrix = optionalNormalMatrix || m1.getNormalMatrix(matrix)

	// 		var referencePoint = this.coplanarPoint(v1).applyMatrix4(matrix)

	// 		var normal = this.normal.applyMatrix3(normalMatrix).normalize()

	// 		this.constant = -referencePoint.dot(normal)

	// 		return this
	// 	}
	// })(),

	// translate(offset: Vector3): Plane
	// translate: function(offset) {
	// 	this.constant -= offset.dot(this.normal)

	// 	return this
	// },

	equals(plane: Plane): boolean {
		return plane.normal.equals(this.normal) && plane.constant === this.constant
	}
}

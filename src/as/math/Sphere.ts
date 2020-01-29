/**
 * @author bhouston / http://clara.io
 * @author mrdoob / http://mrdoob.com/
 * @author Joe Pea / https://github.com/trusktr
 */
import {Vector3} from './Vector3'
import {Box3} from './Box3'
import {Plane} from './Plane'
import {Matrix4} from './Matrix4'

var box = new Box3()

export class Sphere {
	center: Vector3
	radius: number

	constructor(center: Vector3 = new Vector3(), radius: number = 0) {
		this.center = center
		this.radius = radius
	}

	// XXX When will constructor properties be supported, so we don't have to write the above constructor version?
	// constructor(public center = new Vector3(), public radius = 0) {}

	set(center: Vector3, radius: number): Sphere {
		this.center.copy(center)
		this.radius = radius

		return this
	}

	setFromPoints(points: Vector3[], optionalCenter: Vector3 | null = null): Sphere {
		var center = this.center

		if (optionalCenter !== null) {
			center.copy(optionalCenter)
		} else {
			box.setFromPoints(points).getCenter(center)
		}

		var maxRadiusSq = 0.0

		for (var i: i32 = 0, il: i32 = points.length; i < il; i++) {
			maxRadiusSq = Math.max(maxRadiusSq, center.distanceToSquared(points[i]))
		}

		this.radius = Math.sqrt(maxRadiusSq)

		return this
	}

	clone(): Sphere {
		const s = new Sphere()
		s.copy(this)
		return s
	}

	copy(sphere: Sphere): this {
		this.center.copy(sphere.center)
		this.radius = sphere.radius

		return this
	}

	// empty(): boolean {
	// 	return this.radius <= 0
	// }

	// containsPoint(point: Vector3): boolean {
	// 	return point.distanceToSquared(this.center) <= this.radius * this.radius
	// }

	// distanceToPoint(point: Vector3): number {
	// 	return point.distanceTo(this.center) - this.radius
	// }

	// intersectsSphere(sphere: Sphere): boolean {
	// 	var radiusSum = this.radius + sphere.radius

	// 	return sphere.center.distanceToSquared(this.center) <= radiusSum * radiusSum
	// }

	// intersectsBox(box: Box3): boolean {
	// 	return box.intersectsSphere(this)
	// }

	// intersectsPlane(plane: Plane): boolean {
	// 	return Math.abs(plane.distanceToPoint(this.center)) <= this.radius
	// }

	// clampPoint(point: Vector3, target: Vector3): Vector3 {
	// 	var deltaLengthSq = this.center.distanceToSquared(point)

	// 	if (target === undefined) {
	// 		console.warn('THREE.Sphere: .clampPoint() target is now required')
	// 		target = new Vector3()
	// 	}

	// 	target.copy(point)

	// 	if (deltaLengthSq > this.radius * this.radius) {
	// 		target.sub(this.center).normalize()
	// 		target.multiplyScalar(this.radius).add(this.center)
	// 	}

	// 	return target
	// }

	getBoundingBox(target: Box3): Box3 {
		target.set(this.center, this.center)
		target.expandByScalar(this.radius)

		return target
	}

	applyMatrix4(matrix: Matrix4): Sphere {
		this.center.applyMatrix4(matrix)
		this.radius = this.radius * matrix.getMaxScaleOnAxis()

		return this
	}

	// translate(offset: Vector3): Sphere {
	// 	this.center.add(offset)

	// 	return this
	// }

	// equals(sphere: Sphere): boolean {
	// 	return sphere.center.equals(this.center) && sphere.radius === this.radius
	// }
}

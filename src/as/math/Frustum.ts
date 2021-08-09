import { Vector3 } from './Vector3'
import { Sphere } from './Sphere'
import { Plane } from './Plane'
import { Matrix4 } from './Matrix4'
import { Object3D } from '../core/Object3D'
//  import {Sprite} from '../objects/Sprite'
import { Box3 } from './Box3'

/**
 * @author mrdoob / http://mrdoob.com/
 * @author alteredq / http://alteredqualia.com/
 * @author bhouston / http://clara.io
 * @author jtenner / https://github.com/jtenner
 */

const _sphere = new Sphere()
const _vector = new Vector3()

export class Frustum {
	// TODO: this should be a static array since it never changes size
	planes: Plane[]

	constructor(
		p0: Plane | null = null,
		p1: Plane | null = null,
		p2: Plane | null = null,
		p3: Plane | null = null,
		p4: Plane | null = null,
		p5: Plane | null = null
	) {
		this.planes = [
			p0 == null ? new Plane() : p0,
			p1 == null ? new Plane() : p1,
			p2 == null ? new Plane() : p2,
			p3 == null ? new Plane() : p3,
			p4 == null ? new Plane() : p4,
			p5 == null ? new Plane() : p5,
		]
	}

	public set(p0: Plane, p1: Plane, p2: Plane, p3: Plane, p4: Plane, p5: Plane): this {
		const planes = this.planes

		planes[0].copy(p0)
		planes[1].copy(p1)
		planes[2].copy(p2)
		planes[3].copy(p3)
		planes[4].copy(p4)
		planes[5].copy(p5)

		return this
	}

	clone(): this {
		let a = new Frustum()
		// @ts-ignore
		return a.copy(this)
	}

	// todo: maybe avoid using a for loop since it's cpu intensive here
	copy(frustum: Frustum): this {
		const planes = this.planes

		for (let i = 0; i < 6; i++) {
			planes[i].copy(frustum.planes[i])
		}

		return this
	}

	public setFromProjectionMatrix(m: Matrix4): this {
		const planes = this.planes
		const me = m.elements
		const me0 = me[0],
			me1 = me[1],
			me2 = me[2],
			me3 = me[3]
		const me4 = me[4],
			me5 = me[5],
			me6 = me[6],
			me7 = me[7]
		const me8 = me[8],
			me9 = me[9],
			me10 = me[10],
			me11 = me[11]
		const me12 = me[12],
			me13 = me[13],
			me14 = me[14],
			me15 = me[15]

		planes[0].setComponents(me3 - me0, me7 - me4, me11 - me8, me15 - me12).normalize()
		planes[1].setComponents(me3 + me0, me7 + me4, me11 + me8, me15 + me12).normalize()
		planes[2].setComponents(me3 + me1, me7 + me5, me11 + me9, me15 + me13).normalize()
		planes[3].setComponents(me3 - me1, me7 - me5, me11 - me9, me15 - me13).normalize()
		planes[4].setComponents(me3 - me2, me7 - me6, me11 - me10, me15 - me14).normalize()
		planes[5].setComponents(me3 + me2, me7 + me6, me11 + me10, me15 + me14).normalize()

		return this
	}
	/*
  intersectsObject( object: Object3D ) {
    
		const geometry = object.geometry;

		if ( geometry.boundingSphere === null ) geometry.computeBoundingSphere();

		_sphere.copy( geometry.boundingSphere ).applyMatrix4( object.matrixWorld );

		return this.intersectsSphere( _sphere );

  }
  */

	// public intersectsSprite(sprite: Sprite): boolean {
	// 	_sphere.center.set(0, 0, 0)
	// 	_sphere.radius = 0.7071067811865476
	// 	_sphere.applyMatrix4(sprite.matrixWorld)
	//
	// 	return this.intersectsSphere(_sphere)
	// }

	public intersectsSphere(sphere: Sphere): boolean {
		const planes = this.planes
		const center = sphere.center
		const negRadius = -sphere.radius

		for (let i = 0; i < 6; i++) {
			const distance = planes[i].distanceToPoint(center)

			if (distance < negRadius) {
				return false
			}
		}

		return true
	}

	public intersectsBox(box: Box3): bool {
		const planes = this.planes

		for (let i = 0; i < 6; i++) {
			const plane = planes[i]

			// corner at max distance

			_vector.x = plane.normal.x > 0 ? box.max.x : box.min.x
			_vector.y = plane.normal.y > 0 ? box.max.y : box.min.y
			_vector.z = plane.normal.z > 0 ? box.max.z : box.min.z

			if (plane.distanceToPoint(_vector) < 0) {
				return false
			}
		}

		return true
	}

	public containsPoint(point: Vector3): bool {
		const planes = this.planes
		for (let i = 0; i < 6; i++) {
			if (planes[i].distanceToPoint(point) < 0) {
				return false
			}
		}
		return true
	}
}

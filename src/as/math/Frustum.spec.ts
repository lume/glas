/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joshua Tenner / https://github.com/jtenner
 */
/* global QUnit */

import {Frustum} from './Frustum'
import {Sphere} from './Sphere'
import {Plane} from './Plane'
// import {Sprite} from '../objects/Sprite'
import {Vector3} from './Vector3'
import {Matrix4} from './Matrix4'
import {Box3} from './Box3'
// import {Mesh} from '../objects/Mesh'
// import {BoxGeometry} from '../geometries/BoxGeometry'
import {zero3, one3, eps} from './test-constants'

const unit3 = new Vector3(1, 0, 0)

function planeEquals(a: Plane, b: Plane): void {
	expect(a.normal.distanceTo(b.normal)).toBeCloseTo(0)
	expect(a.constant).toBeCloseTo(b.constant)
}

describe('Maths', () => {
	describe('Frustum', () => {
		// INSTANCING
		describe('Instancing', () => {
			var a = new Frustum()

			expect(a.planes).toBeTruthy()
			expect(a.planes).toHaveLength(6)

			var pDefault = new Plane()
			for (var i = 0; i < 6; i++) {
				expect(a.planes[i].equals(pDefault)).toBeTruthy()
			}

			var p0 = new Plane(unit3, -1)
			var p1 = new Plane(unit3, 1)
			var p2 = new Plane(unit3, 2)
			var p3 = new Plane(unit3, 3)
			var p4 = new Plane(unit3, 4)
			var p5 = new Plane(unit3, 5)

			a = new Frustum(p0, p1, p2, p3, p4, p5)
			expect(a.planes[0].equals(p0)).toBeTruthy()
			expect(a.planes[1].equals(p1)).toBeTruthy()
			expect(a.planes[2].equals(p2)).toBeTruthy()
			expect(a.planes[3].equals(p3)).toBeTruthy()
			expect(a.planes[4].equals(p4)).toBeTruthy()
			expect(a.planes[5].equals(p5)).toBeTruthy()
		})

		// PUBLIC STUFF
		test('set', () => {
			var a = new Frustum()
			var p0 = new Plane(unit3, -1)
			var p1 = new Plane(unit3, 1)
			var p2 = new Plane(unit3, 2)
			var p3 = new Plane(unit3, 3)
			var p4 = new Plane(unit3, 4)
			var p5 = new Plane(unit3, 5)

			a.set(p0, p1, p2, p3, p4, p5)

			expect(a.planes[0].equals(p0)).toBeTruthy()
			expect(a.planes[1].equals(p1)).toBeTruthy()
			expect(a.planes[2].equals(p2)).toBeTruthy()
			expect(a.planes[3].equals(p3)).toBeTruthy()
			expect(a.planes[4].equals(p4)).toBeTruthy()
			expect(a.planes[5].equals(p5)).toBeTruthy()
		})

		test('clone', () => {
			var p0 = new Plane(unit3, -1)
			var p1 = new Plane(unit3, 1)
			var p2 = new Plane(unit3, 2)
			var p3 = new Plane(unit3, 3)
			var p4 = new Plane(unit3, 4)
			var p5 = new Plane(unit3, 5)

			var b = new Frustum(p0, p1, p2, p3, p4, p5)
			var a = b.clone()
			expect(a.planes[0].equals(p0)).toBeTruthy()
			expect(a.planes[1].equals(p1)).toBeTruthy()
			expect(a.planes[2].equals(p2)).toBeTruthy()
			expect(a.planes[3].equals(p3)).toBeTruthy()
			expect(a.planes[4].equals(p4)).toBeTruthy()
			expect(a.planes[5].equals(p5)).toBeTruthy()

			// ensure it is a true copy by modifying source
			a.planes[0].copy(p1)
			expect(b.planes[0].equals(p0)).toBeTruthy()
		})

		test('copy', () => {
			var p0 = new Plane(unit3, -1)
			var p1 = new Plane(unit3, 1)
			var p2 = new Plane(unit3, 2)
			var p3 = new Plane(unit3, 3)
			var p4 = new Plane(unit3, 4)
			var p5 = new Plane(unit3, 5)

			var b = new Frustum(p0, p1, p2, p3, p4, p5)
			var a = new Frustum().copy(b)
			expect(a.planes[0].equals(p0)).toBeTruthy()
			expect(a.planes[1].equals(p1)).toBeTruthy()
			expect(a.planes[2].equals(p2)).toBeTruthy()
			expect(a.planes[3].equals(p3)).toBeTruthy()
			expect(a.planes[4].equals(p4)).toBeTruthy()
			expect(a.planes[5].equals(p5)).toBeTruthy()

			// ensure it is a true copy by modifying source
			b.planes[0] = p1
			expect(a.planes[0].equals(p0)).toBeTruthy()
		})

		test('setFromProjectionMatrix/makeOrthographic/containsPoint', () => {
			var m = new Matrix4().makeOrthographic(-1, 1, -1, 1, 1, 100)
			var a = new Frustum().setFromProjectionMatrix(m)

			expect(a.containsPoint(new Vector3(0, 0, 0))).toBeFalsy()
			expect(a.containsPoint(new Vector3(0, 0, -50))).toBeTruthy()
			expect(a.containsPoint(new Vector3(0, 0, -1.001))).toBeTruthy()
			expect(a.containsPoint(new Vector3(-1, -1, -1.001))).toBeTruthy()
			expect(a.containsPoint(new Vector3(-1.1, -1.1, -1.001))).toBeFalsy()
			expect(a.containsPoint(new Vector3(1, 1, -1.001))).toBeTruthy()
			expect(a.containsPoint(new Vector3(1.1, 1.1, -1.001))).toBeFalsy()
			expect(a.containsPoint(new Vector3(0, 0, -100))).toBeTruthy()
			expect(a.containsPoint(new Vector3(-1, -1, -100))).toBeTruthy()
			expect(a.containsPoint(new Vector3(-1.1, -1.1, -100.1))).toBeFalsy()
			expect(a.containsPoint(new Vector3(1, 1, -100))).toBeTruthy()
			expect(a.containsPoint(new Vector3(1.1, 1.1, -100.1))).toBeFalsy()
			expect(a.containsPoint(new Vector3(0, 0, -101))).toBeFalsy()
		})

		test('setFromProjectionMatrix/makePerspective/containsPoint', () => {
			var m = new Matrix4().makePerspective(-1, 1, 1, -1, 1, 100)
			var a = new Frustum().setFromProjectionMatrix(m)

			expect(a.containsPoint(new Vector3(0, 0, 0))).toBeFalsy()
			expect(a.containsPoint(new Vector3(0, 0, -50))).toBeTruthy()
			expect(a.containsPoint(new Vector3(0, 0, -1.001))).toBeTruthy()
			expect(a.containsPoint(new Vector3(-1, -1, -1.001))).toBeTruthy()
			expect(a.containsPoint(new Vector3(-1.1, -1.1, -1.001))).toBeFalsy()
			expect(a.containsPoint(new Vector3(1, 1, -1.001))).toBeTruthy()
			expect(a.containsPoint(new Vector3(1.1, 1.1, -1.001))).toBeFalsy()
			expect(a.containsPoint(new Vector3(0, 0, -99.999))).toBeTruthy()
			expect(a.containsPoint(new Vector3(-99.999, -99.999, -99.999))).toBeTruthy()
			expect(a.containsPoint(new Vector3(-100.1, -100.1, -100.1))).toBeFalsy()
			expect(a.containsPoint(new Vector3(99.999, 99.999, -99.999))).toBeTruthy()
			expect(a.containsPoint(new Vector3(100.1, 100.1, -100.1))).toBeFalsy()
			expect(a.containsPoint(new Vector3(0, 0, -101))).toBeFalsy()
		})

		test('setFromProjectionMatrix/makePerspective/intersectsSphere', () => {
			var m = new Matrix4().makePerspective(-1, 1, 1, -1, 1, 100)
			var a = new Frustum().setFromProjectionMatrix(m)

			expect(a.intersectsSphere(new Sphere(new Vector3(0, 0, 0), 0))).toBeFalsy()
			expect(a.intersectsSphere(new Sphere(new Vector3(0, 0, 0), 0.9))).toBeFalsy()
			expect(a.intersectsSphere(new Sphere(new Vector3(0, 0, 0), 1.1))).toBeTruthy()
			expect(a.intersectsSphere(new Sphere(new Vector3(0, 0, -50), 0))).toBeTruthy()
			expect(a.intersectsSphere(new Sphere(new Vector3(0, 0, -1.001), 0))).toBeTruthy()
			expect(a.intersectsSphere(new Sphere(new Vector3(-1, -1, -1.001), 0))).toBeTruthy()
			expect(a.intersectsSphere(new Sphere(new Vector3(-1.1, -1.1, -1.001), 0))).toBeFalsy()
			expect(a.intersectsSphere(new Sphere(new Vector3(-1.1, -1.1, -1.001), 0.5))).toBeTruthy()
			expect(a.intersectsSphere(new Sphere(new Vector3(1, 1, -1.001), 0))).toBeTruthy()
			expect(a.intersectsSphere(new Sphere(new Vector3(1.1, 1.1, -1.001), 0))).toBeFalsy()
			expect(a.intersectsSphere(new Sphere(new Vector3(1.1, 1.1, -1.001), 0.5))).toBeTruthy()
			expect(a.intersectsSphere(new Sphere(new Vector3(0, 0, -99.999), 0))).toBeTruthy()
			expect(a.intersectsSphere(new Sphere(new Vector3(-99.999, -99.999, -99.999), 0))).toBeTruthy()
			expect(a.intersectsSphere(new Sphere(new Vector3(-100.1, -100.1, -100.1), 0))).toBeFalsy()
			expect(a.intersectsSphere(new Sphere(new Vector3(-100.1, -100.1, -100.1), 0.5))).toBeTruthy()
			expect(a.intersectsSphere(new Sphere(new Vector3(99.999, 99.999, -99.999), 0))).toBeTruthy()
			expect(a.intersectsSphere(new Sphere(new Vector3(100.1, 100.1, -100.1), 0))).toBeFalsy()
			expect(a.intersectsSphere(new Sphere(new Vector3(100.1, 100.1, -100.1), 0.2))).toBeTruthy()
			expect(a.intersectsSphere(new Sphere(new Vector3(0, 0, -101), 0))).toBeFalsy()
			expect(a.intersectsSphere(new Sphere(new Vector3(0, 0, -101), 1.1))).toBeTruthy()
		})

		// test( "intersectsObject", ( ) => {
		//
		// 	var m = new Matrix4().makePerspective( - 1, 1, 1, - 1, 1, 100 );
		// 	var a = new Frustum().setFromProjectionMatrix( m );
		// 	var object = new Mesh( new BoxGeometry( 1, 1, 1 ) );
		// 	var intersects;
		//
		// 	intersects = a.intersectsObject( object );
		// 	expect( intersects ).toBeFalsy()
		//
		// 	object.position.set( - 1, - 1, - 1 );
		// 	object.updateMatrixWorld();
		//
		// 	intersects = a.intersectsObject( object );
		// 	expect( intersects ).toBeTruthy()
		//
		// 	object.position.set( 1, 1, 1 );
		// 	object.updateMatrixWorld();
		//
		// 	intersects = a.intersectsObject( object );
		// 	expect( intersects ).toBeFalsy()
		//
		// } );

		// test('intersectsSprite', () => {
		// 	var m = new Matrix4().makePerspective(-1, 1, 1, -1, 1, 100)
		// 	var a = new Frustum().setFromProjectionMatrix(m)
		// 	var sprite = new Sprite()
		// 	var intersects
		//
		// 	intersects = a.intersectsSprite(sprite)
		// 	expect(intersects).toBeFalsy()
		//
		// 	sprite.position.set(-1, -1, -1)
		// 	sprite.updateMatrixWorld()
		//
		// 	intersects = a.intersectsSprite(sprite)
		// 	expect(intersects).toBeTruthy()
		// })

		test('intersectsBox', () => {
			var m = new Matrix4().makePerspective(-1, 1, 1, -1, 1, 100)
			var a = new Frustum().setFromProjectionMatrix(m)
			var box = new Box3(zero3.clone(), one3.clone())
			var intersects: bool

			intersects = a.intersectsBox(box)
			expect(intersects).toBeFalsy()

			// add eps so that we prevent box touching the frustum, which might intersect depending on floating point numerics
			box.translate(new Vector3(-1 - eps, -1 - eps, -1 - eps))

			intersects = a.intersectsBox(box)
			expect(intersects).toBeTruthy()
		})
	})
})

/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / https://github.com/trusktr
 */
import {Box3, compareBox} from './Box3'
// import {Sphere} from './Sphere'
// import {Triangle} from './Triangle'
// import {Plane} from './Plane'
import {Vector3} from './Vector3'
import {Matrix4} from './Matrix4'
// import {Mesh} from '../objects/Mesh'
// import {BufferAttribute} from '../core/BufferAttribute'
// import {BoxGeometry, BoxBufferGeometry} from '../geometries/BoxGeometry'
import {negInf3, posInf3, zero3, one3, two3} from './Constants.tests'

describe('Box3', () => {
	// INSTANCING
	test('constructor', () => {
		var a = new Box3()
		expect(a.min.equals(posInf3)).toBeTruthy()
		expect(a.max.equals(negInf3)).toBeTruthy()

		a = new Box3(zero3.clone(), zero3.clone())
		expect(a.min.equals(zero3)).toBeTruthy()
		expect(a.max.equals(zero3)).toBeTruthy()

		a = new Box3(zero3.clone(), one3.clone())
		expect(a.min.equals(zero3)).toBeTruthy()
		expect(a.max.equals(one3)).toBeTruthy()
	})

	test('set', () => {
		var a = new Box3()

		a.set(zero3, one3)
		expect(a.min.equals(zero3)).toBeTruthy()
		expect(a.max.equals(one3)).toBeTruthy()
	})

	todo('setFromArray')

	// test('setFromBufferAttribute', () => {
	// 	var a = new Box3(zero3.clone(), one3.clone())
	// 	var bigger = new BufferAttribute(new Float32Array([-2, -2, -2, 2, 2, 2, 1.5, 1.5, 1.5, 0, 0, 0]), 3)
	// 	var smaller = new BufferAttribute(new Float32Array([-0.5, -0.5, -0.5, 0.5, 0.5, 0.5, 0, 0, 0]), 3)
	// 	var newMin = new Vector3(-2, -2, -2)
	// 	var newMax = new Vector3(2, 2, 2)

	// 	a.setFromBufferAttribute(bigger)
	// 	expect(a.min.equals(newMin)).toBeTruthy()
	// 	expect(a.max.equals(newMax)).toBeTruthy()

	// 	newMin.set(-0.5, -0.5, -0.5)
	// 	newMax.set(0.5, 0.5, 0.5)

	// 	a.setFromBufferAttribute(smaller)
	// 	expect(a.min.equals(newMin)).toBeTruthy()
	// 	expect(a.max.equals(newMax)).toBeTruthy()
	// })

	test('setFromPoints', () => {
		var a = new Box3()

		a.setFromPoints([zero3, one3, two3])
		expect(a.min.equals(zero3)).toBeTruthy()
		expect(a.max.equals(two3)).toBeTruthy()

		a.setFromPoints([one3])
		expect(a.min.equals(one3)).toBeTruthy()
		expect(a.max.equals(one3)).toBeTruthy()

		a.setFromPoints([])
		expect(a.isEmpty()).toBeTruthy()
	})

	// test('setFromCenterAndSize', () => {
	// 	var a = new Box3(zero3.clone(), one3.clone())
	// 	var b = a.clone()
	// 	var centerA = new Vector3()
	// 	var sizeA = new Vector3()
	// 	var sizeB = new Vector3()
	// 	var newCenter = one3
	// 	var newSize = two3

	// 	a.getCenter(centerA)
	// 	a.getSize(sizeA)
	// 	a.setFromCenterAndSize(centerA, sizeA)
	// 	expect(a.equals(b)).toBeTruthy()

	// 	a.setFromCenterAndSize(newCenter, sizeA)
	// 	a.getCenter(centerA)
	// 	a.getSize(sizeA)
	// 	b.getSize(sizeB)

	// 	expect(centerA.equals(newCenter)).toBeTruthy()
	// 	expect(sizeA.equals(sizeB)).toBeTruthy()
	// 	expect(a.equals(b)).toBeFalsy()

	// 	a.setFromCenterAndSize(centerA, newSize)
	// 	a.getCenter(centerA)
	// 	a.getSize(sizeA)
	// 	expect(centerA.equals(newCenter)).toBeTruthy()
	// 	expect(sizeA.equals(newSize)).toBeTruthy()
	// 	expect(a.equals(b)).toBeFalsy()
	// })

	// test('setFromObject/BufferGeometry', () => {
	// 	var a = new Box3(zero3.clone(), one3.clone())
	// 	var object = new Mesh(new BoxBufferGeometry(2, 2, 2))
	// 	var child = new Mesh(new BoxBufferGeometry(1, 1, 1))
	// 	object.add(child)

	// 	a.setFromObject(object)
	// 	expect(a.min.equals(new Vector3(-1, -1, -1))).toBeTruthy()
	// 	expect(a.max.equals(new Vector3(1, 1, 1))).toBeTruthy()
	// })

	todo('clone')

	test('copy', () => {
		var a = new Box3(zero3.clone(), one3.clone())
		var b = new Box3()
		b.copy(a)
		expect(b.min.equals(zero3)).toBeTruthy()
		expect(b.max.equals(one3)).toBeTruthy()

		// ensure that it is a true copy
		a.min = zero3
		a.max = one3
		expect(b.min.equals(zero3)).toBeTruthy()
		expect(b.max.equals(one3)).toBeTruthy()
	})

	test('isEmpty/makeEmpty', () => {
		var a = new Box3()

		expect(a.isEmpty()).toBeTruthy()

		a = new Box3(zero3.clone(), one3.clone())
		expect(!a.isEmpty()).toBeTruthy()

		a.makeEmpty()
		expect(a.isEmpty()).toBeTruthy()
	})

	test('getCenter', () => {
		var a = new Box3(zero3.clone(), zero3.clone())
		var center = new Vector3()

		expect(a.getCenter(center).equals(zero3)).toBeTruthy()

		a = new Box3(zero3.clone(), one3.clone())
		var midpoint = one3.clone().multiplyScalar(0.5)
		expect(a.getCenter(center).equals(midpoint)).toBeTruthy()
	})

	test('getSize', () => {
		var a = new Box3(zero3.clone(), zero3.clone())
		var size = new Vector3()

		expect(a.getSize(size).equals(zero3)).toBeTruthy()

		a = new Box3(zero3.clone(), one3.clone())
		expect(a.getSize(size).equals(one3)).toBeTruthy()
	})

	test('expandByPoint', () => {
		var a = new Box3(zero3.clone(), zero3.clone())
		var center = new Vector3()
		var size = new Vector3()

		a.expandByPoint(zero3)
		expect(a.getSize(size).equals(zero3)).toBeTruthy()

		a.expandByPoint(one3)
		expect(a.getSize(size).equals(one3)).toBeTruthy()

		a.expandByPoint(one3.clone().negate())
		expect(a.getSize(size).equals(one3.clone().multiplyScalar(2))).toBeTruthy()
		expect(a.getCenter(center).equals(zero3)).toBeTruthy()
	})

	// test('expandByVector', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var center = new Vector3()
	// 	var size = new Vector3()

	// 	a.expandByVector(zero3)
	// 	expect(a.getSize(size).equals(zero3)).toBeTruthy()

	// 	a.expandByVector(one3)
	// 	expect(a.getSize(size).equals(one3.clone().multiplyScalar(2))).toBeTruthy()
	// 	expect(a.getCenter(center).equals(zero3)).toBeTruthy()
	// })

	test('expandByScalar', () => {
		var a = new Box3(zero3.clone(), zero3.clone())
		var center = new Vector3()
		var size = new Vector3()

		a.expandByScalar(0)
		expect(a.getSize(size).equals(zero3)).toBeTruthy()

		a.expandByScalar(1)
		expect(a.getSize(size).equals(one3.clone().multiplyScalar(2))).toBeTruthy()
		expect(a.getCenter(center).equals(zero3)).toBeTruthy()
	})

	// test('expandByObject', () => {
	// 	var a = new Box3(zero3.clone(), one3.clone())
	// 	var b = a.clone()
	// 	var bigger = new Mesh(new BoxGeometry(2, 2, 2))
	// 	var smaller = new Mesh(new BoxGeometry(0.5, 0.5, 0.5))
	// 	var child = new Mesh(new BoxGeometry(1, 1, 1))

	// 	// just a bigger box to begin with
	// 	a.expandByObject(bigger)
	// 	expect(a.min.equals(new Vector3(-1, -1, -1))).toBeTruthy()
	// 	expect(a.max.equals(new Vector3(1, 1, 1))).toBeTruthy()

	// 	// a translated, bigger box
	// 	a.copy(b)
	// 	bigger.translateX(2)
	// 	a.expandByObject(bigger)
	// 	expect(a.min.equals(new Vector3(0, -1, -1))).toBeTruthy()
	// 	expect(a.max.equals(new Vector3(3, 1, 1))).toBeTruthy()

	// 	// a translated, bigger box with child
	// 	a.copy(b)
	// 	bigger.add(child)
	// 	a.expandByObject(bigger)
	// 	expect(a.min.equals(new Vector3(0, -1, -1))).toBeTruthy()
	// 	expect(a.max.equals(new Vector3(3, 1, 1))).toBeTruthy()

	// 	// a translated, bigger box with a translated child
	// 	a.copy(b)
	// 	child.translateX(2)
	// 	a.expandByObject(bigger)
	// 	expect(
	// 		a.min.equals(new Vector3(0, -1, -1)),
	// 	).toBeTruthy()
	// 	expect(
	// 		a.max.equals(new Vector3(4.5, 1, 1)),
	// 	).toBeTruthy()

	// 	// a smaller box
	// 	a.copy(b)
	// 	a.expandByObject(smaller)
	// 	expect(a.min.equals(new Vector3(-0.25, -0.25, -0.25))).toBeTruthy()
	// 	expect(a.max.equals(new Vector3(1, 1, 1))).toBeTruthy()
	// })

	// test('containsPoint', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())

	// 	expect(a.containsPoint(zero3)).toBeTruthy()
	// 	expect(!a.containsPoint(one3)).toBeTruthy()

	// 	a.expandByScalar(1)
	// 	expect(a.containsPoint(zero3)).toBeTruthy()
	// 	expect(a.containsPoint(one3)).toBeTruthy()
	// 	expect(a.containsPoint(one3.clone().negate())).toBeTruthy()
	// })

	// test('containsBox', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(zero3.clone(), one3.clone())
	// 	var c = new Box3(one3.clone().negate(), one3.clone())

	// 	expect(a.containsBox(a)).toBeTruthy()
	// 	expect(!a.containsBox(b)).toBeTruthy()
	// 	expect(!a.containsBox(c)).toBeTruthy()

	// 	expect(b.containsBox(a)).toBeTruthy()
	// 	expect(c.containsBox(a)).toBeTruthy()
	// 	expect(!b.containsBox(c)).toBeTruthy()
	// })

	// test('getParameter', () => {
	// 	var a = new Box3(zero3.clone(), one3.clone())
	// 	var b = new Box3(one3.clone().negate(), one3.clone())
	// 	var parameter = new Vector3()

	// 	a.getParameter(zero3, parameter)
	// 	expect(parameter.equals(zero3)).toBeTruthy()
	// 	a.getParameter(one3, parameter)
	// 	expect(parameter.equals(one3)).toBeTruthy()

	// 	b.getParameter(one3.clone().negate(), parameter)
	// 	expect(parameter.equals(zero3)).toBeTruthy()
	// 	b.getParameter(zero3, parameter)
	// 	expect(parameter.equals(new Vector3(0.5, 0.5, 0.5))).toBeTruthy()
	// 	b.getParameter(one3, parameter)
	// 	expect(parameter.equals(one3)).toBeTruthy()
	// })

	// test('intersectsBox', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(zero3.clone(), one3.clone())
	// 	var c = new Box3(one3.clone().negate(), one3.clone())

	// 	expect(a.intersectsBox(a)).toBeTruthy()
	// 	expect(a.intersectsBox(b)).toBeTruthy()
	// 	expect(a.intersectsBox(c)).toBeTruthy()

	// 	expect(b.intersectsBox(a)).toBeTruthy()
	// 	expect(c.intersectsBox(a)).toBeTruthy()
	// 	expect(b.intersectsBox(c)).toBeTruthy()

	// 	b.translate(new Vector3(2, 2, 2))
	// 	expect(!a.intersectsBox(b)).toBeTruthy()
	// 	expect(!b.intersectsBox(a)).toBeTruthy()
	// 	expect(!b.intersectsBox(c)).toBeTruthy()
	// })

	// test('intersectsSphere', () => {
	// 	var a = new Box3(zero3.clone(), one3.clone())
	// 	var b = new Sphere(zero3.clone(), 1)

	// 	expect(a.intersectsSphere(b)).toBeTruthy()

	// 	b.translate(new Vector3(2, 2, 2))
	// 	expect(!a.intersectsSphere(b)).toBeTruthy()
	// })

	// test('intersectsPlane', () => {
	// 	var a = new Box3(zero3.clone(), one3.clone())
	// 	var b = new Plane(new Vector3(0, 1, 0), 1)
	// 	var c = new Plane(new Vector3(0, 1, 0), 1.25)
	// 	var d = new Plane(new Vector3(0, -1, 0), 1.25)
	// 	var e = new Plane(new Vector3(0, 1, 0), 0.25)
	// 	var f = new Plane(new Vector3(0, 1, 0), -0.25)
	// 	var g = new Plane(new Vector3(0, 1, 0), -0.75)
	// 	var h = new Plane(new Vector3(0, 1, 0), -1)
	// 	var i = new Plane(new Vector3(1, 1, 1).normalize(), -1.732)
	// 	var j = new Plane(new Vector3(1, 1, 1).normalize(), -1.733)

	// 	expect(!a.intersectsPlane(b)).toBeTruthy()
	// 	expect(!a.intersectsPlane(c)).toBeTruthy()
	// 	expect(!a.intersectsPlane(d)).toBeTruthy()
	// 	expect(!a.intersectsPlane(e)).toBeTruthy()
	// 	expect(a.intersectsPlane(f)).toBeTruthy()
	// 	expect(a.intersectsPlane(g)).toBeTruthy()
	// 	expect(a.intersectsPlane(h)).toBeTruthy()
	// 	expect(a.intersectsPlane(i)).toBeTruthy()
	// 	expect(!a.intersectsPlane(j)).toBeTruthy()
	// })

	// test('intersectsTriangle', () => {
	// 	var a = new Box3(one3.clone(), two3.clone())
	// 	var b = new Triangle(new Vector3(1.5, 1.5, 2.5), new Vector3(2.5, 1.5, 1.5), new Vector3(1.5, 2.5, 1.5))
	// 	var c = new Triangle(new Vector3(1.5, 1.5, 3.5), new Vector3(3.5, 1.5, 1.5), new Vector3(1.5, 1.5, 1.5))
	// 	var d = new Triangle(new Vector3(1.5, 1.75, 3), new Vector3(3, 1.75, 1.5), new Vector3(1.5, 2.5, 1.5))
	// 	var e = new Triangle(new Vector3(1.5, 1.8, 3), new Vector3(3, 1.8, 1.5), new Vector3(1.5, 2.5, 1.5))
	// 	var f = new Triangle(new Vector3(1.5, 2.5, 3), new Vector3(3, 2.5, 1.5), new Vector3(1.5, 2.5, 1.5))

	// 	expect(a.intersectsTriangle(b)).toBeTruthy()
	// 	expect(a.intersectsTriangle(c)).toBeTruthy()
	// 	expect(a.intersectsTriangle(d)).toBeTruthy()
	// 	expect(!a.intersectsTriangle(e)).toBeTruthy()
	// 	expect(!a.intersectsTriangle(f)).toBeTruthy()
	// })

	// test('clampPoint', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(one3.clone().negate(), one3.clone())
	// 	var point = new Vector3()

	// 	a.clampPoint(zero3, point)
	// 	expect(point.equals(zero3)).toBeTruthy()
	// 	a.clampPoint(one3, point)
	// 	expect(point.equals(zero3)).toBeTruthy()
	// 	a.clampPoint(one3.clone().negate(), point)
	// 	expect(point.equals(zero3)).toBeTruthy()

	// 	b.clampPoint(new Vector3(2, 2, 2), point)
	// 	expect(point.equals(one3)).toBeTruthy()
	// 	b.clampPoint(one3, point)
	// 	expect(point.equals(one3)).toBeTruthy()
	// 	b.clampPoint(zero3, point)
	// 	expect(point.equals(zero3)).toBeTruthy()
	// 	b.clampPoint(one3.clone().negate(), point)
	// 	expect(point.equals(one3.clone().negate())).toBeTruthy()
	// 	b.clampPoint(new Vector3(-2, -2, -2), point)
	// 	expect(point.equals(one3.clone().negate())).toBeTruthy()
	// })

	// test('distanceToPoint', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(one3.clone().negate(), one3.clone())

	// 	expect(a.distanceToPoint(new Vector3(0, 0, 0)) == 0).toBeTruthy()
	// 	expect(a.distanceToPoint(new Vector3(1, 1, 1)) == Math.sqrt(3)).toBeTruthy()
	// 	expect(a.distanceToPoint(new Vector3(-1, -1, -1)) == Math.sqrt(3)).toBeTruthy()

	// 	expect(b.distanceToPoint(new Vector3(2, 2, 2)) == Math.sqrt(3)).toBeTruthy()
	// 	expect(b.distanceToPoint(new Vector3(1, 1, 1)) == 0).toBeTruthy()
	// 	expect(b.distanceToPoint(new Vector3(0, 0, 0)) == 0).toBeTruthy()
	// 	expect(b.distanceToPoint(new Vector3(-1, -1, -1)) == 0).toBeTruthy()
	// 	expect(b.distanceToPoint(new Vector3(-2, -2, -2)) == Math.sqrt(3)).toBeTruthy()
	// })

	// test('getBoundingSphere', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(zero3.clone(), one3.clone())
	// 	var c = new Box3(one3.clone().negate(), one3.clone())
	// 	var sphere = new Sphere()

	// 	expect(a.getBoundingSphere(sphere).equals(new Sphere(zero3, 0))).toBeTruthy()
	// 	expect(
	// 		b.getBoundingSphere(sphere).equals(new Sphere(one3.clone().multiplyScalar(0.5), Math.sqrt(3) * 0.5)),
	// 	).toBeTruthy()
	// 	expect(c.getBoundingSphere(sphere).equals(new Sphere(zero3, Math.sqrt(12) * 0.5))).toBeTruthy()
	// })

	// test('intersect', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(zero3.clone(), one3.clone())
	// 	var c = new Box3(one3.clone().negate(), one3.clone())

	// 	expect(
	// 		a
	// 			.clone()
	// 			.intersect(a)
	// 			.equals(a),
	// 	).toBeTruthy()
	// 	expect(
	// 		a
	// 			.clone()
	// 			.intersect(b)
	// 			.equals(a),
	// 	).toBeTruthy()
	// 	expect(
	// 		b
	// 			.clone()
	// 			.intersect(b)
	// 			.equals(b),
	// 	).toBeTruthy()
	// 	expect(
	// 		a
	// 			.clone()
	// 			.intersect(c)
	// 			.equals(a),
	// 	).toBeTruthy()
	// 	expect(
	// 		b
	// 			.clone()
	// 			.intersect(c)
	// 			.equals(b),
	// 	).toBeTruthy()
	// 	expect(
	// 		c
	// 			.clone()
	// 			.intersect(c)
	// 			.equals(c),
	// 	).toBeTruthy()
	// })

	// test('union', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(zero3.clone(), one3.clone())
	// 	var c = new Box3(one3.clone().negate(), one3.clone())

	// 	expect(
	// 		a
	// 			.clone()
	// 			.union(a)
	// 			.equals(a),
	// 	).toBeTruthy()
	// 	expect(
	// 		a
	// 			.clone()
	// 			.union(b)
	// 			.equals(b),
	// 	).toBeTruthy()
	// 	expect(
	// 		a
	// 			.clone()
	// 			.union(c)
	// 			.equals(c),
	// 	).toBeTruthy()
	// 	expect(
	// 		b
	// 			.clone()
	// 			.union(c)
	// 			.equals(c),
	// 	).toBeTruthy()
	// })

	test('applyMatrix4', () => {
		var a = new Box3(zero3.clone(), zero3.clone())
		var b = new Box3(zero3.clone(), one3.clone())
		var c = new Box3(one3.clone().negate(), one3.clone())
		var d = new Box3(one3.clone().negate(), zero3.clone())

		var m = new Matrix4()
		m.makeTranslation(1, -2, 1)
		var t1 = new Vector3(1, -2, 1)

		expect(compareBox(a.clone().applyMatrix4(m), a.clone().translate(t1))).toBeTruthy()
		expect(compareBox(b.clone().applyMatrix4(m), b.clone().translate(t1))).toBeTruthy()
		expect(compareBox(c.clone().applyMatrix4(m), c.clone().translate(t1))).toBeTruthy()
		expect(compareBox(d.clone().applyMatrix4(m), d.clone().translate(t1))).toBeTruthy()
	})

	test('translate', () => {
		var a = new Box3(zero3.clone(), zero3.clone())
		var b = new Box3(zero3.clone(), one3.clone())
		var d = new Box3(one3.clone().negate(), zero3.clone())

		expect(a.clone().translate(one3).equals(new Box3(one3, one3))).toBeTruthy()
		expect(a.clone().translate(one3).translate(one3.clone().negate()).equals(a)).toBeTruthy()
		expect(d.clone().translate(one3).equals(b)).toBeTruthy()
		expect(b.clone().translate(one3.clone().negate()).equals(d)).toBeTruthy()
	})

	todo('equals')
})

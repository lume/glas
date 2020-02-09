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
		assert(a.min.equals(posInf3), 'Passed!')
		assert(a.max.equals(negInf3), 'Passed!')

		a = new Box3(zero3.clone(), zero3.clone())
		assert(a.min.equals(zero3), 'Passed!')
		assert(a.max.equals(zero3), 'Passed!')

		a = new Box3(zero3.clone(), one3.clone())
		assert(a.min.equals(zero3), 'Passed!')
		assert(a.max.equals(one3), 'Passed!')
	})

	test('set', () => {
		var a = new Box3()

		a.set(zero3, one3)
		assert(a.min.equals(zero3), 'Passed!')
		assert(a.max.equals(one3), 'Passed!')
	})

	todo('setFromArray')

	// test('setFromBufferAttribute', () => {
	// 	var a = new Box3(zero3.clone(), one3.clone())
	// 	var bigger = new BufferAttribute(new Float32Array([-2, -2, -2, 2, 2, 2, 1.5, 1.5, 1.5, 0, 0, 0]), 3)
	// 	var smaller = new BufferAttribute(new Float32Array([-0.5, -0.5, -0.5, 0.5, 0.5, 0.5, 0, 0, 0]), 3)
	// 	var newMin = new Vector3(-2, -2, -2)
	// 	var newMax = new Vector3(2, 2, 2)

	// 	a.setFromBufferAttribute(bigger)
	// 	assert(a.min.equals(newMin), 'Bigger box: correct new minimum')
	// 	assert(a.max.equals(newMax), 'Bigger box: correct new maximum')

	// 	newMin.set(-0.5, -0.5, -0.5)
	// 	newMax.set(0.5, 0.5, 0.5)

	// 	a.setFromBufferAttribute(smaller)
	// 	assert(a.min.equals(newMin), 'Smaller box: correct new minimum')
	// 	assert(a.max.equals(newMax), 'Smaller box: correct new maximum')
	// })

	test('setFromPoints', () => {
		var a = new Box3()

		a.setFromPoints([zero3, one3, two3])
		assert(a.min.equals(zero3), 'Passed!')
		assert(a.max.equals(two3), 'Passed!')

		a.setFromPoints([one3])
		assert(a.min.equals(one3), 'Passed!')
		assert(a.max.equals(one3), 'Passed!')

		a.setFromPoints([])
		assert(a.isEmpty(), 'Passed!')
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
	// 	assert(a.equals(b), 'Same values: no changes')

	// 	a.setFromCenterAndSize(newCenter, sizeA)
	// 	a.getCenter(centerA)
	// 	a.getSize(sizeA)
	// 	b.getSize(sizeB)

	// 	assert(centerA.equals(newCenter), 'Move center: correct new center')
	// 	assert(sizeA.equals(sizeB), 'Move center: no change in size')
	// 	assert.notOk(a.equals(b), 'Move center: no longer equal to old values')

	// 	a.setFromCenterAndSize(centerA, newSize)
	// 	a.getCenter(centerA)
	// 	a.getSize(sizeA)
	// 	assert(centerA.equals(newCenter), 'Resize: no change to center')
	// 	assert(sizeA.equals(newSize), 'Resize: correct new size')
	// 	assert.notOk(a.equals(b), 'Resize: no longer equal to old values')
	// })

	// test('setFromObject/BufferGeometry', () => {
	// 	var a = new Box3(zero3.clone(), one3.clone())
	// 	var object = new Mesh(new BoxBufferGeometry(2, 2, 2))
	// 	var child = new Mesh(new BoxBufferGeometry(1, 1, 1))
	// 	object.add(child)

	// 	a.setFromObject(object)
	// 	assert(a.min.equals(new Vector3(-1, -1, -1)), 'Correct new minimum')
	// 	assert(a.max.equals(new Vector3(1, 1, 1)), 'Correct new maximum')
	// })

	todo('clone')

	test('copy', () => {
		var a = new Box3(zero3.clone(), one3.clone())
		var b = new Box3()
		b.copy(a)
		assert(b.min.equals(zero3), 'Passed!')
		assert(b.max.equals(one3), 'Passed!')

		// ensure that it is a true copy
		a.min = zero3
		a.max = one3
		assert(b.min.equals(zero3), 'Passed!')
		assert(b.max.equals(one3), 'Passed!')
	})

	test('isEmpty/makeEmpty', () => {
		var a = new Box3()

		assert(a.isEmpty(), 'Passed!')

		a = new Box3(zero3.clone(), one3.clone())
		assert(!a.isEmpty(), 'Passed!')

		a.makeEmpty()
		assert(a.isEmpty(), 'Passed!')
	})

	test('getCenter', () => {
		var a = new Box3(zero3.clone(), zero3.clone())
		var center = new Vector3()

		assert(a.getCenter(center).equals(zero3), 'Passed!')

		a = new Box3(zero3.clone(), one3.clone())
		var midpoint = one3.clone().multiplyScalar(0.5)
		assert(a.getCenter(center).equals(midpoint), 'Passed!')
	})

	test('getSize', () => {
		var a = new Box3(zero3.clone(), zero3.clone())
		var size = new Vector3()

		assert(a.getSize(size).equals(zero3), 'Passed!')

		a = new Box3(zero3.clone(), one3.clone())
		assert(a.getSize(size).equals(one3), 'Passed!')
	})

	test('expandByPoint', () => {
		var a = new Box3(zero3.clone(), zero3.clone())
		var center = new Vector3()
		var size = new Vector3()

		a.expandByPoint(zero3)
		assert(a.getSize(size).equals(zero3), 'Passed!')

		a.expandByPoint(one3)
		assert(a.getSize(size).equals(one3), 'Passed!')

		a.expandByPoint(one3.clone().negate())
		assert(a.getSize(size).equals(one3.clone().multiplyScalar(2)), 'Passed!')
		assert(a.getCenter(center).equals(zero3), 'Passed!')
	})

	// test('expandByVector', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var center = new Vector3()
	// 	var size = new Vector3()

	// 	a.expandByVector(zero3)
	// 	assert(a.getSize(size).equals(zero3), 'Passed!')

	// 	a.expandByVector(one3)
	// 	assert(a.getSize(size).equals(one3.clone().multiplyScalar(2)), 'Passed!')
	// 	assert(a.getCenter(center).equals(zero3), 'Passed!')
	// })

	test('expandByScalar', () => {
		var a = new Box3(zero3.clone(), zero3.clone())
		var center = new Vector3()
		var size = new Vector3()

		a.expandByScalar(0)
		assert(a.getSize(size).equals(zero3), 'Passed!')

		a.expandByScalar(1)
		assert(a.getSize(size).equals(one3.clone().multiplyScalar(2)), 'Passed!')
		assert(a.getCenter(center).equals(zero3), 'Passed!')
	})

	// test('expandByObject', () => {
	// 	var a = new Box3(zero3.clone(), one3.clone())
	// 	var b = a.clone()
	// 	var bigger = new Mesh(new BoxGeometry(2, 2, 2))
	// 	var smaller = new Mesh(new BoxGeometry(0.5, 0.5, 0.5))
	// 	var child = new Mesh(new BoxGeometry(1, 1, 1))

	// 	// just a bigger box to begin with
	// 	a.expandByObject(bigger)
	// 	assert(a.min.equals(new Vector3(-1, -1, -1)), 'Bigger box: correct new minimum')
	// 	assert(a.max.equals(new Vector3(1, 1, 1)), 'Bigger box: correct new maximum')

	// 	// a translated, bigger box
	// 	a.copy(b)
	// 	bigger.translateX(2)
	// 	a.expandByObject(bigger)
	// 	assert(a.min.equals(new Vector3(0, -1, -1)), 'Translated, bigger box: correct new minimum')
	// 	assert(a.max.equals(new Vector3(3, 1, 1)), 'Translated, bigger box: correct new maximum')

	// 	// a translated, bigger box with child
	// 	a.copy(b)
	// 	bigger.add(child)
	// 	a.expandByObject(bigger)
	// 	assert(a.min.equals(new Vector3(0, -1, -1)), 'Translated, bigger box with child: correct new minimum')
	// 	assert(a.max.equals(new Vector3(3, 1, 1)), 'Translated, bigger box with child: correct new maximum')

	// 	// a translated, bigger box with a translated child
	// 	a.copy(b)
	// 	child.translateX(2)
	// 	a.expandByObject(bigger)
	// 	assert(
	// 		a.min.equals(new Vector3(0, -1, -1)),
	// 		'Translated, bigger box with translated child: correct new minimum'
	// 	)
	// 	assert(
	// 		a.max.equals(new Vector3(4.5, 1, 1)),
	// 		'Translated, bigger box with translated child: correct new maximum'
	// 	)

	// 	// a smaller box
	// 	a.copy(b)
	// 	a.expandByObject(smaller)
	// 	assert(a.min.equals(new Vector3(-0.25, -0.25, -0.25)), 'Smaller box: correct new minimum')
	// 	assert(a.max.equals(new Vector3(1, 1, 1)), 'Smaller box: correct new maximum')
	// })

	// test('containsPoint', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())

	// 	assert(a.containsPoint(zero3), 'Passed!')
	// 	assert(!a.containsPoint(one3), 'Passed!')

	// 	a.expandByScalar(1)
	// 	assert(a.containsPoint(zero3), 'Passed!')
	// 	assert(a.containsPoint(one3), 'Passed!')
	// 	assert(a.containsPoint(one3.clone().negate()), 'Passed!')
	// })

	// test('containsBox', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(zero3.clone(), one3.clone())
	// 	var c = new Box3(one3.clone().negate(), one3.clone())

	// 	assert(a.containsBox(a), 'Passed!')
	// 	assert(!a.containsBox(b), 'Passed!')
	// 	assert(!a.containsBox(c), 'Passed!')

	// 	assert(b.containsBox(a), 'Passed!')
	// 	assert(c.containsBox(a), 'Passed!')
	// 	assert(!b.containsBox(c), 'Passed!')
	// })

	// test('getParameter', () => {
	// 	var a = new Box3(zero3.clone(), one3.clone())
	// 	var b = new Box3(one3.clone().negate(), one3.clone())
	// 	var parameter = new Vector3()

	// 	a.getParameter(zero3, parameter)
	// 	assert(parameter.equals(zero3), 'Passed!')
	// 	a.getParameter(one3, parameter)
	// 	assert(parameter.equals(one3), 'Passed!')

	// 	b.getParameter(one3.clone().negate(), parameter)
	// 	assert(parameter.equals(zero3), 'Passed!')
	// 	b.getParameter(zero3, parameter)
	// 	assert(parameter.equals(new Vector3(0.5, 0.5, 0.5)), 'Passed!')
	// 	b.getParameter(one3, parameter)
	// 	assert(parameter.equals(one3), 'Passed!')
	// })

	// test('intersectsBox', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(zero3.clone(), one3.clone())
	// 	var c = new Box3(one3.clone().negate(), one3.clone())

	// 	assert(a.intersectsBox(a), 'Passed!')
	// 	assert(a.intersectsBox(b), 'Passed!')
	// 	assert(a.intersectsBox(c), 'Passed!')

	// 	assert(b.intersectsBox(a), 'Passed!')
	// 	assert(c.intersectsBox(a), 'Passed!')
	// 	assert(b.intersectsBox(c), 'Passed!')

	// 	b.translate(new Vector3(2, 2, 2))
	// 	assert(!a.intersectsBox(b), 'Passed!')
	// 	assert(!b.intersectsBox(a), 'Passed!')
	// 	assert(!b.intersectsBox(c), 'Passed!')
	// })

	// test('intersectsSphere', () => {
	// 	var a = new Box3(zero3.clone(), one3.clone())
	// 	var b = new Sphere(zero3.clone(), 1)

	// 	assert(a.intersectsSphere(b), 'Passed!')

	// 	b.translate(new Vector3(2, 2, 2))
	// 	assert(!a.intersectsSphere(b), 'Passed!')
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

	// 	assert(!a.intersectsPlane(b), 'Passed!')
	// 	assert(!a.intersectsPlane(c), 'Passed!')
	// 	assert(!a.intersectsPlane(d), 'Passed!')
	// 	assert(!a.intersectsPlane(e), 'Passed!')
	// 	assert(a.intersectsPlane(f), 'Passed!')
	// 	assert(a.intersectsPlane(g), 'Passed!')
	// 	assert(a.intersectsPlane(h), 'Passed!')
	// 	assert(a.intersectsPlane(i), 'Passed!')
	// 	assert(!a.intersectsPlane(j), 'Passed!')
	// })

	// test('intersectsTriangle', () => {
	// 	var a = new Box3(one3.clone(), two3.clone())
	// 	var b = new Triangle(new Vector3(1.5, 1.5, 2.5), new Vector3(2.5, 1.5, 1.5), new Vector3(1.5, 2.5, 1.5))
	// 	var c = new Triangle(new Vector3(1.5, 1.5, 3.5), new Vector3(3.5, 1.5, 1.5), new Vector3(1.5, 1.5, 1.5))
	// 	var d = new Triangle(new Vector3(1.5, 1.75, 3), new Vector3(3, 1.75, 1.5), new Vector3(1.5, 2.5, 1.5))
	// 	var e = new Triangle(new Vector3(1.5, 1.8, 3), new Vector3(3, 1.8, 1.5), new Vector3(1.5, 2.5, 1.5))
	// 	var f = new Triangle(new Vector3(1.5, 2.5, 3), new Vector3(3, 2.5, 1.5), new Vector3(1.5, 2.5, 1.5))

	// 	assert(a.intersectsTriangle(b), 'Passed!')
	// 	assert(a.intersectsTriangle(c), 'Passed!')
	// 	assert(a.intersectsTriangle(d), 'Passed!')
	// 	assert(!a.intersectsTriangle(e), 'Passed!')
	// 	assert(!a.intersectsTriangle(f), 'Passed!')
	// })

	// test('clampPoint', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(one3.clone().negate(), one3.clone())
	// 	var point = new Vector3()

	// 	a.clampPoint(zero3, point)
	// 	assert(point.equals(zero3), 'Passed!')
	// 	a.clampPoint(one3, point)
	// 	assert(point.equals(zero3), 'Passed!')
	// 	a.clampPoint(one3.clone().negate(), point)
	// 	assert(point.equals(zero3), 'Passed!')

	// 	b.clampPoint(new Vector3(2, 2, 2), point)
	// 	assert(point.equals(one3), 'Passed!')
	// 	b.clampPoint(one3, point)
	// 	assert(point.equals(one3), 'Passed!')
	// 	b.clampPoint(zero3, point)
	// 	assert(point.equals(zero3), 'Passed!')
	// 	b.clampPoint(one3.clone().negate(), point)
	// 	assert(point.equals(one3.clone().negate()), 'Passed!')
	// 	b.clampPoint(new Vector3(-2, -2, -2), point)
	// 	assert(point.equals(one3.clone().negate()), 'Passed!')
	// })

	// test('distanceToPoint', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(one3.clone().negate(), one3.clone())

	// 	assert(a.distanceToPoint(new Vector3(0, 0, 0)) == 0, 'Passed!')
	// 	assert(a.distanceToPoint(new Vector3(1, 1, 1)) == Math.sqrt(3), 'Passed!')
	// 	assert(a.distanceToPoint(new Vector3(-1, -1, -1)) == Math.sqrt(3), 'Passed!')

	// 	assert(b.distanceToPoint(new Vector3(2, 2, 2)) == Math.sqrt(3), 'Passed!')
	// 	assert(b.distanceToPoint(new Vector3(1, 1, 1)) == 0, 'Passed!')
	// 	assert(b.distanceToPoint(new Vector3(0, 0, 0)) == 0, 'Passed!')
	// 	assert(b.distanceToPoint(new Vector3(-1, -1, -1)) == 0, 'Passed!')
	// 	assert(b.distanceToPoint(new Vector3(-2, -2, -2)) == Math.sqrt(3), 'Passed!')
	// })

	// test('getBoundingSphere', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(zero3.clone(), one3.clone())
	// 	var c = new Box3(one3.clone().negate(), one3.clone())
	// 	var sphere = new Sphere()

	// 	assert(a.getBoundingSphere(sphere).equals(new Sphere(zero3, 0)), 'Passed!')
	// 	assert(
	// 		b.getBoundingSphere(sphere).equals(new Sphere(one3.clone().multiplyScalar(0.5), Math.sqrt(3) * 0.5)),
	// 		'Passed!'
	// 	)
	// 	assert(c.getBoundingSphere(sphere).equals(new Sphere(zero3, Math.sqrt(12) * 0.5)), 'Passed!')
	// })

	// test('intersect', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(zero3.clone(), one3.clone())
	// 	var c = new Box3(one3.clone().negate(), one3.clone())

	// 	assert(
	// 		a
	// 			.clone()
	// 			.intersect(a)
	// 			.equals(a),
	// 		'Passed!'
	// 	)
	// 	assert(
	// 		a
	// 			.clone()
	// 			.intersect(b)
	// 			.equals(a),
	// 		'Passed!'
	// 	)
	// 	assert(
	// 		b
	// 			.clone()
	// 			.intersect(b)
	// 			.equals(b),
	// 		'Passed!'
	// 	)
	// 	assert(
	// 		a
	// 			.clone()
	// 			.intersect(c)
	// 			.equals(a),
	// 		'Passed!'
	// 	)
	// 	assert(
	// 		b
	// 			.clone()
	// 			.intersect(c)
	// 			.equals(b),
	// 		'Passed!'
	// 	)
	// 	assert(
	// 		c
	// 			.clone()
	// 			.intersect(c)
	// 			.equals(c),
	// 		'Passed!'
	// 	)
	// })

	// test('union', () => {
	// 	var a = new Box3(zero3.clone(), zero3.clone())
	// 	var b = new Box3(zero3.clone(), one3.clone())
	// 	var c = new Box3(one3.clone().negate(), one3.clone())

	// 	assert(
	// 		a
	// 			.clone()
	// 			.union(a)
	// 			.equals(a),
	// 		'Passed!'
	// 	)
	// 	assert(
	// 		a
	// 			.clone()
	// 			.union(b)
	// 			.equals(b),
	// 		'Passed!'
	// 	)
	// 	assert(
	// 		a
	// 			.clone()
	// 			.union(c)
	// 			.equals(c),
	// 		'Passed!'
	// 	)
	// 	assert(
	// 		b
	// 			.clone()
	// 			.union(c)
	// 			.equals(c),
	// 		'Passed!'
	// 	)
	// })

	test('applyMatrix4', () => {
		var a = new Box3(zero3.clone(), zero3.clone())
		var b = new Box3(zero3.clone(), one3.clone())
		var c = new Box3(one3.clone().negate(), one3.clone())
		var d = new Box3(one3.clone().negate(), zero3.clone())

		var m = new Matrix4()
		m.makeTranslation(1, -2, 1)
		var t1 = new Vector3(1, -2, 1)

		assert(compareBox(a.clone().applyMatrix4(m), a.clone().translate(t1)), 'Passed!')
		assert(compareBox(b.clone().applyMatrix4(m), b.clone().translate(t1)), 'Passed!')
		assert(compareBox(c.clone().applyMatrix4(m), c.clone().translate(t1)), 'Passed!')
		assert(compareBox(d.clone().applyMatrix4(m), d.clone().translate(t1)), 'Passed!')
	})

	test('translate', () => {
		var a = new Box3(zero3.clone(), zero3.clone())
		var b = new Box3(zero3.clone(), one3.clone())
		var d = new Box3(one3.clone().negate(), zero3.clone())

		assert(
			a
				.clone()
				.translate(one3)
				.equals(new Box3(one3, one3)),
			'Passed!'
		)
		assert(
			a
				.clone()
				.translate(one3)
				.translate(one3.clone().negate())
				.equals(a),
			'Passed!'
		)
		assert(
			d
				.clone()
				.translate(one3)
				.equals(b),
			'Passed!'
		)
		assert(
			b
				.clone()
				.translate(one3.clone().negate())
				.equals(d),
			'Passed!'
		)
	})

	todo('equals')
})

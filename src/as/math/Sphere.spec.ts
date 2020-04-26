/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / https://github.com/trusktr
 */
import {Box3} from './Box3'
import {Vector3} from './Vector3'
import {Sphere} from './Sphere'
import {Plane} from './Plane'
import {Matrix4} from './Matrix4'
import {zero3, one3, two3, eps} from './Constants.tests'

describe('Sphere', () => {
	test('constructor', () => {
		var a = new Sphere()
		assert(a.center.equals(zero3), 'Passed!')
		assert(a.radius == 0, 'Passed!')

		a = new Sphere(one3.clone(), 1)
		assert(a.center.equals(one3), 'Passed!')
		assert(a.radius == 1, 'Passed!')
	})

	// PUBLIC STUFF
	todo('isSphere')

	test('set', () => {
		var a = new Sphere()
		assert(a.center.equals(zero3), 'Passed!')
		assert(a.radius == 0, 'Passed!')

		a.set(one3, 1)
		assert(a.center.equals(one3), 'Passed!')
		assert(a.radius == 1, 'Passed!')
	})

	test('setFromPoints', () => {
		var a = new Sphere()
		var expectedCenter = new Vector3(0.9330126941204071, 0, 0)
		var expectedRadius = 1.3676668773461689
		var optionalCenter = new Vector3(1, 1, 1)
		var points: Array<Vector3> = [
			new Vector3(1, 1, 0),
			new Vector3(1, 1, 0),
			new Vector3(1, 1, 0),
			new Vector3(1, 1, 0),
			new Vector3(1, 1, 0),
			new Vector3(0.8660253882408142, 0.5, 0),
			new Vector3(-0, 0.5, 0.8660253882408142),
			new Vector3(1.8660253882408142, 0.5, 0),
			new Vector3(0, 0.5, -0.8660253882408142),
			new Vector3(0.8660253882408142, 0.5, -0),
			new Vector3(0.8660253882408142, -0.5, 0),
			new Vector3(-0, -0.5, 0.8660253882408142),
			new Vector3(1.8660253882408142, -0.5, 0),
			new Vector3(0, -0.5, -0.8660253882408142),
			new Vector3(0.8660253882408142, -0.5, -0),
			new Vector3(-0, -1, 0),
			new Vector3(-0, -1, 0),
			new Vector3(0, -1, 0),
			new Vector3(0, -1, -0),
			new Vector3(-0, -1, -0),
		]

		a.setFromPoints(points)
		assert(Math.abs(a.center.x - expectedCenter.x) <= eps, 'Default center: check center.x')
		assert(Math.abs(a.center.y - expectedCenter.y) <= eps, 'Default center: check center.y')
		assert(Math.abs(a.center.z - expectedCenter.z) <= eps, 'Default center: check center.z')
		assert(Math.abs(a.radius - expectedRadius) <= eps, 'Default center: check radius')

		expectedRadius = 2.5946195770400102
		a.setFromPoints(points, optionalCenter)
		assert(Math.abs(a.center.x - optionalCenter.x) <= eps, 'Optional center: check center.x')
		assert(Math.abs(a.center.y - optionalCenter.y) <= eps, 'Optional center: check center.y')
		assert(Math.abs(a.center.z - optionalCenter.z) <= eps, 'Optional center: check center.z')
		assert(Math.abs(a.radius - expectedRadius) <= eps, 'Optional center: check radius')
	})

	todo('clone')

	test('copy', () => {
		var a = new Sphere(one3.clone(), 1)
		var b = new Sphere()
		b.copy(a)

		assert(b.center.equals(one3), 'Passed!')
		assert(b.radius == 1, 'Passed!')

		// ensure that it is a true copy
		a.center = zero3
		a.radius = 0
		assert(b.center.equals(one3), 'Passed!')
		assert(b.radius == 1, 'Passed!')
	})

	// test('empty', () => {
	// 	var a = new Sphere()
	// 	assert(a.empty(), 'Passed!')

	// 	a.set(one3, 1)
	// 	assert(!a.empty(), 'Passed!')
	// })

	// test('containsPoint', () => {
	// 	var a = new Sphere(one3.clone(), 1)

	// 	assert(!a.containsPoint(zero3), 'Passed!')
	// 	assert(a.containsPoint(one3), 'Passed!')
	// })

	// test('distanceToPoint', () => {
	// 	var a = new Sphere(one3.clone(), 1)

	// 	assert(a.distanceToPoint(zero3) - 0.732 < 0.001, 'Passed!')
	// 	assert(a.distanceToPoint(one3) === -1, 'Passed!')
	// })

	// test('intersectsSphere', () => {
	// 	var a = new Sphere(one3.clone(), 1)
	// 	var b = new Sphere(zero3.clone(), 1)
	// 	var c = new Sphere(zero3.clone(), 0.25)

	// 	assert(a.intersectsSphere(b), 'Passed!')
	// 	assert(!a.intersectsSphere(c), 'Passed!')
	// })

	// test('intersectsBox', () => {
	// 	var a = new Sphere()
	// 	var b = new Sphere(new Vector3(-5, -5, -5))
	// 	var box = new Box3(zero3, one3)

	// 	assert.strictEqual(a.intersectsBox(box), true, 'Check default sphere')
	// 	assert.strictEqual(b.intersectsBox(box), false, 'Check shifted sphere')
	// })

	// test('intersectsPlane', () => {
	// 	var a = new Sphere(zero3.clone(), 1)
	// 	var b = new Plane(new Vector3(0, 1, 0), 1)
	// 	var c = new Plane(new Vector3(0, 1, 0), 1.25)
	// 	var d = new Plane(new Vector3(0, -1, 0), 1.25)

	// 	assert(a.intersectsPlane(b), 'Passed!')
	// 	assert(!a.intersectsPlane(c), 'Passed!')
	// 	assert(!a.intersectsPlane(d), 'Passed!')
	// })

	// test('clampPoint', () => {
	// 	var a = new Sphere(one3.clone(), 1)
	// 	var point = new Vector3()

	// 	a.clampPoint(new Vector3(1, 1, 3), point)
	// 	assert(point.equals(new Vector3(1, 1, 2)), 'Passed!')
	// 	a.clampPoint(new Vector3(1, 1, -3), point)
	// 	assert(point.equals(new Vector3(1, 1, 0)), 'Passed!')
	// })

	test('getBoundingBox', () => {
		var a = new Sphere(one3.clone(), 1)
		var aabb = new Box3()

		a.getBoundingBox(aabb)
		assert(aabb.equals(new Box3(zero3, two3)), 'Passed!')

		a.set(zero3, 0)
		a.getBoundingBox(aabb)
		assert(aabb.equals(new Box3(zero3, zero3)), 'Passed!')
	})

	test('applyMatrix4', () => {
		var a = new Sphere(one3.clone(), 1)
		var m = new Matrix4()
		m.makeTranslation(1, -2, 1)
		var aabb1 = new Box3()
		var aabb2 = new Box3()

		a.clone()
			.applyMatrix4(m)
			.getBoundingBox(aabb1)
		a.getBoundingBox(aabb2)

		assert(aabb1.equals(aabb2.applyMatrix4(m)), 'Passed!')
	})

	// test('translate', () => {
	// 	var a = new Sphere(one3.clone(), 1)

	// 	a.translate(one3.clone().negate())
	// 	assert(a.center.equals(zero3), 'Passed!')
	// })

	test('equals', () => {
		var a = new Sphere()
		var b = new Sphere(new Vector3(1, 0, 0))
		var c = new Sphere(new Vector3(1, 0, 0), 1.0)

		expect(a.equals(b)).toBe(false)
		expect(a.equals(c)).toBe(false)
		expect(b.equals(c)).toBe(false)

		a.copy(b)
		expect(a.equals(b)).toBe(true)
	})
})

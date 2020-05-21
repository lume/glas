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
		expect(a.center.equals(zero3)).toBeTruthy()
		expect(a.radius).toBe(0)

		a = new Sphere(one3.clone(), 1)
		expect(a.center.equals(one3)).toBeTruthy()
		expect(a.radius).toBe(1)
	})

	// PUBLIC STUFF
	todo('isSphere')

	test('set', () => {
		var a = new Sphere()
		expect(a.center.equals(zero3)).toBeTruthy()
		expect(a.radius).toBe(0)

		a.set(one3, 1)
		expect(a.center.equals(one3)).toBeTruthy()
		expect(a.radius).toBe(1)
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
		expect(Math.abs(a.center.x - expectedCenter.x)).toBeLessThanOrEqual(eps)
		expect(Math.abs(a.center.y - expectedCenter.y)).toBeLessThanOrEqual(eps)
		expect(Math.abs(a.center.z - expectedCenter.z)).toBeLessThanOrEqual(eps)
		expect(Math.abs(a.radius - expectedRadius)).toBeLessThanOrEqual(eps)

		expectedRadius = 2.5946195770400102
		a.setFromPoints(points, optionalCenter)
		expect(Math.abs(a.center.x - optionalCenter.x)).toBeLessThanOrEqual(eps)
		expect(Math.abs(a.center.y - optionalCenter.y)).toBeLessThanOrEqual(eps)
		expect(Math.abs(a.center.z - optionalCenter.z)).toBeLessThanOrEqual(eps)
		expect(Math.abs(a.radius - expectedRadius)).toBeLessThanOrEqual(eps)
	})

	todo('clone')

	test('copy', () => {
		var a = new Sphere(one3.clone(), 1)
		var b = new Sphere()
		b.copy(a)

		expect(b.center.equals(one3)).toBeTruthy()
		expect(b.radius).toBe(1)

		// ensure that it is a true copy
		a.center = zero3
		a.radius = 0
		expect(b.center.equals(one3)).toBeTruthy()
		expect(b.radius).toBe(1)
	})

	// test('empty', () => {
	// 	var a = new Sphere()
	// 	expect(a.empty()).toBeTruthy()

	// 	a.set(one3, 1)
	// 	expect(a.empty()).toBeFalsy()
	// })

	// test('containsPoint', () => {
	// 	var a = new Sphere(one3.clone(), 1)

	// 	expect(a.containsPoint(zero3)).toBeFalsy()
	// 	expect(a.containsPoint(one3)).toBeTruthy()
	// })

	// test('distanceToPoint', () => {
	// 	var a = new Sphere(one3.clone(), 1)

	// 	expect(a.distanceToPoint(zero3) - 0.732).toBeLessThanOrEqual(0.001)
	// 	expect(a.distanceToPoint(one3)).toBe(-1)
	// })

	// test('intersectsSphere', () => {
	// 	var a = new Sphere(one3.clone(), 1)
	// 	var b = new Sphere(zero3.clone(), 1)
	// 	var c = new Sphere(zero3.clone(), 0.25)

	// 	expect(a.intersectsSphere(b)).toBeTruthy()
	// 	expect(a.intersectsSphere(c)).toBeFalsy()
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

	// 	expect(a.intersectsPlane(b)).toBeTruthy()
	// 	expect(a.intersectsPlane(c)).toBeFalsy()
	// 	expect(a.intersectsPlane(d)).toBeFalsy()
	// })

	// test('clampPoint', () => {
	// 	var a = new Sphere(one3.clone(), 1)
	// 	var point = new Vector3()

	// 	a.clampPoint(new Vector3(1, 1, 3), point)
	// 	expect(point.equals(new Vector3(1, 1, 2))).toBeTruthy()
	// 	a.clampPoint(new Vector3(1, 1, -3), point)
	// 	expect(point.equals(new Vector3(1, 1, 0))).toBeTruthy()
	// })

	test('getBoundingBox', () => {
		var a = new Sphere(one3.clone(), 1)
		var aabb = new Box3()

		a.getBoundingBox(aabb)
		expect(aabb.equals(new Box3(zero3, two3))).toBeTruthy()

		a.set(zero3, 0)
		a.getBoundingBox(aabb)
		expect(aabb.equals(new Box3(zero3, zero3))).toBeTruthy()
	})

	test('applyMatrix4', () => {
		var a = new Sphere(one3.clone(), 1)
		var m = new Matrix4()
		m.makeTranslation(1, -2, 1)
		var aabb1 = new Box3()
		var aabb2 = new Box3()

		a.clone().applyMatrix4(m).getBoundingBox(aabb1)
		a.getBoundingBox(aabb2)

		expect(aabb1.equals(aabb2.applyMatrix4(m))).toBeTruthy()
	})

	// test('translate', () => {
	// 	var a = new Sphere(one3.clone(), 1)

	// 	a.translate(one3.clone().negate())
	// 	expect(a.center.equals(zero3)).toBeTruthy()
	// })

	// test('equals', () => {
	// 	var a = new Sphere()
	// 	var b = new Sphere(new Vector3(1, 0, 0))
	// 	var c = new Sphere(new Vector3(1, 0, 0), 1.0)

	// 	assert.strictEqual(a.equals(b), false, 'a does not equal b')
	// 	assert.strictEqual(a.equals(c), false, 'a does not equal c')
	// 	assert.strictEqual(b.equals(c), false, 'b does not equal c')

	// 	a.copy(b)
	// 	assert.strictEqual(a.equals(b), true, 'a equals b after copy()')
	// })
})

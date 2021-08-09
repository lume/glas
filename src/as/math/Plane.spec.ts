/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / https://github.com/trusktr
 */
import { Plane } from './Plane'
import { Vector3 } from './Vector3'
// import {Line3} from './Line3'
// import {Sphere} from './Sphere'
// import {Matrix4} from './Matrix4'
import { x, y, z, w, zero3, one3 } from './test-constants'

// function comparePlane(a, b, threshold) {
// 	threshold = threshold || 0.0001
// 	return a.normal.distanceTo(b.normal) < threshold && Mathf.abs(a.constant - b.constant) < threshold
// }

describe('Plane', () => {
	// INSTANCING
	test('constructor', () => {
		let a = new Plane()
		expect(a.normal.x).toBe(1)
		expect(a.normal.y).toBe(0)
		expect(a.normal.z).toBe(0)
		expect(a.constant).toBe(0)

		a = new Plane(one3.clone(), 0)
		expect(a.normal.x).toBe(1)
		expect(a.normal.y).toBe(1)
		expect(a.normal.z).toBe(1)
		expect(a.constant).toBe(0)

		a = new Plane(one3.clone(), 1)
		expect(a.normal.x).toBe(1)
		expect(a.normal.y).toBe(1)
		expect(a.normal.z).toBe(1)
		expect(a.constant).toBe(1)
	})

	// test('set', () => {
	// 	var a = new Plane()
	// 	expect(a.normal.x).toBe(1)
	// 	expect(a.normal.y).toBe(0)
	// 	expect(a.normal.z).toBe(0)
	// 	expect(a.constant).toBe(0)

	// 	var b = a.clone().set(new Vector3(x, y, z), w)
	// 	expect(b.normal.x).toBe(x)
	// 	expect(b.normal.y).toBe(y)
	// 	expect(b.normal.z).toBe(z)
	// 	expect(b.constant).toBe(w)
	// })

	test('setComponents', () => {
		const a = new Plane()
		expect(a.normal.x).toBe(1)
		expect(a.normal.y).toBe(0)
		expect(a.normal.z).toBe(0)
		expect(a.constant).toBe(0)

		const b = a.clone().setComponents(x, y, z, w)
		expect(b.normal.x).toBe(x)
		expect(b.normal.y).toBe(y)
		expect(b.normal.z).toBe(z)
		expect(b.constant).toBe(w)
	})

	test('setFromNormalAndCoplanarPoint', () => {
		const normal = one3.clone().normalize()
		const a = new Plane().setFromNormalAndCoplanarPoint(normal, zero3)

		expect(a.normal.equals(normal)).toBeTruthy()
		expect(a.constant).toBe(0)
	})

	// test('setFromCoplanarPoints', () => {
	// 	var a = new Plane()
	// 	var v1 = new Vector3(2.0, 0.5, 0.25)
	// 	var v2 = new Vector3(2.0, -0.5, 1.25)
	// 	var v3 = new Vector3(2.0, -3.5, 2.2)
	// 	var normal = new Vector3(1, 0, 0)
	// 	var constant = -2

	// 	a.setFromCoplanarPoints(v1, v2, v3)

	// 	expect(a.normal.equals(normal)).toBeTruthy()
	// 	assert.strictEqual(a.constant, constant, 'Check constant')
	// })

	test('clone', () => {
		const a = new Plane(new Vector3(x, y, z), w)
		const b = a.clone()
		expect(b.normal.x).toBe(x)
		expect(b.normal.y).toBe(y)
		expect(b.normal.z).toBe(z)
		expect(b.constant).toBe(w)
		expect(a.normal).not.toBe(b.normal)

		// ensure that it is a true clone
		a.normal.x = 0
		a.normal.y = -1
		a.normal.z = -2
		a.constant = -3
		expect(b.normal.x).toBe(x)
		expect(b.normal.y).toBe(y)
		expect(b.normal.z).toBe(z)
		expect(b.constant).toBe(w)
	})

	test('copy', () => {
		const a = new Plane(new Vector3(x, y, z), w)
		const b = new Plane()
		b.copy(a)
		expect(b.normal.x).toBe(x)
		expect(b.normal.y).toBe(y)
		expect(b.normal.z).toBe(z)
		expect(b.constant).toBe(w)
		expect(a.normal).not.toBe(b.normal)

		// ensure that it is a true copy
		a.normal.x = 0
		a.normal.y = -1
		a.normal.z = -2
		a.constant = -3
		expect(b.normal.x).toBe(x)
		expect(b.normal.y).toBe(y)
		expect(b.normal.z).toBe(z)
		expect(b.constant).toBe(w)
	})

	test('normalize', () => {
		const a = new Plane(new Vector3(2, 0, 0), 2)

		a.normalize()
		expect(a.normal.length()).toBe(1)
		expect(a.normal.equals(new Vector3(1, 0, 0))).toBeTruthy()
		expect(a.constant).toBe(1)
	})

	// test('negate/distanceToPoint', () => {
	// 	var a = new Plane(new Vector3(2, 0, 0), -2)

	// 	a.normalize()
	// 	expect(a.distanceToPoint(new Vector3(4, 0, 0))).toBe(3)
	// 	expect(a.distanceToPoint(new Vector3(1, 0, 0))).toBe(0)

	// 	a.negate()
	// 	expect(a.distanceToPoint(new Vector3(4, 0, 0))).toBe(-3)
	// 	expect(a.distanceToPoint(new Vector3(1, 0, 0))).toBe(0)
	// })

	test('distanceToPoint', () => {
		const a = new Plane(new Vector3(2, 0, 0), -2)
		const point = new Vector3()

		a.normalize().projectPoint(zero3.clone(), point)
		expect(a.distanceToPoint(point)).toBe(0)
		expect(a.distanceToPoint(new Vector3(4, 0, 0))).toBe(3)
	})

	// test('distanceToSphere', () => {
	// 	var a = new Plane(new Vector3(1, 0, 0), 0)

	// 	var b = new Sphere(new Vector3(2, 0, 0), 1)

	// 	expect(a.distanceToSphere(b)).toBe(1)

	// 	a.set(new Vector3(1, 0, 0), 2)
	// 	expect(a.distanceToSphere(b)).toBe(3)
	// 	a.set(new Vector3(1, 0, 0), -2)
	// 	expect(a.distanceToSphere(b)).toBe(-1)
	// })

	test('projectPoint', () => {
		let a = new Plane(new Vector3(1, 0, 0), 0)
		const point = new Vector3()

		a.projectPoint(new Vector3(10, 0, 0), point)
		expect(point.equals(zero3)).toBeTruthy()
		a.projectPoint(new Vector3(-10, 0, 0), point)
		expect(point.equals(zero3)).toBeTruthy()

		a = new Plane(new Vector3(0, 1, 0), -1)
		a.projectPoint(new Vector3(0, 0, 0), point)
		expect(point.equals(new Vector3(0, 1, 0))).toBeTruthy()
		a.projectPoint(new Vector3(0, 1, 0), point)
		expect(point.equals(new Vector3(0, 1, 0))).toBeTruthy()
	})

	// test('isInterestionLine/intersectLine', () => {
	// 	var a = new Plane(new Vector3(1, 0, 0), 0)
	// 	var point = new Vector3()

	// 	var l1 = new Line3(new Vector3(-10, 0, 0), new Vector3(10, 0, 0))
	// 	a.intersectLine(l1, point)
	// 	expect(point.equals(new Vector3(0, 0, 0))).toBeTruthy()

	// 	var a = new Plane(new Vector3(1, 0, 0), -3)
	// 	a.intersectLine(l1, point)
	// 	expect(point.equals(new Vector3(3, 0, 0))).toBeTruthy()
	// })

	// todo('intersectsBox', () => {
	// 	expect(false).toBeTruthy()
	// })

	// todo('intersectsSphere', () => {
	// 	expect(false).toBeTruthy()
	// })

	// test('coplanarPoint', () => {
	// 	var point = new Vector3()

	// 	var a = new Plane(new Vector3(1, 0, 0), 0)
	// 	a.coplanarPoint(point)
	// 	expect(a.distanceToPoint(point)).toBe(0)

	// 	var a = new Plane(new Vector3(0, 1, 0), -1)
	// 	a.coplanarPoint(point)
	// 	expect(a.distanceToPoint(point)).toBe(0)
	// })

	// test('applyMatrix4/translate', () => {
	// 	var a = new Plane(new Vector3(1, 0, 0), 0)

	// 	var m = new Matrix4()
	// 	m.makeRotationZ(Mathf.PI * 0.5)

	// 	expect(comparePlane(a.clone().applyMatrix4(m), new Plane(new Vector3(0, 1, 0), 0))).toBeTruthy()

	// 	var a = new Plane(new Vector3(0, 1, 0), -1)
	// 	expect(comparePlane(a.clone().applyMatrix4(m), new Plane(new Vector3(-1, 0, 0), -1))).toBeTruthy()

	// 	m.makeTranslation(1, 1, 1)
	// 	expect(comparePlane(a.clone().applyMatrix4(m), a.clone().translate(new Vector3(1, 1, 1)))).toBeTruthy()
	// })

	// test('equals', () => {
	// 	var a = new Plane(new Vector3(1, 0, 0), 0)
	// 	var b = new Plane(new Vector3(1, 0, 0), 1)
	// 	var c = new Plane(new Vector3(0, 1, 0), 0)

	// 	expect(a.normal.equals(b.normal)).toBeTruthy()
	// 	assert.notOk(a.normal.equals(c.normal), 'Normals: not equal')

	// 	assert.notStrictEqual(a.constant, b.constant, 'Constants: not equal')
	// 	assert.strictEqual(a.constant, c.constant, 'Constants: equal')

	// 	assert.notOk(a.equals(b), 'Planes: not equal')
	// 	assert.notOk(a.equals(c), 'Planes: not equal')

	// 	a.copy(b)
	// 	expect(a.normal.equals(b.normal)).toBeTruthy()
	// 	assert.strictEqual(a.constant, b.constant, 'Constants after copy(): equal')
	// 	expect(a.equals(b)).toBeTruthy()
	// })
})

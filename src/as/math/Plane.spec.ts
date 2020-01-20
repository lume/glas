/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / https://github.com/trusktr
 */
import {Plane} from './Plane'
import {Vector3} from './Vector3'
// import {Line3} from './Line3'
// import {Sphere} from './Sphere'
// import {Matrix4} from './Matrix4'
import {x, y, z, w, zero3, one3} from './Constants.tests'

// function comparePlane(a, b, threshold) {
// 	threshold = threshold || 0.0001
// 	return a.normal.distanceTo(b.normal) < threshold && Math.abs(a.constant - b.constant) < threshold
// }

describe('Plane', () => {
	// INSTANCING
	test('constructor', () => {
		let a = new Plane()
		assert(a.normal.x == 1, 'Passed!')
		assert(a.normal.y == 0, 'Passed!')
		assert(a.normal.z == 0, 'Passed!')
		assert(a.constant == 0, 'Passed!')

		a = new Plane(one3.clone(), 0)
		assert(a.normal.x == 1, 'Passed!')
		assert(a.normal.y == 1, 'Passed!')
		assert(a.normal.z == 1, 'Passed!')
		assert(a.constant == 0, 'Passed!')

		a = new Plane(one3.clone(), 1)
		assert(a.normal.x == 1, 'Passed!')
		assert(a.normal.y == 1, 'Passed!')
		assert(a.normal.z == 1, 'Passed!')
		assert(a.constant == 1, 'Passed!')
	})

	// test('set', () => {
	// 	var a = new Plane()
	// 	assert(a.normal.x == 1, 'Passed!')
	// 	assert(a.normal.y == 0, 'Passed!')
	// 	assert(a.normal.z == 0, 'Passed!')
	// 	assert(a.constant == 0, 'Passed!')

	// 	var b = a.clone().set(new Vector3(x, y, z), w)
	// 	assert(b.normal.x == x, 'Passed!')
	// 	assert(b.normal.y == y, 'Passed!')
	// 	assert(b.normal.z == z, 'Passed!')
	// 	assert(b.constant == w, 'Passed!')
	// })

	test('setComponents', () => {
		var a = new Plane()
		assert(a.normal.x == 1, 'Passed!')
		assert(a.normal.y == 0, 'Passed!')
		assert(a.normal.z == 0, 'Passed!')
		assert(a.constant == 0, 'Passed!')

		var b = a.clone().setComponents(x, y, z, w)
		assert(b.normal.x == x, 'Passed!')
		assert(b.normal.y == y, 'Passed!')
		assert(b.normal.z == z, 'Passed!')
		assert(b.constant == w, 'Passed!')
	})

	// test('setFromNormalAndCoplanarPoint', () => {
	// 	var normal = one3.clone().normalize()
	// 	var a = new Plane().setFromNormalAndCoplanarPoint(normal, zero3)

	// 	assert(a.normal.equals(normal), 'Passed!')
	// 	assert(a.constant == 0, 'Passed!')
	// })

	// test('setFromCoplanarPoints', () => {
	// 	var a = new Plane()
	// 	var v1 = new Vector3(2.0, 0.5, 0.25)
	// 	var v2 = new Vector3(2.0, -0.5, 1.25)
	// 	var v3 = new Vector3(2.0, -3.5, 2.2)
	// 	var normal = new Vector3(1, 0, 0)
	// 	var constant = -2

	// 	a.setFromCoplanarPoints(v1, v2, v3)

	// 	assert(a.normal.equals(normal), 'Check normal')
	// 	assert.strictEqual(a.constant, constant, 'Check constant')
	// })

	test('clone', () => {
		const a = new Plane(new Vector3(x, y, z), w)
		const b = a.clone()
		assert(b.normal.x == x, 'Passed!')
		assert(b.normal.y == y, 'Passed!')
		assert(b.normal.z == z, 'Passed!')
		assert(b.constant == w, 'Passed!')
		assert(a.normal != b.normal, 'normal vectors should be different references')

		// ensure that it is a true clone
		a.normal.x = 0
		a.normal.y = -1
		a.normal.z = -2
		a.constant = -3
		assert(b.normal.x == x, 'Passed!')
		assert(b.normal.y == y, 'Passed!')
		assert(b.normal.z == z, 'Passed!')
		assert(b.constant == w, 'Passed!')
	})

	test('copy', () => {
		var a = new Plane(new Vector3(x, y, z), w)
		var b = new Plane()
		b.copy(a)
		assert(b.normal.x == x, 'Passed!')
		assert(b.normal.y == y, 'Passed!')
		assert(b.normal.z == z, 'Passed!')
		assert(b.constant == w, 'Passed!')
		assert(a.normal != b.normal, 'normal vectors should be different references')

		// ensure that it is a true copy
		a.normal.x = 0
		a.normal.y = -1
		a.normal.z = -2
		a.constant = -3
		assert(b.normal.x == x, 'Passed!')
		assert(b.normal.y == y, 'Passed!')
		assert(b.normal.z == z, 'Passed!')
		assert(b.constant == w, 'Passed!')
	})

	test('normalize', () => {
		var a = new Plane(new Vector3(2, 0, 0), 2)

		a.normalize()
		assert(a.normal.length() == 1, 'Passed!')
		assert(a.normal.equals(new Vector3(1, 0, 0)), 'Passed!')
		assert(a.constant == 1, 'Passed!')
	})

	// test('negate/distanceToPoint', () => {
	// 	var a = new Plane(new Vector3(2, 0, 0), -2)

	// 	a.normalize()
	// 	assert(a.distanceToPoint(new Vector3(4, 0, 0)) === 3, 'Passed!')
	// 	assert(a.distanceToPoint(new Vector3(1, 0, 0)) === 0, 'Passed!')

	// 	a.negate()
	// 	assert(a.distanceToPoint(new Vector3(4, 0, 0)) === -3, 'Passed!')
	// 	assert(a.distanceToPoint(new Vector3(1, 0, 0)) === 0, 'Passed!')
	// })

	test('distanceToPoint', () => {
		var a = new Plane(new Vector3(2, 0, 0), -2)
		var point = new Vector3()

		a.normalize().projectPoint(zero3.clone(), point)
		assert(a.distanceToPoint(point) === 0, 'Passed!')
		assert(a.distanceToPoint(new Vector3(4, 0, 0)) === 3, 'Passed!')
	})

	// test('distanceToSphere', () => {
	// 	var a = new Plane(new Vector3(1, 0, 0), 0)

	// 	var b = new Sphere(new Vector3(2, 0, 0), 1)

	// 	assert(a.distanceToSphere(b) === 1, 'Passed!')

	// 	a.set(new Vector3(1, 0, 0), 2)
	// 	assert(a.distanceToSphere(b) === 3, 'Passed!')
	// 	a.set(new Vector3(1, 0, 0), -2)
	// 	assert(a.distanceToSphere(b) === -1, 'Passed!')
	// })

	test('projectPoint', () => {
		let a = new Plane(new Vector3(1, 0, 0), 0)
		const point = new Vector3()

		a.projectPoint(new Vector3(10, 0, 0), point)
		assert(point.equals(zero3), 'Passed!')
		a.projectPoint(new Vector3(-10, 0, 0), point)
		assert(point.equals(zero3), 'Passed!')

		a = new Plane(new Vector3(0, 1, 0), -1)
		a.projectPoint(new Vector3(0, 0, 0), point)
		assert(point.equals(new Vector3(0, 1, 0)), 'Passed!')
		a.projectPoint(new Vector3(0, 1, 0), point)
		assert(point.equals(new Vector3(0, 1, 0)), 'Passed!')
	})

	// test('isInterestionLine/intersectLine', () => {
	// 	var a = new Plane(new Vector3(1, 0, 0), 0)
	// 	var point = new Vector3()

	// 	var l1 = new Line3(new Vector3(-10, 0, 0), new Vector3(10, 0, 0))
	// 	a.intersectLine(l1, point)
	// 	assert(point.equals(new Vector3(0, 0, 0)), 'Passed!')

	// 	var a = new Plane(new Vector3(1, 0, 0), -3)
	// 	a.intersectLine(l1, point)
	// 	assert(point.equals(new Vector3(3, 0, 0)), 'Passed!')
	// })

	// todo('intersectsBox', () => {
	// 	assert(false, "everything's gonna be alright")
	// })

	// todo('intersectsSphere', () => {
	// 	assert(false, "everything's gonna be alright")
	// })

	// test('coplanarPoint', () => {
	// 	var point = new Vector3()

	// 	var a = new Plane(new Vector3(1, 0, 0), 0)
	// 	a.coplanarPoint(point)
	// 	assert(a.distanceToPoint(point) === 0, 'Passed!')

	// 	var a = new Plane(new Vector3(0, 1, 0), -1)
	// 	a.coplanarPoint(point)
	// 	assert(a.distanceToPoint(point) === 0, 'Passed!')
	// })

	// test('applyMatrix4/translate', () => {
	// 	var a = new Plane(new Vector3(1, 0, 0), 0)

	// 	var m = new Matrix4()
	// 	m.makeRotationZ(Math.PI * 0.5)

	// 	assert(comparePlane(a.clone().applyMatrix4(m), new Plane(new Vector3(0, 1, 0), 0)), 'Passed!')

	// 	var a = new Plane(new Vector3(0, 1, 0), -1)
	// 	assert(comparePlane(a.clone().applyMatrix4(m), new Plane(new Vector3(-1, 0, 0), -1)), 'Passed!')

	// 	m.makeTranslation(1, 1, 1)
	// 	assert(comparePlane(a.clone().applyMatrix4(m), a.clone().translate(new Vector3(1, 1, 1))), 'Passed!')
	// })

	// test('equals', () => {
	// 	var a = new Plane(new Vector3(1, 0, 0), 0)
	// 	var b = new Plane(new Vector3(1, 0, 0), 1)
	// 	var c = new Plane(new Vector3(0, 1, 0), 0)

	// 	assert(a.normal.equals(b.normal), 'Normals: equal')
	// 	assert.notOk(a.normal.equals(c.normal), 'Normals: not equal')

	// 	assert.notStrictEqual(a.constant, b.constant, 'Constants: not equal')
	// 	assert.strictEqual(a.constant, c.constant, 'Constants: equal')

	// 	assert.notOk(a.equals(b), 'Planes: not equal')
	// 	assert.notOk(a.equals(c), 'Planes: not equal')

	// 	a.copy(b)
	// 	assert(a.normal.equals(b.normal), 'Normals after copy(): equal')
	// 	assert.strictEqual(a.constant, b.constant, 'Constants after copy(): equal')
	// 	assert(a.equals(b), 'Planes after copy(): equal')
	// })
})

/* global QUnit */

import { OrthographicCamera } from './OrthographicCamera'

describe('Cameras', () => {
	describe('OrthographicCamera', () => {
		// INHERITANCE
		// Not needed, we can delete this, we don't need to test that `class Foo extends Bar` works, we assume the language works.
		// todo('Extending')

		// INSTANCING
		// Not needed, we can delete this, we don't need to test that `new Foo` works, this will be required in all other tests anyway.
		// todo('Instancing')

		// ^ NOTE, the Extending and Instancing tests were a thing of long ago,
		// when JS has only functions, Three.js was sometimes testing that
		// inheritance was done properly. Nowadays, we trust `class` syntax.

		// PUBLIC STUFF
		todo('isOrthographicCamera')
		todo('copy')

		// TODO this needs to be done or we won't know if it works
		todo('setViewOffset')

		// TODO this needs to be done or we won't know if it works
		todo('clearViewOffset')

		test('updateProjectionMatrix', () => {
			const left: f32 = -1
			const right: f32 = 1
			const top: f32 = 1
			const bottom: f32 = -1
			const near: f32 = 1
			const far: f32 = 3
			const cam = new OrthographicCamera(left, right, top, bottom, near, far)

			// updateProjectionMatrix is called in constructor
			const pMatrix = cam.projectionMatrix.elements

			// orthographic projection is given my the 4x4 Matrix
			// 2/r-l		0			 0		-(l+r/r-l)
			//   0		2/t-b		 0		-(t+b/t-b)
			//   0			0		-2/f-n	-(f+n/f-n)
			//   0			0			 0				1

			expect(pMatrix[0]).toBe(2 / (right - left), 'm[0,0] === 2 / (r - l)')
			expect(pMatrix[5]).toBe(2 / (top - bottom), 'm[1,1] === 2 / (t - b)')
			expect(pMatrix[10]).toBe(-2 / (far - near), 'm[2,2] === -2 / (f - n)')
			expect(pMatrix[12]).toBe(-((right + left) / (right - left)), 'm[3,0] === -(r+l/r-l)')
			expect(pMatrix[13]).toBe(-((top + bottom) / (top - bottom)), 'm[3,1] === -(t+b/b-t)')
			expect(pMatrix[14]).toBe(-((far + near) / (far - near)), 'm[3,2] === -(f+n/f-n)')
		})

		todo('toJSON')

		// v TODO

		// OTHERS
		// TODO: no no no clone is a camera methods that relied to copy method
		// QUnit.test('clone', assert => {
		// 	var left = -1.5,
		// 		right = 1.5,
		// 		top = 1,
		// 		bottom = -1,
		// 		near = 0.1,
		// 		far = 42
		// 	var cam = new OrthographicCamera(left, right, top, bottom, near, far)

		// 	var clonedCam = cam.clone()

		// 	assert.ok(cam.left === clonedCam.left, 'left is equal')
		// 	assert.ok(cam.right === clonedCam.right, 'right is equal')
		// 	assert.ok(cam.top === clonedCam.top, 'top is equal')
		// 	assert.ok(cam.bottom === clonedCam.bottom, 'bottom is equal')
		// 	assert.ok(cam.near === clonedCam.near, 'near is equal')
		// 	assert.ok(cam.far === clonedCam.far, 'far is equal')
		// 	assert.ok(cam.zoom === clonedCam.zoom, 'zoom is equal')
		// })
	})
})

/**
 * @author simonThiele / https://github.com/simonThiele
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */
// import {Camera} from './Camera'
// import {Vector3} from '../math/Vector3'

describe('Cameras', () => {
	describe('Camera', () => {
		// INHERITANCE
		todo('Extending')

		// INSTANCING
		todo('Instancing')

		// PUBLIC STUFF
		todo('isCamera')
		todo('copy')
		todo('getWorldDirection')
		todo('updateMatrixWorld')

		// test('clone', () => {
		// 	var cam = new Camera()

		// 	// fill the matrices with any nonsense values just to see if they get copied
		// 	cam.matrixWorldInverse.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
		// 	cam.projectionMatrix.set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)

		// 	var clonedCam = cam.clone()

		// 	// TODO: Uuuummmhhh DO NOT relie equality on object methods !
		// 	// TODO: What's append if matrix.equal is wrongly implemented ???
		// 	// TODO: this MUST be check by assert
		// 	assert(cam.matrixWorldInverse.equals(clonedCam.matrixWorldInverse), 'matrixWorldInverse is equal')
		// 	assert(cam.projectionMatrix.equals(clonedCam.projectionMatrix), 'projectionMatrix is equal')
		// })

		// OTHERS
		// TODO: this should not be here !!! This is Object3D stuff !!!
		// test('lookAt', () => {
		// 	var cam = new Camera()
		// 	cam.lookAt(new Vector3(0, 1, -1))

		// 	assert(cam.rotation.x * (180 / Mathf.PI) == 45, 'x is equal')
		// })
	})
})

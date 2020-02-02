/**
 * @author simonThiele / https://github.com/simonThiele
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */
import {PerspectiveCamera} from './PerspectiveCamera'
import {Matrix4, matrixEquals4} from '../math/Matrix4'

describe('Cameras', () => {
	describe('PerspectiveCamera', () => {
		// INHERITANCE
		todo('Extending')

		// INSTANCING
		todo('Instancing')

		// PUBLIC STUFF
		todo('isPerspectiveCamera')
		todo('copy')
		todo('setFocalLength')
		todo('getFocalLength')
		todo('getEffectiveFOV')
		todo('getFilmWidth')
		todo('getFilmHeight')
		todo('setViewOffset')
		todo('clearViewOffset')

		test('updateProjectionMatrix', () => {
			var cam = new PerspectiveCamera(75, 16 / 9, 0.1, 300.0)

			// updateProjectionMatrix is called in constructor
			var m = cam.projectionMatrix

			// perspective projection is given my the 4x4 Matrix
			// 2n/r-l		0			l+r/r-l				 0
			//   0		2n/t-b	t+b/t-b				 0
			//   0			0		-(f+n/f-n)	-(2fn/f-n)
			//   0			0				-1					 0

			// this matrix was calculated by hand via glMatrix.perspective(75, 16 / 9, 0.1, 300.0, pMatrix)
			// to get a reference matrix from plain WebGL
			var reference = new Matrix4()
			// prettier-ignore
			reference.set(
				0.7330642938613892, 0, 0, 0,
				0, 1.3032253980636597, 0, 0,
				0, 0, -1.000666856765747, -0.2000666856765747,
				0, 0, -1, 0
			)

			// assert( reference.equals(m) );
			assert(matrixEquals4(reference, m, 0.000001))
		})

		todo('toJSON')

		// OTHERS
		// TODO: no no no clone is a camera methods that relied to copy method
		// test('clone', () => {
		// 	var near = 1,
		// 		far = 3,
		// 		aspect = 16 / 9,
		// 		fov = 90

		// 	var cam = new PerspectiveCamera(fov, aspect, near, far)

		// 	var clonedCam = cam.clone()

		// 	assert(cam.fov === clonedCam.fov, 'fov is equal')
		// 	assert(cam.aspect === clonedCam.aspect, 'aspect is equal')
		// 	assert(cam.near === clonedCam.near, 'near is equal')
		// 	assert(cam.far === clonedCam.far, 'far is equal')
		// 	assert(cam.zoom === clonedCam.zoom, 'zoom is equal')
		// 	assert(cam.projectionMatrix.equals(clonedCam.projectionMatrix), 'projectionMatrix is equal')
		// })
	})
})

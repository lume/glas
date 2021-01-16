/**
 * @author TristanVALCKE / https://github.com/Itee
 */

import {runStdGeometryTests} from '../test-utils'
import {BoxBufferGeometry, BoxGeometryParameters} from './BoxGeometry'
import {BufferGeometry} from '../core/BufferGeometry'
import {Float32BufferAttribute} from '../core/BufferAttribute'

let geometries: BufferGeometry[] = []

describe('Geometries', (): void => {
	describe('BoxBufferGeometry', (): void => {
		beforeEach((): void => {
			const parameters = {
				width: 10,
				height: 20,
				depth: 30,
				widthSegments: 2,
				heightSegments: 3,
				depthSegments: 4,
			} as BoxGeometryParameters

			geometries = [
				new BoxBufferGeometry(),
				new BoxBufferGeometry(parameters.width, parameters.height, parameters.depth),
				new BoxBufferGeometry(
					parameters.width,
					parameters.height,
					parameters.depth,
					parameters.widthSegments,
					parameters.heightSegments,
					parameters.depthSegments
				),
			]
		})

		// OTHERS
		test('Standard geometry tests', (): void => {
			runStdGeometryTests(geometries)
		})

		test('the box has the vertext shape we expect', () => {
			const geom = new BoxBufferGeometry(4, 4, 4)

			expect(geom.attributes.has('position') && geom.attributes.has('normal') && geom.attributes.has('uv')).toBe(
				true,
				'it should have attributes'
			)

			const positionAttr = geom.attributes.get('position') as Float32BufferAttribute

			expect(positionAttr.arrays.Float32.length).toBeGreaterThan(0, 'it should have vertices')
			// TODO test how many items the array should have.

			// The box is centered on its local origin, so because the size is
			// 4x4x4 then the absolute value of the vertex positions should all
			// be 2.

			for (let i = 0; i < positionAttr.arrays.Float32.length; i++) {
				const coordinate = Math.abs(positionAttr.arrays.Float32[i])
				expect(coordinate).toBe(2.0, 'absolute vertex position should be 2')
			}
		})

		todo('more-detailed tests')
	})
})

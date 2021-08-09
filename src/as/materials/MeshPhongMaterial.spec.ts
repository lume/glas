/**
 * @author TristanVALCKE / https://github.com/Itee
 */

import { MeshPhongMaterial } from './MeshPhongMaterial'

describe('Materials', () => {
	describe('MeshPhongMaterial', () => {
		test('type', () => {
			const mat = new MeshPhongMaterial()
			expect(mat.type).toBe('MeshPhongMaterial', 'it should be true')
		})

		todo('copy')
	})
})

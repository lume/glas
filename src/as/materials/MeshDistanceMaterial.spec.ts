/**
 * @author jbbe / http://github.com/jbbe
 */
import { MeshDistanceMaterial } from './MeshDistanceMaterial'

describe('Materials', () => {
	describe('MeshDistanceMaterial', () => {
		test('type', () => {
			const mat = new MeshDistanceMaterial()
			expect(mat.type).toBe('MeshDistanceMaterial', 'it should be true')
		})

		todo('copy')
	})
})

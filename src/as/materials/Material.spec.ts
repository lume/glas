import { Material } from './Material'

describe('Materials', () => {
	describe('Material', () => {
		test('isMaterial', () => {
			const mat = new Material()
			expect(mat.isMaterial).toBe(true, 'it should be true')
		})
		todo('onBeforeCompile')
		todo('setValues')
		todo('toJSON')
		todo('clone')
		todo('copy')
		todo('dispose')
	})
})

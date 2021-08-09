import { Material } from '../../materials/Material'
import { MaterialProperties, MatProps } from './WebGLProperties'

describe('Renderers', () => {
	describe('WebGL', () => {
		describe('MaterialProperties', () => {
			todo('set')
			it('get', () => {
				const properties = new MaterialProperties()
				const mat = new Material()
				const props = properties.get(mat)
				expect(props instanceof MatProps).toBe(true)
			})
			todo('remove')
			todo('dispose')
		})
	})
})

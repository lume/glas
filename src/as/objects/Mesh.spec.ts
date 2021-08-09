import { Mesh } from './Mesh'
import { BufferGeometry } from '../core/BufferGeometry'

describe('Mesh', (): void => {
	test('.isMesh', (): void => {
		const m = new Mesh(new BufferGeometry())
		expect(m.isMesh).toBe(true)
	})

	todo('.setDrawMode')
	todo('.copy')
	todo('.updateMorphTargets')
	todo('.raycast')
	todo('.clone')
})

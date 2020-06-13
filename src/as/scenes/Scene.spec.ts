/**
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */

import {Scene} from './Scene'

// why return type required here?
describe('Scenes', (): void => {
	// why no return type required here?
	describe('Scene', () => {
		test('constructor', (): void => {
			const s = new Scene()
			expect(s.type).toBe('Scene')
			expect(s.isScene).toBe(true)
		})

		todo('copy')
		todo('toJSON')
		todo('dispose event')
	})
})

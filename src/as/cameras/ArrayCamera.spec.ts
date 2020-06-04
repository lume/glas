/**
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */

import {ArrayCamera} from './ArrayCamera'
import {PerspectiveCamera} from './PerspectiveCamera'

describe('Cameras', () => {
	describe('ArrayCamera', () => {
		test('constructor', () => {
			expect(new ArrayCamera().cameras).toStrictEqual([])

			const cam = new PerspectiveCamera()
			expect(new ArrayCamera([cam]).cameras).toStrictEqual([cam])
		})

		test('isArrayCamera', () => {
			expect(new ArrayCamera().isArrayCamera).toBe(true)
		})
	})
})

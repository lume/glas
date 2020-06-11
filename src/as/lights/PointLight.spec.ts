/**
 * @author TristanVALCKE / https://github.com/Itee
 * @author moraxy / https://github.com/moraxy
 * @author Joe Pea / http://github.com/trusktr
 */

// import {runStdLightTests} from '../test-utils'
import {PointLight} from './PointLight'
import {Color} from '../math/Color'

let lights: PointLight[] = []
const color = new Color(0xaa / 0xff, 0xaa / 0xff, 0xaa / 0xff)
const intensity = 0.5
const distance = 100
const decay = 2

describe('Lights', () => {
	describe('PointLight', () => {
		beforeEach(function () {
			lights = [
				new PointLight(),
				new PointLight(color),
				new PointLight(color, intensity),
				new PointLight(color, intensity, distance),
				new PointLight(color, intensity, distance, decay),
			]
		})

		// INSTANCING
		todo('constructor')

		test('power', () => {
			var a = new PointLight(color)

			a.intensity = 100
			expect(a.power).toBe(100 * Mathf.PI * 4, 'Correct power for an intensity of 100')

			a.intensity = 40
			expect(a.power).toBe(40 * Mathf.PI * 4, 'Correct power for an intensity of 40')

			a.power = 100
			expect(a.intensity).toBe(100 / (4 * Mathf.PI), 'Correct intensity for a power of 100')
		})

		todo('isPointLight')
		todo('copy')

		todo('Standard light tests')
		// test('Standard light tests', () => {
		// 	runStdLightTests(assert, lights)
		// })
	})
})

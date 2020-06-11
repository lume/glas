/**
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / https://github.com/trusktr
 */

// import {runStdLightTests} from '../test-utils'
import {Light} from './Light'
import {Color} from '../math/Color'

let lights: Light[] = []
const color = new Color(0xaa / 0xff, 0xaa / 0xff, 0xaa / 0xff)
const intensity: f32 = 0.5

describe('Lights', () => {
	describe('Light', () => {
		beforeEach(function () {
			lights = [new Light(), new Light(color), new Light(color, intensity)]
		})

		todo('constructor')
		todo('isLight')
		todo('copy')
		todo('toJSON')

		todo('Standard light tests')
		// test('Standard light tests', () => {
		// 	runStdLightTests(assert, lights)
		// })
	})
})

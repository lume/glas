/**
 * @author simonThiele / https://github.com/simonThiele
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */
import {Clock} from './Clock'

let time: i64 = 1000

function nextTime(n: i64): void {
	time += n
}

function getTime(): i64 {
	return time
}

describe('Core', () => {
	describe('Clock', () => {
		// INSTANCING
		todo('constructor')

		// PUBLIC STUFF
		todo('start')
		todo('stop')
		todo('getElapsedTime')
		todo('getDelta')

		// OTHERS
		test('clock with performance', () => {
			var clock = new Clock(false, getTime)

			clock.start()

			nextTime(123)
			assert(clock.getElapsedTime() == 0.123, 'expeced 0.123, got ' + clock.getElapsedTime().toString())

			nextTime(100)
			assert(clock.getElapsedTime() == 0.223, 'expected 0.223' + clock.getElapsedTime().toString())

			clock.stop()

			nextTime(1000)
			assert(clock.getElapsedTime() == 0.223, "don't update time if the clock was stopped")
		})
	})
})

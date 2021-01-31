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

function getFakeTime(): i64 {
	return time
}

describe('Core', () => {
	describe('Clock', () => {
		// PUBLIC STUFF
		todo('getDelta')

		// OTHERS
		test('clock with fake time', () => {
			const clock = new Clock(false, getFakeTime)

			clock.start()

			nextTime(123)
			expect(clock.getElapsedTime()).toBe(0.123)

			nextTime(100)
			expect(clock.getElapsedTime()).toBe(0.223)

			clock.stop()

			nextTime(1000)
			expect(clock.getElapsedTime()).toBe(0.223)
		})

		test('clock with real time', () => {
			const clock = new Clock()

			let previous = 0.0
			let current = 0.0

			clock.start()
			blockWait(10)
			current = clock.getElapsedTime()

			expect(current - previous).toBeGreaterThanOrEqual(0.01, 'At least 10 ms (0.01 s) should have passed')

			blockWait(100)
			previous = current
			current = clock.getElapsedTime()

			expect(current - previous).toBeGreaterThanOrEqual(0.1, 'Should be at least 1/10th second later')

			clock.stop()

			expect(clock.getDelta()).toBe(0, 'should be no time delta in stopped clock')

			previous = clock.getElapsedTime()
			blockWait(10)
			current = clock.getElapsedTime()

			expect(current).toBe(previous, 'Stopped clock should not progress.')
			expect(clock.getDelta()).toBe(0, 'should be no time delta in stopped clock')
		})
	})
})

function blockWait(timeMs: i32): void {
	let start = Date.now()
	while (Date.now() - start <= timeMs) {}
}

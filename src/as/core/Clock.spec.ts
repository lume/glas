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
			var clock = new Clock(false, getFakeTime)

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
			var clock = new Clock()

			let previous = 0.0
			let current = 0.0

			clock.start()

			current = clock.getElapsedTime()
			expect(current).toBe(previous, 'No initial time pass between consecutive start and getElapsedTime calls')
			// (at least in AssemblyScript, this might be different in TS->JS)

			const start = Date.now()
			while (Date.now() - start < 100) {}

			previous = current
			current = clock.getElapsedTime()
			expect(current - previous).toBeGreaterThanOrEqual(0.1, 'Should be at least 1/10th second later')
			expect(current - previous).toBeLessThan(0.15, 'Make sure it isn not to far away.')

			clock.stop()

			previous = current
			current = clock.getElapsedTime()
			expect(current).toBe(previous, 'Stopped clock should not progress.')
		})
	})
})

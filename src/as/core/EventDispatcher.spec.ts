/**
 * @author simonThiele / https://github.com/simonThiele
 * @author TristanVALCKE / https://github.com/Itee
 * @author corruptedzulu / https://github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 * @author Joshua Tenner / http://github.com/jtenner
 */
import {EventDispatcher, Listener, ListenerArray} from './EventDispatcher'
import {Event} from './Event'

let callCount: i32 = 0

class CountListener extends Listener {
	onEvent(event: Event): void {
		callCount++
	}
}

class NoopListener extends Listener {
	onEvent(event: Event): void {}
}

describe('EventDispatcher', (): void => {
	test('.constructor', (): void => {
		// expect(a.x).toBe(0)
	})

	test('.addEventListener', (): void => {
		const eventDispatcher = new EventDispatcher()
		const listener: Listener = new NoopListener()

		eventDispatcher.addEventListener('anyType', listener)

		// prettier-ignore
		expect(
			eventDispatcher
				// @ts-ignore private access
				._listeners
				.get('anyType')
		).toStrictEqual([listener]);

		eventDispatcher.addEventListener('anyType', listener)

		// prettier-ignore
		expect(
			eventDispatcher
				// @ts-ignore private access
				._listeners
				.get('anyType')
		).toStrictEqual([listener])

		const listener2: Listener = new NoopListener()

		eventDispatcher.addEventListener('anyType', listener2)

		// prettier-ignore
		expect(
			eventDispatcher
				// @ts-ignore private access
				._listeners
				.get('anyType')
		).toStrictEqual([listener, listener2])
	})

	test('.hasEventListener', (): void => {
		const eventDispatcher = new EventDispatcher()
		const listener: Listener = new NoopListener()
		eventDispatcher.addEventListener('anyType', listener)
		expect(eventDispatcher.hasEventListener('anyType', listener)).toBeTruthy()
		expect(eventDispatcher.hasEventListener('anotherType', listener)).toBeFalsy()
	})

	test('.removeEventListener', (): void => {
		const eventDispatcher = new EventDispatcher()
		const listener: Listener = new NoopListener()

		eventDispatcher.addEventListener('anyType', listener)

		// prettier-ignore
		expect(
			eventDispatcher
				// @ts-ignore: private access
				._listeners
				.get('anyType')
		).toStrictEqual([listener])

		eventDispatcher.removeEventListener('anyType', listener)

		// prettier-ignore
		expect(
			eventDispatcher
				// @ts-ignore: private access
				._listeners
				.get('anyType')
		).toHaveLength(0)

		eventDispatcher.removeEventListener('unknownType', listener)

		// prettier-ignore
		expect(
			eventDispatcher
				// @ts-ignore: private access
				._listeners
				.has('unknownType')
		).toBeFalsy()
	})

	test('.dispatchEvent', (): void => {
		const eventDispatcher: EventDispatcher = new EventDispatcher()

		const listener: CountListener = new CountListener()

		eventDispatcher.addEventListener('anyType', listener)
		expect(callCount).toBe(0)

		eventDispatcher.dispatchEvent(new Event('anyType'))
		expect(callCount).toBe(1)

		eventDispatcher.dispatchEvent(new Event('anyType'))
		expect(callCount).toBe(2)
	})
})

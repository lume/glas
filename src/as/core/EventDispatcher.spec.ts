/**
 * @author simonThiele / https://github.com/simonThiele
 * @author TristanVALCKE / https://github.com/Itee
 * @author corruptedzulu / https://github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */
/* global QUnit */

import {EventDispatcher, Listener, ListenerArray} from './EventDispatcher'
import {Event} from './Event'

let callCount: i32 = 0

describe('EventDispatcher', (): void => {
	test('.constructor', (): void => {
		// expect<number>(a.x).toBe(0)
	})

	test('.addEventListener', (): void => {
		const eventDispatcher = new EventDispatcher()
		const listener: Listener = (event: Event) => {}

		eventDispatcher.addEventListener('anyType', listener)

		// prettier-ignore
		expect<ListenerArray>(
			eventDispatcher
				// @ts-ignore private access
				._listeners
				.get('anyType')
		).toHaveLength(1);

		// prettier-ignore
		expect<bool>(
			eventDispatcher
				// @ts-ignore private access
				._listeners
				.get('anyType')[0] == listener
		).toBe(true)

		eventDispatcher.addEventListener('anyType', listener)

		// prettier-ignore
		expect<ListenerArray>(
			eventDispatcher
				// @ts-ignore private access
				._listeners
				.get('anyType')
		).toHaveLength(1)

		// prettier-ignore
		expect<bool>(
			eventDispatcher
				// @ts-ignore private access
				._listeners
				.get('anyType')[0] == listener
		).toBe(true)

		eventDispatcher.addEventListener('anyType', () => {})

		// prettier-ignore
		expect<ListenerArray>(
			eventDispatcher
				// @ts-ignore private access
				._listeners
				.get('anyType')
		).toHaveLength(2)
	})

	test('.hasEventListener', (): void => {
		const eventDispatcher = new EventDispatcher()
		const listener: Listener = (event: Event) => {}
		eventDispatcher.addEventListener('anyType', listener)
		expect<bool>(eventDispatcher.hasEventListener('anyType', listener)).toBe(true)
		expect<bool>(eventDispatcher.hasEventListener('anotherType', listener)).toBe(false)
	})

	test('.removeEventListener', (): void => {
		const eventDispatcher = new EventDispatcher()
		const listener: Listener = (event: Event) => {}

		// prettier-ignore
		expect<Map<String, ListenerArray> | null>(
			eventDispatcher
				// @ts-ignore: private access
				._listeners
		).not.toBe(null)

		eventDispatcher.addEventListener('anyType', listener)

		// prettier-ignore
		expect<bool>(
			eventDispatcher
				// @ts-ignore: private access
				._listeners
				.size === 1 &&
			eventDispatcher
				// @ts-ignore: private access
				._listeners
				.get('anyType').length === 1
		).toBe(true)

		eventDispatcher.removeEventListener('anyType', listener)

		// prettier-ignore
		expect<Listener[]>(
			eventDispatcher
				// @ts-ignore: private access
				._listeners
				.get('anyType')
		).toHaveLength(0)

		eventDispatcher.removeEventListener('unknownType', listener)

		// prettier-ignore
		expect<bool>(
			eventDispatcher
				// @ts-ignore: private access
				._listeners
				.has('unknownType')
		).toBe(false)
	})

	test('.dispatchEvent', (): void => {
		const eventDispatcher: EventDispatcher = new EventDispatcher()

		const listener: (event: Event) => void = function(event: Event) {
			callCount++
		}

		eventDispatcher.addEventListener('anyType', listener)
		expect<i32>(callCount).toBe(0)

		eventDispatcher.dispatchEvent(new Event('anyType', null, null))
		expect<number>(callCount).toBe(1)

		eventDispatcher.dispatchEvent(new Event('anyType', null, null))
		expect<number>(callCount).toBe(2)
	})
})

/**
 * @author simonThiele / https://github.com/simonThiele
 * @author TristanVALCKE / https://github.com/Itee
 * @author corruptedzulu / https://github.com/corruptedzulu
 */
/* global QUnit */

import {EventDispatcher, Listener} from './EventDispatcher'
import {Event} from './Event'

var callCount: i32 = 0

describe('EventDispatcher', (): void => {
	describe('.Instancing', (): void => {
		test('Instancing', (): void => {
			// expect<number>(a.x).toBe(0)
		})
	})
	describe('.addEventListener', (): void => {
		test('addEventListener', (): void => {
			// var eventDispatcher = new EventDispatcher()
			// var listener: Listener = (event: Event) => void
			// eventDispatcher.addEventListener('anyType', listener)
			// expect<number>(eventDispatcher._listeners.anyType.length).toBe(1);
			// expect<Listener>(eventDispatcher._listeners.anyType[0]).toStrictEqual(listener);
			// eventDispatcher.addEventListener('anyType', listener)
			// expect<number>(eventDispatcher._listeners.anyType.length).toBe(1);
			// expect<Listener>(eventDispatcher._listeners.anyType[0]).toStrictEqual(listener);
		})
	})
	describe('.hasEventListener', (): void => {
		test('hasEventListener', (): void => {
			// var eventDispatcher = new EventDispatcher()
			// var listener: Listener = (event: Event) => void eventDispatcher.addEventListener('anyType', listener)
			// expect<bool>(eventDispatcher.hasEventListener('anyType', listener)).toBe(true)
			// expect<bool>(eventDispatcher.hasEventListener('anotherType', listener)).toBe(false)
		})
	})
	describe('.removeEventListener', (): void => {
		test('removeEventListener', (): void => {
			// var eventDispatcher = new EventDispatcher()
			// var listener: Listener = (event: Event) => void
			// expect<Map<String, Listener>>(eventDispatcher._listeners).toBe(undefined);
			// eventDispatcher.addEventListener('anyType', listener);
			// expect<bool>(Object.keys(eventDispatcher._listeners).length === 1 && eventDispatcher._listeners.anyType.length === 1).toBe(true)
			// eventDispatcher.removeEventListener('anyType', listener)
			// expect<number>(eventDispatcher._listeners.anyType.length).toBe(0)
			// eventDispatcher.removeEventListener('unknownType', listener)
			// expect<Map<String, Listener>>(eventDispatcher._listeners.unknownType).toBe(undefined);
			// // assert.ok(eventDispatcher._listeners.unknownType === undefined, 'unknown types will be ignored')
			// eventDispatcher.removeEventListener('anyType', undefined)
			// expect<number>(eventDispatcher._listeners.anyType.length).toBe(0);
		})
	})
	describe('.dispatchEvent', (): void => {
		test('dispatchEvent', (): void => {
			let eventDispatcher: EventDispatcher = new EventDispatcher()

			let listener: (event: Event) => void = function(event: Event) {
				callCount++
			}
			eventDispatcher.addEventListener('anyType', listener)
			expect<i32>(callCount).toBe(0)
			var e: Event = new Event('anyType', null, null)
			eventDispatcher.dispatchEvent(e)
			expect<number>(callCount).toBe(1)
			eventDispatcher.dispatchEvent(e)
			expect<number>(callCount).toBe(2)
		})
	})
})

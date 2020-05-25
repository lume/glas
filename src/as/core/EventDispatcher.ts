/**
 * @author mrdoob / http://mrdoob.com/
 * @author Joe Pea / http://github.com/trusktr
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

import {Event, EventTargetable} from './Event'

export type Listener = (event: Event) => void

export type ListenerArray = Array<Listener>

/**
 * https://github.com/mrdoob/eventdispatcher.js/
 */
export class EventDispatcher extends EventTargetable {
	private _listeners: Map<string, ListenerArray> = new Map<string, ListenerArray>()

	/**
	 * Adds a listener to an event type.
	 * @param type The type of event to listen to.
	 * @param listener The function that gets called when the event is fired.
	 */
	addEventListener(type: string, listener: Listener): void {
		if (!this._listeners) this._listeners = new Map<string, ListenerArray>()

		const listeners = this._listeners

		if (!listeners.has(type)) {
			listeners.set(type, new Array<Listener>())
		}

		if (listeners.get(type).indexOf(listener) === -1) {
			listeners.get(type).push(listener)
		}
	}

	/**
	 * Checks if listener is added to an event type.
	 * @param type The type of event to listen to.
	 * @param listener The function that gets called when the event is fired.
	 */
	hasEventListener(type: string, listener: Listener): bool {
		if (!this._listeners) return false

		const listeners = this._listeners

		return listeners.has(type) && listeners.get(type).includes(listener)
	}

	/**
	 * Removes a listener from an event type.
	 * @param type The type of the listener that gets removed.
	 * @param listener The listener function that gets removed.
	 */
	removeEventListener(type: string, listener: Listener): void {
		if (!this._listeners) return

		const listeners = this._listeners

		if (listeners.has(type)) {
			const listenerArray = listeners.get(type)
			const index = listenerArray.indexOf(listener)

			if (index !== -1) {
				listenerArray.splice(index, 1)
			}
		}
	}

	/**
	 * Fire an event type.
	 * @param type The type of event that gets fired.
	 */
	// TODO any doesn't work in AS. Find another way.
	dispatchEvent(event: Event): void {
		if (!this._listeners) {
			return
		}

		const listeners = this._listeners

		if (listeners.has(event.type)) {
			const listenerArray = listeners.get(event.type)

			event.target = this

			// clone the array, in case listeners are added or removed during the
			// following iteration
			const array: Listener[] = listenerArray.slice(0)

			for (let i: i32 = 0, l: i32 = array.length; i < l; i++) {
				let theListener: Listener = array[i]
				theListener(event)
			}
		}
	}
}

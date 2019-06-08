/**
 * @author mrdoob / http://mrdoob.com/
 * @author Joe Pea / http://github.com/trusktr
 */

export interface Event {
	type: string
	target?: any
	[attachment: string]: any
}

type Listener = (event: Event) => void

type ListenerArray = Array<Listener>

/**
 * https://github.com/mrdoob/eventdispatcher.js/
 */
export class EventDispatcher {
	private _listeners: Map<string, ListenerArray> | null = null

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

		return listeners.has(type) && listeners.get(type).indexOf(listener) !== -1
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
	dispatchEvent(event: {type: string; [attachment: string]: any}): void {
		if (!this._listeners) return

		const listeners = this._listeners

		if (listeners.has(event.type)) {
			const listenerArray = listeners.get(event.type)

			event.target = this

			// clone the array, in case listeners are added or removed during the
			// following iteration
			const array = listenerArray.slice(0)

			for (let i = 0, l = array.length; i < l; i++) {
				array[i](event)
			}
		}
	}
}

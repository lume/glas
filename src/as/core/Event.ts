import {EventTargetable} from './EventTargetable'
import {EventAttachable} from './EventAttachable'

/**
 * @author mrdoob / http://mrdoob.com/
 * @author Joe Pea / http://github.com/trusktr
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

export class Event {
	type: string
	target: EventTargetable
	attachment: EventAttachable

	constructor(
		type: string,
		target: EventTargetable = new EventTargetable(),
		attachment: EventAttachable = new EventAttachable()
	) {
		this.type = type
		this.target = target
		this.attachment = attachment
	}
}

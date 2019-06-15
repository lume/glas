import {Object3D} from './Object3D'

/**
 * @author mrdoob / http://mrdoob.com/
 * @author Joe Pea / http://github.com/trusktr
 *
 * Class and new file
 * @author corruptedzulu / http://github.com/corruptedzulu
 */

export class EventTargetable {
	toString(): string {
		return 'blah'
	}
}
export class EventAttachable {
	toString(): string {
		return 'blah'
	}
}

export class Event {
	type: string
	target: EventTargetable | null
	attachment: EventAttachable | null

	constructor(type: string, target: EventTargetable | null, attachment: EventAttachable | null) {
		this.type = type
		this.target = target
		this.attachment = attachment
	}
}

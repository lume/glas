import {PerspectiveCamera} from './PerspectiveCamera'

export class ArrayCamera extends PerspectiveCamera {
	constructor(public cameras: PerspectiveCamera[] = []) {
		super()
	}

	isArrayCamera: boolean = true
}

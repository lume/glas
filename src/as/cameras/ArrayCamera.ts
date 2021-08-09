/**
 * @author mrdoob / http://mrdoob.com/
 * @author Joe Pea / http://github.com/trusktr
 */

import { PerspectiveCamera } from './PerspectiveCamera'

export class ArrayCamera extends PerspectiveCamera {
	constructor(public cameras: PerspectiveCamera[] = []) {
		super()
	}

	isArrayCamera: boolean = true
}

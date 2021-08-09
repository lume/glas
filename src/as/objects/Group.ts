/**
 * @author mrdoob / http://mrdoob.com/
 * @author Joe Pea / http://github.com/trusktr
 */

import { Object3D } from '../core/Object3D'

export class Group extends Object3D {
	isGroup: true = true

	constructor() {
		super()
		this.type = 'Group'
	}
}

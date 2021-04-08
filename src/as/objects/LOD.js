import {Vector3} from '../math/Vector3'
import {Object3D} from '../core/Object3D.js'

/**
 * @author mikael emtinger / http://gomo.se/
 * @author alteredq / http://alteredqualia.com/
 * @author mrdoob / http://mrdoob.com/
 */

function LOD() {
	Object3D.call(this)

	this.type = 'LOD'

	Object.defineProperties(this, {
		levels: {
			enumerable: true,
			value: [],
		},
	})
}

LOD.prototype = Object.assign(Object.create(Object3D.prototype), {
	constructor: LOD,

	isLOD: true,

	copy: function(source) {
		Object3D.prototype.copy.call(this, source, false)

		const levels = source.levels

		for (let i = 0, l = levels.length; i < l; i++) {
			const level = levels[i]

			this.addLevel(level.object.clone(), level.distance)
		}

		return this
	},

	addLevel: function(object, distance) {
		if (distance === undefined) distance = 0

		distance = Mathf.abs(distance)

		const levels = this.levels

		for (let l = 0; l < levels.length; l++) {
			if (distance < levels[l].distance) {
				break
			}
		}

		levels.splice(l, 0, {distance: distance, object: object})

		this.add(object)

		return this
	},

	getObjectForDistance: function(distance) {
		const levels = this.levels

		for (let i = 1, l = levels.length; i < l; i++) {
			if (distance < levels[i].distance) {
				break
			}
		}

		return levels[i - 1].object
	},

	raycast: (function() {
		const matrixPosition = new Vector3()

		return function raycast(raycaster, intersects) {
			matrixPosition.setFromMatrixPosition(this.matrixWorld)

			const distance = raycaster.ray.origin.distanceTo(matrixPosition)

			this.getObjectForDistance(distance).raycast(raycaster, intersects)
		}
	})(),

	update: (function() {
		const v1 = new Vector3()
		const v2 = new Vector3()

		return function update(camera) {
			const levels = this.levels

			if (levels.length > 1) {
				v1.setFromMatrixPosition(camera.matrixWorld)
				v2.setFromMatrixPosition(this.matrixWorld)

				const distance = v1.distanceTo(v2)

				levels[0].object.visible = true

				for (let i = 1, l = levels.length; i < l; i++) {
					if (distance >= levels[i].distance) {
						levels[i - 1].object.visible = false
						levels[i].object.visible = true
					} else {
						break
					}
				}

				for (; i < l; i++) {
					levels[i].object.visible = false
				}
			}
		}
	})(),

	toJSON: function(meta) {
		const data = Object3D.prototype.toJSON.call(this, meta)

		data.object.levels = []

		const levels = this.levels

		for (let i = 0, l = levels.length; i < l; i++) {
			const level = levels[i]

			data.object.levels.push({
				object: level.object.uuid,
				distance: level.distance,
			})
		}

		return data
	},
})

export {LOD}

import {Sphere} from '../math/Sphere.js'
import {Ray} from '../math/Ray.js'
import {Matrix4} from '../math/Matrix4.js'
import {Object3D} from '../core/Object3D.js'
import {Vector3} from '../math/Vector3'
import {PointsMaterial} from '../materials/PointsMaterial.js'
import {BufferGeometry} from '../core/BufferGeometry.js'

/**
 * @author alteredq / http://alteredqualia.com/
 */

function Points(geometry, material) {
	Object3D.call(this)

	this.type = 'Points'

	this.geometry = geometry !== undefined ? geometry : new BufferGeometry()
	this.material = material !== undefined ? material : new PointsMaterial({color: Mathf.random() * 0xffffff})
}

Points.prototype = Object.assign(Object.create(Object3D.prototype), {
	constructor: Points,

	isPoints: true,

	raycast: (function() {
		const inverseMatrix = new Matrix4()
		const ray = new Ray()
		const sphere = new Sphere()

		return function raycast(raycaster, intersects) {
			const object = this
			const geometry = this.geometry
			const matrixWorld = this.matrixWorld
			const threshold = raycaster.params.Points.threshold

			// Checking boundingSphere distance to ray

			if (geometry.boundingSphere === null) geometry.computeBoundingSphere()

			sphere.copy(geometry.boundingSphere)
			sphere.applyMatrix4(matrixWorld)
			sphere.radius += threshold

			if (raycaster.ray.intersectsSphere(sphere) === false) return

			//

			inverseMatrix.getInverse(matrixWorld)
			ray.copy(raycaster.ray).applyMatrix4(inverseMatrix)

			const localThreshold = threshold / ((this.scale.x + this.scale.y + this.scale.z) / 3)
			const localThresholdSq = localThreshold * localThreshold
			const position = new Vector3()
			const intersectPoint = new Vector3()

			function testPoint(point, index) {
				const rayPointDistanceSq = ray.distanceSqToPoint(point)

				if (rayPointDistanceSq < localThresholdSq) {
					ray.closestPointToPoint(point, intersectPoint)
					intersectPoint.applyMatrix4(matrixWorld)

					const distance = raycaster.ray.origin.distanceTo(intersectPoint)

					if (distance < raycaster.near || distance > raycaster.far) return

					intersects.push({
						distance: distance,
						distanceToRay: Mathf.sqrt(rayPointDistanceSq),
						point: intersectPoint.clone(),
						index: index,
						face: null,
						object: object,
					})
				}
			}

			if (geometry.isBufferGeometry) {
				const index = geometry.index
				const attributes = geometry.attributes
				const positions = attributes.position.array

				if (index !== null) {
					const indices = index.array

					for (let i = 0, il = indices.length; i < il; i++) {
						const a = indices[i]

						position.fromArray(positions, a * 3)

						testPoint(position, a)
					}
				} else {
					for (let i = 0, l = positions.length / 3; i < l; i++) {
						position.fromArray(positions, i * 3)

						testPoint(position, i)
					}
				}
			} else {
				const vertices = geometry.vertices

				for (let i = 0, l = vertices.length; i < l; i++) {
					testPoint(vertices[i], i)
				}
			}
		}
	})(),

	clone: function() {
		return new this.constructor(this.geometry, this.material).copy(this)
	},
})

export {Points}

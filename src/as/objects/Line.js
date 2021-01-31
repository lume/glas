import {Sphere} from '../math/Sphere.js'
import {Ray} from '../math/Ray.js'
import {Matrix4} from '../math/Matrix4.js'
import {Object3D} from '../core/Object3D.js'
import {Vector3} from '../math/Vector3'
import {LineBasicMaterial} from '../materials/LineBasicMaterial.js'
import {BufferGeometry} from '../core/BufferGeometry.js'
import {Float32BufferAttribute} from '../core/BufferAttribute.js'

/**
 * @author mrdoob / http://mrdoob.com/
 */

function Line(geometry, material, mode) {
	if (mode === 1) {
		console.error('THREE.Line: parameter THREE.LinePieces no longer supported. Use THREE.LineSegments instead.')
	}

	Object3D.call(this)

	this.type = 'Line'

	this.geometry = geometry !== undefined ? geometry : new BufferGeometry()
	this.material = material !== undefined ? material : new LineBasicMaterial({color: Mathf.random() * 0xffffff})
}

Line.prototype = Object.assign(Object.create(Object3D.prototype), {
	constructor: Line,

	isLine: true,

	computeLineDistances: (function() {
		const start = new Vector3()
		const end = new Vector3()

		return function computeLineDistances() {
			const geometry = this.geometry

			if (geometry.isBufferGeometry) {
				// we assume non-indexed geometry

				if (geometry.index === null) {
					const positionAttribute = geometry.attributes.position
					const lineDistances = [0]

					for (let i = 1, l = positionAttribute.count; i < l; i++) {
						start.fromBufferAttribute(positionAttribute, i - 1)
						end.fromBufferAttribute(positionAttribute, i)

						lineDistances[i] = lineDistances[i - 1]
						lineDistances[i] += start.distanceTo(end)
					}

					geometry.addAttribute('lineDistance', new Float32BufferAttribute(lineDistances, 1))
				} else {
					console.warn(
						'THREE.Line.computeLineDistances(): Computation only possible with non-indexed BufferGeometry.'
					)
				}
			} else if (geometry.isGeometry) {
				const vertices = geometry.vertices
				const lineDistances = geometry.lineDistances

				lineDistances[0] = 0

				for (let i = 1, l = vertices.length; i < l; i++) {
					lineDistances[i] = lineDistances[i - 1]
					lineDistances[i] += vertices[i - 1].distanceTo(vertices[i])
				}
			}

			return this
		}
	})(),

	raycast: (function() {
		const inverseMatrix = new Matrix4()
		const ray = new Ray()
		const sphere = new Sphere()

		return function raycast(raycaster, intersects) {
			const precision = raycaster.linePrecision

			const geometry = this.geometry
			const matrixWorld = this.matrixWorld

			// Checking boundingSphere distance to ray

			if (geometry.boundingSphere === null) geometry.computeBoundingSphere()

			sphere.copy(geometry.boundingSphere)
			sphere.applyMatrix4(matrixWorld)
			sphere.radius += precision

			if (raycaster.ray.intersectsSphere(sphere) === false) return

			//

			inverseMatrix.getInverse(matrixWorld)
			ray.copy(raycaster.ray).applyMatrix4(inverseMatrix)

			const localPrecision = precision / ((this.scale.x + this.scale.y + this.scale.z) / 3)
			const localPrecisionSq = localPrecision * localPrecision

			const vStart = new Vector3()
			const vEnd = new Vector3()
			const interSegment = new Vector3()
			const interRay = new Vector3()
			const step = this && this.isLineSegments ? 2 : 1

			if (geometry.isBufferGeometry) {
				const index = geometry.index
				const attributes = geometry.attributes
				const positions = attributes.position.array

				if (index !== null) {
					const indices = index.array

					for (let i = 0, l = indices.length - 1; i < l; i += step) {
						const a = indices[i]
						const b = indices[i + 1]

						vStart.fromArray(positions, a * 3)
						vEnd.fromArray(positions, b * 3)

						const distSq = ray.distanceSqToSegment(vStart, vEnd, interRay, interSegment)

						if (distSq > localPrecisionSq) continue

						interRay.applyMatrix4(this.matrixWorld) //Move back to world space for distance calculation

						const distance = raycaster.ray.origin.distanceTo(interRay)

						if (distance < raycaster.near || distance > raycaster.far) continue

						intersects.push({
							distance: distance,
							// What do we want? intersection point on the ray or on the segment??
							// point: raycaster.ray.at( distance ),
							point: interSegment.clone().applyMatrix4(this.matrixWorld),
							index: i,
							face: null,
							faceIndex: null,
							object: this,
						})
					}
				} else {
					for (let i = 0, l = positions.length / 3 - 1; i < l; i += step) {
						vStart.fromArray(positions, 3 * i)
						vEnd.fromArray(positions, 3 * i + 3)

						const distSq = ray.distanceSqToSegment(vStart, vEnd, interRay, interSegment)

						if (distSq > localPrecisionSq) continue

						interRay.applyMatrix4(this.matrixWorld) //Move back to world space for distance calculation

						const distance = raycaster.ray.origin.distanceTo(interRay)

						if (distance < raycaster.near || distance > raycaster.far) continue

						intersects.push({
							distance: distance,
							// What do we want? intersection point on the ray or on the segment??
							// point: raycaster.ray.at( distance ),
							point: interSegment.clone().applyMatrix4(this.matrixWorld),
							index: i,
							face: null,
							faceIndex: null,
							object: this,
						})
					}
				}
			} else if (geometry.isGeometry) {
				const vertices = geometry.vertices
				const nbVertices = vertices.length

				for (let i = 0; i < nbVertices - 1; i += step) {
					const distSq = ray.distanceSqToSegment(vertices[i], vertices[i + 1], interRay, interSegment)

					if (distSq > localPrecisionSq) continue

					interRay.applyMatrix4(this.matrixWorld) //Move back to world space for distance calculation

					const distance = raycaster.ray.origin.distanceTo(interRay)

					if (distance < raycaster.near || distance > raycaster.far) continue

					intersects.push({
						distance: distance,
						// What do we want? intersection point on the ray or on the segment??
						// point: raycaster.ray.at( distance ),
						point: interSegment.clone().applyMatrix4(this.matrixWorld),
						index: i,
						face: null,
						faceIndex: null,
						object: this,
					})
				}
			}
		}
	})(),

	clone: function() {
		return new this.constructor(this.geometry, this.material).copy(this)
	},
})

export {Line}

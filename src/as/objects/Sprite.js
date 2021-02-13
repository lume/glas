/**
 * @author mikael emtinger / http://gomo.se/
 * @author alteredq / http://alteredqualia.com/
 */

import {Vector2} from '../math/Vector2'
import {Vector3} from '../math/Vector3'
import {Matrix4} from '../math/Matrix4.js'
import {Triangle} from '../math/Triangle.js'
import {Object3D} from '../core/Object3D.js'
import {BufferGeometry} from '../core/BufferGeometry.js'
import {InterleavedBuffer} from '../core/InterleavedBuffer.js'
import {InterleavedBufferAttribute} from '../core/InterleavedBufferAttribute.js'
import {SpriteMaterial} from '../materials/SpriteMaterial.js'

const geometry

function Sprite(material) {
	Object3D.call(this)

	this.type = 'Sprite'

	if (geometry === undefined) {
		geometry = new BufferGeometry()

		const float32Array = new Float32Array([
			-0.5,
			-0.5,
			0,
			0,
			0,
			0.5,
			-0.5,
			0,
			1,
			0,
			0.5,
			0.5,
			0,
			1,
			1,
			-0.5,
			0.5,
			0,
			0,
			1,
		])

		const interleavedBuffer = new InterleavedBuffer(float32Array, 5)

		geometry.setIndex([0, 1, 2, 0, 2, 3])
		geometry.addAttribute('position', new InterleavedBufferAttribute(interleavedBuffer, 3, 0, false))
		geometry.addAttribute('uv', new InterleavedBufferAttribute(interleavedBuffer, 2, 3, false))
	}

	this.geometry = geometry
	this.material = material !== undefined ? material : new SpriteMaterial()

	this.center = new Vector2(0.5, 0.5)
}

Sprite.prototype = Object.assign(Object.create(Object3D.prototype), {
	constructor: Sprite,

	isSprite: true,

	raycast: (function() {
		const intersectPoint = new Vector3()
		const worldScale = new Vector3()
		const mvPosition = new Vector3()

		const alignedPosition = new Vector2()
		const rotatedPosition = new Vector2()
		const viewWorldMatrix = new Matrix4()

		const vA = new Vector3()
		const vB = new Vector3()
		const vC = new Vector3()

		const uvA = new Vector2()
		const uvB = new Vector2()
		const uvC = new Vector2()

		function transformVertex(vertexPosition, mvPosition, center, scale, sin, cos) {
			// compute position in camera space
			alignedPosition
				.subVectors(vertexPosition, center)
				.addScalar(0.5)
				.multiply(scale)

			// to check if rotation is not zero
			if (sin !== undefined) {
				rotatedPosition.x = cos * alignedPosition.x - sin * alignedPosition.y
				rotatedPosition.y = sin * alignedPosition.x + cos * alignedPosition.y
			} else {
				rotatedPosition.copy(alignedPosition)
			}

			vertexPosition.copy(mvPosition)
			vertexPosition.x += rotatedPosition.x
			vertexPosition.y += rotatedPosition.y

			// transform to world space
			vertexPosition.applyMatrix4(viewWorldMatrix)
		}

		return function raycast(raycaster, intersects) {
			worldScale.setFromMatrixScale(this.matrixWorld)
			viewWorldMatrix.getInverse(this.modelViewMatrix).premultiply(this.matrixWorld)
			mvPosition.setFromMatrixPosition(this.modelViewMatrix)

			const rotation = this.material.rotation
			const sin, cos
			if (rotation !== 0) {
				Mathf.sincos(rotation)
				cos = Mathf.sincos_cos
				sin = Mathf.sincos_sin
			}

			const center = this.center

			transformVertex(vA.set(-0.5, -0.5, 0), mvPosition, center, worldScale, sin, cos)
			transformVertex(vB.set(0.5, -0.5, 0), mvPosition, center, worldScale, sin, cos)
			transformVertex(vC.set(0.5, 0.5, 0), mvPosition, center, worldScale, sin, cos)

			uvA.set(0, 0)
			uvB.set(1, 0)
			uvC.set(1, 1)

			// check first triangle
			const intersect = raycaster.ray.intersectTriangle(vA, vB, vC, false, intersectPoint)

			if (intersect === null) {
				// check second triangle
				transformVertex(vB.set(-0.5, 0.5, 0), mvPosition, center, worldScale, sin, cos)
				uvB.set(0, 1)

				intersect = raycaster.ray.intersectTriangle(vA, vC, vB, false, intersectPoint)
				if (intersect === null) {
					return
				}
			}

			const distance = raycaster.ray.origin.distanceTo(intersectPoint)

			if (distance < raycaster.near || distance > raycaster.far) return

			intersects.push({
				distance: distance,
				point: intersectPoint.clone(),
				uv: Triangle.getUV(intersectPoint, vA, vB, vC, uvA, uvB, uvC, new Vector2()),
				face: null,
				object: this,
			})
		}
	})(),

	clone: function() {
		return new this.constructor(this.material).copy(this)
	},

	copy: function(source) {
		Object3D.prototype.copy.call(this, source)

		if (source.center !== undefined) this.center.copy(source.center)

		return this
	},
})

export {Sprite}

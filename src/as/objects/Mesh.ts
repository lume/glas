/**
 * @author mrdoob / http://mrdoob.com/
 * @author alteredq / http://alteredqualia.com/
 * @author mikael emtinger / http://gomo.se/
 * @author jonobr1 / http://jonobr1.com/
 * @author corruptedzulu / http://github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */

import { Geometry } from '../core/Geometry'
import { Material } from '../materials/Material'
// import {Raycaster, Intersection} from '../core/Raycaster'
import { Object3D } from '../core/Object3D'
import { BufferGeometry } from '../core/BufferGeometry'
import { TrianglesDrawModes } from '../constants'
import { Vector3 } from '../math/Vector3'
import { Vector2 } from '../math/Vector2'
// import {Sphere} from '../math/Sphere.js'
// import {Ray} from '../math/Ray.js'
import { Matrix4 } from '../math/Matrix4'
// import {Triangle} from '../math/Triangle'
import { Face3 } from '../core/Face3'
import { Side, TrianglesDrawMode } from '../constants'
import { MeshPhongMaterial } from '../materials/MeshPhongMaterial'
import { Color } from '../math/Color'

// TODO `<T>` defaults to BufferGeometry for now, but Geometry is easier to use
// for beginners. We can change the default to Geometry once we implement
// Geometry, but for now the initial demo will use BufferGeometry.
export class Mesh<T = BufferGeometry> extends Object3D {
	isMesh: true = true

	geometry: T

	// In Three.js this is typed as `material | material[]`, but there are no
	// unions in AS. Instead, we only accept a material[]. To have only one
	// material, just pass an array with one material.
	/**
	 * Materials for the mesh. In most cases, or if you're not sure, you'll
	 * just pass a single material in the array.
	 */
	materials: Material[]

	drawMode: TrianglesDrawModes
	morphTargetInfluences: f32[] | null
	morphTargetDictionary: Map<string, f32> | null

	// TODO We're going for MeshPhongMaterial in the initial demo, but the
	// default arg for material should be MeshPhongMaterial, which we can add
	// later and then set the default materials arg back to MeshBasicMaterial.
	constructor(geometry: T, materials: Material[] = []) {
		super()

		this.type = 'Mesh'

		if (!materials.length) {
			const defaultMat = new MeshPhongMaterial()
			defaultMat.color = new Color(Mathf.random() * 0xffffff)
			materials.push(defaultMat)
		}

		this.geometry = geometry
		this.materials = materials

		this.drawMode = TrianglesDrawMode

		this.updateMorphTargets()
	}

	// copy(source: Mesh<T>): this {
	// 	super.copy(source)

	// 	this.drawMode = source.drawMode

	// 	if (source.morphTargetInfluences !== undefined) {
	// 		this.morphTargetInfluences = source.morphTargetInfluences.slice(0)
	// 	}

	// 	if (source.morphTargetDictionary !== undefined) {
	// 		//this.morphTargetDictionary = Object.assign( {}, source.morphTargetDictionary );
	// 	}

	// 	return this
	// }

	// setDrawMode(drawMode: TrianglesDrawModes): void {
	// 	this.drawMode = drawMode
	// }

	/**
	 * Note, the updateMorphTargets method only works on Meshes that have
	 * BufferGeometry instances, not Meshes with Geometry instances.
	 */
	// TODO
	// because there are no morphAttributes.
	updateMorphTargets(): void {
		const geometry = this.geometry
		// var m, ml, name

		// if (geometry instanceof BufferGeometry) {
		// 	var morphAttributes = geometry.morphAttributes
		// 	var keys: string[] = morphAttributes.keys()

		// 	if (keys.length > 0) {
		// 		var morphAttribute = morphAttributes.get(keys[0])

		// 		if (morphAttribute !== undefined) {
		// 			this.morphTargetInfluences = []
		// 			this.morphTargetDictionary = new Map()

		// 			for (m = 0, ml = morphAttribute.length; m < ml; m++) {
		// 				name = morphAttribute[m].name || m.toString()

		// 				this.morphTargetInfluences.push(0)
		// 				this.morphTargetDictionary.set(name, m)
		// 			}
		// 		}
		// 	}
		// } else if (geometry instanceof Geometry) {
		// 	throw new Error('Mesh.updateMorphTargets() no longer supports Geometry. Use BufferGeometry instead.')
		// }
	}

	// raycast(raycaster: Raycaster, intersects: Intersection[]): void {
	// 	var inverseMatrix = new Matrix4()
	// 	var ray = new Ray()
	// 	var sphere = new Sphere()

	// 	var vA = new Vector3()
	// 	var vB = new Vector3()
	// 	var vC = new Vector3()

	// 	var tempA = new Vector3()
	// 	var tempB = new Vector3()
	// 	var tempC = new Vector3()

	// 	var morphA = new Vector3()
	// 	var morphB = new Vector3()
	// 	var morphC = new Vector3()

	// 	var uvA = new Vector2()
	// 	var uvB = new Vector2()
	// 	var uvC = new Vector2()

	// 	var intersectionPoint = new Vector3()
	// 	var intersectionPointWorld = new Vector3()

	// 	function checkIntersection(object, material, raycaster, ray, pA, pB, pC, point) {
	// 		var intersect

	// 		if (material.side === Side.BackSide) {
	// 			intersect = ray.intersectTriangle(pC, pB, pA, true, point)
	// 		} else {
	// 			intersect = ray.intersectTriangle(pA, pB, pC, material.side !== Side.DoubleSide, point)
	// 		}

	// 		if (intersect === null) return null

	// 		intersectionPointWorld.copy(point)
	// 		intersectionPointWorld.applyMatrix4(object.matrixWorld)

	// 		var distance = raycaster.ray.origin.distanceTo(intersectionPointWorld)

	// 		if (distance < raycaster.near || distance > raycaster.far) return null

	// 		return {
	// 			distance: distance,
	// 			point: intersectionPointWorld.clone(),
	// 			object: object,
	// 		}
	// 	}

	// 	function checkBufferGeometryIntersection(
	// 		object,
	// 		material,
	// 		raycaster,
	// 		ray,
	// 		position,
	// 		morphPosition,
	// 		uv,
	// 		a,
	// 		b,
	// 		c
	// 	) {
	// 		vA.fromBufferAttribute(position, a)
	// 		vB.fromBufferAttribute(position, b)
	// 		vC.fromBufferAttribute(position, c)

	// 		var morphInfluences = object.morphTargetInfluences

	// 		if (material.morphTargets && morphPosition && morphInfluences) {
	// 			morphA.set(0, 0, 0)
	// 			morphB.set(0, 0, 0)
	// 			morphC.set(0, 0, 0)

	// 			for (var i = 0, il = morphPosition.length; i < il; i++) {
	// 				var influence = morphInfluences[i]
	// 				var morphAttribute = morphPosition[i]

	// 				if (influence === 0) continue

	// 				tempA.fromBufferAttribute(morphAttribute, a)
	// 				tempB.fromBufferAttribute(morphAttribute, b)
	// 				tempC.fromBufferAttribute(morphAttribute, c)

	// 				morphA.addScaledVector(tempA.sub(vA), influence)
	// 				morphB.addScaledVector(tempB.sub(vB), influence)
	// 				morphC.addScaledVector(tempC.sub(vC), influence)
	// 			}

	// 			vA.add(morphA)
	// 			vB.add(morphB)
	// 			vC.add(morphC)
	// 		}

	// 		var intersection = checkIntersection(object, material, raycaster, ray, vA, vB, vC, intersectionPoint)

	// 		if (intersection) {
	// 			if (uv) {
	// 				uvA.fromBufferAttribute(uv, a)
	// 				uvB.fromBufferAttribute(uv, b)
	// 				uvC.fromBufferAttribute(uv, c)

	// 				intersection.uv = Triangle.getUV(intersectionPoint, vA, vB, vC, uvA, uvB, uvC, new Vector2())
	// 			}

	// 			var face = new Face3(a, b, c)
	// 			Triangle.getNormal(vA, vB, vC, face.normal)

	// 			intersection.face = face
	// 		}

	// 		return intersection
	// 	}

	// 	var geometry = this.geometry
	// 	var material = this.material
	// 	var matrixWorld = this.matrixWorld

	// 	if (material === undefined) return

	// 	// Checking boundingSphere distance to ray

	// 	if (geometry.boundingSphere === null) geometry.computeBoundingSphere()

	// 	sphere.copy(geometry.boundingSphere)
	// 	sphere.applyMatrix4(matrixWorld)

	// 	if (raycaster.ray.intersectsSphere(sphere) === false) return

	// 	//

	// 	inverseMatrix.getInverse(matrixWorld)
	// 	ray.copy(raycaster.ray).applyMatrix4(inverseMatrix)

	// 	// Check boundingBox before continuing

	// 	if (geometry.boundingBox !== null) {
	// 		if (ray.intersectsBox(geometry.boundingBox) === false) return
	// 	}

	// 	var intersection

	// 	if (geometry.isBufferGeometry) {
	// 		var a, b, c
	// 		var index = geometry.index
	// 		var position = geometry.attributes.position
	// 		var morphPosition = geometry.morphAttributes.position
	// 		var uv = geometry.attributes.uv
	// 		var groups = geometry.groups
	// 		var drawRange = geometry.drawRange
	// 		var i, j, il, jl
	// 		var group, groupMaterial
	// 		var start, end

	// 		if (index !== null) {
	// 			// indexed buffer geometry

	// 			if (Array.isArray(material)) {
	// 				for (i = 0, il = groups.length; i < il; i++) {
	// 					group = groups[i]
	// 					groupMaterial = material[group.materialIndex]

	// 					start = Mathf.max(group.start, drawRange.start)
	// 					end = Mathf.min(group.start + group.count, drawRange.start + drawRange.count)

	// 					for (j = start, jl = end; j < jl; j += 3) {
	// 						a = index.getX(j)
	// 						b = index.getX(j + 1)
	// 						c = index.getX(j + 2)

	// 						intersection = checkBufferGeometryIntersection(
	// 							this,
	// 							groupMaterial,
	// 							raycaster,
	// 							ray,
	// 							position,
	// 							morphPosition,
	// 							uv,
	// 							a,
	// 							b,
	// 							c
	// 						)

	// 						if (intersection) {
	// 							intersection.faceIndex = Mathf.floor(j / 3) // triangle number in indexed buffer semantics
	// 							intersection.face.materialIndex = group.materialIndex
	// 							intersects.push(intersection)
	// 						}
	// 					}
	// 				}
	// 			} else {
	// 				start = Mathf.max(0, drawRange.start)
	// 				end = Mathf.min(index.count, drawRange.start + drawRange.count)

	// 				for (i = start, il = end; i < il; i += 3) {
	// 					a = index.getX(i)
	// 					b = index.getX(i + 1)
	// 					c = index.getX(i + 2)

	// 					intersection = checkBufferGeometryIntersection(
	// 						this,
	// 						material,
	// 						raycaster,
	// 						ray,
	// 						position,
	// 						morphPosition,
	// 						uv,
	// 						a,
	// 						b,
	// 						c
	// 					)

	// 					if (intersection) {
	// 						intersection.faceIndex = Mathf.floor(i / 3) // triangle number in indexed buffer semantics
	// 						intersects.push(intersection)
	// 					}
	// 				}
	// 			}
	// 		} else if (position !== undefined) {
	// 			// non-indexed buffer geometry

	// 			if (Array.isArray(material)) {
	// 				for (i = 0, il = groups.length; i < il; i++) {
	// 					group = groups[i]
	// 					groupMaterial = material[group.materialIndex]

	// 					start = Mathf.max(group.start, drawRange.start)
	// 					end = Mathf.min(group.start + group.count, drawRange.start + drawRange.count)

	// 					for (j = start, jl = end; j < jl; j += 3) {
	// 						a = j
	// 						b = j + 1
	// 						c = j + 2

	// 						intersection = checkBufferGeometryIntersection(
	// 							this,
	// 							groupMaterial,
	// 							raycaster,
	// 							ray,
	// 							position,
	// 							morphPosition,
	// 							uv,
	// 							a,
	// 							b,
	// 							c
	// 						)

	// 						if (intersection) {
	// 							intersection.faceIndex = Mathf.floor(j / 3) // triangle number in non-indexed buffer semantics
	// 							intersection.face.materialIndex = group.materialIndex
	// 							intersects.push(intersection)
	// 						}
	// 					}
	// 				}
	// 			} else {
	// 				start = Mathf.max(0, drawRange.start)
	// 				end = Mathf.min(position.count, drawRange.start + drawRange.count)

	// 				for (i = start, il = end; i < il; i += 3) {
	// 					a = i
	// 					b = i + 1
	// 					c = i + 2

	// 					intersection = checkBufferGeometryIntersection(
	// 						this,
	// 						material,
	// 						raycaster,
	// 						ray,
	// 						position,
	// 						morphPosition,
	// 						uv,
	// 						a,
	// 						b,
	// 						c
	// 					)

	// 					if (intersection) {
	// 						intersection.faceIndex = Mathf.floor(i / 3) // triangle number in non-indexed buffer semantics
	// 						intersects.push(intersection)
	// 					}
	// 				}
	// 			}
	// 		}
	// 	} else if (geometry.isGeometry) {
	// 		var fvA, fvB, fvC
	// 		var isMultiMaterial = Array.isArray(material)

	// 		var vertices = geometry.vertices
	// 		var faces = geometry.faces
	// 		var uvs

	// 		var faceVertexUvs = geometry.faceVertexUvs[0]
	// 		if (faceVertexUvs.length > 0) uvs = faceVertexUvs

	// 		for (var f = 0, fl = faces.length; f < fl; f++) {
	// 			var face = faces[f]
	// 			var faceMaterial = isMultiMaterial ? material[face.materialIndex] : material

	// 			if (faceMaterial === undefined) continue

	// 			fvA = vertices[face.a]
	// 			fvB = vertices[face.b]
	// 			fvC = vertices[face.c]

	// 			intersection = checkIntersection(this, faceMaterial, raycaster, ray, fvA, fvB, fvC, intersectionPoint)

	// 			if (intersection) {
	// 				if (uvs && uvs[f]) {
	// 					var uvs_f = uvs[f]
	// 					uvA.copy(uvs_f[0])
	// 					uvB.copy(uvs_f[1])
	// 					uvC.copy(uvs_f[2])

	// 					intersection.uv = Triangle.getUV(intersectionPoint, fvA, fvB, fvC, uvA, uvB, uvC, new Vector2())
	// 				}

	// 				intersection.face = face
	// 				intersection.faceIndex = f
	// 				intersects.push(intersection)
	// 			}
	// 		}
	// 	}
	// }

	// clone(): Mesh<T> {
	// 	return new Mesh(this.geometry, this.materials).copy(this)
	// }
}

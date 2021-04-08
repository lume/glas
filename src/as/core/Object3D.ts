/**
 * @author mrdoob / http://mrdoob.com/
 * @author mikael emtinger / http://gomo.se/
 * @author alteredq / http://alteredqualia.com/
 * @author WestLangley / http://github.com/WestLangley
 * @author elephantatwork / www.elephantatwork.ch
 * @author Joe Pea / http://github.com/trusktr
 */

import {Quaternion} from '../math/Quaternion'
import {Vector3} from '../math/Vector3'
import {Matrix4} from '../math/Matrix4'
import {EventDispatcher} from './EventDispatcher'
import {Euler} from '../math/Euler'
import {Layers} from './Layers'
// import {Matrix3} from '../math/Matrix3'
// import * as _Math from '../math/Math'
// import {WebGLRenderer} from './../renderers/WebGLRenderer'
// import {Scene} from './../scenes/Scene'
// import {Camera} from './../cameras/Camera'
// import {Geometry} from './Geometry'
// import {Material} from './../materials/Material'
// import {Group} from './../objects/Group'
// import {Raycaster, Intersection} from './Raycaster'
// import {BufferGeometry} from './BufferGeometry'

// DISABLED, because the toJSON() method is disabled
// import {TrianglesDrawMode} from '../constants'

type RenderCallback = () => // TODO
// renderer: WebGLRenderer,
// scene: Scene,
// camera: Camera,

// material: Material,
// group: Group
void

type TraverseCallback = (object: Object3D) => void

let object3DId = 0

const quaternion = new Quaternion()
const vector = new Vector3()
const matrix = new Matrix4()
const target = new Vector3()
const position = new Vector3()
const scale = new Vector3()

const vX = new Vector3(1, 0, 0)
const vY = new Vector3(0, 1, 0)
const vZ = new Vector3(0, 0, 1)

let self: Object3D | null = null

/**
 * Base class for scene graph objects
 */
export class Object3D extends EventDispatcher {
	// static DefaultUp = new Vector3(0, 1, 0)
	static DefaultMatrixAutoUpdate: boolean = true

	/**
	 * Unique number of this object instance.
	 */
	id: i32 = object3DId++

	/**
	 *
	 */
	// uuid = _Math.generateUUID()

	/**
	 * Optional name of the object (doesn't need to be unique).
	 */
	name: string = ''

	/**
	 * Type of the object, as a string
	 */
	type: string = 'Object3D'

	/**
	 * Object's parent in the scene graph.
	 */
	parent: Object3D | null = null

	/**
	 * Array with object's children.
	 */
	children: Object3D[] = []

	/**
	 * Up direction.
	 */
	// up = Object3D.DefaultUp.clone()

	/**
	 * Object's local position.
	 */
	readonly position: Vector3 = new Vector3()

	/**
	 * Object's local rotation (Euler angles), in radians.
	 */
	readonly rotation: Euler = new Euler()

	/**
	 * Global rotation.
	 */
	readonly quaternion: Quaternion = new Quaternion()

	/**
	 * Object's local scale.
	 */
	readonly scale: Vector3 = new Vector3(1, 1, 1)

	readonly modelViewMatrix: Matrix4 = new Matrix4()
	// readonly normalMatrix: Matrix3 = new Matrix3()

	/**
	 * Local transform.
	 */
	matrix: Matrix4 = new Matrix4()

	/**
	 * The global transform of the object. If the Object3d has no parent, then it's identical to the local transform.
	 */
	matrixWorld: Matrix4 = new Matrix4()

	/**
	 * When this is set, it calculates the matrix of position, (rotation or quaternion) and scale every frame and also recalculates the matrixWorld property.
	 */
	matrixAutoUpdate: boolean = Object3D.DefaultMatrixAutoUpdate

	/**
	 * When this is set, it calculates the matrixWorld in that frame and resets this property to false.
	 */
	matrixWorldNeedsUpdate: boolean = false

	layers: Layers = new Layers()

	/**
	 * Object gets rendered if true.
	 */
	visible: boolean = true

	// TODO The following castShadow and receiveShadow properties are for the
	// Mesh class and similar classes. Other types of Object3D like CSS3DObject
	// don't cast or receive shadows, and plain Object3D instances also don't.

	/**
	 * Gets rendered into shadow map.
	 */
	castShadow: boolean = false

	/**
	 * Material gets baked in shadow receiving.
	 */
	receiveShadow: boolean = false

	// XXX (@trusktr), this was moved to Mesh because if the property is defined
	// here, then we were getting compiler/aspect errors. Discussion at
	// https://discord.com/channels/710694854761381938/714242904712806402/714703859926302751
	//the BufferGeometry type might need to be added later...
	// geometry: Geometry //| BufferGeometry

	/**
	 * When this is set, it checks every frame if the object is in the frustum of the camera. Otherwise the object gets drawn every frame even if it isn't visible.
	 */
	frustumCulled: boolean = true

	/**
	 * Overrides the default rendering order of scene graph objects, from lowest to highest renderOrder. Opaque and transparent objects remain sorted independently though. When this property is set for an instance of Group, all descendants objects will be sorted and rendered together.
	 */
	renderOrder: f32 = 0

	/**
	 * An object that can be used to store custom data about the Object3d. It should not hold references to functions as these will not be cloned.
	 * DISABLED: objects with type any are not supported in AS. Users can use a Map in their own scope, and architect their app to pass around their Map instead of relying on passing data on scene objects.
	 */
	// userData: {[key: string]: any} = {}

	/**
	 * Used to check whether this or derived classes are Object3Ds. Default is true.
	 * You should not change this, as it is used internally for optimisation.
	 */
	readonly isObject3D: boolean = true

	/**
	 * True when a subclass is or extends from Camera
	 */
	isCamera: boolean = false

	/**
	 * True when a subclass is or extends from Light
	 */
	protected isLight: boolean = false

	constructor() {
		super()
		self = this

		this.rotation.onChange(() => {
			self!.onRotationChange()
		})
		// this.quaternion.onChange(this.onQuaternionChange)
	}

	private onRotationChange(): void {
		this.quaternion.setFromEuler(this.rotation, false)
	}

	// private onQuaternionChange: () => void = () => {
	// 	this.rotation.setFromQuaternion(this.quaternion, undefined, false)
	// }

	/**
	 * Custom depth material to be used when rendering to the depth map. Can only be used in context of meshes.
	 * When shadow-casting with a DirectionalLight or SpotLight, if you are (a) modifying vertex positions in
	 * the vertex shader, (b) using a displacement map, (c) using an alpha map with alphaTest, or (d) using a
	 * transparent texture with alphaTest, you must specify a customDepthMaterial for proper shadows.
	 *
	 */
	// customDepthMaterial: Material
	// TODO This isn't in the JS file, only in the declaration

	/**
	 * Same as customDepthMaterial, but used with PointLight.
	 */
	// customDistanceMaterial: Material
	// TODO This isn't in the JS file, only in the declaration

	/**
	 * Calls before the object is rendered
	 */
	onBeforeRender: RenderCallback = () => {}

	/**
	 * Calls after the object is rendered
	 */
	onAfterRender: RenderCallback = () => {}

	// /**
	//  * This updates the position, rotation and scale from a matrix.
	//  */
	// applyMatrix(matrix: Matrix4): void {
	// 	if (this.matrixAutoUpdate) this.updateMatrix()

	// 	this.matrix.premultiply(matrix)

	// 	this.matrix.decompose(this.position, this.quaternion, this.scale)
	// }

	// applyQuaternion(quaternion: Quaternion): this {
	// 	this.quaternion.premultiply(quaternion)

	// 	return this
	// }

	// /**
	//  * Rotate the object around an axis
	//  * @param axis A normalized vector to rotate the object around
	//  * @param angle The amount to rotate in radians
	//  */
	// setRotationFromAxisAngle(axis: Vector3, angle: f32): void {
	// 	// assumes axis is normalized

	// 	this.quaternion.setFromAxisAngle(axis, angle)
	// }

	// setRotationFromEuler(euler: Euler): void {
	// 	this.quaternion.setFromEuler(euler, true)
	// }

	// /**
	//  *
	//  * @param matrix The matrix from which to exetract rotation. Assumes the upper
	//  * 3x3 of the matrix is a pure rotation matrix (i.e, unscaled)
	//  */
	// setRotationFromMatrix(matrix: Matrix4): void {
	// 	this.quaternion.setFromRotationMatrix(matrix)
	// }

	// /**
	//  * @param q The normalized quaternion to copy rotation from.
	//  */
	// setRotationFromQuaternion(q: Quaternion): void {
	// 	this.quaternion.copy(q)
	// }

	// /**
	//  * Rotate an object along an axis in object space. The axis is assumed to be normalized.
	//  * @param axis  A normalized vector in object space.
	//  * @param angle  The angle in radians.
	//  */
	// rotateOnAxis(axis: Vector3, angle: f32): this {
	// 	quaternion.setFromAxisAngle(axis, angle)

	// 	this.quaternion.multiply(quaternion)

	// 	return this
	// }

	// /**
	//  * Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	//  * @param axis  A normalized vector in object space.
	//  * @param angle  The angle in radians.
	//  */
	// rotateOnWorldAxis(axis: Vector3, angle: f32): this {
	// 	quaternion.setFromAxisAngle(axis, angle)

	// 	this.quaternion.premultiply(quaternion)

	// 	return this
	// }

	// /**
	//  *
	//  * @param angle
	//  */
	// rotateX(angle: f32): this {
	// 	return this.rotateOnAxis(vX, angle)
	// }

	// /**
	//  *
	//  * @param angle
	//  */
	// rotateY(angle: f32): this {
	// 	return this.rotateOnAxis(vY, angle)
	// }

	// /**
	//  *
	//  * @param angle
	//  */
	// rotateZ(angle: f32): this {
	// 	return this.rotateOnAxis(vZ, angle)
	// }

	// /**
	//  * Translate object by distance along axis in object space. `axis` is assumed to be normalized
	//  * @param axis  A normalized vector in object space.
	//  * @param distance  The distance to translate.
	//  */
	// translateOnAxis(axis: Vector3, distance: f32): this {
	// 	vector.copy(axis).applyQuaternion(this.quaternion)

	// 	this.position.add(vector.multiplyScalar(distance))

	// 	return this
	// }

	// /**
	//  * Translates object along x axis by distance.
	//  * @param distance Distance.
	//  */
	// translateX(distance: f32): this {
	// 	return this.translateOnAxis(vX, distance)
	// }

	// /**
	//  * Translates object along y axis by distance.
	//  * @param distance Distance.
	//  */
	// translateY(distance: f32): this {
	// 	return this.translateOnAxis(vY, distance)
	// }

	// /**
	//  * Translates object along z axis by distance.
	//  * @param distance Distance.
	//  */
	// translateZ(distance: f32): this {
	// 	return this.translateOnAxis(vZ, distance)
	// }

	// /**
	//  * Updates the vector from local space to world space.
	//  * @param vector A local vector.
	//  */
	// localToWorld(vector: Vector3): Vector3 {
	// 	return vector.applyMatrix4(this.matrixWorld)
	// }

	// /**
	//  * Updates the vector from world space to local space.
	//  * @param vector A world vector.
	//  */
	// worldToLocal(vector: Vector3): Vector3 {
	// 	return vector.applyMatrix4(matrix.getInverse(this.matrixWorld))
	// }

	// /**
	//  * Rotates object to face point in space.
	//  * This method does not support objects having non-uniformly-scaled parent(s)
	//  * @param vector A world vector to look at.
	//  */
	// lookAt<T>(x: T, y: f32 = 0, z: f32 = 0): void {
	// 	if (x instanceof Vector3) {
	// 		target.copy(x)
	// 	} else if (isFloat<T>()) {
	// 		target.set(x, y, z)
	// 	}

	// 	const parent = this.parent

	// 	this.updateWorldMatrix(true, false)

	// 	position.setFromMatrixPosition(this.matrixWorld)

	// 	if (this.isCamera || this.isLight) {
	// 		matrix.lookAt(position, target, this.up)
	// 	} else {
	// 		matrix.lookAt(target, position, this.up)
	// 	}

	// 	this.quaternion.setFromRotationMatrix(matrix)

	// 	if (parent) {
	// 		matrix.extractRotation(parent.matrixWorld)
	// 		quaternion.setFromRotationMatrix(matrix)
	// 		this.quaternion.premultiply(quaternion.inverse())
	// 	}
	// }

	/**
	 * Adds object as child of this object.
	 * @param object A single Object3D instance to add, or an array of Object3D instances to add
	 */
	// add<T>(object: T): this {
	add(object: Object3D): this {
		// let o: Object3D | null = null

		// if (Array.isArray<Object3D>(object)) {
		// if (isArray<Object3D>(object)) {
		// 	for (let i = 0, l = object.length; i < l; i++) {
		// 		o = object[i] as Object3D

		// 		this.__add(o)
		// 	}
		// } else
		// if (object instanceof Object3D) {
		this.__add(object)
		// } else {
		// 	throw new Error('Object3D.add: The argument should be an Object3D or Array<Object3D>')
		// }

		return this
	}

	private __add(object: Object3D): void {
		if (object === this) {
			throw new Error("Object3D.add: object can't be added as a child of itself.")
		}

		let parent = object.parent

		// if (object && object.isObject3D) {
		if (parent) {
			parent.remove(object)
		}

		object.parent = this

		// TODO
		// object.dispatchEvent({type: 'added'})

		this.children.push(object)
		// } else {
		// 	throw new Error('Object3D.add: object not an instance of THREE.Object3D.')
		// }
	}

	/**
	 * Removes object as child of this object.
	 * @param object A single Object3D instance to remove, or an array of Object3D instances to remove
	 */
	// remove<T>(object: T): this {
	remove(object: Object3D): this {
		// let o: Object3D | null = null

		// if (Array.isArray<Object3D>(object)) {
		// 	for (let i = 0, l = object.length; i < l; i++) {
		// 		o = object[i] as Object3D

		// 		this.__remove(o)
		// 	}
		// } else
		// if (object instanceof Object3D) {
		this.__remove(object)
		// } else {
		// 	throw new Error('Object3D.remove: The argument should be an Object3D or Array<Object3D>')
		// }

		return this
	}

	private __remove(object: Object3D): void {
		const index = this.children.indexOf(object)

		if (index !== -1) {
			object.parent = null

			// TODO
			// object.dispatchEvent({type: 'removed'})

			this.children.splice(index, 1)
		}
	}

	// /**
	//  * Adds object as a child of this, while maintaining the object's world transform.
	//  * @param object A single Object3D instance TODO support an array of Object3D instances
	//  */
	// attach(object: Object3D): this {
	// 	this.updateWorldMatrix(true, false)

	// 	matrix.getInverse(this.matrixWorld)

	// 	if (object.parent !== null) {
	// 		object.parent.updateWorldMatrix(true, false)

	// 		matrix.multiply(object.parent.matrixWorld)
	// 	}

	// 	object.applyMatrix(matrix)

	// 	object.updateWorldMatrix(false, false)

	// 	this.add(object)

	// 	return this
	// }

	// /**
	//  * Searches through the object's children and returns the first with a matching id.
	//  * @param id  Unique number of the object instance
	//  */
	// getObjectById(id: f32): Object3D | null {
	// 	for (let i = 0, l = this.children.length; i < l; i++) {
	// 		const child = this.children[i]

	// 		if (child.id === id) {
	// 			return child
	// 		}
	// 	}

	// 	return null
	// }

	// /**
	//  * Set the target vector to the world position of the current object.
	//  * @param target The vector to set.
	//  */
	// getWorldPosition(target: Vector3): Vector3 {
	// 	this.updateMatrixWorld(true)

	// 	return target.setFromMatrixPosition(this.matrixWorld)
	// }

	// /**
	//  * Set the target quaternion to the world quaternion of the current object.
	//  * @param target The quaternion to set.
	//  */
	// getWorldQuaternion(target: Quaternion): Quaternion {
	// 	this.updateMatrixWorld(true)

	// 	this.matrixWorld.decompose(position, target, scale)

	// 	return target
	// }

	// /**
	//  * Set the target vector to the world scale of the current object.
	//  * @param target The vector to set.
	//  */
	// getWorldScale(target: Vector3): Vector3 {
	// 	this.updateMatrixWorld(true)

	// 	this.matrixWorld.decompose(position, quaternion, target)

	// 	return target
	// }

	// /**
	//  * Set the target vector to the world direction of the current object.
	//  * @param target The vector to set.
	//  */
	// getWorldDirection(target: Vector3): Vector3 {
	// 	this.updateMatrixWorld(true)

	// 	const e = this.matrixWorld.elements

	// 	return target.set(e[8], e[9], e[10]).normalize()
	// }

	// /**
	//  * Get intersections between a casted ray and this object.
	//  * The resulting points of intersection should be placed in the `intersects` array.
	//  * Subclasses such as Mesh, Line, and Points should implement this method in order to use raycasting.
	//  * @abstract
	//  * @param raycaster A raycaster to use in calculating intersections.
	//  * @param intersects An array in which all intersection points should be placed.
	//  */
	// raycast(raycaster: Raycaster, intersects: Intersection[]): void {}

	/**
	 * Traverses the scene graph tree in pre-order starting at the current object.
	 * @param callback A function which is called for each object in the traversed
	 * tree. It is passed as argument the current object being traversed.
	 */
	traverse(callback: TraverseCallback): void {
		callback(this)

		const children = this.children

		for (let i = 0, l = children.length; i < l; i++) {
			children[i].traverse(callback)
		}
	}

	// /**
	//  * Like the traverse() method, but skips traversing into any object that is not visible.
	//  * @param callback A function which is called for each object in the traversed
	//  * tree, being passed that object as an argument.
	//  */
	// traverseVisible(callback: TraverseCallback): void {
	// 	if (this.visible === false) return

	// 	callback(this)

	// 	const children = this.children

	// 	for (let i = 0, l = children.length; i < l; i++) {
	// 		children[i].traverseVisible(callback)
	// 	}
	// }

	// /**
	//  * Traverse up the tree until reaching the root most object.
	//  * @param callback A function which is called for each object in the upward
	//  * traversal, being passed that object as an argument.
	//  */
	// traverseAncestors(callback: TraverseCallback): void {
	// 	const parent = this.parent

	// 	if (parent !== null) {
	// 		callback(parent)

	// 		parent.traverseAncestors(callback)
	// 	}
	// }

	/**
	 * Composes the local position, rotation, and scale into the local matrix.
	 */
	updateMatrix(): void {
		this.matrix.compose(this.position, this.quaternion, this.scale)

		this.matrixWorldNeedsUpdate = true
	}

	/**
	 * Updates global transform of the object and its children.
	 */
	updateMatrixWorld(force: boolean = false): void {
		if (this.matrixAutoUpdate) this.updateMatrix()

		if (this.matrixWorldNeedsUpdate || force) {
			// save to a variable as AS can not (yet) do nullable type narrowing on properties.
			const parent = this.parent

			if (parent === null) {
				this.matrixWorld.copy(this.matrix)
			} else {
				this.matrixWorld.multiplyMatrices(parent.matrixWorld, this.matrix)
			}

			this.matrixWorldNeedsUpdate = false

			force = true
		}

		// update children

		const children = this.children

		for (let i = 0, l = children.length; i < l; i++) {
			children[i].updateMatrixWorld(force)
		}
	}

	// updateWorldMatrix(updateParents: boolean = false, updateChildren: boolean = false): void {
	// 	var parent = this.parent

	// 	if (updateParents === true && parent !== null) {
	// 		parent.updateWorldMatrix(true, false)
	// 	}

	// 	if (this.matrixAutoUpdate) this.updateMatrix()

	// 	if (this.parent === null) {
	// 		this.matrixWorld.copy(this.matrix)
	// 	} else {
	// 		this.matrixWorld.multiplyMatrices(this.parent.matrixWorld, this.matrix)
	// 	}

	// 	// update children

	// 	if (updateChildren === true) {
	// 		var children = this.children

	// 		for (var i = 0, l = children.length; i < l; i++) {
	// 			children[i].updateWorldMatrix(false, true)
	// 		}
	// 	}
	// }

	/**
	 * TODO, toJSON needs special handling. It would be used by JS to get JSON
	 * representation of the AS object. There's an AS project for json:
	 * https://github.com/nearprotocol/assemblyscript-json
	 */
	// toJSON(meta?: {geometries: any; materials: any; textures: any; images: any}): any {
	// 	// meta is a string when called from JSON.stringify
	// 	var isRootObject = meta === undefined || typeof meta === 'string'

	// 	var output = {}

	// 	// meta is a hash used to collect geometries, materials.
	// 	// not providing it implies that this is the root object
	// 	// being serialized.
	// 	if (isRootObject) {
	// 		// initialize meta obj
	// 		meta = {
	// 			geometries: {},
	// 			materials: {},
	// 			textures: {},
	// 			images: {},
	// 			shapes: {},
	// 		}

	// 		output.metadata = {
	// 			version: 4.5,
	// 			type: 'Object',
	// 			generator: 'Object3D.toJSON',
	// 		}
	// 	}

	// 	// standard Object3D serialization

	// 	var object = {}

	// 	object.uuid = this.uuid
	// 	object.type = this.type

	// 	if (this.name !== '') object.name = this.name
	// 	if (this.castShadow === true) object.castShadow = true
	// 	if (this.receiveShadow === true) object.receiveShadow = true
	// 	if (this.visible === false) object.visible = false
	// 	if (this.frustumCulled === false) object.frustumCulled = false
	// 	if (this.renderOrder !== 0) object.renderOrder = this.renderOrder
	// 	if (JSON.stringify(this.userData) !== '{}') object.userData = this.userData

	// 	object.layers = this.layers.mask
	// 	object.matrix = this.matrix.toArray()

	// 	if (this.matrixAutoUpdate === false) object.matrixAutoUpdate = false

	// 	// object specific properties

	// 	if (this.isMesh && this.drawMode !== TrianglesDrawMode) object.drawMode = this.drawMode

	// 	//

	// 	function serialize(library, element) {
	// 		if (library[element.uuid] === undefined) {
	// 			library[element.uuid] = element.toJSON(meta)
	// 		}

	// 		return element.uuid
	// 	}

	// 	if (this.isMesh || this.isLine || this.isPoints) {
	// 		object.geometry = serialize(meta.geometries, this.geometry)

	// 		var parameters = this.geometry.parameters

	// 		if (parameters !== undefined && parameters.shapes !== undefined) {
	// 			var shapes = parameters.shapes

	// 			if (Array.isArray(shapes)) {
	// 				for (var i = 0, l = shapes.length; i < l; i++) {
	// 					var shape = shapes[i]

	// 					serialize(meta.shapes, shape)
	// 				}
	// 			} else {
	// 				serialize(meta.shapes, shapes)
	// 			}
	// 		}
	// 	}

	// 	if (this.material !== undefined) {
	// 		if (Array.isArray(this.material)) {
	// 			var uuids = []

	// 			for (var i = 0, l = this.material.length; i < l; i++) {
	// 				uuids.push(serialize(meta.materials, this.material[i]))
	// 			}

	// 			object.material = uuids
	// 		} else {
	// 			object.material = serialize(meta.materials, this.material)
	// 		}
	// 	}

	// 	//

	// 	if (this.children.length > 0) {
	// 		object.children = []

	// 		for (var i = 0; i < this.children.length; i++) {
	// 			object.children.push(this.children[i].toJSON(meta).object)
	// 		}
	// 	}

	// 	if (isRootObject) {
	// 		var geometries = extractFromCache(meta.geometries)
	// 		var materials = extractFromCache(meta.materials)
	// 		var textures = extractFromCache(meta.textures)
	// 		var images = extractFromCache(meta.images)
	// 		var shapes = extractFromCache(meta.shapes)

	// 		if (geometries.length > 0) output.geometries = geometries
	// 		if (materials.length > 0) output.materials = materials
	// 		if (textures.length > 0) output.textures = textures
	// 		if (images.length > 0) output.images = images
	// 		if (shapes.length > 0) output.shapes = shapes
	// 	}

	// 	output.object = object

	// 	return output

	// 	// extract data from the cache hash
	// 	// remove metadata on each item
	// 	// and return as array
	// 	function extractFromCache(cache) {
	// 		var values = []
	// 		for (var key in cache) {
	// 			var data = cache[key]
	// 			delete data.metadata
	// 			values.push(data)
	// 		}
	// 		return values
	// 	}
	// }

	// /**
	//  * Clones the current object, returning a new one with all the same property values.
	//  * @param recursive Whether or not to also clone children recursively. If
	//  * true, creates a copy of the current object's whole tree.
	//  */
	// clone(recursive: boolean = false): Object3D {
	// 	return new Object3D().copy(this, recursive)
	// }

	// /**
	//  * Copies all data (and children) of the source object to this object.
	//  * @param source The object to copy from.
	//  * @param recursive Whether or not to also copy children recursively. If true,
	//  * results in copying the whole tree starting at the source as the root.
	//  */
	// copy(source: Object3D, recursive: boolean = false): this {
	// 	if (recursive === undefined) recursive = true

	// 	this.name = source.name

	// 	this.up.copy(source.up)

	// 	this.position.copy(source.position)
	// 	this.quaternion.copy(source.quaternion)
	// 	this.scale.copy(source.scale)

	// 	this.matrix.copy(source.matrix)
	// 	this.matrixWorld.copy(source.matrixWorld)

	// 	this.matrixAutoUpdate = source.matrixAutoUpdate
	// 	this.matrixWorldNeedsUpdate = source.matrixWorldNeedsUpdate

	// 	this.layers.mask = source.layers.mask
	// 	this.visible = source.visible

	// 	this.castShadow = source.castShadow
	// 	this.receiveShadow = source.receiveShadow

	// 	this.frustumCulled = source.frustumCulled
	// 	this.renderOrder = source.renderOrder

	// 	// no `any`-typed userData in AS
	// 	// this.userData = JSON.parse(JSON.stringify(source.userData))

	// 	if (recursive === true) {
	// 		for (var i = 0; i < source.children.length; i++) {
	// 			var child = source.children[i]
	// 			this.add(child.clone())
	// 		}
	// 	}

	// 	return this
	// }
}

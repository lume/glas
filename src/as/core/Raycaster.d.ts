import {Vector3} from './../math/Vector3'
import {Face3} from './Face3'
import {Object3D} from './Object3D'
import {Vector2} from './../math/Vector2'
import {Ray} from './../math/Ray'
import {Camera} from './../cameras/Camera'

export interface Intersection {
	distance: f32
	distanceToRay?: f32
	point: Vector3
	index?: f32
	face?: Face3 | null
	faceIndex?: f32
	object: Object3D
	uv?: Vector2
}

export interface RaycasterParameters {
	Mesh?: any
	Line?: any
	LOD?: any
	Points?: {threshold: f32}
	Sprite?: any
}

export class Raycaster {
	/**
	 * This creates a new raycaster object.
	 * @param origin The origin vector where the ray casts from.
	 * @param direction The direction vector that gives direction to the ray. Should be normalized.
	 * @param near All results returned are further away than near. Near can't be negative. Default value is 0.
	 * @param far All results returned are closer then far. Far can't be lower then near . Default value is Infinity.
	 */
	constructor(origin?: Vector3, direction?: Vector3, near?: f32, far?: f32)

	/** The Ray used for the raycasting. */
	ray: Ray

	/**
	 * The near factor of the raycaster. This value indicates which objects can be discarded based on the
	 * distance. This value shouldn't be negative and should be smaller than the far property.
	 */
	near: f32

	/**
	 * The far factor of the raycaster. This value indicates which objects can be discarded based on the
	 * distance. This value shouldn't be negative and should be larger than the near property.
	 */
	far: f32

	params: RaycasterParameters

	/**
	 * The precision factor of the raycaster when intersecting Line objects.
	 */
	linePrecision: f32

	/**
	 * Updates the ray with a new origin and direction.
	 * @param origin The origin vector where the ray casts from.
	 * @param direction The normalized direction vector that gives direction to the ray.
	 */
	set(origin: Vector3, direction: Vector3): void

	/**
	 * Updates the ray with a new origin and direction.
	 * @param coords 2D coordinates of the mouse, in normalized device coordinates (NDC)---X and Y components should be between -1 and 1.
	 * @param camera camera from which the ray should originate
	 */
	setFromCamera(coords: {x: f32; y: f32}, camera: Camera): void

	/**
	 * Checks all intersection between the ray and the object with or without the descendants. Intersections are returned sorted by distance, closest first.
	 * @param object The object to check for intersection with the ray.
	 * @param recursive If true, it also checks all descendants. Otherwise it only checks intersecton with the object. Default is false.
	 * @param optionalTarget (optional) target to set the result. Otherwise a new Array is instantiated. If set, you must clear this array prior to each call (i.e., array.length = 0;).
	 */
	intersectObject(object: Object3D, recursive?: boolean, optionalTarget?: Intersection[]): Intersection[]

	/**
	 * Checks all intersection between the ray and the objects with or without the descendants. Intersections are returned sorted by distance, closest first. Intersections are of the same form as those returned by .intersectObject.
	 * @param objects The objects to check for intersection with the ray.
	 * @param recursive If true, it also checks all descendants of the objects. Otherwise it only checks intersecton with the objects. Default is false.
	 * @param optionalTarget (optional) target to set the result. Otherwise a new Array is instantiated. If set, you must clear this array prior to each call (i.e., array.length = 0;).
	 */
	intersectObjects(objects: Object3D[], recursive?: boolean, optionalTarget?: Intersection[]): Intersection[]
}

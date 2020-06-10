/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/BufferAttribute.js">src/core/BufferAttribute.js</a>
 */
export class BufferAttribute {
	constructor(array: ArrayLike<number>, itemSize: f32, normalized?: boolean) // array parameter should be TypedArray.

	uuid: string
	array: ArrayLike<number>
	itemSize: f32
	dynamic: boolean
	updateRange: {offset: f32; count: f32}
	version: f32
	normalized: boolean
	needsUpdate: boolean
	count: f32
	onUpload: Function

	setArray(array?: ArrayBufferView): void
	setDynamic(dynamic: boolean): BufferAttribute
	clone(): this
	copy(source: BufferAttribute): this
	copyAt(index1: f32, attribute: BufferAttribute, index2: f32): BufferAttribute
	copyArray(array: ArrayLike<number>): BufferAttribute
	copyColorsArray(colors: {r: f32; g: f32; b: f32}[]): BufferAttribute
	copyVector2sArray(vectors: {x: f32; y: f32}[]): BufferAttribute
	copyVector3sArray(vectors: {x: f32; y: f32; z: f32}[]): BufferAttribute
	copyVector4sArray(vectors: {x: f32; y: f32; z: f32; w: f32}[]): BufferAttribute
	set(value: ArrayLike<number> | ArrayBufferView, offset?: f32): BufferAttribute
	getX(index: f32): f32
	setX(index: f32, x: f32): BufferAttribute
	getY(index: f32): f32
	setY(index: f32, y: f32): BufferAttribute
	getZ(index: f32): f32
	setZ(index: f32, z: f32): BufferAttribute
	getW(index: f32): f32
	setW(index: f32, z: f32): BufferAttribute
	setXY(index: f32, x: f32, y: f32): BufferAttribute
	setXYZ(index: f32, x: f32, y: f32, z: f32): BufferAttribute
	setXYZW(index: f32, x: f32, y: f32, z: f32, w: f32): BufferAttribute
	/**
	 * @deprecated Use {@link BufferAttribute#count .count} instead.
	 */
	length: f32
}

/**
 * @deprecated THREE.Int8Attribute has been removed. Use new THREE.Int8BufferAttribute() instead.
 */
export class Int8Attribute extends BufferAttribute {
	constructor(array: any, itemSize: f32)
}

/**
 * @deprecated THREE.Uint8Attribute has been removed. Use new THREE.Uint8BufferAttribute() instead.
 */
export class Uint8Attribute extends BufferAttribute {
	constructor(array: any, itemSize: f32)
}

/**
 * @deprecated THREE.Uint8ClampedAttribute has been removed. Use new THREE.Uint8ClampedBufferAttribute() instead.
 */
export class Uint8ClampedAttribute extends BufferAttribute {
	constructor(array: any, itemSize: f32)
}

/**
 * @deprecated THREE.Int16Attribute has been removed. Use new THREE.Int16BufferAttribute() instead.
 */
export class Int16Attribute extends BufferAttribute {
	constructor(array: any, itemSize: f32)
}

/**
 * @deprecated THREE.Uint16Attribute has been removed. Use new THREE.Uint16BufferAttribute() instead.
 */
export class Uint16Attribute extends BufferAttribute {
	constructor(array: any, itemSize: f32)
}

/**
 * @deprecated THREE.Int32Attribute has been removed. Use new THREE.Int32BufferAttribute() instead.
 */
export class Int32Attribute extends BufferAttribute {
	constructor(array: any, itemSize: f32)
}

/**
 * @deprecated THREE.Uint32Attribute has been removed. Use new THREE.Uint32BufferAttribute() instead.
 */
export class Uint32Attribute extends BufferAttribute {
	constructor(array: any, itemSize: f32)
}

/**
 * @deprecated THREE.Float32Attribute has been removed. Use new THREE.Float32BufferAttribute() instead.
 */
export class Float32Attribute extends BufferAttribute {
	constructor(array: any, itemSize: f32)
}

/**
 * @deprecated THREE.Float64Attribute has been removed. Use new THREE.Float64BufferAttribute() instead.
 */
export class Float64Attribute extends BufferAttribute {
	constructor(array: any, itemSize: f32)
}

export class Int8BufferAttribute extends BufferAttribute {
	constructor(array: Iterable<number> | ArrayLike<number> | ArrayBuffer, itemSize: f32, normalized?: boolean)
}

export class Uint8BufferAttribute extends BufferAttribute {
	constructor(array: Iterable<number> | ArrayLike<number> | ArrayBuffer, itemSize: f32, normalized?: boolean)
}

export class Uint8ClampedBufferAttribute extends BufferAttribute {
	constructor(array: Iterable<number> | ArrayLike<number> | ArrayBuffer, itemSize: f32, normalized?: boolean)
}

export class Int16BufferAttribute extends BufferAttribute {
	constructor(array: Iterable<number> | ArrayLike<number> | ArrayBuffer, itemSize: f32, normalized?: boolean)
}

export class Uint16BufferAttribute extends BufferAttribute {
	constructor(array: Iterable<number> | ArrayLike<number> | ArrayBuffer, itemSize: f32, normalized?: boolean)
}

export class Int32BufferAttribute extends BufferAttribute {
	constructor(array: Iterable<number> | ArrayLike<number> | ArrayBuffer, itemSize: f32, normalized?: boolean)
}

export class Uint32BufferAttribute extends BufferAttribute {
	constructor(array: Iterable<number> | ArrayLike<number> | ArrayBuffer, itemSize: f32, normalized?: boolean)
}

export class Float32BufferAttribute extends BufferAttribute {
	constructor(array: Iterable<number> | ArrayLike<number> | ArrayBuffer, itemSize: f32, normalized?: boolean)
}

export class Float64BufferAttribute extends BufferAttribute {
	constructor(array: Iterable<number> | ArrayLike<number> | ArrayBuffer, itemSize: f32, normalized?: boolean)
}

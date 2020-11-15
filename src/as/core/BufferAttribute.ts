/**
 * @author mrdoob / http://mrdoob.com/
 * @author corruptedzulu / http://github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */

import {Vector4} from '../math/Vector4'
import {Vector3} from '../math/Vector3'
import {Vector2} from '../math/Vector2'
import {Color} from '../math/Color'

class ArrayWrapper {
	int8Array: Int8Array | null
	float32Array: Int8Array | null
}

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/BufferAttribute.js">src/core/BufferAttribute.js</a>
 */
export class BufferAttribute<T extends ArrayLike<any>> {
	uuid: string
	// array: Float32Array
	array: ArrayLike<number>
	itemSize: i32
	dynamic: boolean
	updateRange: Map<string, i32> //{offset: f32; count: f32}
	version: f32
	normalized: boolean
	needsUpdate: boolean
	count: i32
	onUploadCallback: () => void

	// constructor(array: Float32Array, itemSize: i32, normalized: boolean = true) {
	constructor(array: T, itemSize: i32, normalized: boolean = true) {
		// array parameter should be TypedArray.

		if (!isArrayLike(array)) throw new Error('Expected an array like.')

		// if (
		// 	!(
		// 		array instanceof Int8Array ||
		// 		array instanceof Uint8Array ||
		// 		array instanceof Uint8ClampedArray ||
		// 		array instanceof Int16Array ||
		// 		array instanceof Uint16Array ||
		// 		array instanceof Int32Array ||
		// 		array instanceof Uint32Array ||
		// 		array instanceof Float32Array ||
		// 		array instanceof Float64Array
		// 	)
		// ) {
		// 	throw new Error(
		// 		'Expected array to be Int8Array, Uint8Array, Uint8ClampedArray, Int16Array, Uint16Array, Int32Array, Uint32Array, Float32Array, or Float64Array.'
		// 	)
		// }

		assertTypedArray(array)

		this.array = array
		this.itemSize = itemSize
		//undefined is not in AS
		// this.count = array !== undefined ? array.length / itemSize : 0
		this.count = array.length / itemSize
		this.normalized = normalized /*=== true*/ //switched to default parameter

		this.dynamic = false
		this.updateRange = new Map<string, i32>()
		this.updateRange.set('offset', 0)
		this.updateRange.set('count', -1)
		//{offset: 0, count: -1}

		this.version = 0
	}

	// setArray(array: TypedArray<f32>): this {
	//     this.count = array !== undefined ? array.length / this.itemSize : 0;
	// 	this.array = array;

	// 	return this;
	// }

	// setDynamic(dynamic: boolean): this {
	//     this.dynamic = dynamic;

	// 	return this;
	// }

	// clone(): BufferAttribute {
	//     return new BufferAttribute( this.array, this.itemSize ).copy( this );
	// }

	// copy(source: BufferAttribute): this {

	// 	this.array = new Float32Array( source.array.length );

	// 	for (let i = 0, l = source.array.length; i < l; i++) {
	// 		this.array[i] = source.array[i]
	// 	}

	// 	this.itemSize = source.itemSize;
	// 	this.count = source.count;
	// 	this.normalized = source.normalized;

	// 	this.dynamic = source.dynamic;

	// 	return this;
	// }

	// copyAt(index1: f32, attribute: BufferAttribute, index2: f32): this {
	//     index1 *= this.itemSize;
	// 	index2 *= attribute.itemSize;

	// 	for ( var i = 0, l = this.itemSize; i < l; i ++ ) {

	// 		this.array[ index1 + i ] = attribute.array[ index2 + i ];

	// 	}

	// 	return this;
	// }

	copyArray(array: T): this {
		assertTypedArray(array)

		if (array.length > this.array.length) throw new Error('Source array is bigger than the target array.')

		// TODO, type definitions not working for memory.copy version.
		// memory.copy(array.dataStart, this.array.dataStart, array.length)

		for (let i = 0, l = array.length; i < l; i++) {
			this.array[i] = array[i]
		}

		return this
	}

	copyColorsArray(colors: Color[] /*{r: f32; g: f32; b: f32}[]*/): this {
		var array = this.array,
			offset = 0

		for (var i = 0, l = colors.length; i < l; i++) {
			var color = colors[i]

			//undefined does not exist in As
			// if (color === undefined) {
			// 	//console.warn( 'THREE.BufferAttribute.copyColorsArray(): color is undefined', i );
			// 	color = new Color()
			// }

			array[offset++] = color.r
			array[offset++] = color.g
			array[offset++] = color.b
		}

		return this
	}

	copyVector2sArray(vectors: Vector2[] /*{x: f32; y: f32}[]*/): this {
		var array = this.array,
			offset = 0

		for (var i = 0, l = vectors.length; i < l; i++) {
			var vector = vectors[i]

			//undefined does not exist in AS
			// if (vector === undefined) {
			// 	//console.warn( 'THREE.BufferAttribute.copyVector2sArray(): vector is undefined', i );
			// 	vector = new Vector2()
			// }

			array[offset++] = vector.x
			array[offset++] = vector.y
		}

		return this
	}

	copyVector3sArray(vectors: Vector3[] /*{x: f32; y: f32; z: f32}[]*/): this {
		var array: T = this.array,
			offset: i32 = 0

		for (var i = 0, l = vectors.length; i < l; i++) {
			var vector = vectors[i]

			//undefined does not exist in AS
			// if (vector === undefined) {
			// 	//console.warn( 'THREE.BufferAttribute.copyVector3sArray(): vector is undefined', i );
			// 	vector = new Vector3()
			// }

			array[offset++] = vector.x
			array[offset++] = vector.y
			array[offset++] = vector.z
		}

		return this
	}

	// copyVector4sArray(vectors: {x: f32; y: f32; z: f32; w: f32}[]): this {
	//     var array = this.array, offset = 0;

	// 	for ( var i = 0, l = vectors.length; i < l; i ++ ) {

	// 		var vector = vectors[ i ];

	// 		if ( vector === undefined ) {

	// 			//console.warn( 'THREE.BufferAttribute.copyVector4sArray(): vector is undefined', i );
	// 			vector = new Vector4();

	// 		}

	// 		array[ offset ++ ] = vector.x;
	// 		array[ offset ++ ] = vector.y;
	// 		array[ offset ++ ] = vector.z;
	// 		array[ offset ++ ] = vector.w;

	// 	}

	// 	return this;
	// }

	// set(value: T, offset?: f32): this {

	// 	if ( offset === undefined ) offset = 0;

	// 	this.copyArray(value.subarray(offset))

	// 	// this.array.set( value, offset );

	// 	return this;
	// }

	// getX(index: f32): f32 {
	//     return this.array[ index * this.itemSize ];
	// }

	// setX(index: f32, x: f32): this {
	//     this.array[ index * this.itemSize ] = x;

	// 	return this;
	// }

	// getY(index: f32): f32 {
	//     return this.array[ index * this.itemSize + 1 ];
	// }

	// setY(index: f32, y: f32): this {
	//     this.array[ index * this.itemSize + 1 ] = y;

	// 	return this;
	// }

	// getZ(index: f32): f32 {
	//     return this.array[ index * this.itemSize + 2 ];
	// }

	// setZ(index: f32, z: f32): this {
	//     this.array[ index * this.itemSize + 2 ] = z;

	// 	return this;
	// }

	// getW(index: f32): f32 {
	//     return this.array[ index * this.itemSize + 3 ];
	// }

	// setW(index: f32, w: f32): this {
	//     this.array[ index * this.itemSize + 3 ] = w;

	// 	return this;
	// }

	// setXY(index: f32, x: f32, y: f32): this {
	//     index *= this.itemSize;

	// 	this.array[ index + 0 ] = x;
	// 	this.array[ index + 1 ] = y;

	// 	return this;
	// }

	// setXYZ(index: f32, x: f32, y: f32, z: f32): this {
	//     index *= this.itemSize;

	// 	this.array[ index + 0 ] = x;
	// 	this.array[ index + 1 ] = y;
	// 	this.array[ index + 2 ] = z;

	// 	return this;
	// }

	// setXYZW(index: f32, x: f32, y: f32, z: f32, w: f32): this {
	//     index *= this.itemSize;

	// 	this.array[ index + 0 ] = x;
	// 	this.array[ index + 1 ] = y;
	// 	this.array[ index + 2 ] = z;
	// 	this.array[ index + 3 ] = w;

	// 	return this;
	// }

	onUpload(callback: () => void): this {
		this.onUploadCallback = callback

		return this
	}

	// toJSON(): any {

	// 	return {
	// 		itemSize: this.itemSize,
	// 		// type: this.array.constructor.name,
	// 		// array: Array.prototype.slice.call( this.array ),
	// 		array: this.array,
	// 		normalized: this.normalized
	// 	};

	// }
}

export class Int8BufferAttribute extends BufferAttribute<Int8Array> {
	constructor(array: Int8Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Uint8BufferAttribute extends BufferAttribute<Uint8Array> {
	constructor(array: Uint8Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Uint8ClampedBufferAttribute extends BufferAttribute<Uint8ClampedArray> {
	constructor(array: Uint8ClampedArray, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Int16BufferAttribute extends BufferAttribute<Int16Array> {
	constructor(array: Int16Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Uint16BufferAttribute extends BufferAttribute<Uint16Array> {
	constructor(array: Uint16Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Int32BufferAttribute extends BufferAttribute<Int32Array> {
	constructor(array: Int32Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Uint32BufferAttribute extends BufferAttribute<Uint32Array> {
	constructor(array: Uint32Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Float32BufferAttribute extends BufferAttribute<Float32Array> {
	constructor(array: Float32Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Float64BufferAttribute extends BufferAttribute<Float64Array> {
	constructor(array: Float64Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

function assertTypedArray(value: any): void {
	if (
		!(
			value instanceof Int8Array ||
			value instanceof Uint8Array ||
			value instanceof Uint8ClampedArray ||
			value instanceof Int16Array ||
			value instanceof Uint16Array ||
			value instanceof Int32Array ||
			value instanceof Uint32Array ||
			value instanceof Float32Array ||
			value instanceof Float64Array
		)
	) {
		throw new Error(
			'Expected object to be Int8Array, Uint8Array, Uint8ClampedArray, Int16Array, Uint16Array, Int32Array, Uint32Array, Float32Array, or Float64Array.'
		)
	}
}

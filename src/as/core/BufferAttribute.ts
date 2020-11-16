/**
 * @author mrdoob / http://mrdoob.com/
 * @author corruptedzulu / http://github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */

import {Vector4} from '../math/Vector4'
import {Vector3} from '../math/Vector3'
import {Vector2} from '../math/Vector2'
import {Color} from '../math/Color'

class UpdateRange {
	offset: f32
	count: f32
}

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/BufferAttribute.js">src/core/BufferAttribute.js</a>
 */
export class BufferAttribute<N, A extends ArrayLike<N>> {
	uuid: string
	name: string = ''
	dynamic: boolean
	updateRange: UpdateRange = {offset: 0, count: -1}
	version: f32
	needsUpdate: boolean
	count: i32
	onUploadCallback: () => void

	// constructor(array: Float32Array, itemSize: i32, normalized: boolean = true) {
	constructor(public array: A, public itemSize: i32, public normalized: boolean = true) {
		assertTypedArray(array)

		if (array.length % itemSize != 0) throw new TypeError('array size must be a multiple of itemSize')

		// no undefined in AS
		// this.count = array !== undefined ? array.length / itemSize : 0
		this.count = array.length / itemSize

		this.dynamic = false

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

	copyArray(array: A): this {
		if (array.length > this.array.length) throw new Error('Source array is bigger than the target array.')

		// TODO memory.copy version when we detect AssemblyScript instead of JS
		// memory.copy(array.dataStart, this.array.dataStart, array.length)

		for (let i = 0, l = array.length; i < l; i++) {
			// @ts-ignore TS doesn't like this indexed access, but it is ok in
			// AS. Remove after AS pull request
			// https://github.com/AssemblyScript/assemblyscript/pull/1547
			this.array[i] = array[i]
		}

		return this
	}

	copyColorsArray(colors: Color[]): this {
		var array = this.array

		if (this.itemSize !== 3) throw new TypeError('copyColorsArray can only be used when itemSize is 3.')

		if (colors.length > this.count)
			throw new RangeError('copyColorsArray was called with more colors than fit into array.')

		if (!(array instanceof Float32Array || array instanceof Float64Array))
			throw new TypeError('copyColorsArray only works with Float32BufferAttribute or Float64BufferAttribute.')

		var offset = 0

		for (var i = 0, l = colors.length; i < l; i++) {
			var color = colors[i]

			// undefined does not exist in AS
			// if (color === undefined) {
			// 	//console.warn( 'THREE.BufferAttribute.copyColorsArray(): color is undefined', i );
			// 	color = new Color()
			// }

			// This works in AS, but not TS
			// array[offset++] = color.r
			// array[offset++] = color.g
			// array[offset++] = color.b

			// This works in both AS and TS
			if (array instanceof Float32Array) {
				;(array as Float32Array)[offset++] = color.r
				;(array as Float32Array)[offset++] = color.g
				;(array as Float32Array)[offset++] = color.b
			}
			if (array instanceof Float64Array) {
				;(array as Float64Array)[offset++] = color.r
				;(array as Float64Array)[offset++] = color.g
				;(array as Float64Array)[offset++] = color.b
			}
		}

		return this
	}

	copyVector2sArray(vectors: Vector2[]): this {
		var array = this.array

		if (this.itemSize !== 2) throw new TypeError('copyVector2sArray can only be used when itemSize is 2.')

		if (vectors.length > this.count)
			throw new RangeError('copyVector2sArray was called with more vectors than fit into array.')

		if (!(array instanceof Float32Array || array instanceof Float64Array))
			throw new TypeError('copyVector2sArray only works with Float32BufferAttribute or Float64BufferAttribute.')

		var offset = 0

		for (var i = 0, l = vectors.length; i < l; i++) {
			var vector = vectors[i]

			// undefined does not exist in AS
			// if (vector === undefined) {
			// 	//console.warn( 'THREE.BufferAttribute.copyVector2sArray(): vector is undefined', i );
			// 	vector = new Vector2()
			// }

			if (array instanceof Float32Array) {
				;(array as Float32Array)[offset++] = vector.x
				;(array as Float32Array)[offset++] = vector.y
			}
			if (array instanceof Float64Array) {
				;(array as Float64Array)[offset++] = vector.x
				;(array as Float64Array)[offset++] = vector.y
			}
		}

		return this
	}

	copyVector3sArray(vectors: Vector3[]): this {
		var array = this.array

		if (this.itemSize !== 3) throw new TypeError('copyVector3sArray can only be used when itemSize is 3.')

		if (vectors.length > this.count)
			throw new RangeError('copyVector3sArray was called with more vectors than fit into array.')

		if (!(array instanceof Float32Array || array instanceof Float64Array))
			throw new TypeError('copyVector3sArray only works with Float32BufferAttribute or Float64BufferAttribute.')

		var offset: i32 = 0

		for (var i = 0, l = vectors.length; i < l; i++) {
			var vector = vectors[i]

			// undefined does not exist in AS
			// if (vector === undefined) {
			// 	//console.warn( 'THREE.BufferAttribute.copyVector3sArray(): vector is undefined', i );
			// 	vector = new Vector3()
			// }

			if (array instanceof Float32Array) {
				;(array as Float32Array)[offset++] = vector.x
				;(array as Float32Array)[offset++] = vector.y
				;(array as Float32Array)[offset++] = vector.z
			}
			if (array instanceof Float64Array) {
				;(array as Float64Array)[offset++] = vector.x
				;(array as Float64Array)[offset++] = vector.y
				;(array as Float64Array)[offset++] = vector.z
			}
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

export class Int8BufferAttribute extends BufferAttribute<i8, Int8Array> {
	constructor(array: Int8Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Uint8BufferAttribute extends BufferAttribute<u8, Uint8Array> {
	constructor(array: Uint8Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Uint8ClampedBufferAttribute extends BufferAttribute<u8, Uint8ClampedArray> {
	constructor(array: Uint8ClampedArray, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Int16BufferAttribute extends BufferAttribute<i16, Int16Array> {
	constructor(array: Int16Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Uint16BufferAttribute extends BufferAttribute<u16, Uint16Array> {
	constructor(array: Uint16Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Int32BufferAttribute extends BufferAttribute<i32, Int32Array> {
	constructor(array: Int32Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Uint32BufferAttribute extends BufferAttribute<u32, Uint32Array> {
	constructor(array: Uint32Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Float32BufferAttribute extends BufferAttribute<f32, Float32Array> {
	constructor(array: Float32Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

export class Float64BufferAttribute extends BufferAttribute<f64, Float64Array> {
	constructor(array: Float64Array, itemSize: f32, normalized?: boolean) {
		super(array, itemSize, normalized)
	}
}

function assertTypedArray<T>(value: T): void {
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
			'Expected BufferAttribute `array` arg to be one of: Int8Array, Uint8Array, Uint8ClampedArray, Int16Array, Uint16Array, Int32Array, Uint32Array, Float32Array, or Float64Array.'
		)
	}
}

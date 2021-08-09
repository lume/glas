/**
 * @author mrdoob / http://mrdoob.com/
 * @author corruptedzulu / http://github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */

import { Vector4 } from '../math/Vector4'
import { Vector3 } from '../math/Vector3'
import { Vector2 } from '../math/Vector2'
import { Color } from '../math/Color'
import { fillUint32ArrayWithValues, fillFloat32ArrayWithValues } from './TypedArrayUtils'

class UpdateRange {
	offset: f32
	count: f32
}

export enum ArrayType {
	Int8,
	Uint8,
	Uint8Clamped,
	Int16,
	Uint16,
	Int32,
	Uint32,
	Float32,
	Float64,
}

function getArrayTypeName(arrayType: ArrayType): string {
	// prettier-ignore
	switch (arrayType) {
		case ArrayType.Int8: return 'Int8'
		case ArrayType.Uint8: return 'Uint8'
		case ArrayType.Uint8Clamped: return 'Uint8Clamped'
		case ArrayType.Int16: return 'Int16'
		case ArrayType.Uint16: return 'Uint16'
		case ArrayType.Int32: return 'Int32'
		case ArrayType.Uint32: return 'Uint32'
		case ArrayType.Float32: return 'Float32'
		case ArrayType.Float64: return 'Float64'
		default: throw new TypeError('Invalid value for arrayType.')
	}
}

class TypedArrays {
	Int8: Int8Array = new Int8Array(0)
	Uint8: Uint8Array = new Uint8Array(0)
	Uint8Clamped: Uint8ClampedArray = new Uint8ClampedArray(0)
	Int16: Int16Array = new Int16Array(0)
	Uint16: Uint16Array = new Uint16Array(0)
	Int32: Int32Array = new Int32Array(0)
	Uint32: Uint32Array = new Uint32Array(0)
	Float32: Float32Array = new Float32Array(0)
	Float64: Float64Array = new Float64Array(0)
}

/**
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/core/BufferAttribute.js">src/core/BufferAttribute.js</a>
 */
export class BufferAttribute {
	name: string = ''

	arrays: TypedArrays = new TypedArrays()
	dynamic: boolean = false
	updateRange: UpdateRange = { offset: 0, count: -1 }
	version: i32 = 0

	isBufferAttribute: true = true
	onUploadCallback: () => void = () => {}

	constructor(
		public arrayType: ArrayType,
		public count: i32,
		public itemSize: i32,
		public normalized: boolean = true
	) {
		this.__makeInitialArray()
	}

	private __makeInitialArray(): void {
		const size = this.count * this.itemSize

		// prettier-ignore
		switch (this.arrayType) {
			case ArrayType.Int8: this.arrays.Int8 = new Int8Array(size); break
			case ArrayType.Uint8: this.arrays.Uint8 = new Uint8Array(size); break
			case ArrayType.Uint8Clamped: this.arrays.Uint8Clamped = new Uint8ClampedArray(size); break
			case ArrayType.Int16: this.arrays.Int16 = new Int16Array(size); break
			case ArrayType.Uint16: this.arrays.Uint16 = new Uint16Array(size); break
			case ArrayType.Int32: this.arrays.Int32 = new Int32Array(size); break
			case ArrayType.Uint32: this.arrays.Uint32 = new Uint32Array(size); break
			case ArrayType.Float32: this.arrays.Float32 = new Float32Array(size); break
			case ArrayType.Float64: this.arrays.Float64 = new Float64Array(size); break
			default: throw new TypeError('This should never happen.')
		}
	}

	set needsUpdate(value: boolean) {
		if (value === true) this.version++
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

	copyArray<A extends ArrayLike<number>>(array: A): this {
		if (array instanceof Int8Array) this.copyInt8Array(array)
		else if (array instanceof Uint8Array) this.copyUint8Array(array)
		else if (array instanceof Uint8ClampedArray) this.copyUint8ClampedArray(array)
		else if (array instanceof Int16Array) this.copyInt16Array(array)
		else if (array instanceof Uint16Array) this.copyUint16Array(array)
		else if (array instanceof Int32Array) this.copyInt32Array(array)
		else if (array instanceof Uint32Array) this.copyUint32Array(array)
		else if (array instanceof Float32Array) this.copyFloat32Array(array)
		else if (array instanceof Float64Array) this.copyFloat64Array(array)
		else throw new TypeError('Wrong type for array.')

		return this
	}

	copyInt8Array(array: Int8Array): this {
		this.__checkArrayTypeMatch(array, ArrayType.Int8)
		const thisArray = this.arrays.Int8
		if (array.length > thisArray.length)
			throw new Error('copyInt8Array: Source array is bigger than the target array.')
		for (let i = 0, l = array.length; i < l; i++) thisArray[i] = array[i]
		return this
	}

	copyUint8Array(array: Uint8Array): this {
		this.__checkArrayTypeMatch(array, ArrayType.Uint8)
		const thisArray = this.arrays.Uint8
		if (array.length > thisArray.length)
			throw new Error('copyUint8Array: Source array is bigger than the target array.')
		for (let i = 0, l = array.length; i < l; i++) thisArray[i] = array[i]
		return this
	}

	copyUint8ClampedArray(array: Uint8ClampedArray): this {
		this.__checkArrayTypeMatch(array, ArrayType.Uint8Clamped)
		const thisArray = this.arrays.Uint8Clamped
		if (array.length > thisArray.length)
			throw new Error('copyUint8ClampedArray: Source array is bigger than the target array.')
		for (let i = 0, l = array.length; i < l; i++) thisArray[i] = array[i]
		return this
	}

	copyInt16Array(array: Int16Array): this {
		this.__checkArrayTypeMatch(array, ArrayType.Int16)
		const thisArray = this.arrays.Int16
		if (array.length > thisArray.length)
			throw new Error('copyInt16Array: Source array is bigger than the target array.')
		for (let i = 0, l = array.length; i < l; i++) thisArray[i] = array[i]
		return this
	}

	copyUint16Array(array: Uint16Array): this {
		this.__checkArrayTypeMatch(array, ArrayType.Uint16)
		const thisArray = this.arrays.Uint16
		if (array.length > thisArray.length)
			throw new Error('copyUint16Array: Source array is bigger than the target array.')
		for (let i = 0, l = array.length; i < l; i++) thisArray[i] = array[i]
		return this
	}

	copyInt32Array(array: Int32Array): this {
		this.__checkArrayTypeMatch(array, ArrayType.Int32)
		const thisArray = this.arrays.Int32
		if (array.length > thisArray.length)
			throw new Error('copyInt32Array: Source array is bigger than the target array.')
		for (let i = 0, l = array.length; i < l; i++) thisArray[i] = array[i]
		return this
	}

	copyUint32Array(array: Uint32Array): this {
		this.__checkArrayTypeMatch(array, ArrayType.Uint32)
		const thisArray = this.arrays.Uint32
		if (array.length > thisArray.length)
			throw new Error('copyUint32Array: Source array is bigger than the target array.')
		for (let i = 0, l = array.length; i < l; i++) thisArray[i] = array[i]
		return this
	}

	copyFloat32Array(array: Float32Array): this {
		this.__checkArrayTypeMatch(array, ArrayType.Float32)
		const thisArray = this.arrays.Float32
		if (array.length > thisArray.length)
			throw new Error('copyFloat32Array: Source array is bigger than the target array.')
		for (let i = 0, l = array.length; i < l; i++) thisArray[i] = array[i]
		return this
	}

	copyFloat64Array(array: Float64Array): this {
		this.__checkArrayTypeMatch(array, ArrayType.Float64)
		const thisArray = this.arrays.Float64
		if (array.length > thisArray.length)
			throw new Error('copyFloat64Array: Source array is bigger than the target array.')
		for (let i = 0, l = array.length; i < l; i++) thisArray[i] = array[i]
		return this
	}

	private __checkArrayTypeMatch<T>(array: T, arrayType: ArrayType): void {
		if (
			(arrayType == ArrayType.Int8 && !(array instanceof Int8Array)) ||
			(arrayType == ArrayType.Uint8 && !(array instanceof Uint8Array)) ||
			(arrayType == ArrayType.Uint8Clamped && !(array instanceof Uint8ClampedArray)) ||
			(arrayType == ArrayType.Int16 && !(array instanceof Int16Array)) ||
			(arrayType == ArrayType.Uint16 && !(array instanceof Uint16Array)) ||
			(arrayType == ArrayType.Int32 && !(array instanceof Int32Array)) ||
			(arrayType == ArrayType.Uint32 && !(array instanceof Uint32Array)) ||
			(arrayType == ArrayType.Float32 && !(array instanceof Float32Array)) ||
			(arrayType == ArrayType.Float64 && !(array instanceof Float64Array))
		) {
			throw new Error(
				'Wrong array type provided. Expected it to be an array of ' + getArrayTypeName(arrayType) + '.'
			)
			// TODO Also tell the user which type of array the user provided.
		}
	}

	copyColorsArray(colors: Color[]): this {
		if (this.itemSize !== 3) throw new TypeError('copyColorsArray can only be used when itemSize is 3.')

		if (colors.length > this.count)
			throw new RangeError('copyColorsArray was called with more colors than fit into array.')

		if (!(this.arrayType == ArrayType.Float32 || this.arrayType == ArrayType.Float64))
			throw new TypeError('copyColorsArray only works with Float32BufferAttribute or Float64BufferAttribute.')

		let offset = 0

		for (let i = 0, l = colors.length; i < l; i++) {
			const color = colors[i]

			// undefined does not exist in AS
			// if (color === undefined) {
			// 	//console.warn( 'THREE.BufferAttribute.copyColorsArray(): color is undefined', i );
			// 	color = new Color()
			// }

			if (this.arrayType == ArrayType.Float32) {
				this.arrays.Float32[offset++] = color.r
				this.arrays.Float32[offset++] = color.g
				this.arrays.Float32[offset++] = color.b
			} else if (this.arrayType == ArrayType.Float64) {
				this.arrays.Float64[offset++] = color.r
				this.arrays.Float64[offset++] = color.g
				this.arrays.Float64[offset++] = color.b
			}
		}

		return this
	}

	copyVector2sArray(vectors: Vector2[]): this {
		if (this.itemSize !== 2) throw new TypeError('copyVector2sArray can only be used when itemSize is 2.')

		if (vectors.length > this.count)
			throw new RangeError('copyVector2sArray was called with more vectors than fit into array.')

		if (!(this.arrayType == ArrayType.Float32 || this.arrayType == ArrayType.Float64))
			throw new TypeError('copyVector2sArray only works with Float32BufferAttribute or Float64BufferAttribute.')

		let offset = 0

		for (let i = 0, l = vectors.length; i < l; i++) {
			const vector = vectors[i]

			// undefined does not exist in AS
			// if (vector === undefined) {
			// 	//console.warn( 'THREE.BufferAttribute.copyVector2sArray(): vector is undefined', i );
			// 	vector = new Vector2()
			// }

			if (this.arrayType == ArrayType.Float32) {
				this.arrays.Float32[offset++] = vector.x
				this.arrays.Float32[offset++] = vector.y
			} else if (this.arrayType == ArrayType.Float64) {
				this.arrays.Float64[offset++] = vector.x
				this.arrays.Float64[offset++] = vector.y
			}
		}

		return this
	}

	copyVector3sArray(vectors: Vector3[]): this {
		if (this.itemSize !== 3) throw new TypeError('copyVector3sArray can only be used when itemSize is 3.')

		if (vectors.length > this.count)
			throw new RangeError('copyVector3sArray was called with more vectors than fit into array.')

		if (!(this.arrayType == ArrayType.Float32 || this.arrayType == ArrayType.Float64))
			throw new TypeError('copyVector3sArray only works with Float32BufferAttribute or Float64BufferAttribute.')

		let offset: i32 = 0

		for (let i = 0, l = vectors.length; i < l; i++) {
			const vector = vectors[i]

			// undefined does not exist in AS
			// if (vector === undefined) {
			// 	//console.warn( 'THREE.BufferAttribute.copyVector3sArray(): vector is undefined', i );
			// 	vector = new Vector3()
			// }

			if (this.arrayType == ArrayType.Float32) {
				this.arrays.Float32[offset++] = vector.x
				this.arrays.Float32[offset++] = vector.y
				this.arrays.Float32[offset++] = vector.z
			} else if (this.arrayType == ArrayType.Float64) {
				this.arrays.Float64[offset++] = vector.x
				this.arrays.Float64[offset++] = vector.y
				this.arrays.Float64[offset++] = vector.z
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

	// TODO Make more of the following static from* methods as needed...

	static fromArrayOfUint32(array: u32[], itemSize: i32, normalized: boolean = false): Uint32BufferAttribute {
		if (array.length % itemSize != 0) throw new Error('itemSize does not fit into the array length')
		const attr = new Uint32BufferAttribute(array.length / itemSize, itemSize, normalized)
		attr.copyArray(fillUint32ArrayWithValues(array))
		return attr
	}

	static fromArrayOfFloat32(array: f32[], itemSize: i32, normalized: boolean = false): Float32BufferAttribute {
		if (array.length % itemSize != 0) throw new Error('itemSize does not fit into the array length')
		const attr = new Float32BufferAttribute(array.length / itemSize, itemSize, normalized)
		attr.copyArray(fillFloat32ArrayWithValues(array))
		return attr
	}
}

export class Int8BufferAttribute extends BufferAttribute {
	constructor(count: i32, itemSize: i32, normalized: boolean = false) {
		super(ArrayType.Int8, count, itemSize, normalized)
	}
}

export class Uint8BufferAttribute extends BufferAttribute {
	constructor(count: i32, itemSize: i32, normalized: boolean = false) {
		super(ArrayType.Uint8, count, itemSize, normalized)
	}
}

export class Uint8ClampedBufferAttribute extends BufferAttribute {
	constructor(count: i32, itemSize: i32, normalized: boolean = false) {
		super(ArrayType.Uint8Clamped, count, itemSize, normalized)
	}
}

export class Int16BufferAttribute extends BufferAttribute {
	constructor(count: i32, itemSize: i32, normalized: boolean = false) {
		super(ArrayType.Int16, count, itemSize, normalized)
	}
}

export class Uint16BufferAttribute extends BufferAttribute {
	constructor(count: i32, itemSize: i32, normalized: boolean = false) {
		super(ArrayType.Uint16, count, itemSize, normalized)
	}
}

export class Int32BufferAttribute extends BufferAttribute {
	constructor(count: i32, itemSize: i32, normalized: boolean = false) {
		super(ArrayType.Int32, count, itemSize, normalized)
	}
}

export class Uint32BufferAttribute extends BufferAttribute {
	constructor(count: i32, itemSize: i32, normalized: boolean = false) {
		super(ArrayType.Uint32, count, itemSize, normalized)
	}
}

export class Float32BufferAttribute extends BufferAttribute {
	constructor(count: i32, itemSize: i32, normalized: boolean = false) {
		super(ArrayType.Float32, count, itemSize, normalized)
	}
}

export class Float64BufferAttribute extends BufferAttribute {
	constructor(count: i32, itemSize: i32, normalized: boolean = false) {
		super(ArrayType.Float64, count, itemSize, normalized)
	}
}

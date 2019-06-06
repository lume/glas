    
/** Alias type for value that can be null */
export type Nullable<T> = T | null;
/**
 * Alias type for number that are floats
 * @ignorenaming
 */
//In AS/WASM, we have to use f32 or f64
//export type float = number;
export type float = f32;
/**
 * Alias type for number that are doubles.
 * @ignorenaming
 */
//In AS/WASM, we have to use f32 or f64
// export type double = number;
export type double = f64;
/**
 * Alias type for number that are integer
 * @ignorenaming
 */
//In AS/WASM, we have to use i32 or i64
// export type int = number;
export type int = i32;
export type int64 = i64;

/** Alias type for number array or Float32Array */
export type FloatArray = float[] | Float32Array;
/** Alias type for number array or Float32Array or Int32Array or Uint32Array or Uint16Array */
export type IndicesArray = int[] | Int32Array | Uint32Array | Uint16Array;

/**
 * Alias for types that can be used by a Buffer or VertexBuffer.
 * 
 * AS/WASM requires very strict typing. ArrayBufferView is not strict enough
 */
export type DataArray = 
    ArrayBuffer |
    Int8Array |
    Uint8Array |
    Uint8ClampedArray |
    Int16Array |
    Uint16Array |
    Int32Array |
    Uint32Array |
    Int64Array |
    Uint64Array |
    Float32Array |
    Float64Array

/**
 * Alias type for primitive types
 * @ignorenaming
 */
type Primitive = undefined | null | boolean | string | number | Function;

/**
 * Type modifier to make all the properties of an object Readonly
 */
// export type Immutable<T> = T extends Primitive
//   ? T
//   : T extends Array<infer U>
//   ? ReadonlyArray<U>
//   : /* T extends Map<infer K, infer V> ? ReadonlyMap<K, V> : // es2015+ only */
//   DeepImmutable<T>;

/**
 * Type modifier to make all the properties of an object Readonly recursively
 */
// export type DeepImmutable<T> = T extends Primitive
//   ? T
//   : T extends Array<infer U>
//   ? DeepImmutableArray<U>
//   : /* T extends Map<infer K, infer V> ? DeepImmutableMap<K, V> : // es2015+ only */
//   DeepImmutableObject<T>;

/** @hidden */
//interface DeepImmutableArray<T> extends ReadonlyArray<DeepImmutable<T>> { }
/** @hidden */
/* interface DeepImmutableMap<K, V> extends ReadonlyMap<DeepImmutable<K>, DeepImmutable<V>> {} // es2015+ only */
/** @hidden */
//type DeepImmutableObject<T> = { readonly [K in keyof T]: DeepImmutable<T[K]> };

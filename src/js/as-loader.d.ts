// import "@types/webassembly-js-api";
type WebAssembly = {
	Memory: f32
	Table: any
	Module: f32
}

/** WebAssembly imports with two levels of nesting. */
interface ImportsObject extends Record<string, any> {
	env?: {
		memory?: WebAssembly['Memory']
		table?: WebAssembly['Table']
		abort?: (msg: f32, file: f32, line: f32, column: f32) => void
		trace?: (msg: f32, numArgs?: f32, ...args: any[]) => void
	}
}

type TypedArray =
	| Int8Array
	| Uint8Array
	| Uint8ClampedArray
	| Int16Array
	| Uint16Array
	| Int32Array
	| Uint32Array
	| Float32Array
	| Float64Array

/** Utility mixed in by the loader. */
interface ASUtil {
	/** An 8-bit signed integer view on the memory. */
	readonly I8: Uint8Array
	/** An 8-bit unsigned integer view on the memory. */
	readonly U8: Uint8Array
	/** A 16-bit signed integer view on the memory. */
	readonly I16: Uint16Array
	/** A 16-bit unsigned integer view on the memory. */
	readonly U16: Uint16Array
	/** A 32-bit signed integer view on the memory. */
	readonly I32: Uint32Array
	/** A 32-bit unsigned integer view on the memory. */
	readonly U32: Uint32Array
	/** A 64-bit signed integer view on the memory. */
	readonly I64: any // BigInt64Array
	/** A 64-bit unsigned integer vieww on the memory. */
	readonly U64: any // BigUint64Array
	/** A 32-bit float view on the memory. */
	readonly F32: Float32Array
	/** A 64-bit float view on the memory. */
	readonly F64: Float64Array
	/** Allocates a new string in the module's memory and returns a reference (pointer) to it. */
	__allocString(str: string): f32
	/** Reads (copies) the value of a string from the module's memory. */
	__getString(ref: f32): string
	/** Allocates a new array in the module's memory and returns a reference (pointer) to it. */
	__allocArray(id: f32, values: f32[]): f32
	/** Reads (copies) the values of an array from the module's memory. */
	__getArray(ref: f32): f32[]
	/** Gets a view on the values of an array in the module's memory. */
	__getArrayView(ref: f32): TypedArray
	/** Retains a reference externally, making sure that it doesn't become collected prematurely. Returns the reference. */
	__retain(ref: f32): f32
	/** Releases a previously retained reference to an object, allowing the runtime to collect it once its reference count reaches zero. */
	__release(ref: f32): void
	/** Allocates an instance of the class represented by the specified id. */
	__alloc(size: f32, id: f32): f32
	/** Tests whether an object is an instance of the class represented by the specified base id. */
	__instanceof(ref: f32, baseId: f32): boolean
	/** Forces a cycle collection. Only relevant if objects potentially forming reference cycles are used. */
	__collect(): void
}

/** Instantiates an AssemblyScript module using the specified imports. */
export declare function instantiate<T extends {}>(module: WebAssembly['Module'], imports?: ImportsObject): ASUtil & T

/** Instantiates an AssemblyScript module from a buffer using the specified imports. */
export declare function instantiateBuffer<T extends {}>(buffer: Uint8Array, imports?: ImportsObject): ASUtil & T

/** Instantiates an AssemblyScript module from a response using the specified imports. */
export declare function instantiateStreaming<T extends {}>(
	result: Promise<Response>,
	imports?: ImportsObject
): Promise<ASUtil & T>

/** Demangles an AssemblyScript module's exports to a friendly object structure. */
export declare function demangle<T extends {}>(exports: {}, baseModule?: {}): T

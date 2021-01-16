export function fillFloat32ArrayWithValues(source: f32[], typedArray: Float32Array | null = null): Float32Array {
	let length = source.length

	if (typedArray && length != typedArray.length) throw new Error('Length mismatch.')

	if (!typedArray) typedArray = new Float32Array(length)

	for (let x: i32 = 0; x < length; x++) {
		typedArray[x] = source[x]
	}

	return typedArray
}

export function fillUint16ArrayWithValues(source: u16[], typedArray: Uint16Array | null = null): Uint16Array {
	let length = source.length

	if (typedArray && length != typedArray.length) throw new Error('Length mismatch.')

	if (!typedArray) typedArray = new Uint16Array(length)

	for (let x: i32 = 0; x < length; x++) {
		typedArray[x] = source[x]
	}

	return typedArray
}

export function fillUint32ArrayWithValues(source: u32[], typedArray: Uint32Array | null = null): Uint32Array {
	if (!Array.isArray(source)) throw new Error('source must be an Array')

	let length = source.length

	if (typedArray && length != typedArray.length) throw new Error('Length mismatch.')

	if (!typedArray) typedArray = new Uint32Array(length)

	for (let x: i32 = 0; x < length; x++) {
		typedArray[x] = source[x]
	}

	return typedArray
}

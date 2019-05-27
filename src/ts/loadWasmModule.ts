// TODO get type defs for WebAssembly
declare const WebAssembly: any

export async function loadWasmModule<T>(file: string, imports: T) {
	const response = await fetch(file)
	return (await WebAssembly.instantiateStreaming(response, imports)).instance.exports

	// ------------------ alternative
	// const response = await fetch(file)
	// const buffer = await response.arrayBuffer()
	// return (await WebAssembly.instantiate(buffer, imports)).instance

	// ------------------ alternative
	// const response = await fetch(file)
	// const buffer = await response.arrayBuffer()
	// const compiled = new WebAssembly.Module(buffer)
	// const instance = new WebAssembly.Instance(compiled, imports)
	// return instance
}

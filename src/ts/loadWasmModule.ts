import {instantiateStreaming} from '../js/as-loader.js'

// TODO get type defs for WebAssembly
// declare const WebAssembly: any

export async function loadWasmModule<TModule>(file: string, imports: any) {
	return instantiateStreaming<TModule>(fetch(file), imports)

	// ------------------ alternative method
	// const response = await fetch(file)
	// return (await WebAssembly.instantiateStreaming(response, imports)).instance.exports

	// ------------------ alternative method
	// const response = await fetch(file)
	// const buffer = await response.arrayBuffer()
	// return (await WebAssembly.instantiate(buffer, imports)).instance

	// ------------------ alternative method
	// const response = await fetch(file)
	// const buffer = await response.arrayBuffer()
	// const compiled = new WebAssembly.Module(buffer)
	// const instance = new WebAssembly.Instance(compiled, imports)
	// return instance
}

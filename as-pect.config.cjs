const util = require('util')
const deasync = require('deasync')
const promiseSync = deasync(util.callbackify(promise => promise))
const importSync = specifier => promiseSync(import(specifier))

const gl = require('gl')(640, 480, {preserveDrawingBuffer: true})

/** @type {typeof import('aswebglue/src/ASWebGLue.js')} */
const {initASWebGLue} = importSync('aswebglue/src/ASWebGLue.js')

// Mock the document to trick ASWebGLue when it needs to get a canvas.
global.document = {
	getElementById() {
		// a fake <canvas>
		const canvas = {
			getContext() {
				return gl
			},
		}

		return canvas
	},
}

module.exports = {
	/**
	 * A set of globs passed to the glob package that qualify typescript files for testing.
	 */
	include: ['src/as/index.spec.ts'],
	/**
	 * A set of globs passed to the glob package that qualify files to be added to each test.
	 */
	add: ['src/as/**/*.include.ts'],
	/**
	 * All the compiler flags needed for this test suite. Make sure that a binary file is output.
	 */
	flags: {
		'--debug': [],
		/** This is required. Do not change this. The filename is ignored, but required by the compiler. */
		'--binaryFile': ['output.wasm'],
		/** To enable wat file output, use the following flag. The filename is ignored, but required by the compiler. */
		// "--textFile": ["output.wat"],
	},
	/**
	 * A set of regexp that will disclude source files from testing.
	 */
	disclude: [/node_modules/],
	/**
	 * Add your required AssemblyScript imports here.
	 */
	imports(memory, createImports, instantiateSync, binary) {
		// const imports = {env: {seed: Date.now, memory: new WebAssembly.Memory({initial: 100})}}
		let imports = initASWebGLue({env: {seed: Date.now, memory}})

		// We need to grab these methods first, otherwise as-pect's
		// createImports function currently has an issue that will convert the
		// functions into empty objects.
		// https://github.com/jtenner/as-pect/issues/333
		const {shouldLogAborts, setExports} = imports

		imports = createImports(imports)

		const result = instantiateSync(binary, imports)

		setExports(result.exports)
		shouldLogAborts(false)

		return result
	},
}

const util = require('util')
const deasync = require('deasync')
const promiseSync = deasync(util.callbackify(promise => promise))
const importSync = specifier => promiseSync(import(specifier))

///////////// setup document + canvas/webgl
const webgl = require('webgl-raub')
const {Document} = require('glfw-raub')

Document.setWebgl(webgl) // plug this WebGL impl into the Document

const doc = new Document()
global.document = global.window = doc

///////////// setup aswebglue

/** @type {typeof import('aswebglue/src/ASWebGLue.js')} */
const {ASWebGLReady, initASWebGLue, print} = importSync('aswebglue/src/ASWebGLue.js')

const imports = {
	env: {seed: Date.now, memory: new WebAssembly.Memory({initial: 100})},
}

initASWebGLue(imports)

// console.log(ASWebGLReady, initASWebGLue, print)
// process.exit(0)

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
		/** To select an appropriate runtime, use the --runtime compiler flag. */
		'--runtime': ['full'], // Acceptable values are: full, half, stub (arena), and none
	},
	/**
	 * A set of regexp that will disclude source files from testing.
	 */
	disclude: [/node_modules/],
	/**
	 * Add your required AssemblyScript imports here.
	 */
	imports,
}

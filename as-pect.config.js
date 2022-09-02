import { initASWebGLue } from 'aswebglue/src/ASWebGLue.js'

///////////// Setup a fake document that allows creating canvases from which webgl contexts can be created. {{

import webgl from 'webgl-raub'
import gflw from 'glfw-raub'
const { Document } = gflw
Document.setWebgl(webgl)

const doc = new Document()
global.document = global.window = doc

// Trick ASWebGLue by returning a new canvas for any ID, since there is no real DOM.
global.document.getElementById = () => {
	return document.createElement('canvas')
}

// }}

export default {
	/**
	 * A set of globs passed to the glob package that qualify typescript files for testing.
	 */
	entries: ['src/as/index.spec.ts'],
	/**
	 * A set of globs passed to the glob package that quality files to be added to each test.
	 */
	include: ['src/as/**/*.include.ts'],
	/**
	 * A set of regexp that will disclude source files from testing.
	 */
	disclude: [/node_modules/],
	/**
	 * Add your required AssemblyScript imports here.
	 */
	async instantiate(memory, createImports, instantiate, binary) {
		const myImports = initASWebGLue({
			env: {
				seed: Date.now,
				memory,
				'Date.now': Date.now.bind(Date),
			},
		})
		const { shouldLogAborts, setExports } = myImports

		const imports = createImports(myImports)
		const result = await instantiate(binary, imports)

		setExports(result.exports)
		shouldLogAborts(false)

		return result
	},
	/** Enable code coverage. */
	coverage: ['src/as/**/*.ts'],
	/**
	 * Specify if the binary wasm file should be written to the file system.
	 */
	outputBinary: false,
}

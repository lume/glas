module.exports = {
	/**
	 * A set of globs passed to the glob package that qualify typescript files for testing.
	 */
	include: ['src/as/**/*.spec.ts'],
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
	imports: {},
}

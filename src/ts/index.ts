import {loadWasmModule} from './loadWasmModule'
// import 'assemblyscript/std/portable'

/// TODO this should probalbly be an interface with class to
type GlasModule = {
	main(): void
}

type RunOptions = {
	mode?: 'optimized' | 'untouched'
}

async function runGlas(options: RunOptions = {}) {
	const module = `../as/glas-${options.mode || 'optimized'}.wasm`

	const start = performance.now()

	// this is currently broken, and we need a better way to test this out.
	const {
		exports: {main, __getString},
	} = await loadWasmModule<GlasModule>(module, {
		env: {
			// this is called by `assert()`ions in the AssemblyScript std libs.
			// Useful for debugging.
			abort(msg: number, file: number, line: number, column: number) {
				console.log(
					`msg: ${(msg && __getString(msg)) || msg}\n`,
					`file: ${(file && __getString(file)) || file}\n`,
					`line: ${line}\n`,
					`col: ${column}\n`
				)
			},
		},
		console: {
			log(msg: number) {
				console.log(`msg: ${(msg && __getString(msg)) || msg}`)
			},
		},
	})
	const end = performance.now()
	console.log(options.mode + ' module load time:', end - start)

	const start2 = performance.now()
	main()
	const end2 = performance.now()
	console.log(options.mode + ' run time:', end2 - start2)
}

function main(mode: RunOptions) {
	runGlas(mode)
}

main({mode: 'untouched'})
// main({mode: 'optimized'})
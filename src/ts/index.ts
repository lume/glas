import {loadWasmModule} from './loadWasmModule'
// import 'assemblyscript/std/portable'

main()

function main() {
	runGlas({mode: 'untouched'})
	runGlas({mode: 'optimized'})
}

type GlasModule = {
	main(): void
}

async function runGlas(options: RunOptions = {}) {
	const module = `../as/${options.mode || 'optimized'}.wasm`

	const start = performance.now()

	// this is currently broken, and we need a better way to test this out.
	const {
		exports: {
			main,
			__getString
		}
	} = await loadWasmModule<GlasModule>(module, {
		env: {
			// this is called by `assert()`ions in the AssemblyScript std libs.
			// Useful for debugging.
			abort(msg: f32, file: f32, line: f32, column: f32) {
				console.log(
					`msg: ${(msg && __getString(msg)) || msg}\n`,
					`file: ${(file && __getString(file)) || file}\n`,
					`line: ${line}\n`,
					`col: ${column}\n`
				)
			},
		},
		console: {
			log(msg: f32) {
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

type RunOptions = {
	mode?: 'optimized' | 'untouched'
}

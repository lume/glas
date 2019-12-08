import {loadWasmModule} from './loadWasmModule'
// import 'assemblyscript/std/portable'

main()

function main() {
	true && runGlas({mode: 'untouched'})
	true && runGlas({mode: 'optimized'})
}

type GlasModule = {
	main(): void
}

async function runGlas(options: RunOptions = {}) {
	const module = `../as/${options.mode || 'optimized'}.wasm`

	const {main, __getString} = await loadWasmModule<GlasModule>(module, {
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

	main()

	console.log('done running glas')
}

type RunOptions = {
	mode?: 'optimized' | 'untouched'
}

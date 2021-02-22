import {instantiate} from '@assemblyscript/loader/index.js'

// TODO this should probalbly be an interface with class to
type GlasModule = {
	main(): void
}

type ModuleSource = string | Parameters<typeof instantiate>[0]

type RunOptions = {
	module: ModuleSource // path to Wasm module file
}

// FIXME The type for the `url` property of `import.meta` is missing.
declare global {
	interface ImportMeta {
		url: string
	}
}

export async function run(options: RunOptions) {
	let module = options.module

	if (typeof module === 'string') module = fetch(module)

	const start = performance.now()

	const {
		exports: {main, __getString},
	} = await instantiate<GlasModule>(module, {
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
	console.log('Module load time:', end - start)

	const start2 = performance.now()

	main()

	const end2 = performance.now()
	console.log('Module run time:', end2 - start2)
}

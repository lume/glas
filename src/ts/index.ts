import {loadWasmModule} from './loadWasmModule'
import {html} from './html-template-tag'
// import 'assemblyscript/std/portable'
// type Layers = import('../as/glas/core/Layers').Layers

main()

function main() {
	true && runMul({mode: 'untouched'})
	true && runMul({mode: 'optimized'})

	true && runGlas({mode: 'untouched'})
	true && runGlas({mode: 'optimized'})
}

// TODO move module types to the definition site
type MulModule = {
	mul(a: number, b: number): number
	test(): boolean
}

async function runMul(options: RunOptions = {}) {
	const dependencies = {
		env: {
			// this is called by `assert()`ions in the AssemblyScript std libs.
			// Useful for debugging.
			abort(...args: unknown[]) {
				console.log(...args)
			},

			// any members of this object are passed to the wasm
			// module. The values must be primitive types, or
			// functions accepting and/or returning primitive types.
			getFour() {
				return 4
			},
		},
	}

	// the ../build/optimized.wasm file is generated from the index.ts file,
	// with the `npm run asbuild` command.
	// const {mul} = await loadWasmModule('../as/mul/optimized.wasm', dependencies)
	const {mul, test} = await loadWasmModule<MulModule>(`../as/mul/${options.mode || 'optimized'}.wasm`, dependencies)

	if (test()) console.log('Mul test passed!')

	document.head.insertAdjacentHTML(
		'beforeend',
		html`
			<style>
				html,
				body {
					height: 100%;
					margin: 0;
					overflow: hidden;
					background: #111;
					color: white;
				}
				canvas {
					display: block;
					height: 100%;
				}
			</style>
		`
	)

	document.body.insertAdjacentHTML(
		'beforeend',
		html`
			<div id="result"></div>
		`
	)

	const result = document.getElementById('result')!
	let count = 0

	const update = () => {
		// call WebAssembly function from JS.
		result.innerHTML = html`
			<h1>The result is: ${mul(3, ++count)}</h1>
		`
	}

	update()
	setInterval(update, 1000)
}

type GlasModule = {
	main(): void
}

async function runGlas(options: RunOptions = {}) {
	const module = `../as/glas/${options.mode || 'optimized'}.wasm`

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

	console.log('done running glass')

	// if (testSize()) console.log('Size tests passed!')
	// else console.log('Size tests failed!')

	// if (testBezierCurveInterpolate()) console.log('BezierCurve interpolate tests passed!')
	// else console.log('BezierCurve interpolate tests failed!')
}

type RunOptions = {
	mode?: 'optimized' | 'untouched'
}

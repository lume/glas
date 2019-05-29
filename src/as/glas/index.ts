// The entry file of the WebAssembly module.

import {Size} from './Size'

function testSize(): boolean {
	let s = new Size(20, 30)
	s = s.add(new Size(40, 50))

	const a = new Array<f64>(1)
	const b = new Array<f64>(1)

	a.push(s.width)
	b.push(s.height)

	assert(s.width === 60, 's.width is not 60, got ' + a.toString())
	assert(s.height === 80, 's.height is not 80, got ' + b.toString())

	return true
}

export {testSize}

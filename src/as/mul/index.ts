// The entry file of the WebAssembly module.

import {mul} from './mul'

function test(): boolean {
	const result = mul(3, 4)
	assert(result, 'Expected 16. Got: ' + result.toString())
	return true
}

export {mul, test}

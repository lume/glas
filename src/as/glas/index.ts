// The entry file of the WebAssembly module.

// this doesn't work, see https://github.com/AssemblyScript/assemblyscript/issues/618
// import {dtoa} from '../../../node_modules/assemblyscript/std/assembly/util/number'
// import {dtoa} from 'util/number'
// dtoa(123.4)

function testSize(): void {
	// FIXME this one doesn't work, see
	// https://github.com/AssemblyScript/assemblyscript/issues/623
	//
	// let s = new Size(20, 30)
	// const other = new Size(40, 50)
	// s = s.addBroken(other)
	// assert(s.width == 60, 's.width is not 60, got ' + s.width.toString())
	// assert(s.height == 80, 's.height is not 80, got ' + s.height.toString())
	// assertDimensions(s, 60, 80)
}

export {testSize}

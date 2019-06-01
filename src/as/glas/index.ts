// The entry file of the WebAssembly module.

import {Size} from './Size'

// this doesn't work, see https://github.com/AssemblyScript/assemblyscript/issues/618
// import {dtoa} from '../../../node_modules/assemblyscript/std/assembly/util/number'
// import {dtoa} from 'util/number'
// dtoa(123.4)

function testSize(): boolean {
	let s = new Size(20, 30)
	const other = new Size(40, 50)

	assert(s.getClassName() == 'Size', 'Size class name is not Size')

	assert(s.toString() == '{W: 20.0, H: 30.0}', 'toString should be "{W: 20.0, H: 30.0}". Got: "' + s.toString() + '"')

	const hash = s.getHashCode()
	assert(
		hash == u64(15031326706302451712),
		'getHashCode value was ' + hash.toString() + '. Expected 15031326706302451712'
	)

	// FIXME this one doesn't work, see
	// https://github.com/AssemblyScript/assemblyscript/issues/623
	//
	// s = s.addBroken(other)
	// assert(s.width == 60, 's.width is not 60, got ' + s.width.toString())
	// assert(s.height == 80, 's.height is not 80, got ' + s.height.toString())
	// assertDimensions(s, 60, 80)

	other.set(1, 2)
	s.copyFrom(other)
	assertDimensions(s, 1, 2)

	other.set(3.45, 74.32)
	s.set(other.width, other.height)
	assertDimensions(s, 3.45, 74.32)

	other.set(2, 3)
	s.set(3, 4)
	s.multiply(other)
	assertDimensions(s, 6, 12)

	s.multiplyFloats(3, 2)
	assertDimensions(s, 18, 24)

	other.set(18, 24)
	assert(s.equals(other), 's does not equal other. Got: ' + s.toString() + ' and ' + other.toString())

	const surface = s.surface
	const expected = 18 * 24
	assert(surface == expected, 's surface is not ' + expected.toString() + '. Got: ' + surface.toString())

	s.copyFrom(Size.Zero())
	assertDimensions(s, 0, 0)

	other.set(1.2, 2.3)
	s.set(3.4, 4.5)
	s.add(other)
	assertDimensions(s, 4.6, 6.8)

	s.set(3.4, 4.5)
	other.set(1.2, 2.3)
	s.subtract(other)
	assertDimensions(s, 2.2, 2.2)

	other.set(0, 0)
	s.lerp(other, other.clone().set(100, 200), 0.345)
	assertDimensions(s, 34.5, 69)

	return true
}

function assertDimensions(s: Size, w: f64, h: f64): void {
	assert(
		s.width == w && s.height == h,
		'Wrong dimensions. Expected {W: ' + w.toString() + ', H: ' + h.toString() + '}. Got: ' + s.toString()
	)
}

export {testSize}

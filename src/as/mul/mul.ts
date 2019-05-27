import {getFour} from './imports'

// this is exported so it can be called on the JS side.
export function mul(a: i32, b: i32): i32 {
	return a * b + getFour()
}

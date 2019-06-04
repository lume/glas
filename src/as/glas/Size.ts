// Migrating: methods modify `this` and return `this`, instead of returning `new Size`. This makes memory use more efficient.
//
// Old code:
//
//   const newSize = size.add(otherSize)
//
// New code (not recommended):
//
//   const newSize = size.clone().add(otherSize)
//
// Recommended (don't create new objects):
//
//   size.add(otherSize)

import {Vector2} from './Vector2'

export class Size extends Vector2 {
	public set width(val: f64) {
		this.x = val
	}

	public get width(): f64 {
		return this.x
	}

	public set height(val: f64) {
		this.y = val
	}

	public get height(): f64 {
		return this.y
	}

	/**
	 * Returns a string with the Size width and height
	 * @override
	 * @returns a string with the Size width and height
	 */
	public toString(): string {
		// toString doesn't work on getters (f.e. this.width.toString()) so we
		// need to first save them on variables (bug:
		// https://github.com/AssemblyScript/assemblyscript/issues/628)
		const W = this.width
		const H = this.height
		return '{W: ' + W.toString() + ', H: ' + H.toString() + '}'
	}

	/**
	 * "Size"
	 * @returns the string "Size"
	 */
	public getClassName(): string {
		return 'Size'
	}

	/**
	 * Clones the size
	 * @returns a new Size copied from the given one.
	 */
	public clone(): Size {
		return new Size(this.width, this.height)
	}

	/**
	 * Create a new size of zero
	 * @returns a new Size set to (0.0, 0.0)
	 */
	public static Zero(): Size {
		return new Size(0, 0)
	}

	// this is a method that shows a bug in AssemblyScript (see the commented code in testSize)
	public addBroken(other: Size): Size {
		return new Size(this.width + other.width, this.height + other.height)
	}
}

// default exports not yet supported, see https://github.com/jtenner/as-pect/issues/71
// export default Size

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

export class Size {
	width: f64
	height: f64

	/**
	 * Creates a Size object from the given width and height (floats).
	 * @param width width of the new size
	 * @param height height of the new size
	 */
	constructor(width: f64, height: f64) {
		this.width = width
		this.height = height
	}

	/**
	 * Returns a string with the Size width and height
	 * @returns a string with the Size width and height
	 */
	toString(): string {
		// TODO this toString won't work because the numbers aren't auto-coerced
		// to strings yet.
		return '{W: ' + this.width.toString() + ', H: ' + this.height.toString() + '}'
	}

	/**
	 * "Size"
	 * @returns the string "Size"
	 */
	getClassName(): string {
		return 'Size'
	}

	/**
	 * Returns the Size hash code.
	 * @returns a hash code for a unique width and height
	 */
	// getHashCode(): string {
	getHashCode(): u64 {
		// TODO original implementation doesn't work, bitwise-xor not allowed on
		// f64 types at the moment?
		let hash = reinterpret<u64>(this.width)
		hash = (hash * 397) ^ reinterpret<u64>(this.height)
		return hash

		// return this.toString()
	}

	/**
	 * Updates the current size from the given one.
	 * @param src the given size
	 */
	copy(src: Size): this {
		this.width = src.width
		this.height = src.height
		return this
	}

	/**
	 * Updates in place the current Size from the given floats.
	 * @param width width to set
	 * @param height height to set
	 * @returns the updated Size.
	 */
	set(width: f64, height: f64): this {
		this.width = width
		this.height = height
		return this
	}
	/**
	 * Multiplies the width and height by the other Size
	 * @param other Another Size object to multiply this one by.
	 * @returns the updated Size.
	 */
	multiply(other: Size): this {
		return this.set(this.width * other.width, this.height * other.height)
	}

	/**
	 * Multiplies the width and height by numbers
	 * @param w factor to multiply the width by
	 * @param h factor to multiply the height by
	 * @returns the updated Size.
	 */
	multiplyFloats(w: f64, h: f64): this {
		return this.set(this.width * w, this.height * h)
	}

	/**
	 * Clones the size
	 * @returns a new Size copied from the given one.
	 */
	clone(): Size {
		return new Size(this.width, this.height)
	}

	/**
	 * True if the current Size and the given one width and height are strictly equal.
	 * @param other the other size to compare against
	 * @returns True if the current Size and the given one width and height are strictly equal.
	 */
	equals(other: Size): boolean {
		return this.width == other.width && this.height == other.height
	}

	/**
	 * The surface area of the Size : width * height (float).
	 */
	get area(): f64 {
		return this.width * this.height
	}

	/**
	 * Create a new size of zero
	 * @returns a new Size set to (0.0, 0.0)
	 */
	static Zero(): Size {
		return new Size(0.0, 0.0)
	}

	// this is a method that shows a bug in AssemblyScript (see the commented code in testSize)
	addBroken(other: Size): Size {
		return new Size(this.width + other.width, this.height + other.height)
	}

	/**
	 * Adds the width and height of another Size
	 * @param other size to add to this Size
	 * @returns the updated Size.
	 */
	add(other: Size): this {
		return this.set(this.width + other.width, this.height + other.height)
	}

	/**
	 * Subtracts the width and height of another Size
	 * @param other size to subtract from this Size
	 * @returns the updated Size.
	 */
	subtract(other: Size): this {
		return this.set(this.width - other.width, this.height - other.height)
	}

	/**
	 * Creates a new Size set at the linear interpolation "amount" between "start" and "end"
	 * @param start starting size to lerp between
	 * @param end end size to lerp between
	 * @param amount amount to lerp between the start and end values. A number in the range of 0 to 1, inclusive.
	 * @returns the updated Size.
	 */
	lerp(start: Size, end: Size, amount: f64): this {
		return this.set(
			start.width + (end.width - start.width) * amount,
			start.height + (end.height - start.height) * amount
		)
	}
}

// default exports not yet supported
// export default Size

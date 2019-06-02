import {Size} from './Size'

describe('Size', (): void => {
	describe('.getClassName', (): void => {
		test('it should return the name of the class', (): void => {
			const s = new Size(0, 0)
			expect<string>(s.getClassName()).toBe('Size')
		})
	})

	describe('.toString', (): void => {
		it('should return a string representation of the Size', (): void => {
			const s = new Size(20.0, 30.0)
			expect<string>(s.toString()).toBe('{W: 20.0, H: 30.0}')
		})
	})

	describe('.getHashCode', (): void => {
		it('should return a unique hash representation of the Size', (): void => {
			const s = new Size(20, 30)
			expect<u64>(s.getHashCode()).toBe(u64(15031326706302451712))
		})
	})

	describe('.copy', (): void => {
		it('should copy values from another Size', (): void => {
			const s = new Size(0, 0)
			const o = new Size(20, 30)
			s.copy(o)
			assertDimensions(s, 20, 30)
		})
	})

	describe('.set', (): void => {
		it('should set the width and height values', (): void => {
			const s = new Size(0, 0)
			s.set(2.4, 3.5)
			assertDimensions(s, 2.4, 3.5)
		})
	})

	describe('.multiply', (): void => {
		it('should multiply the values of the Size object by another Size', (): void => {
			const s = new Size(2, 3)
			const o = new Size(4, 3)
			s.multiply(o)
			assertDimensions(s, 8, 9)
		})
	})

	describe('.multiplyFloats', (): void => {
		it('should multiply the values of the Size object by another Size', (): void => {
			const s = new Size(2, 3)
			s.multiplyFloats(4, 3)
			assertDimensions(s, 8, 9)
		})
	})

	describe('.equals', (): void => {
		it('should test if this Size equals the given Size', (): void => {
			const s = new Size(2, 3)
			const o = new Size(2, 3)
			expect<boolean>(s.equals(o)).toBe(true)
		})
	})

	describe('.area', (): void => {
		it('returns the surface area of the Size', (): void => {
			const s = new Size(2, 3)
			expect<f64>(s.area).toBe(6)
		})
	})

	describe('.Zero', (): void => {
		it('create a new Size with dimensions 0,0', (): void => {
			const s = Size.Zero()
			assertDimensions(s, 0, 0)
		})
	})

	describe('.add', (): void => {
		it('should add another Size to this Size', (): void => {
			const s = new Size(20.1, 30.2)
			const other = new Size(40.3, 50.4)
			s.add(other)
			assertDimensions(s, 60.4, 80.6)
		})
	})

	describe('.subtract', (): void => {
		it('should subtract another Size from this Size', (): void => {
			const s = new Size(10, 20)
			const other = new Size(5, 10)
			s.subtract(other)
			assertDimensions(s, 5, 10)
		})
	})

	describe('.lerp', (): void => {
		it('should subtract another Size from this Size', (): void => {
			const s = new Size(0, 0)
			s.lerp(Size.Zero(), new Size(100, 200), 0.345)
			assertDimensions(s, 34.5, 69)
		})
	})
})

function assertDimensions(s: Size, width: f64, height: f64): void {
	expect<f64>(s.width).toBe(width)
	expect<f64>(s.height).toBe(height)
}

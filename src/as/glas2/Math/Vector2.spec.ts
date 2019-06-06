import {Vector2} from './Vector2'

describe('Vector2', (): void => {
	describe('.getClassName', (): void => {
		test('it should return the name of the class', (): void => {
			const v = new Vector2(0, 0)
			expect<string>(v.getClassName()).toBe('Vector2')
		})
	})

	describe('.toString', (): void => {
		it('should return a string representation of the object', (): void => {
			const v = new Vector2(20.0, 30.0)
			expect<string>(v.toString()).toBe('{X: 20.0, Y: 30.0}')
		})
	})

	describe('.intoArray', (): void => {
		it('should insert X and Y values into an array', (): void => {
			const v = new Vector2(20.0, 30.0)
			const array: f64[] = [0, 0, 0, 0, 0, 0]
			v.intoArray(array)
			expectArraysEqual<f64>(array, [20.0, 30.0, 0, 0, 0, 0])
		})
	})

	describe('.asArray', (): void => {
		it('should create an array of length 2 containing X and Y dimensions', (): void => {
			const v = new Vector2(20.0, 30.0)
			const a = v.asArray()
			expectArraysEqual<f64>(a, [20.0, 30.0])
		})
	})

	describe('.copy', (): void => {
		it("should set the current Vector2's properties from another Vector2", (): void => {
			const v = new Vector2(1, 2)
			const o = new Vector2(3, 4)
			v.copy(o)
			expectDimensions(v, 3, 4)
		})
	})

	describe('.set', (): void => {
		it('should set the X and Y dimensions given two floats', (): void => {
			const v = new Vector2(1, 2)
			v.set(3, 4)
			expectDimensions(v, 3, 4)
		})
	})

	describe('.add', (): void => {
		it('should add another Vector2 to this Vector2', (): void => {
			const v = new Vector2(20.1, 30.2)
			const other = new Vector2(40.3, 50.4)
			v.add(other)
			expectDimensions(v, 60.4, 80.6)
		})
	})

	describe('.subtract', (): void => {
		it('should subtract another Vector2 from this Vector2', (): void => {
			const v = new Vector2(10, 20)
			const other = new Vector2(5, 10)
			v.subtract(other)
			expectDimensions(v, 5, 10)
		})
	})

	describe('.multiply', (): void => {
		it('should multiply the values of the Vector2 object by another Vector2', (): void => {
			const v = new Vector2(2, 3)
			const o = new Vector2(4, 3)
			v.multiply(o)
			expectDimensions(v, 8, 9)
		})
	})

	describe('.multiplyFloats', (): void => {
		it('should multiply the values of the Vector2 object by another Vector2', (): void => {
			const v = new Vector2(2, 3)
			v.multiplyFloats(4, 3)
			expectDimensions(v, 8, 9)
		})
	})

	describe('.divide', (): void => {
		it('should divide the values of the Vector2 object by another Vector2', (): void => {
			const v = new Vector2(9, 8)
			const o = new Vector2(3, 2)
			v.divide(o)
			expectDimensions(v, 3, 4)
		})
	})

	describe('.negate', (): void => {
		it('should negate the values of the current Vector2', (): void => {
			const v = new Vector2(9, 8)
			v.negate()
			expectDimensions(v, -9, -8)
		})
	})

	describe('.scale', (): void => {
		it('should scale the values of the current Vector2', (): void => {
			const v = new Vector2(9, 8)
			v.scale(2)
			expectDimensions(v, 18, 16)
		})
	})

	describe('.equals', (): void => {
		it('should test if this Vector2 equals the given Vector2', (): void => {
			const v = new Vector2(2, 3)
			const o = new Vector2(2, 3)
			expect<boolean>(v.equals(o)).toBe(true)
		})
	})

	describe('.floor', (): void => {
		it("floors the current vector's coordinates", (): void => {
			const v = new Vector2(2.123, 3.734)
			v.floor()
			expectDimensions(v, 2, 3)
		})
	})

	describe('.round', (): void => {
		it("rounds the current vector's coordinates", (): void => {
			const v = new Vector2(2.123, 3.734)
			v.round()
			expectDimensions(v, 2, 4)
		})
	})

	describe('.fract', (): void => {
		it("rounds the current vector's coordinates", (): void => {
			const v = new Vector2(2.123, 3.734)
			v.fract()
			expectDimensionsClosely(v, 0.123, 0.734, 10)
		})
	})

	describe('.length', (): void => {
		it("rounds the current vector's coordinates", (): void => {
			const v = new Vector2(2, 3)
			expect<f64>(v.length).toBe(Math.sqrt(2 * 2 + 3 * 3))
		})
	})

	describe('.lengthSquared', (): void => {
		it("rounds the current vector's coordinates", (): void => {
			const v = new Vector2(2, 3)
			expect<f64>(v.lengthSquared).toBe(2 * 2 + 3 * 3)
		})
	})

	describe('.normalize', (): void => {
		it("rounds the current vector's coordinates", (): void => {
			const v = new Vector2(2, 3)
			v.normalize()
			expect<f64>(v.length).toBe(1)
		})
	})

	describe('.clone', (): void => {
		it('returns a new vector with the same coordinates as the current one', (): void => {
			const v = new Vector2(2, 3)
			const o = v.clone()
			expect<boolean>(v.equals(o)).toBe(true)
		})
	})

	describe('.Zero', (): void => {
		it('create a new Vector2 with dimensions 0,0', (): void => {
			const v = Vector2.Zero()
			expectDimensions(v, 0, 0)
		})
	})

	describe('.One', (): void => {
		it('create a new Vector2 with dimensions 1,1,', (): void => {
			const v = Vector2.One()
			expectDimensions(v, 1, 1)
		})
	})

	describe('.CatmullRom', (): void => {
		it('Creates a new Vector2 located at "amount" (float) on the CatmullRom spline defined by the given four Vector2', (): void => {
			const v1 = new Vector2(0, 0)
			const v2 = new Vector2(0.5, 1)
			const v3 = new Vector2(1, 1)
			const v4 = new Vector2(1.5, 0)

			// verified on this CatmullRom calculator: https://www.desmos.com/calculator/552cpvzfxw
			expectDimensions(Vector2.CatmullRom(v1, v2, v3, v4, 0), 0.5, 1)
			expectDimensions(Vector2.CatmullRom(v1, v2, v3, v4, 0.3), 0.65, 1.105)
			expectDimensions(Vector2.CatmullRom(v1, v2, v3, v4, 0.53), 0.765, 1.1245500000000002)
			expectDimensions(Vector2.CatmullRom(v1, v2, v3, v4, 0.78), 0.89, 1.0858)
			expectDimensions(Vector2.CatmullRom(v1, v2, v3, v4, 1), 1, 1)
		})
	})

	describe('.Clamp', (): void => {
		it('TODO', (): void => {
			expect<boolean>(true).toBe(true)
		})
	})

	describe('.Hermite', (): void => {
		it('TODO', (): void => {
			expect<boolean>(true).toBe(true)
		})
	})

	describe('.Lerp', (): void => {
		it('TODO', (): void => {
			expect<boolean>(true).toBe(true)
		})
	})

	describe('.Dot', (): void => {
		it('TODO', (): void => {
			expect<boolean>(true).toBe(true)
		})
	})

	describe('.Minimize', (): void => {
		it('TODO', (): void => {
			expect<boolean>(true).toBe(true)
		})
	})

	describe('.Maximize', (): void => {
		it('TODO', (): void => {
			expect<boolean>(true).toBe(true)
		})
	})

	describe('.PointInTriangle', (): void => {
		it('TODO', (): void => {
			expect<boolean>(true).toBe(true)
		})
	})

	describe('.Distance', (): void => {
		it('TODO', (): void => {
			expect<boolean>(true).toBe(true)
		})
	})

	describe('.DistanceSquared', (): void => {
		it('TODO', (): void => {
			expect<boolean>(true).toBe(true)
		})
	})

	describe('.Center', (): void => {
		it('TODO', (): void => {
			expect<boolean>(true).toBe(true)
		})
	})

	describe('.DistanceOfPointFromSegment', (): void => {
		it('TODO', (): void => {
			expect<boolean>(true).toBe(true)
		})
	})
})

function expectDimensions(v: Vector2, x: f64, y: f64): void {
	expect<f64>(v.x).toBe(x)
	expect<f64>(v.y).toBe(y)
}

function expectDimensionsClosely(v: Vector2, x: f64, y: f64, decimals: i32 = 3): void {
	expect<f64>(v.x).toBeCloseTo(x, decimals)
	expect<f64>(v.y).toBeCloseTo(y, decimals)
}

function expectArraysEqual<T>(a: T[], b: T[]): void {
	expect<i32>(a.length).toBe(b.length)

	for (let i = 0, l = a.length; i < l; i++) {
		expect<T>(a[i]).toBe(b[i])
	}
}

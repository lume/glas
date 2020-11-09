/**
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author corruptedzulu / http://github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */

import {Vector2} from './Vector2'
// import {Matrix3} from './Matrix3'
// import { BufferAttribute } from '../glas/core/BufferAttribute';
import {x, y /*, eps*/} from './test-constants'

describe('Vector2', (): void => {
	test('.Instancing', (): void => {
		var a = new Vector2()
		expect(a.x).toBe(0)
		expect(a.y).toBe(0)

		a = new Vector2(x, y)
		expect(a.x).toBe(x)
		expect(a.y).toBe(y)
		expect(a.width).toBe(x)
		expect(a.height).toBe(y)
	})

	test('properties', (): void => {
		const a = new Vector2(0, 0)
		const width: f32 = 100
		const height: f32 = 200

		a.width = width
		a.height = height

		expect(a.width).toBe(width)
		expect(a.height).toBe(height)

		a.set(width, height)
		expect(a.width).toStrictEqual(width)
		expect(a.height).toStrictEqual(height)
	})

	test('set', (): void => {
		var a = new Vector2()
		expect(a.x).toBe(0)
		expect(a.y).toBe(0)

		a.set(x, y)
		expect(a.x).toBe(x)
		expect(a.y).toBe(y)
	})

	todo('setScalar')
	todo('setX')
	todo('setY')
	todo('setComponent')
	todo('getComponent')

	test('clone', (): void => {
		const a = new Vector2(1.2, 3.4)
		const b = a.clone()
		expect(b.x).toBe(1.2)
		expect(b.y).toBe(3.4)
	})

	test('copy', (): void => {
		var a = new Vector2(x, y)
		var b = new Vector2()
		b.copy(a)

		expect(b.x).toBe(x)
		expect(b.y).toBe(y)

		a.x = 0
		a.y = -1
		expect(b.x).toBe(x)
		expect(b.y).toBe(y)
	})

	// describe('add', (): void => {
	// 	test('', (): void => {
	// 		var a = new Vector2(x, y)
	// 		var b = new Vector2(-x, -y)

	// 		a.add(b)
	// 		expect(b.x).toBe(0)
	// 		expect(b.y).toBe(0)

	// 		var c = new Vector2().addVectors(b, b)
	// 		expect(c.x).toBe(-2 * x)
	// 		expect(c.y).toBe(-2 * y)
	// 	})
	// })

	// describe('addScalar', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('addVectors', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('addScaledVector', (): void => {
	// 	test('', (): void => {
	// 		var a = new Vector2(x, y)
	// 		var b = new Vector2(2, 3)
	// 		var s = 3

	// 		a.addScaledVector(b, s)
	// 		expect(a.x).toStrictEqual(x + b.x * s)
	// 		expect(a.y).toStrictEqual(y + b.y * s)
	// 	})
	// })

	// describe('sub', (): void => {
	// 	test('', (): void => {
	// 		var a = new Vector2(x, y)
	// 		var b = new Vector2(-x, -y)

	// 		a.sub(b)
	// 		expect(a.x).toBe(2 * x)
	// 		expect(a.y).toBe(2 * y)

	// 		var c = new Vector2().subVectors(a, a)
	// 		expect(c.x).toBe(0)
	// 		expect(c.y).toBe(0)
	// 	})
	// })

	// describe('subScalar', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('subVectors', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('multiply', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('multiplyScalar', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('divide', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('divideScalar', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('applyMatrix3', (): void => {
	// 	test('', (): void => {
	// 		var a = new Vector2(x, y)
	// 		var m = new Matrix3().set(2, 3, 5, 7, 11, 13, 17, 19, 23)

	// 		a.applyMatrix3(m)
	// 		expect(a.x).toStrictEqual(18)
	// 		expect(a.y).toStrictEqual(60)
	// 	})
	// })

	// describe('min', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('max', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('clamp', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('clampScalar', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('clampLength', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('floor', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('ceil', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('round', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('roundToZero', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('negate', (): void => {
	// 	test('', (): void => {
	// 		var a = new Vector2(x, y)

	// 		a.negate()
	// 		expect(a.x).toBe(-x)
	// 		expect(a.y).toBe(-y)
	// 	})
	// })

	// describe('dot', (): void => {
	// 	test('', (): void => {
	// 		var a = new Vector2(x, y)
	// 		var b = new Vector2(-x, -y)
	// 		var c = new Vector2()

	// 		var result = a.dot(b)
	// 		expect(result).toBe(-x * x - y * y)

	// 		var result = a.dot(c)
	// 		expect(result).toBe(0)
	// 	})
	// })

	// describe('cross', (): void => {
	// 	test('', (): void => {
	// 		var a = new Vector2(x, y)
	// 		var b = new Vector2(2 * x, -y)
	// 		var answer = -18
	// 		var crossed = a.cross(b)

	// 		expect(Mathf.abs(answer - crossed)).toBeLessThanOrEqualTo(eps)
	// 	})
	// })

	// describe('lengthSq', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('length', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('manhattanLength', (): void => {
	// 	test('', (): void => {
	// 		var a = new Vector2(x, 0)
	// 		var b = new Vector2(0, -y)
	// 		var c = new Vector2()

	// 		expect(a.manhattanLength()).toStrictEqual(x)
	// 		expect(b.manhattanLength()).toStrictEqual(y)
	// 		expect(c.manhattanLength()).toStrictEqual(0)

	// 		a.set(x, y)
	// 		expect(a.manhattanLength()).toStrictEqual(Mathf.abs(x) + Mathf.abs(y))
	// 	})
	// })

	// describe('normalize', (): void => {
	// 	test('', (): void => {
	// 		var a = new Vector2(x, 0)
	// 		var b = new Vector2(0, -y)

	// 		a.normalize()
	// 		expect(a.length()).toBe(1)
	// 		expect(a.x).toBe(1)

	// 		b.normalize()
	// 		expect(b.length()).toBe(1)
	// 		expect(b.y).toBe(-1)
	// 	})
	// })

	// describe('angle', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('distanceTo', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('distanceToSquared', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('manhattanDistanceTo', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('setLength', (): void => {
	// 	test('', (): void => {
	// 		var a = new Vector2(x, 0)

	// 		expect(a.length()).toBe(x)

	// 		a.setLength(y)
	// 		expect(a.length()).toBe(y)

	// 		var a = new Vector2(0, 0)
	// 		expect(a.length()).toBe(0)
	// 		a.setLength(y)
	// 		expect(a.length()).toBe(0)
	// 		//setLength requires a length specified
	// 		// a.setLength();
	// 		// expect(a.length).toBeNaN()
	// 	})
	// })

	// describe('lerp', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('lerpVectors', (): void => {
	// 	test('', (): void => {
	// 		// expect(width)
	// 	})
	// })

	// describe('equals', (): void => {
	//     test('', (): void => {
	//         var a = new Vector2( x, 0 );
	// 		var b = new Vector2( 0, - y );

	//         expect(a.x).
	// 		assert.ok( a.x != b.x, "Passed!" );
	// 		assert.ok( a.y != b.y, "Passed!" );

	// 		assert.ok( ! a.equals( b ), "Passed!" );
	// 		assert.ok( ! b.equals( a ), "Passed!" );

	// 		a.copy( b );
	// 		assert.ok( a.x == b.x, "Passed!" );
	// 		assert.ok( a.y == b.y, "Passed!" );

	// 		assert.ok( a.equals( b ), "Passed!" );
	// 		assert.ok( b.equals( a ), "Passed!" );
	//     })
	// })

	// describe('fromArray', (): void => {
	//     test('', (): void => {
	//         var a = new Vector2();
	// 		var array = [ 1, 2, 3, 4 ];

	// 		a.fromArray( array );
	// 		assert.strictEqual( a.x, 1, "No offset: check x" );
	// 		assert.strictEqual( a.y, 2, "No offset: check y" );

	// 		a.fromArray( array, 2 );
	// 		assert.strictEqual( a.x, 3, "With offset: check x" );
	// 		assert.strictEqual( a.y, 4, "With offset: check y" );
	//     })
	// })
})

// export default QUnit.module( 'Maths', () => {

// 	QUnit.module( 'Vector2', () => {

// 		QUnit.test( "toArray", ( assert ) => {

// 			var a = new Vector2( x, y );

// 			var array = a.toArray();
// 			assert.strictEqual( array[ 0 ], x, "No array, no offset: check x" );
// 			assert.strictEqual( array[ 1 ], y, "No array, no offset: check y" );

// 			var array = [];
// 			a.toArray( array );
// 			assert.strictEqual( array[ 0 ], x, "With array, no offset: check x" );
// 			assert.strictEqual( array[ 1 ], y, "With array, no offset: check y" );

// 			var array = [];
// 			a.toArray( array, 1 );
// 			assert.strictEqual( array[ 0 ], undefined, "With array and offset: check [0]" );
// 			assert.strictEqual( array[ 1 ], x, "With array and offset: check x" );
// 			assert.strictEqual( array[ 2 ], y, "With array and offset: check y" );

// 		} );

// 		QUnit.test( "fromBufferAttribute", ( assert ) => {

// 			var a = new Vector2();
// 			var attr = new BufferAttribute( new Float32Array( [ 1, 2, 3, 4 ] ), 2 );

// 			a.fromBufferAttribute( attr, 0 );
// 			assert.strictEqual( a.x, 1, "Offset 0: check x" );
// 			assert.strictEqual( a.y, 2, "Offset 0: check y" );

// 			a.fromBufferAttribute( attr, 1 );
// 			assert.strictEqual( a.x, 3, "Offset 1: check x" );
// 			assert.strictEqual( a.y, 4, "Offset 1: check y" );

// 		} );

// 		QUnit.todo( "rotateAround", ( assert ) => {

// 			assert.ok( false, "everything's gonna be alright" );

// 		} );

// 		// TODO (Itee) refactor/split
// 		QUnit.test( "setX,setY", ( assert ) => {

// 			var a = new Vector2();
// 			assert.ok( a.x == 0, "Passed!" );
// 			assert.ok( a.y == 0, "Passed!" );

// 			a.setX( x );
// 			a.setY( y );
// 			assert.ok( a.x == x, "Passed!" );
// 			assert.ok( a.y == y, "Passed!" );

// 		} );
// 		QUnit.test( "setComponent,getComponent", ( assert ) => {

// 			var a = new Vector2();
// 			assert.ok( a.x == 0, "Passed!" );
// 			assert.ok( a.y == 0, "Passed!" );

// 			a.setComponent( 0, 1 );
// 			a.setComponent( 1, 2 );
// 			assert.ok( a.getComponent( 0 ) == 1, "Passed!" );
// 			assert.ok( a.getComponent( 1 ) == 2, "Passed!" );

// 		} );
// 		QUnit.test( "multiply/divide", ( assert ) => {

// 			var a = new Vector2( x, y );
// 			var b = new Vector2( - x, - y );

// 			a.multiplyScalar( - 2 );
// 			assert.ok( a.x == x * - 2, "Passed!" );
// 			assert.ok( a.y == y * - 2, "Passed!" );

// 			b.multiplyScalar( - 2 );
// 			assert.ok( b.x == 2 * x, "Passed!" );
// 			assert.ok( b.y == 2 * y, "Passed!" );

// 			a.divideScalar( - 2 );
// 			assert.ok( a.x == x, "Passed!" );
// 			assert.ok( a.y == y, "Passed!" );

// 			b.divideScalar( - 2 );
// 			assert.ok( b.x == - x, "Passed!" );
// 			assert.ok( b.y == - y, "Passed!" );

// 		} );
// 		QUnit.test( "min/max/clamp", ( assert ) => {

// 			var a = new Vector2( x, y );
// 			var b = new Vector2( - x, - y );
// 			var c = new Vector2();

// 			c.copy( a ).min( b );
// 			assert.ok( c.x == - x, "Passed!" );
// 			assert.ok( c.y == - y, "Passed!" );

// 			c.copy( a ).max( b );
// 			assert.ok( c.x == x, "Passed!" );
// 			assert.ok( c.y == y, "Passed!" );

// 			c.set( - 2 * x, 2 * y );
// 			c.clamp( b, a );
// 			assert.ok( c.x == - x, "Passed!" );
// 			assert.ok( c.y == y, "Passed!" );

// 			c.set( - 2 * x, 2 * x );
// 			c.clampScalar( - x, x );
// 			assert.equal( c.x, - x, "scalar clamp x" );
// 			assert.equal( c.y, x, "scalar clamp y" );

// 		} );
// 		QUnit.test( "rounding", ( assert ) => {

// 			assert.deepEqual( new Vector2( - 0.1, 0.1 ).floor(), new Vector2( - 1, 0 ), "floor .1" );
// 			assert.deepEqual( new Vector2( - 0.5, 0.5 ).floor(), new Vector2( - 1, 0 ), "floor .5" );
// 			assert.deepEqual( new Vector2( - 0.9, 0.9 ).floor(), new Vector2( - 1, 0 ), "floor .9" );

// 			assert.deepEqual( new Vector2( - 0.1, 0.1 ).ceil(), new Vector2( 0, 1 ), "ceil .1" );
// 			assert.deepEqual( new Vector2( - 0.5, 0.5 ).ceil(), new Vector2( 0, 1 ), "ceil .5" );
// 			assert.deepEqual( new Vector2( - 0.9, 0.9 ).ceil(), new Vector2( 0, 1 ), "ceil .9" );

// 			assert.deepEqual( new Vector2( - 0.1, 0.1 ).round(), new Vector2( 0, 0 ), "round .1" );
// 			assert.deepEqual( new Vector2( - 0.5, 0.5 ).round(), new Vector2( 0, 1 ), "round .5" );
// 			assert.deepEqual( new Vector2( - 0.9, 0.9 ).round(), new Vector2( - 1, 1 ), "round .9" );

// 			assert.deepEqual( new Vector2( - 0.1, 0.1 ).roundToZero(), new Vector2( 0, 0 ), "roundToZero .1" );
// 			assert.deepEqual( new Vector2( - 0.5, 0.5 ).roundToZero(), new Vector2( 0, 0 ), "roundToZero .5" );
// 			assert.deepEqual( new Vector2( - 0.9, 0.9 ).roundToZero(), new Vector2( 0, 0 ), "roundToZero .9" );
// 			assert.deepEqual( new Vector2( - 1.1, 1.1 ).roundToZero(), new Vector2( - 1, 1 ), "roundToZero 1.1" );
// 			assert.deepEqual( new Vector2( - 1.5, 1.5 ).roundToZero(), new Vector2( - 1, 1 ), "roundToZero 1.5" );
// 			assert.deepEqual( new Vector2( - 1.9, 1.9 ).roundToZero(), new Vector2( - 1, 1 ), "roundToZero 1.9" );

// 		} );
// 		QUnit.test( "length/lengthSq", ( assert ) => {

// 			var a = new Vector2( x, 0 );
// 			var b = new Vector2( 0, - y );
// 			var c = new Vector2();

// 			assert.ok( a.length() == x, "Passed!" );
// 			assert.ok( a.lengthSq() == x * x, "Passed!" );
// 			assert.ok( b.length() == y, "Passed!" );
// 			assert.ok( b.lengthSq() == y * y, "Passed!" );
// 			assert.ok( c.length() == 0, "Passed!" );
// 			assert.ok( c.lengthSq() == 0, "Passed!" );

// 			a.set( x, y );
// 			assert.ok( a.length() == Mathf.sqrt( x * x + y * y ), "Passed!" );
// 			assert.ok( a.lengthSq() == ( x * x + y * y ), "Passed!" );

// 		} );
// 		QUnit.test( "distanceTo/distanceToSquared", ( assert ) => {

// 			var a = new Vector2( x, 0 );
// 			var b = new Vector2( 0, - y );
// 			var c = new Vector2();

// 			assert.ok( a.distanceTo( c ) == x, "Passed!" );
// 			assert.ok( a.distanceToSquared( c ) == x * x, "Passed!" );

// 			assert.ok( b.distanceTo( c ) == y, "Passed!" );
// 			assert.ok( b.distanceToSquared( c ) == y * y, "Passed!" );

// 		} );
// 		QUnit.test( "lerp/clone", ( assert ) => {

// 			var a = new Vector2( x, 0 );
// 			var b = new Vector2( 0, - y );

// 			assert.ok( a.lerp( a, 0 ).equals( a.lerp( a, 0.5 ) ), "Passed!" );
// 			assert.ok( a.lerp( a, 0 ).equals( a.lerp( a, 1 ) ), "Passed!" );

// 			assert.ok( a.clone().lerp( b, 0 ).equals( a ), "Passed!" );

// 			assert.ok( a.clone().lerp( b, 0.5 ).x == x * 0.5, "Passed!" );
// 			assert.ok( a.clone().lerp( b, 0.5 ).y == - y * 0.5, "Passed!" );

// 			assert.ok( a.clone().lerp( b, 1 ).equals( b ), "Passed!" );

// 		} );
// 		QUnit.test( "setComponent/getComponent exceptions", ( assert ) => {

// 			var a = new Vector2( 0, 0 );

// 			assert.throws(
// 				function () {

// 					a.setComponent( 2, 0 );

// 				},
// 				/index is out of range/,
// 				"setComponent with an out of range index throws Error"
// 			);
// 			assert.throws(
// 				function () {

// 					a.getComponent( 2 );

// 				},
// 				/index is out of range/,
// 				"getComponent with an out of range index throws Error"
// 			);

// 		} );
// 		QUnit.test( "setScalar/addScalar/subScalar", ( assert ) => {

// 			var a = new Vector2( 1, 1 );
// 			var s = 3;

// 			a.setScalar( s );
// 			assert.strictEqual( a.x, s, "setScalar: check x" );
// 			assert.strictEqual( a.y, s, "setScalar: check y" );

// 			a.addScalar( s );
// 			assert.strictEqual( a.x, 2 * s, "addScalar: check x" );
// 			assert.strictEqual( a.y, 2 * s, "addScalar: check y" );

// 			a.subScalar( 2 * s );
// 			assert.strictEqual( a.x, 0, "subScalar: check x" );
// 			assert.strictEqual( a.y, 0, "subScalar: check y" );

// 		} );
// 		QUnit.test( "multiply/divide", ( assert ) => {

// 			var a = new Vector2( x, y );
// 			var b = new Vector2( 2 * x, 2 * y );
// 			var c = new Vector2( 4 * x, 4 * y );

// 			a.multiply( b );
// 			assert.strictEqual( a.x, x * b.x, "multiply: check x" );
// 			assert.strictEqual( a.y, y * b.y, "multiply: check y" );

// 			b.divide( c );
// 			assert.strictEqual( b.x, 0.5, "divide: check x" );
// 			assert.strictEqual( b.y, 0.5, "divide: check y" );

// 		} );

// 	} );

// } );

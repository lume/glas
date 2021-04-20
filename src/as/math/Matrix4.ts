import {Vector3} from './Vector3'
import {Euler, EulerRotationOrder} from './Euler'
import {Quaternion} from './Quaternion'
// import {BufferAttribute} from './../core/BufferAttribute'
// import {Matrix} from './Matrix3'

/**
 * @author mrdoob / http://mrdoob.com/
 * @author supereggbert / http://www.paulbrunt.co.uk/
 * @author philogb / http://blog.thejit.org/
 * @author jordi_ros / http://plattsoft.com
 * @author D1plo1d / http://github.com/D1plo1d
 * @author alteredq / http://alteredqualia.com/
 * @author mikael emtinger / http://gomo.se/
 * @author timknip / http://www.floorplanner.com/
 * @author bhouston / http://clara.io
 * @author WestLangley / http://github.com/WestLangley
 * @author corruptedzulu / http://github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */

/**
 * A 4x4 Matrix.
 *
 * @example
 * // Simple rig for rotating around 3 axes
 * var m = new THREE.Matrix4();
 * var m1 = new THREE.Matrix4();
 * var m2 = new THREE.Matrix4();
 * var m3 = new THREE.Matrix4();
 * var alpha = 0;
 * var beta = Mathf.PI;
 * var gamma = Mathf.PI/2;
 * m1.makeRotationX( alpha );
 * m2.makeRotationY( beta );
 * m3.makeRotationZ( gamma );
 * m.multiplyMatrices( m1, m2 );
 * m.multiply( m3 );
 */
export class Matrix4 /*implements Matrix*/ {
	/**
	 * Array with matrix values.
	 */
	elements: f32[] = [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]

	/**
	 * Sets all fields of this matrix.
	 */
	// prettier-ignore
	set(
		n11: f32, n12: f32, n13: f32, n14: f32,
		n21: f32, n22: f32, n23: f32, n24: f32,
		n31: f32, n32: f32, n33: f32, n34: f32,
		n41: f32, n42: f32, n43: f32, n44: f32
	): Matrix4 {
		const te = this.elements

		te[0] = n11; te[4] = n12; te[8] = n13; te[12] = n14
		te[1] = n21; te[5] = n22; te[9] = n23; te[13] = n24
		te[2] = n31; te[6] = n32; te[10] = n33; te[14] = n34
		te[3] = n41; te[7] = n42; te[11] = n43; te[15] = n44

		return this
	}

	/**
	 * Resets this matrix to identity.
	 */
	identity(): Matrix4 {
		this.set(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)

		return this
	}

	clone(): Matrix4 {
		const m = new Matrix4()
		m.fromArray(this.elements)
		return m
	}

	copy(m: Matrix4): this {
		const te = this.elements
		const me = m.elements

		te[0] = me[0]
		te[1] = me[1]
		te[2] = me[2]
		te[3] = me[3]
		te[4] = me[4]
		te[5] = me[5]
		te[6] = me[6]
		te[7] = me[7]
		te[8] = me[8]
		te[9] = me[9]
		te[10] = me[10]
		te[11] = me[11]
		te[12] = me[12]
		te[13] = me[13]
		te[14] = me[14]
		te[15] = me[15]

		return this
	}

	copyPosition(m: Matrix4): Matrix4 {
		const te = this.elements, me = m.elements

		te[12] = me[12]
		te[13] = me[13]
		te[14] = me[14]

		return this
	}

	extractBasis(xAxis: Vector3, yAxis: Vector3, zAxis: Vector3): Matrix4 {
		xAxis.setFromMatrixColumn(this, 0)
		yAxis.setFromMatrixColumn(this, 1)
		zAxis.setFromMatrixColumn(this, 2)

		return this
	}

	makeBasis(xAxis: Vector3, yAxis: Vector3, zAxis: Vector3): Matrix4 {
		this.set(xAxis.x, yAxis.x, zAxis.x, 0, xAxis.y, yAxis.y, zAxis.y, 0, xAxis.z, yAxis.z, zAxis.z, 0, 0, 0, 0, 1)

		return this
	}

	// /**
	//  * Copies the rotation component of the supplied matrix m into this matrix rotation component.
	//  */
	extractRotation(m: Matrix4): Matrix4 {
		const v1 = new Vector3(0, 0, 0)

		// this method does not support reflection matrices

		const te = this.elements
		const me = m.elements

		const scaleX: f32 = 1 / v1.setFromMatrixColumn(m, 0).length()
		const scaleY: f32 = 1 / v1.setFromMatrixColumn(m, 1).length()
		const scaleZ: f32 = 1 / v1.setFromMatrixColumn(m, 2).length()

		te[0] = me[0] * scaleX
		te[1] = me[1] * scaleX
		te[2] = me[2] * scaleX
		te[3] = 0

		te[4] = me[4] * scaleY
		te[5] = me[5] * scaleY
		te[6] = me[6] * scaleY
		te[7] = 0

		te[8] = me[8] * scaleZ
		te[9] = me[9] * scaleZ
		te[10] = me[10] * scaleZ
		te[11] = 0

		te[12] = 0
		te[13] = 0
		te[14] = 0
		te[15] = 1

		return this
	}

	makeRotationFromEuler(euler: Euler): this {
		const te = this.elements

		const x = euler.x,
			y = euler.y,
			z = euler.z
		Mathf.sincos(x)
		const a = Mathf.sincos_cos,
			b = Mathf.sincos_sin
		Mathf.sincos(y)
		const c = Mathf.sincos_cos,
			d = Mathf.sincos_sin
		Mathf.sincos(z)
		const e = Mathf.sincos_cos,
			f = Mathf.sincos_sin

		if (euler.order === EulerRotationOrder.XYZ) {
			const ae = a * e,
				af = a * f,
				be = b * e,
				bf = b * f

			te[0] = c * e
			te[4] = -c * f
			te[8] = d

			te[1] = af + be * d
			te[5] = ae - bf * d
			te[9] = -b * c

			te[2] = bf - ae * d
			te[6] = be + af * d
			te[10] = a * c
		} else if (euler.order === EulerRotationOrder.YXZ) {
			const ce = c * e,
				cf = c * f,
				de = d * e,
				df = d * f

			te[0] = ce + df * b
			te[4] = de * b - cf
			te[8] = a * d

			te[1] = a * f
			te[5] = a * e
			te[9] = -b

			te[2] = cf * b - de
			te[6] = df + ce * b
			te[10] = a * c
		} else if (euler.order === EulerRotationOrder.ZXY) {
			const ce = c * e,
				cf = c * f,
				de = d * e,
				df = d * f

			te[0] = ce - df * b
			te[4] = -a * f
			te[8] = de + cf * b

			te[1] = cf + de * b
			te[5] = a * e
			te[9] = df - ce * b

			te[2] = -a * d
			te[6] = b
			te[10] = a * c
		} else if (euler.order === EulerRotationOrder.ZYX) {
			const ae = a * e,
				af = a * f,
				be = b * e,
				bf = b * f

			te[0] = c * e
			te[4] = be * d - af
			te[8] = ae * d + bf

			te[1] = c * f
			te[5] = bf * d + ae
			te[9] = af * d - be

			te[2] = -d
			te[6] = b * c
			te[10] = a * c
		} else if (euler.order === EulerRotationOrder.YZX) {
			const ac = a * c,
				ad = a * d,
				bc = b * c,
				bd = b * d

			te[0] = c * e
			te[4] = bd - ac * f
			te[8] = bc * f + ad

			te[1] = f
			te[5] = a * e
			te[9] = -b * e

			te[2] = -d * e
			te[6] = ad * f + bc
			te[10] = ac - bd * f
		} else if (euler.order === EulerRotationOrder.XZY) {
			const ac = a * c,
				ad = a * d,
				bc = b * c,
				bd = b * d

			te[0] = c * e
			te[4] = -f
			te[8] = d * e

			te[1] = ac * f + bd
			te[5] = a * e
			te[9] = ad * f - bc

			te[2] = bc * f - ad
			te[6] = b * e
			te[10] = bd * f + ac
		}

		// bottom row
		te[3] = 0
		te[7] = 0
		te[11] = 0

		// last column
		te[12] = 0
		te[13] = 0
		te[14] = 0
		te[15] = 1

		return this
	}

	makeRotationFromQuaternion(q: Quaternion): Matrix4 {
		const zero = new Vector3(0, 0, 0)
		const one = new Vector3(1, 1, 1)

		return this.compose(zero, q, one)
	}

	/**
	 * Constructs a rotation matrix, looking from eye towards center with defined up vector.
	 */
	lookAt(eye: Vector3, target: Vector3, up: Vector3): Matrix4 {
		const x = new Vector3(0, 0, 0)
		const y = new Vector3(0, 0, 0)
		const z = new Vector3(0, 0, 0)

		const te = this.elements

		z.subVectors(eye, target)

		if (z.lengthSq() === 0) {
			// eye and target are in the same position

			z.z = 1
		}

		z.normalize()
		x.crossVectors(up, z)

		if (x.lengthSq() === 0) {
			// up and z are parallel

			if (Mathf.abs(up.z) === 1) {
				z.x += 0.0001
			} else {
				z.z += 0.0001
			}

			z.normalize()
			x.crossVectors(up, z)
		}

		x.normalize()
		y.crossVectors(z, x)

		te[0] = x.x
		te[4] = y.x
		te[8] = z.x
		te[1] = x.y
		te[5] = y.y
		te[9] = z.y
		te[2] = x.z
		te[6] = y.z
		te[10] = z.z

		return this
	}

	// /**
	//  * Multiplies this matrix by m.
	//  */
	// multiply(m: Matrix4): Matrix4 {
	// 	// if ( n !== undefined ) {

	// 	// 	console.warn( 'THREE.Matrix4: .multiply() now only accepts one argument. Use .multiplyMatrices( a, b ) instead.' );
	// 	// 	return this.multiplyMatrices( m, n );

	// 	// }

	// 	return this.multiplyMatrices(this, m)
	// }

	// premultiply(m: Matrix4): Matrix4 {
	// 	return this.multiplyMatrices(m, this)
	// }

	/**
	 * Sets this matrix to a x b.
	 */
	multiplyMatrices(a: Matrix4, b: Matrix4): this {
		const ae = a.elements
		const be = b.elements
		const te = this.elements

		const a11 = ae[0],
			a12 = ae[4],
			a13 = ae[8],
			a14 = ae[12]
		const a21 = ae[1],
			a22 = ae[5],
			a23 = ae[9],
			a24 = ae[13]
		const a31 = ae[2],
			a32 = ae[6],
			a33 = ae[10],
			a34 = ae[14]
		const a41 = ae[3],
			a42 = ae[7],
			a43 = ae[11],
			a44 = ae[15]

		const b11 = be[0],
			b12 = be[4],
			b13 = be[8],
			b14 = be[12]
		const b21 = be[1],
			b22 = be[5],
			b23 = be[9],
			b24 = be[13]
		const b31 = be[2],
			b32 = be[6],
			b33 = be[10],
			b34 = be[14]
		const b41 = be[3],
			b42 = be[7],
			b43 = be[11],
			b44 = be[15]

		te[0] = a11 * b11 + a12 * b21 + a13 * b31 + a14 * b41
		te[4] = a11 * b12 + a12 * b22 + a13 * b32 + a14 * b42
		te[8] = a11 * b13 + a12 * b23 + a13 * b33 + a14 * b43
		te[12] = a11 * b14 + a12 * b24 + a13 * b34 + a14 * b44

		te[1] = a21 * b11 + a22 * b21 + a23 * b31 + a24 * b41
		te[5] = a21 * b12 + a22 * b22 + a23 * b32 + a24 * b42
		te[9] = a21 * b13 + a22 * b23 + a23 * b33 + a24 * b43
		te[13] = a21 * b14 + a22 * b24 + a23 * b34 + a24 * b44

		te[2] = a31 * b11 + a32 * b21 + a33 * b31 + a34 * b41
		te[6] = a31 * b12 + a32 * b22 + a33 * b32 + a34 * b42
		te[10] = a31 * b13 + a32 * b23 + a33 * b33 + a34 * b43
		te[14] = a31 * b14 + a32 * b24 + a33 * b34 + a34 * b44

		te[3] = a41 * b11 + a42 * b21 + a43 * b31 + a44 * b41
		te[7] = a41 * b12 + a42 * b22 + a43 * b32 + a44 * b42
		te[11] = a41 * b13 + a42 * b23 + a43 * b33 + a44 * b43
		te[15] = a41 * b14 + a42 * b24 + a43 * b34 + a44 * b44

		return this
	}

	/**
	 * Multiplies this matrix by s.
	 */
	multiplyScalar(s: f32): Matrix4 {
		const te = this.elements

		te[0] *= s
		te[4] *= s
		te[8] *= s
		te[12] *= s
		te[1] *= s
		te[5] *= s
		te[9] *= s
		te[13] *= s
		te[2] *= s
		te[6] *= s
		te[10] *= s
		te[14] *= s
		te[3] *= s
		te[7] *= s
		te[11] *= s
		te[15] *= s

		return this
	}

	// applyToBufferAttribute(attribute: BufferAttribute): BufferAttribute {
	// 	var v1 = new Vector3(0, 0, 0)

	// 	for (var i = 0, l = attribute.count; i < l; i++) {
	// 		v1.x = attribute.getX(i)
	// 		v1.y = attribute.getY(i)
	// 		v1.z = attribute.getZ(i)

	// 		v1.applyMatrix4(this)

	// 		attribute.setXYZ(i, v1.x, v1.y, v1.z)
	// 	}

	// 	return attribute
	// }

	/**
	 * Computes determinant of this matrix.
	 * Based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm
	 */
	determinant(): f32 {
		const te = this.elements

		const n11 = te[0],
			n12 = te[4],
			n13 = te[8],
			n14 = te[12]
		const n21 = te[1],
			n22 = te[5],
			n23 = te[9],
			n24 = te[13]
		const n31 = te[2],
			n32 = te[6],
			n33 = te[10],
			n34 = te[14]
		const n41 = te[3],
			n42 = te[7],
			n43 = te[11],
			n44 = te[15]

		//TODO: make this more efficient
		//( based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm )

		return (
			n41 *
				(+n14 * n23 * n32 -
					n13 * n24 * n32 -
					n14 * n22 * n33 +
					n12 * n24 * n33 +
					n13 * n22 * n34 -
					n12 * n23 * n34) +
			n42 *
				(+n11 * n23 * n34 -
					n11 * n24 * n33 +
					n14 * n21 * n33 -
					n13 * n21 * n34 +
					n13 * n24 * n31 -
					n14 * n23 * n31) +
			n43 *
				(+n11 * n24 * n32 -
					n11 * n22 * n34 -
					n14 * n21 * n32 +
					n12 * n21 * n34 +
					n14 * n22 * n31 -
					n12 * n24 * n31) +
			n44 *
				(-n13 * n22 * n31 -
					n11 * n23 * n32 +
					n11 * n22 * n33 +
					n13 * n21 * n32 -
					n12 * n21 * n33 +
					n12 * n23 * n31)
		)
	}

	/**
	 * Transposes this matrix.
	 */
	transpose(): Matrix4 {
		const te = this.elements
		let tmp:f32

		tmp = te[1]
		te[1] = te[4]
		te[4] = tmp
		tmp = te[2]
		te[2] = te[8]
		te[8] = tmp
		tmp = te[6]
		te[6] = te[9]
		te[9] = tmp

		tmp = te[3]
		te[3] = te[12]
		te[12] = tmp
		tmp = te[7]
		te[7] = te[13]
		te[13] = tmp
		tmp = te[11]
		te[11] = te[14]
		te[14] = tmp

		return this
	}

	// /**
	//  * Sets the position component for this matrix from vector v.
	//  */
	setPosition(x: Vector3): Matrix4 {
		const te = this.elements

		te[12] = x.x
		te[13] = x.y
		te[14] = x.z

		return this
	}

	/**
	 * Sets this matrix to the inverse of matrix m.
	 * Based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm.
	 */
	getInverse(m: Matrix4): bool {
		// based on http://www.euclideanspace.com/maths/algebra/matrix/functions/inverse/fourD/index.htm
		// prettier-ignore
		const te = this.elements,
			me = m.elements,

			n11 = me[0], n21 = me[1], n31 = me[2], n41 = me[3],
			n12 = me[4], n22 = me[5], n32 = me[6], n42 = me[7],
			n13 = me[8], n23 = me[9], n33 = me[10], n43 = me[11],
			n14 = me[12], n24 = me[13], n34 = me[14], n44 = me[15],

			t11 = n23 * n34 * n42 - n24 * n33 * n42 + n24 * n32 * n43 - n22 * n34 * n43 - n23 * n32 * n44 + n22 * n33 * n44,
			t12 = n14 * n33 * n42 - n13 * n34 * n42 - n14 * n32 * n43 + n12 * n34 * n43 + n13 * n32 * n44 - n12 * n33 * n44,
			t13 = n13 * n24 * n42 - n14 * n23 * n42 + n14 * n22 * n43 - n12 * n24 * n43 - n13 * n22 * n44 + n12 * n23 * n44,
			t14 = n14 * n23 * n32 - n13 * n24 * n32 - n14 * n22 * n33 + n12 * n24 * n33 + n13 * n22 * n34 - n12 * n23 * n34

		const det = n11 * t11 + n21 * t12 + n31 * t13 + n41 * t14

		if (det === 0) {
			this.identity()
			return false
		}

		const detInv: f32 = 1 / det

		// prettier-ignore
		{
			te[0] = t11 * detInv
			te[1] = (n24 * n33 * n41 - n23 * n34 * n41 - n24 * n31 * n43 + n21 * n34 * n43 + n23 * n31 * n44 - n21 * n33 * n44) * detInv
			te[2] = (n22 * n34 * n41 - n24 * n32 * n41 + n24 * n31 * n42 - n21 * n34 * n42 - n22 * n31 * n44 + n21 * n32 * n44) * detInv
			te[3] = (n23 * n32 * n41 - n22 * n33 * n41 - n23 * n31 * n42 + n21 * n33 * n42 + n22 * n31 * n43 - n21 * n32 * n43) * detInv

			te[4] = t12 * detInv
			te[5] = (n13 * n34 * n41 - n14 * n33 * n41 + n14 * n31 * n43 - n11 * n34 * n43 - n13 * n31 * n44 + n11 * n33 * n44) * detInv
			te[6] = (n14 * n32 * n41 - n12 * n34 * n41 - n14 * n31 * n42 + n11 * n34 * n42 + n12 * n31 * n44 - n11 * n32 * n44) * detInv
			te[7] = (n12 * n33 * n41 - n13 * n32 * n41 + n13 * n31 * n42 - n11 * n33 * n42 - n12 * n31 * n43 + n11 * n32 * n43) * detInv

			te[8] = t13 * detInv
			te[9] = (n14 * n23 * n41 - n13 * n24 * n41 - n14 * n21 * n43 + n11 * n24 * n43 + n13 * n21 * n44 - n11 * n23 * n44) * detInv
			te[10] = (n12 * n24 * n41 - n14 * n22 * n41 + n14 * n21 * n42 - n11 * n24 * n42 - n12 * n21 * n44 + n11 * n22 * n44) * detInv
			te[11] = (n13 * n22 * n41 - n12 * n23 * n41 - n13 * n21 * n42 + n11 * n23 * n42 + n12 * n21 * n43 - n11 * n22 * n43) * detInv

			te[12] = t14 * detInv
			te[13] = (n13 * n24 * n31 - n14 * n23 * n31 + n14 * n21 * n33 - n11 * n24 * n33 - n13 * n21 * n34 + n11 * n23 * n34) * detInv
			te[14] = (n14 * n22 * n31 - n12 * n24 * n31 - n14 * n21 * n32 + n11 * n24 * n32 + n12 * n21 * n34 - n11 * n22 * n34) * detInv
			te[15] = (n12 * n23 * n31 - n13 * n22 * n31 + n13 * n21 * n32 - n11 * n23 * n32 - n12 * n21 * n33 + n11 * n22 * n33) * detInv
		}

		return true
	}

	// /**
	//  * Multiplies the columns of this matrix by vector v.
	//  */
	// scale(v: Vector3): Matrix4 {
	// 	var te = this.elements
	// 	var x = v.x,
	// 		y = v.y,
	// 		z = v.z

	// 	te[0] *= x
	// 	te[4] *= y
	// 	te[8] *= z
	// 	te[1] *= x
	// 	te[5] *= y
	// 	te[9] *= z
	// 	te[2] *= x
	// 	te[6] *= y
	// 	te[10] *= z
	// 	te[3] *= x
	// 	te[7] *= y
	// 	te[11] *= z

	// 	return this
	// }

	getMaxScaleOnAxis(): f32 {
		const te = this.elements

		const scaleXSq = te[0] * te[0] + te[1] * te[1] + te[2] * te[2]
		const scaleYSq = te[4] * te[4] + te[5] * te[5] + te[6] * te[6]
		const scaleZSq = te[8] * te[8] + te[9] * te[9] + te[10] * te[10]

		//Mathf.max only takes two arguments, have to do it twice.
		let maxScale: f32 = Mathf.max(scaleXSq, scaleYSq)
		maxScale = Mathf.max(maxScale, scaleZSq)
		return Mathf.sqrt(maxScale)
	}

	/**
	 * Sets this matrix as translation transform.
	 */
	makeTranslation(x: f32, y: f32, z: f32): Matrix4 {
		this.set(1, 0, 0, x, 0, 1, 0, y, 0, 0, 1, z, 0, 0, 0, 1)

		return this
	}

	/**
	 * Sets this matrix as rotation transform around x axis by theta radians.
	 *
	 * @param theta Rotation angle in radians.
	 */
	makeRotationX(theta: f32): Matrix4 {
		Mathf.sincos(theta)
		const c = Mathf.sincos_cos,
			s = Mathf.sincos_sin

		this.set(1, 0, 0, 0, 0, c, -s, 0, 0, s, c, 0, 0, 0, 0, 1)

		return this
	}

	/**
	 * Sets this matrix as rotation transform around y axis by theta radians.
	 *
	 * @param theta Rotation angle in radians.
	 */
	makeRotationY(theta: f32): Matrix4 {
		Mathf.sincos(theta)
		const c = Mathf.sincos_cos,
			s = Mathf.sincos_sin

		this.set(c, 0, s, 0, 0, 1, 0, 0, -s, 0, c, 0, 0, 0, 0, 1)

		return this
	}

	/**
	 * Sets this matrix as rotation transform around z axis by theta radians.
	 *
	 * @param theta Rotation angle in radians.
	 */
	makeRotationZ(theta: f32): Matrix4 {
		Mathf.sincos(theta)
		const c = Mathf.sincos_cos,
			s = Mathf.sincos_sin

		this.set(c, -s, 0, 0, s, c, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)

		return this
	}

	/**
	 * Sets this matrix as rotation transform around axis by angle radians.
	 * Based on http://www.gamedev.net/reference/articles/article1199.asp.
	 *
	 * @param axis Rotation axis.
	 * @param theta Rotation angle in radians.
	 */
	makeRotationAxis(axis: Vector3, angle: f32): Matrix4 {
		// Based on http://www.gamedev.net/reference/articles/article1199.asp

		const c = Mathf.cos(angle)
		const s = Mathf.sin(angle)
		const t = f32(1) - c
		const x = axis.x,
			y = axis.y,
			z = axis.z
		const tx = t * x,
			ty = t * y

		this.set(
			tx * x + c,
			tx * y - s * z,
			tx * z + s * y,
			0,
			tx * y + s * z,
			ty * y + c,
			ty * z - s * x,
			0,
			tx * z - s * y,
			ty * z + s * x,
			t * z * z + c,
			0,
			0,
			0,
			0,
			1
		)

		return this
	}

	/**
	 * Sets this matrix as scale transform.
	 */
	makeScale(x: f32, y: f32, z: f32): Matrix4 {
		this.set(x, 0, 0, 0, 0, y, 0, 0, 0, 0, z, 0, 0, 0, 0, 1)

		return this
	}

	// makeShear(x: f32, y: f32, z: f32): this {
	// 	this.set(1, y, z, 0, x, 1, z, 0, x, y, 1, 0, 0, 0, 0, 1)

	// 	return this
	// }

	/**
	 * Sets this matrix to the transformation composed of translation, rotation and scale.
	 */
	compose(position: Vector3, rotation: Quaternion, scale: Vector3): Matrix4 {
		const te = this.elements

		const x = rotation._x,
			y = rotation._y,
			z = rotation._z,
			w = rotation._w
		const x2 = x + x,
			y2 = y + y,
			z2 = z + z
		const xx = x * x2,
			xy = x * y2,
			xz = x * z2
		const yy = y * y2,
			yz = y * z2,
			zz = z * z2
		const wx = w * x2,
			wy = w * y2,
			wz = w * z2

		const sx = scale.x,
			sy = scale.y,
			sz = scale.z

		te[0] = (1 - (yy + zz)) * sx
		te[1] = (xy + wz) * sx
		te[2] = (xz - wy) * sx
		te[3] = 0

		te[4] = (xy - wz) * sy
		te[5] = (1 - (xx + zz)) * sy
		te[6] = (yz + wx) * sy
		te[7] = 0

		te[8] = (xz + wy) * sz
		te[9] = (yz - wx) * sz
		te[10] = (1 - (xx + yy)) * sz
		te[11] = 0

		te[12] = position.x
		te[13] = position.y
		te[14] = position.z
		te[15] = 1

		return this
	}

	// /**
	//  * Decomposes this matrix into the translation, rotation and scale components.
	//  * If parameters are not passed, new instances will be created.
	//  */
	decompose(position: Vector3, rotation: Quaternion, scale: Vector3): Matrix4 {
		const vector = new Vector3(0, 0, 0)
		const matrix = new Matrix4()

		const te = this.elements

		// if determine is negative, we need to invert one scale
		const det: f32 = this.determinant()

		const sx: f32 = det < 0 ? -vector.set(te[0], te[1], te[2]).length() : vector.set(te[0], te[1], te[2]).length()
		const sy: f32 = vector.set(te[4], te[5], te[6]).length()
		const sz: f32 = vector.set(te[8], te[9], te[10]).length()

		position.x = te[12]
		position.y = te[13]
		position.z = te[14]

		// scale the rotation part
		matrix.copy(this)

		const invSX: f32 = 1 / sx
		const invSY: f32 = 1 / sy
		const invSZ: f32 = 1 / sz

		matrix.elements[0] *= invSX
		matrix.elements[1] *= invSX
		matrix.elements[2] *= invSX

		matrix.elements[4] *= invSY
		matrix.elements[5] *= invSY
		matrix.elements[6] *= invSY

		matrix.elements[8] *= invSZ
		matrix.elements[9] *= invSZ
		matrix.elements[10] *= invSZ

		rotation.setFromRotationMatrix(matrix)

		scale.x = sx
		scale.y = sy
		scale.z = sz

		return this
	}

	/**
	 * Creates a frustum matrix.
	 */

	makePerspective(left: f32, right: f32, top: f32, bottom: f32, near: f32, far: f32): Matrix4 {
		const te = this.elements
		const x: f32 = (2 * near) / (right - left)
		const y: f32 = (2 * near) / (top - bottom)

		const a: f32 = (right + left) / (right - left)
		const b: f32 = (top + bottom) / (top - bottom)
		const c: f32 = -(far + near) / (far - near)
		const d: f32 = (-2 * far * near) / (far - near)

		// prettier-ignore
		{
			te[0] = x; te[4] = 0; te[8] = a; te[12] = 0
			te[1] = 0; te[5] = y; te[9] = b; te[13] = 0
			te[2] = 0; te[6] = 0; te[10] = c; te[14] = d
			te[3] = 0; te[7] = 0; te[11] = -1; te[15] = 0
		}

		return this
	}

	// /**
	//  * Creates a perspective projection matrix.
	//  */
	// // makePerspective(
	// // 	fov: f32,
	// // 	aspect: f32,
	// // 	near: f32,
	// // 	far: f32
	// // ): Matrix4;

	// /**
	//  * Creates an orthographic projection matrix.
	//  */
	makeOrthographic(left: f32, right: f32, top: f32, bottom: f32, near: f32, far: f32): Matrix4 {
		const te = this.elements
		const w: f32 = 1.0 / (right - left)
		const h: f32 = 1.0 / (top - bottom)
		const p: f32 = 1.0 / (far - near)

		const x = (right + left) * w
		const y = (top + bottom) * h
		const z = (far + near) * p

		te[0] = 2 * w
		te[4] = 0
		te[8] = 0
		te[12] = -x
		te[1] = 0
		te[5] = 2 * h
		te[9] = 0
		te[13] = -y
		te[2] = 0
		te[6] = 0
		te[10] = -2 * p
		te[14] = -z
		te[3] = 0
		te[7] = 0
		te[11] = 0
		te[15] = 1

		return this
	}

	equals(matrix: Matrix4): boolean {
		const te = this.elements
		const me = matrix.elements

		for (let i = 0; i < 16; i++) {
			if (te[i] !== me[i]) return false
		}

		return true
	}

	// TODO use `this` return type instead of `Matrix4` return type?
	fromArray(array: f32[], offset: i32 = 0): Matrix4 {
		for (let i: i32 = 0; i < 16; i++) {
			this.elements[i] = array[i + offset]
		}

		return this
	}

	toArray(array: f32[] = new Array(16), offset: i32 = 0): f32[] {
		const te = this.elements

		array[offset] = te[0]
		array[offset + 1] = te[1]
		array[offset + 2] = te[2]
		array[offset + 3] = te[3]

		array[offset + 4] = te[4]
		array[offset + 5] = te[5]
		array[offset + 6] = te[6]
		array[offset + 7] = te[7]

		array[offset + 8] = te[8]
		array[offset + 9] = te[9]
		array[offset + 10] = te[10]
		array[offset + 11] = te[11]

		array[offset + 12] = te[12]
		array[offset + 13] = te[13]
		array[offset + 14] = te[14]
		array[offset + 15] = te[15]

		return array
	}
}

export function matrixEquals4(a: Matrix4, b: Matrix4, tolerance: f32 = 0.0001): bool {
	if (a.elements.length != b.elements.length) {
		return false
	}

	for (let i = 0, il = a.elements.length; i < il; i++) {
		const delta = a.elements[i] - b.elements[i]
		if (delta > tolerance) {
			return false
		}
	}

	return true
}

/**
 * @author mrdoob / http://mrdoob.com/
 * @author WestLangley / http://github.com/WestLangley
 * @author bhouston / http://clara.io
 * @author Joe Pea / http://github.com/trusktr
 */

import {Matrix4} from './Matrix4'
import {Quaternion} from './Quaternion'
import {Vector3} from './Vector3'
import {clamp} from './Math'

export enum EulerRotationOrder {
	XYZ,
	YZX,
	ZXY,
	XZY,
	YXZ,
	ZYX,
}

// type EulerRotationOrder = 'XYZ' | 'YZX' | 'ZXY' | 'XZY' | 'YXZ' | 'ZYX'
type ChangeCallback = () => void

const matrix = new Matrix4()
const quaternion = new Quaternion()

export class Euler {
	// static RotationOrders: EulerRotationOrder[] = ['XYZ', 'YZX', 'ZXY', 'XZY', 'YXZ', 'ZYX']
	static DefaultOrder: EulerRotationOrder = EulerRotationOrder.XYZ

	readonly isEuler: boolean = true

	_x: f64
	_y: f64
	_z: f64
	_order: EulerRotationOrder

	constructor(x: f64 = 0, y: f64 = 0, z: f64 = 0, order: EulerRotationOrder = Euler.DefaultOrder) {
		this._x = x
		this._y = y
		this._z = z
		this._order = order
	}

	get x(): f64 {
		return this._x
	}

	set x(value: f64) {
		this._x = value
		this.onChangeCallback()
	}

	get y(): f64 {
		return this._y
	}

	set y(value: f64) {
		this._y = value
		this.onChangeCallback()
	}

	get z(): f64 {
		return this._z
	}

	set z(value: f64) {
		this._z = value
		this.onChangeCallback()
	}

	get order(): EulerRotationOrder {
		return this._order
	}

	set order(value: EulerRotationOrder) {
		this._order = value
		this.onChangeCallback()
	}

	onChangeCallback: ChangeCallback = () => {}

	set(x: f64, y: f64, z: f64, order?: EulerRotationOrder): this {
		this._x = x
		this._y = y
		this._z = z
		this._order = order || this._order

		this.onChangeCallback()

		return this
	}

	clone(): Euler {
		return new Euler(this._x, this._y, this._z, this._order)
	}

	copy(euler: Euler): this {
		this._x = euler._x
		this._y = euler._y
		this._z = euler._z
		this._order = euler._order

		this.onChangeCallback()

		return this
	}

	setFromRotationMatrix(m: Matrix4, order: EulerRotationOrder = this._order, update: boolean = true): this {
		// assumes the upper 3x3 of m is a pure rotation matrix (i.e, unscaled)

		const te = m.elements
		const m11 = te[0],
			m12 = te[4],
			m13 = te[8]
		const m21 = te[1],
			m22 = te[5],
			m23 = te[9]
		const m31 = te[2],
			m32 = te[6],
			m33 = te[10]

		if (order === EulerRotationOrder.XYZ) {
			this._y = Math.asin(clamp(m13, -1, 1))

			if (Math.abs(m13) < 0.99999) {
				this._x = Math.atan2(-m23, m33)
				this._z = Math.atan2(-m12, m11)
			} else {
				this._x = Math.atan2(m32, m22)
				this._z = 0
			}
		} else if (order === EulerRotationOrder.YXZ) {
			this._x = Math.asin(-clamp(m23, -1, 1))

			if (Math.abs(m23) < 0.99999) {
				this._y = Math.atan2(m13, m33)
				this._z = Math.atan2(m21, m22)
			} else {
				this._y = Math.atan2(-m31, m11)
				this._z = 0
			}
		} else if (order === EulerRotationOrder.ZXY) {
			this._x = Math.asin(clamp(m32, -1, 1))

			if (Math.abs(m32) < 0.99999) {
				this._y = Math.atan2(-m31, m33)
				this._z = Math.atan2(-m12, m22)
			} else {
				this._y = 0
				this._z = Math.atan2(m21, m11)
			}
		} else if (order === EulerRotationOrder.ZYX) {
			this._y = Math.asin(-clamp(m31, -1, 1))

			if (Math.abs(m31) < 0.99999) {
				this._x = Math.atan2(m32, m33)
				this._z = Math.atan2(m21, m11)
			} else {
				this._x = 0
				this._z = Math.atan2(-m12, m22)
			}
		} else if (order === EulerRotationOrder.YZX) {
			this._z = Math.asin(clamp(m21, -1, 1))

			if (Math.abs(m21) < 0.99999) {
				this._x = Math.atan2(-m23, m22)
				this._y = Math.atan2(-m31, m11)
			} else {
				this._x = 0
				this._y = Math.atan2(m13, m33)
			}
		} else if (order === EulerRotationOrder.XZY) {
			this._z = Math.asin(-clamp(m12, -1, 1))

			if (Math.abs(m12) < 0.99999) {
				this._x = Math.atan2(m32, m22)
				this._y = Math.atan2(m13, m11)
			} else {
				this._x = Math.atan2(-m23, m33)
				this._y = 0
			}
		} else {
			const _order = i32(order)
			// throw new Error('Euler.setFromRotationMatrix() given unsupported order: ' + _order.toString())
			throw new Error('Euler.setFromRotationMatrix() given unsupported order.')
		}

		this._order = order

		if (update) this.onChangeCallback()

		return this
	}

	setFromQuaternion(q: Quaternion, order: EulerRotationOrder = this._order, update: boolean = true): this {
		matrix.makeRotationFromQuaternion(q)

		return this.setFromRotationMatrix(matrix, order, update)
	}

	setFromVector3(v: Vector3, order: EulerRotationOrder = this._order): this {
		return this.set(v.x, v.y, v.z, order)
	}

	// reorder(newOrder: EulerRotationOrder): this {
	// 	// WARNING: this discards revolution information -bhouston

	// 	quaternion.setFromEuler(this)

	// 	return this.setFromQuaternion(quaternion, newOrder)
	// }

	equals(euler: Euler): boolean {
		return euler._x === this._x && euler._y === this._y && euler._z === this._z && euler._order === this._order
	}

	// /**
	//  * TODO, pending https://github.com/AssemblyScript/assemblyscript/issues/643
	//  */
	// // fromArray(array: any[]): this {
	// // 	this._x = array[0]
	// // 	this._y = array[1]
	// // 	this._z = array[2]
	// // 	if (array[3] !== undefined) this._order = array[3]

	// // 	this.onChangeCallback()

	// // 	return this
	// // }

	// /**
	//  * TODO, pending https://github.com/AssemblyScript/assemblyscript/issues/643
	//  */
	// // toArray(array: f64[] = [], offset: i32 = 0): f64[] {
	// // 	array[offset] = this._x
	// // 	array[offset + 1] = this._y
	// // 	array[offset + 2] = this._z
	// // 	array[offset + 3] = this._order

	// // 	return array
	// // }

	toVector3(optionalResult: Vector3 = new Vector3()): Vector3 {
		return optionalResult.set(this._x, this._y, this._z)
	}

	onChange(callback: ChangeCallback): this {
		this.onChangeCallback = callback

		return this
	}
}

export function eulerEquals(a: Euler, b: Euler, tolerance: f64 = 0.0001): boolean {
	var diff = Math.abs(a.x - b.x) + Math.abs(a.y - b.y) + Math.abs(a.z - b.z)
	return diff < tolerance
}

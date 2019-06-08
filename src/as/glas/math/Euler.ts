/**
 * @author mrdoob / http://mrdoob.com/
 * @author WestLangley / http://github.com/WestLangley
 * @author bhouston / http://clara.io
 * @author Joe Pea / http://github.com/trusktr
 */

import {Matrix4} from './Matrix4'
import {Quaternion} from './Quaternion'
import {Vector3} from './Vector3'
import * as _Math from './Math.js'

export namespace ColorKeywords {
	export const aliceblue: number
	export const antiquewhite: number
	export const aqua: number
	export const aquamarine: number
	export const azure: number
	export const beige: number
	export const bisque: number
	export const black: number
	export const blanchedalmond: number
	export const blue: number
	export const blueviolet: number
	export const brown: number
	export const burlywood: number
	export const cadetblue: number
	export const chartreuse: number
	export const chocolate: number
	export const coral: number
	export const cornflowerblue: number
	export const cornsilk: number
	export const crimson: number
	export const cyan: number
	export const darkblue: number
	export const darkcyan: number
	export const darkgoldenrod: number
	export const darkgray: number
	export const darkgreen: number
	export const darkgrey: number
	export const darkkhaki: number
	export const darkmagenta: number
	export const darkolivegreen: number
	export const darkorange: number
	export const darkorchid: number
	export const darkred: number
	export const darksalmon: number
	export const darkseagreen: number
	export const darkslateblue: number
	export const darkslategray: number
	export const darkslategrey: number
	export const darkturquoise: number
	export const darkviolet: number
	export const deeppink: number
	export const deepskyblue: number
	export const dimgray: number
	export const dimgrey: number
	export const dodgerblue: number
	export const firebrick: number
	export const floralwhite: number
	export const forestgreen: number
	export const fuchsia: number
	export const gainsboro: number
	export const ghostwhite: number
	export const gold: number
	export const goldenrod: number
	export const gray: number
	export const green: number
	export const greenyellow: number
	export const grey: number
	export const honeydew: number
	export const hotpink: number
	export const indianred: number
	export const indigo: number
	export const ivory: number
	export const khaki: number
	export const lavender: number
	export const lavenderblush: number
	export const lawngreen: number
	export const lemonchiffon: number
	export const lightblue: number
	export const lightcoral: number
	export const lightcyan: number
	export const lightgoldenrodyellow: number
	export const lightgray: number
	export const lightgreen: number
	export const lightgrey: number
	export const lightpink: number
	export const lightsalmon: number
	export const lightseagreen: number
	export const lightskyblue: number
	export const lightslategray: number
	export const lightslategrey: number
	export const lightsteelblue: number
	export const lightyellow: number
	export const lime: number
	export const limegreen: number
	export const linen: number
	export const magenta: number
	export const maroon: number
	export const mediumaquamarine: number
	export const mediumblue: number
	export const mediumorchid: number
	export const mediumpurple: number
	export const mediumseagreen: number
	export const mediumslateblue: number
	export const mediumspringgreen: number
	export const mediumturquoise: number
	export const mediumvioletred: number
	export const midnightblue: number
	export const mintcream: number
	export const mistyrose: number
	export const moccasin: number
	export const navajowhite: number
	export const navy: number
	export const oldlace: number
	export const olive: number
	export const olivedrab: number
	export const orange: number
	export const orangered: number
	export const orchid: number
	export const palegoldenrod: number
	export const palegreen: number
	export const paleturquoise: number
	export const palevioletred: number
	export const papayawhip: number
	export const peachpuff: number
	export const peru: number
	export const pink: number
	export const plum: number
	export const powderblue: number
	export const purple: number
	export const red: number
	export const rosybrown: number
	export const royalblue: number
	export const saddlebrown: number
	export const salmon: number
	export const sandybrown: number
	export const seagreen: number
	export const seashell: number
	export const sienna: number
	export const silver: number
	export const skyblue: number
	export const slateblue: number
	export const slategray: number
	export const slategrey: number
	export const snow: number
	export const springgreen: number
	export const steelblue: number
	export const tan: number
	export const teal: number
	export const thistle: number
	export const tomato: number
	export const turquoise: number
	export const violet: number
	export const wheat: number
	export const white: number
	export const whitesmoke: number
	export const yellow: number
	export const yellowgreen: number
}

type EulerRotationOrder = 'XYZ' | 'YZX' | 'ZXY' | 'XZY' | 'YXZ' | 'ZYX'
type ChangeCallback = () => void

const matrix = new Matrix4()
const quaternion = new Quaternion()

export class Euler {
	static RotationOrders: EulerRotationOrder[] = ['XYZ', 'YZX', 'ZXY', 'XZY', 'YXZ', 'ZYX']
	static DefaultOrder: EulerRotationOrder = 'XYZ'

	isEuler = true

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
		const clamp = _Math.clamp

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

		if (order === 'XYZ') {
			this._y = Math.asin(clamp(m13, -1, 1))

			if (Math.abs(m13) < 0.99999) {
				this._x = Math.atan2(-m23, m33)
				this._z = Math.atan2(-m12, m11)
			} else {
				this._x = Math.atan2(m32, m22)
				this._z = 0
			}
		} else if (order === 'YXZ') {
			this._x = Math.asin(-clamp(m23, -1, 1))

			if (Math.abs(m23) < 0.99999) {
				this._y = Math.atan2(m13, m33)
				this._z = Math.atan2(m21, m22)
			} else {
				this._y = Math.atan2(-m31, m11)
				this._z = 0
			}
		} else if (order === 'ZXY') {
			this._x = Math.asin(clamp(m32, -1, 1))

			if (Math.abs(m32) < 0.99999) {
				this._y = Math.atan2(-m31, m33)
				this._z = Math.atan2(-m12, m22)
			} else {
				this._y = 0
				this._z = Math.atan2(m21, m11)
			}
		} else if (order === 'ZYX') {
			this._y = Math.asin(-clamp(m31, -1, 1))

			if (Math.abs(m31) < 0.99999) {
				this._x = Math.atan2(m32, m33)
				this._z = Math.atan2(m21, m11)
			} else {
				this._x = 0
				this._z = Math.atan2(-m12, m22)
			}
		} else if (order === 'YZX') {
			this._z = Math.asin(clamp(m21, -1, 1))

			if (Math.abs(m21) < 0.99999) {
				this._x = Math.atan2(-m23, m22)
				this._y = Math.atan2(-m31, m11)
			} else {
				this._x = 0
				this._y = Math.atan2(m13, m33)
			}
		} else if (order === 'XZY') {
			this._z = Math.asin(-clamp(m12, -1, 1))

			if (Math.abs(m12) < 0.99999) {
				this._x = Math.atan2(m32, m22)
				this._y = Math.atan2(m13, m11)
			} else {
				this._x = Math.atan2(-m23, m33)
				this._y = 0
			}
		} else {
			throw new Error('Euler.setFromRotationMatrix() given unsupported order: ' + order)
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

	reorder(newOrder: EulerRotationOrder): this {
		// WARNING: this discards revolution information -bhouston

		quaternion.setFromEuler(this)

		return this.setFromQuaternion(quaternion, newOrder)
	}

	equals(euler: Euler): boolean {
		return euler._x === this._x && euler._y === this._y && euler._z === this._z && euler._order === this._order
	}

	/**
	 * TODO, pending https://github.com/AssemblyScript/assemblyscript/issues/643
	 */
	// fromArray(array: any[]): this {
	// 	this._x = array[0]
	// 	this._y = array[1]
	// 	this._z = array[2]
	// 	if (array[3] !== undefined) this._order = array[3]

	// 	this.onChangeCallback()

	// 	return this
	// }

	/**
	 * TODO, pending https://github.com/AssemblyScript/assemblyscript/issues/643
	 */
	// toArray(array: f64[] = [], offset: i32 = 0): f64[] {
	// 	array[offset] = this._x
	// 	array[offset + 1] = this._y
	// 	array[offset + 2] = this._z
	// 	array[offset + 3] = this._order

	// 	return array
	// }

	toVector3(optionalResult: Vector3 = new Vector3()): Vector3 {
		return optionalResult.set(this._x, this._y, this._z)
	}

	onChange(callback: ChangeCallback): this {
		this.onChangeCallback = callback

		return this
	}
}

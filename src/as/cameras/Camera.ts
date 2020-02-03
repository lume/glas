/**
 * @author mrdoob / http://mrdoob.com/
 * @author mikael emtinger / http://gomo.se/
 * @author WestLangley / http://github.com/WestLangley
 * @author Joe Pea / http://github.com/trusktr
 */

import {Matrix4} from '../math/Matrix4'
// import {Vector3} from '../math/Vector3'
import {Object3D} from '../core/Object3D'

// Cameras ////////////////////////////////////////////////////////////////////////////////////////

/**
 * Abstract base class for cameras. This class should always be inherited when you build a new camera.
 */
export class Camera extends Object3D {
	// TODO can not override super class property, see https://github.com/AssemblyScript/assemblyscript/issues/1091.
	// Workaround is to assign it in the constructor.
	// type: string = 'Camera'

	/**
	 * This is the inverse of matrixWorld. MatrixWorld contains the Matrix which has the world transform of the Camera.
	 */
	matrixWorldInverse: Matrix4 = new Matrix4()

	/**
	 * This is the matrix which contains the projection.
	 */
	projectionMatrix: Matrix4 = new Matrix4()

	projectionMatrixInverse: Matrix4 = new Matrix4()

	isPerspectiveCamera: boolean = false

	constructor() {
		super()
		this.type = 'Camera'
		this.isCamera = true
	}

	// copy(source: Camera, recursive?: boolean): this {
	// 	super.copy(source, recursive)
	// 	this.matrixWorldInverse.copy(source.matrixWorldInverse)
	// 	this.projectionMatrix.copy(source.projectionMatrix)
	// 	this.projectionMatrixInverse.copy(source.projectionMatrixInverse)

	// 	return this
	// }

	// getWorldDirection(target: Vector3): Vector3 {
	// 	this.updateMatrixWorld(true)
	// 	const e = this.matrixWorld.elements
	// 	return target.set(-e[8], -e[9], -e[10]).normalize()
	// }

	updateMatrixWorld(force: boolean = false): void {
		super.updateMatrixWorld(force)
		this.matrixWorldInverse.getInverse(this.matrixWorld)
	}

	// clone(): Camera {
	// 	return new Camera().copy(this)
	// }
}

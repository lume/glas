import { Vector3 } from "./Vector3";
import { Quaternion } from './Quaternion'
import { MathTmp } from './MathTemp'
import { Nullable, FloatArray } from '../Types'
import { Vector4 } from './Vector4'

//TODO: Replace this import with the correct Viewpot
import { Viewport } from './MathCommon'


/**
 * Class used to store matrix data (4x4)
 */
export class Matrix {
    private static _updateFlagSeed = 0;
    private static _identity = Matrix.Identity();

    private _isIdentity = false;
    private _isIdentityDirty = true;
    private _isIdentity3x2 = true;
    private _isIdentity3x2Dirty = true;
    /**
     * Gets the update flag of the matrix which is an unique number for the matrix.
     * It will be incremented every time the matrix data change.
     * You can use it to speed the comparison between two versions of the same matrix.
     */
    public updateFlag: number = -1;

    private readonly _m: Float32Array = new Float32Array(16);

    /**
     * Gets the internal data of the matrix
     */
    public get m(): Float32Array { return this._m; }

    /** @hidden */
    public _markAsUpdated() {
        this.updateFlag = Matrix._updateFlagSeed++;
        this._isIdentity = false;
        this._isIdentity3x2 = false;
        this._isIdentityDirty = true;
        this._isIdentity3x2Dirty = true;
    }

    /** @hidden */
    private _updateIdentityStatus(isIdentity: boolean, isIdentityDirty: boolean = false, isIdentity3x2: boolean = false, isIdentity3x2Dirty: boolean = true) {
        this.updateFlag = Matrix._updateFlagSeed++;
        this._isIdentity = isIdentity;
        this._isIdentity3x2 = isIdentity || isIdentity3x2;
        this._isIdentityDirty = this._isIdentity ? false : isIdentityDirty;
        this._isIdentity3x2Dirty = this._isIdentity3x2 ? false : isIdentity3x2Dirty;
    }

    /**
     * Creates an empty matrix (filled with zeros)
     */
    public constructor() {
        this._updateIdentityStatus(false);
    }

    // Properties

    /**
     * Check if the current matrix is identity
     * @returns true is the matrix is the identity matrix
     */
    public isIdentity(): boolean {
        if (this._isIdentityDirty) {
            this._isIdentityDirty = false;
            const m = this._m;
            this._isIdentity = (
                m[0] === 1.0 && m[1] === 0.0 && m[2] === 0.0 && m[3] === 0.0 &&
                m[4] === 0.0 && m[5] === 1.0 && m[6] === 0.0 && m[7] === 0.0 &&
                m[8] === 0.0 && m[9] === 0.0 && m[10] === 1.0 && m[11] === 0.0 &&
                m[12] === 0.0 && m[13] === 0.0 && m[14] === 0.0 && m[15] === 1.0
            );
        }

        return this._isIdentity;
    }

    /**
     * Check if the current matrix is identity as a texture matrix (3x2 store in 4x4)
     * @returns true is the matrix is the identity matrix
     */
    public isIdentityAs3x2(): boolean {
        if (this._isIdentity3x2Dirty) {
            this._isIdentity3x2Dirty = false;
            if (this._m[0] !== 1.0 || this._m[5] !== 1.0 || this._m[15] !== 1.0) {
                this._isIdentity3x2 = false;
            } else if (this._m[1] !== 0.0 || this._m[2] !== 0.0 || this._m[3] !== 0.0 ||
                this._m[4] !== 0.0 || this._m[6] !== 0.0 || this._m[7] !== 0.0 ||
                this._m[8] !== 0.0 || this._m[9] !== 0.0 || this._m[10] !== 0.0 || this._m[11] !== 0.0 ||
                this._m[12] !== 0.0 || this._m[13] !== 0.0 || this._m[14] !== 0.0) {
                this._isIdentity3x2 = false;
            } else {
                this._isIdentity3x2 = true;
            }
        }

        return this._isIdentity3x2;
    }

    /**
     * Gets the determinant of the matrix
     * @returns the matrix determinant
     */
    public determinant(): number {
        if (this._isIdentity === true) {
            return 1;
        }

        const m = this._m;
        const m00 = m[0], m01 = m[1], m02 = m[2], m03 = m[3];
        const m10 = m[4], m11 = m[5], m12 = m[6], m13 = m[7];
        const m20 = m[8], m21 = m[9], m22 = m[10], m23 = m[11];
        const m30 = m[12], m31 = m[13], m32 = m[14], m33 = m[15];
        // https://en.wikipedia.org/wiki/Laplace_expansion
        // to compute the deterrminant of a 4x4 Matrix we compute the cofactors of any row or column,
        // then we multiply each Cofactor by its corresponding matrix value and sum them all to get the determinant
        // Cofactor(i, j) = sign(i,j) * det(Minor(i, j))
        // where
        //  - sign(i,j) = (i+j) % 2 === 0 ? 1 : -1
        //  - Minor(i, j) is the 3x3 matrix we get by removing row i and column j from current Matrix
        //
        // Here we do that for the 1st row.

        const det_22_33 = m22 * m33 - m32 * m23;
        const det_21_33 = m21 * m33 - m31 * m23;
        const det_21_32 = m21 * m32 - m31 * m22;
        const det_20_33 = m20 * m33 - m30 * m23;
        const det_20_32 = m20 * m32 - m22 * m30;
        const det_20_31 = m20 * m31 - m30 * m21;
        const cofact_00 = +(m11 * det_22_33 - m12 * det_21_33 + m13 * det_21_32);
        const cofact_01 = -(m10 * det_22_33 - m12 * det_20_33 + m13 * det_20_32);
        const cofact_02 = +(m10 * det_21_33 - m11 * det_20_33 + m13 * det_20_31);
        const cofact_03 = -(m10 * det_21_32 - m11 * det_20_32 + m12 * det_20_31);
        return m00 * cofact_00 + m01 * cofact_01 + m02 * cofact_02 + m03 * cofact_03;
    }

    // Methods

    /**
     * Returns the matrix as a Float32Array
     * @returns the matrix underlying array
     */
    public toArray(): Float32Array {
        return this._m;
    }
    /**
     * Returns the matrix as a Float32Array
    * @returns the matrix underlying array.
    */
    public asArray(): Float32Array {
        return this._m;
    }

    /**
     * Inverts the current matrix in place
     * @returns the current inverted matrix
     */
    public invert(): Matrix {
        this.invertToRef(this);
        return this;
    }
    /**
     * Sets all the matrix elements to zero
     * @returns the current matrix
     */
    public reset(): Matrix {
        Matrix.FromValuesToRef(
            0.0, 0.0, 0.0, 0.0,
            0.0, 0.0, 0.0, 0.0,
            0.0, 0.0, 0.0, 0.0,
            0.0, 0.0, 0.0, 0.0,
            this
        );
        this._updateIdentityStatus(false);
        return this;
    }

    /**
     * Adds the current matrix with a second one
     * @param other defines the matrix to add
     * @returns a new matrix as the addition of the current matrix and the given one
     */
    public add(other: Matrix): Matrix {
        const m = this._m;
        const otherM = other.m;
        for (var index = 0; index < 16; index++) {
            m[index] += otherM[index];
        }
        this._markAsUpdated();
        return this;
    }

    /**
     * Sets the given matrix to the current inverted Matrix
     * @param other defines the target matrix
     * @returns the unmodified current matrix
     */
    public invertToRef(other: Matrix): Matrix {
        if (this._isIdentity === true) {
            Matrix.IdentityToRef(other);
            return this;
        }

        // the inverse of a Matrix is the transpose of cofactor matrix divided by the determinant
        const m = this._m;
        const m00 = m[0], m01 = m[1], m02 = m[2], m03 = m[3];
        const m10 = m[4], m11 = m[5], m12 = m[6], m13 = m[7];
        const m20 = m[8], m21 = m[9], m22 = m[10], m23 = m[11];
        const m30 = m[12], m31 = m[13], m32 = m[14], m33 = m[15];

        const det_22_33 = m22 * m33 - m32 * m23;
        const det_21_33 = m21 * m33 - m31 * m23;
        const det_21_32 = m21 * m32 - m31 * m22;
        const det_20_33 = m20 * m33 - m30 * m23;
        const det_20_32 = m20 * m32 - m22 * m30;
        const det_20_31 = m20 * m31 - m30 * m21;

        const cofact_00 = +(m11 * det_22_33 - m12 * det_21_33 + m13 * det_21_32);
        const cofact_01 = -(m10 * det_22_33 - m12 * det_20_33 + m13 * det_20_32);
        const cofact_02 = +(m10 * det_21_33 - m11 * det_20_33 + m13 * det_20_31);
        const cofact_03 = -(m10 * det_21_32 - m11 * det_20_32 + m12 * det_20_31);

        const det = m00 * cofact_00 + m01 * cofact_01 + m02 * cofact_02 + m03 * cofact_03;

        if (det === 0) {
            // not invertible
            other.copyFrom(this);
            return this;
        }

        const detInv = 1 / det;
        const det_12_33 = m12 * m33 - m32 * m13;
        const det_11_33 = m11 * m33 - m31 * m13;
        const det_11_32 = m11 * m32 - m31 * m12;
        const det_10_33 = m10 * m33 - m30 * m13;
        const det_10_32 = m10 * m32 - m30 * m12;
        const det_10_31 = m10 * m31 - m30 * m11;
        const det_12_23 = m12 * m23 - m22 * m13;
        const det_11_23 = m11 * m23 - m21 * m13;
        const det_11_22 = m11 * m22 - m21 * m12;
        const det_10_23 = m10 * m23 - m20 * m13;
        const det_10_22 = m10 * m22 - m20 * m12;
        const det_10_21 = m10 * m21 - m20 * m11;

        const cofact_10 = -(m01 * det_22_33 - m02 * det_21_33 + m03 * det_21_32);
        const cofact_11 = +(m00 * det_22_33 - m02 * det_20_33 + m03 * det_20_32);
        const cofact_12 = -(m00 * det_21_33 - m01 * det_20_33 + m03 * det_20_31);
        const cofact_13 = +(m00 * det_21_32 - m01 * det_20_32 + m02 * det_20_31);

        const cofact_20 = +(m01 * det_12_33 - m02 * det_11_33 + m03 * det_11_32);
        const cofact_21 = -(m00 * det_12_33 - m02 * det_10_33 + m03 * det_10_32);
        const cofact_22 = +(m00 * det_11_33 - m01 * det_10_33 + m03 * det_10_31);
        const cofact_23 = -(m00 * det_11_32 - m01 * det_10_32 + m02 * det_10_31);

        const cofact_30 = -(m01 * det_12_23 - m02 * det_11_23 + m03 * det_11_22);
        const cofact_31 = +(m00 * det_12_23 - m02 * det_10_23 + m03 * det_10_22);
        const cofact_32 = -(m00 * det_11_23 - m01 * det_10_23 + m03 * det_10_21);
        const cofact_33 = +(m00 * det_11_22 - m01 * det_10_22 + m02 * det_10_21);

        Matrix.FromValuesToRef(
            cofact_00 * detInv, cofact_10 * detInv, cofact_20 * detInv, cofact_30 * detInv,
            cofact_01 * detInv, cofact_11 * detInv, cofact_21 * detInv, cofact_31 * detInv,
            cofact_02 * detInv, cofact_12 * detInv, cofact_22 * detInv, cofact_32 * detInv,
            cofact_03 * detInv, cofact_13 * detInv, cofact_23 * detInv, cofact_33 * detInv,
            other
        );

        return this;
    }

    /**
     * add a value at the specified position in the current Matrix
     * @param index the index of the value within the matrix. between 0 and 15.
     * @param value the value to be added
     * @returns the current updated matrix
     */
    public addAtIndex(index: number, value: number): Matrix {
        this._m[index] += value;
        this._markAsUpdated();
        return this;
    }

    /**
     * mutiply the specified position in the current Matrix by a value
     * @param index the index of the value within the matrix. between 0 and 15.
     * @param value the value to be added
     * @returns the current updated matrix
     */
    public multiplyAtIndex(index: number, value: number): Matrix {
        this._m[index] *= value;
        this._markAsUpdated();
        return this;
    }

    /**
     * Inserts the translation vector (using 3 floats) in the current matrix
     * @param x defines the 1st component of the translation
     * @param y defines the 2nd component of the translation
     * @param z defines the 3rd component of the translation
     * @returns the current updated matrix
     */
    public setTranslationFromFloats(x: number, y: number, z: number): Matrix {
        this._m[12] = x;
        this._m[13] = y;
        this._m[14] = z;
        this._markAsUpdated();
        return this;
    }

    /**
     * Adds the translation vector (using 3 floats) in the current matrix
     * @param x defines the 1st component of the translation
     * @param y defines the 2nd component of the translation
     * @param z defines the 3rd component of the translation
     * @returns the current updated matrix
     */
    public addTranslationFromFloats(x: number, y: number, z: number): Matrix {
        this._m[12] += x;
        this._m[13] += y;
        this._m[14] += z;
        this._markAsUpdated();
        return this;
    }

    /**
     * Inserts the translation vector in the current matrix
     * @param vector3 defines the translation to insert
     * @returns the current updated matrix
     */
    public setTranslation(vector3: Vector3): Matrix {
        return this.setTranslationFromFloats(vector3.x, vector3.y, vector3.z);
    }

    /**
     * Gets the translation value of the current matrix
     * @returns a new Vector3 as the extracted translation from the matrix
     */
    public getTranslation(): Vector3 {
        return new Vector3(this._m[12], this._m[13], this._m[14]);
    }

    /**
     * Fill a Vector3 with the extracted translation from the matrix
     * @param result defines the Vector3 where to store the translation
     * @returns the current matrix
     */
    public getTranslationToRef(result: Vector3): Matrix {
        result.x = this._m[12];
        result.y = this._m[13];
        result.z = this._m[14];
        return this;
    }

    /**
     * Remove rotation and scaling part from the matrix
     * @returns the updated matrix
     */
    public removeRotationAndScaling(): Matrix {
        const m = this.m;
        Matrix.FromValuesToRef(
            1.0, 0.0, 0.0, 0.0,
            0.0, 1.0, 0.0, 0.0,
            0.0, 0.0, 1.0, 0.0,
            m[12], m[13], m[14], m[15],
            this
        );
        this._updateIdentityStatus(m[12] === 0 && m[13] === 0 && m[14] === 0 && m[15] === 1);
        return this;
    }

    /**
     * Multiply two matrices
     * @param other defines the second operand
     * @returns a new matrix set with the multiplication result of the current Matrix and the given one
     */
    public multiply(other: Matrix): Matrix {
        var result = new Matrix();
        this.multiplyToRef(other, result);
        return result;
    }

    /**
     * Copy the current matrix from the given one
     * @param other defines the source matrix
     * @returns the current updated matrix
     */
    public copyFrom(other: Matrix): Matrix {
        other.copyToArray(this._m);
        const o = (other as Matrix);
        this._updateIdentityStatus(o._isIdentity, o._isIdentityDirty, o._isIdentity3x2, o._isIdentity3x2Dirty);
        return this;
    }

    /**
     * Populates the given array from the starting index with the current matrix values
     * @param array defines the target array
     * @param offset defines the offset in the target array where to start storing values
     * @returns the current matrix
     */
    public copyToArray(array: Float32Array, offset: number = 0): Matrix {
        for (var index = 0; index < 16; index++) {
            array[offset + index] = this._m[index];
        }
        return this;
    }

    /**
     * Sets the given matrix "result" with the multiplication result of the current Matrix and the given one
     * @param other defines the second operand
     * @param result defines the matrix where to store the multiplication
     * @returns the current matrix
     */
    public multiplyToRef(other: Matrix, result: Matrix): Matrix {
        if (this._isIdentity) {
            result.copyFrom(other);
            return this;
        }
        if ((other as Matrix)._isIdentity) {
            result.copyFrom(this);
            return this;
        }

        this.multiplyToArray(other, result._m, 0);
        result._markAsUpdated();
        return this;
    }

    /**
     * Sets the Float32Array "result" from the given index "offset" with the multiplication of the current matrix and the given one
     * @param other defines the second operand
     * @param result defines the array where to store the multiplication
     * @param offset defines the offset in the target array where to start storing values
     * @returns the current matrix
     */
    public multiplyToArray(other: Matrix, result: Float32Array, offset: number): Matrix {
        const m = this._m;
        const otherM = other.m;
        var tm0 = m[0], tm1 = m[1], tm2 = m[2], tm3 = m[3];
        var tm4 = m[4], tm5 = m[5], tm6 = m[6], tm7 = m[7];
        var tm8 = m[8], tm9 = m[9], tm10 = m[10], tm11 = m[11];
        var tm12 = m[12], tm13 = m[13], tm14 = m[14], tm15 = m[15];

        var om0 = otherM[0], om1 = otherM[1], om2 = otherM[2], om3 = otherM[3];
        var om4 = otherM[4], om5 = otherM[5], om6 = otherM[6], om7 = otherM[7];
        var om8 = otherM[8], om9 = otherM[9], om10 = otherM[10], om11 = otherM[11];
        var om12 = otherM[12], om13 = otherM[13], om14 = otherM[14], om15 = otherM[15];

        result[offset] = tm0 * om0 + tm1 * om4 + tm2 * om8 + tm3 * om12;
        result[offset + 1] = tm0 * om1 + tm1 * om5 + tm2 * om9 + tm3 * om13;
        result[offset + 2] = tm0 * om2 + tm1 * om6 + tm2 * om10 + tm3 * om14;
        result[offset + 3] = tm0 * om3 + tm1 * om7 + tm2 * om11 + tm3 * om15;

        result[offset + 4] = tm4 * om0 + tm5 * om4 + tm6 * om8 + tm7 * om12;
        result[offset + 5] = tm4 * om1 + tm5 * om5 + tm6 * om9 + tm7 * om13;
        result[offset + 6] = tm4 * om2 + tm5 * om6 + tm6 * om10 + tm7 * om14;
        result[offset + 7] = tm4 * om3 + tm5 * om7 + tm6 * om11 + tm7 * om15;

        result[offset + 8] = tm8 * om0 + tm9 * om4 + tm10 * om8 + tm11 * om12;
        result[offset + 9] = tm8 * om1 + tm9 * om5 + tm10 * om9 + tm11 * om13;
        result[offset + 10] = tm8 * om2 + tm9 * om6 + tm10 * om10 + tm11 * om14;
        result[offset + 11] = tm8 * om3 + tm9 * om7 + tm10 * om11 + tm11 * om15;

        result[offset + 12] = tm12 * om0 + tm13 * om4 + tm14 * om8 + tm15 * om12;
        result[offset + 13] = tm12 * om1 + tm13 * om5 + tm14 * om9 + tm15 * om13;
        result[offset + 14] = tm12 * om2 + tm13 * om6 + tm14 * om10 + tm15 * om14;
        result[offset + 15] = tm12 * om3 + tm13 * om7 + tm14 * om11 + tm15 * om15;
        return this;
    }

    /**
     * Check equality between this matrix and a second one
     * @param value defines the second matrix to compare
     * @returns true is the current matrix and the given one values are strictly equal
     */
    public equals(value: Matrix): boolean {
        const other = (value as Matrix);
        if (!other) {
            return false;
        }

        if (this._isIdentity || other._isIdentity) {
            if (!this._isIdentityDirty && !other._isIdentityDirty) {
                return this._isIdentity && other._isIdentity;
            }
        }

        const m = this.m;
        const om = other.m;
        return (
            m[0] === om[0] && m[1] === om[1] && m[2] === om[2] && m[3] === om[3] &&
            m[4] === om[4] && m[5] === om[5] && m[6] === om[6] && m[7] === om[7] &&
            m[8] === om[8] && m[9] === om[9] && m[10] === om[10] && m[11] === om[11] &&
            m[12] === om[12] && m[13] === om[13] && m[14] === om[14] && m[15] === om[15]
        );
    }

    /**
     * Clone the current matrix
     * @returns a new matrix from the current matrix
     */
    public clone(): Matrix {
        const matrix = new Matrix();
        matrix.copyFrom(this);
        return matrix;
    }

    /**
     * Returns the name of the current matrix class
     * @returns the string "Matrix"
     */
    public getClassName(): string {
        return "Matrix";
    }

    /**
     * Gets the hash code of the current matrix
     * @returns the hash code
     */
    public getHashCode(): number {
        let hash = this._m[0] | 0;
        for (let i = 1; i < 16; i++) {
            hash = (hash * 397) ^ (this._m[i] | 0);
        }
        return hash;
    }

    /**
     * Decomposes the current Matrix into a translation, rotation and scaling components
     * @param scale defines the scale vector3 given as a reference to update
     * @param rotation defines the rotation quaternion given as a reference to update
     * @param translation defines the translation vector3 given as a reference to update
     * @returns true if operation was successful
     */
    public decompose(scale?: Vector3, rotation?: Quaternion, translation?: Vector3): boolean {
        if (this._isIdentity) {
            if (translation) {
                translation.setAll(0);
            }
            if (scale) {
                scale.setAll(1);
            }
            if (rotation) {
                rotation.copyFromFloats(0, 0, 0, 1);
            }
            return true;
        }

        const m = this._m;
        if (translation) {
            translation.copyFromFloats(m[12], m[13], m[14]);
        }

        scale = scale || MathTmp.Vector3[0];
        scale.x = Math.sqrt(m[0] * m[0] + m[1] * m[1] + m[2] * m[2]);
        scale.y = Math.sqrt(m[4] * m[4] + m[5] * m[5] + m[6] * m[6]);
        scale.z = Math.sqrt(m[8] * m[8] + m[9] * m[9] + m[10] * m[10]);

        if (this.determinant() <= 0) {
            scale.y *= -1;
        }

        if (scale.x === 0 || scale.y === 0 || scale.z === 0) {
            if (rotation) {
                rotation.copyFromFloats(0.0, 0.0, 0.0, 1.0);
            }
            return false;
        }

        if (rotation) {
            const sx = 1 / scale.x, sy = 1 / scale.y, sz = 1 / scale.z;
            Matrix.FromValuesToRef(
                m[0] * sx, m[1] * sx, m[2] * sx, 0.0,
                m[4] * sy, m[5] * sy, m[6] * sy, 0.0,
                m[8] * sz, m[9] * sz, m[10] * sz, 0.0,
                0.0, 0.0, 0.0, 1.0,
                MathTmp.Matrix[0]
            );

            Quaternion.FromRotationMatrixToRef(MathTmp.Matrix[0], rotation);
        }

        return true;
    }

    /**
     * Gets specific row of the matrix
     * @param index defines the number of the row to get
     * @returns the index-th row of the current matrix as a new Vector4
     */
    public getRow(index: number): Nullable<Vector4> {
        if (index < 0 || index > 3) {
            return null;
        }
        var i = index * 4;
        return new Vector4(this._m[i + 0], this._m[i + 1], this._m[i + 2], this._m[i + 3]);
    }

    /**
     * Sets the index-th row of the current matrix to the vector4 values
     * @param index defines the number of the row to set
     * @param row defines the target vector4
     * @returns the updated current matrix
     */
    public setRow(index: number, row: Vector4): Matrix {
        return this.setRowFromFloats(index, row.x, row.y, row.z, row.w);
    }

    /**
     * Compute the transpose of the matrix
     * @returns the new transposed matrix
     */
    public transpose(): Matrix {
        return Matrix.Transpose(this);
    }

    /**
     * Compute the transpose of the matrix and store it in a given matrix
     * @param result defines the target matrix
     * @returns the current matrix
     */
    public transposeToRef(result: Matrix): Matrix {
        Matrix.TransposeToRef(this, result);
        return this;
    }

    /**
     * Sets the index-th row of the current matrix with the given 4 x float values
     * @param index defines the row index
     * @param x defines the x component to set
     * @param y defines the y component to set
     * @param z defines the z component to set
     * @param w defines the w component to set
     * @returns the updated current matrix
     */
    public setRowFromFloats(index: number, x: number, y: number, z: number, w: number): Matrix {
        if (index < 0 || index > 3) {
            return this;
        }
        var i = index * 4;
        this._m[i + 0] = x;
        this._m[i + 1] = y;
        this._m[i + 2] = z;
        this._m[i + 3] = w;

        this._markAsUpdated();
        return this;
    }

    /**
     * Compute a new matrix set with the current matrix values multiplied by scale (float)
     * @param scale defines the scale factor
     * @returns a new matrix
     */
    public scale(scale: number): Matrix {
        var result = new Matrix();
        this.scaleToRef(scale, result);
        return result;
    }

    /**
     * Scale the current matrix values by a factor to a given result matrix
     * @param scale defines the scale factor
     * @param result defines the matrix to store the result
     * @returns the current matrix
     */
    public scaleToRef(scale: number, result: Matrix): Matrix {
        for (var index = 0; index < 16; index++) {
            result._m[index] = this._m[index] * scale;
        }
        result._markAsUpdated();
        return this;
    }

    /**
     * Scale the current matrix values by a factor and add the result to a given matrix
     * @param scale defines the scale factor
     * @param result defines the Matrix to store the result
     * @returns the current matrix
     */
    public scaleAndAddToRef(scale: number, result: Matrix): Matrix {
        for (var index = 0; index < 16; index++) {
            result._m[index] += this._m[index] * scale;
        }
        result._markAsUpdated();
        return this;
    }

    /**
     * Writes to the given matrix a normal matrix, computed from this one (using values from identity matrix for fourth row and column).
     * @param ref matrix to store the result
     */
    public toNormalMatrix(ref: Matrix): void {
        const tmp = MathTmp.Matrix[0];
        this.invertToRef(tmp);
        tmp.transposeToRef(ref);
        var m = ref._m;
        Matrix.FromValuesToRef(
            m[0], m[1], m[2], 0.0,
            m[4], m[5], m[6], 0.0,
            m[8], m[9], m[10], 0.0,
            0.0, 0.0, 0.0, 1.0,
            ref
        );
    }

    /**
     * Gets only rotation part of the current matrix
     * @returns a new matrix sets to the extracted rotation matrix from the current one
     */
    public getRotationMatrix(): Matrix {
        var result = new Matrix();
        this.getRotationMatrixToRef(result);
        return result;
    }

    /**
     * Extracts the rotation matrix from the current one and sets it as the given "result"
     * @param result defines the target matrix to store data to
     * @returns the current matrix
     */
    public getRotationMatrixToRef(result: Matrix): Matrix {
        const scale = MathTmp.Vector3[0];
        if (!this.decompose(scale)) {
            Matrix.IdentityToRef(result);
            return this;
        }

        const m = this._m;
        const sx = 1 / scale.x, sy = 1 / scale.y, sz = 1 / scale.z;
        Matrix.FromValuesToRef(
            m[0] * sx, m[1] * sx, m[2] * sx, 0.0,
            m[4] * sy, m[5] * sy, m[6] * sy, 0.0,
            m[8] * sz, m[9] * sz, m[10] * sz, 0.0,
            0.0, 0.0, 0.0, 1.0,
            result
        );
        return this;
    }

    /**
     * Toggles model matrix from being right handed to left handed in place and vice versa
     */
    public toggleModelMatrixHandInPlace() {
        const m = this._m;
        m[2] *= -1;
        m[6] *= -1;
        m[8] *= -1;
        m[9] *= -1;
        m[14] *= -1;
        this._markAsUpdated();
    }

    /**
     * Toggles projection matrix from being right handed to left handed in place and vice versa
     */
    public toggleProjectionMatrixHandInPlace() {
        var m = this._m;
        m[8] *= -1;
        m[9] *= -1;
        m[10] *= -1;
        m[11] *= -1;
        this._markAsUpdated();
    }

    // Statics
    /**
     * Creates a matrix from an array
     * @param array defines the source array
     * @param offset defines an offset in the source array
     * @returns a new Matrix set from the starting index of the given array
     */
    public static FromArray(array: ArrayLike<number>, offset: number = 0): Matrix {
        var result = new Matrix();
        Matrix.FromArrayToRef(array, offset, result);
        return result;
    }

    /**
     * Copy the content of an array into a given matrix
     * @param array defines the source array
     * @param offset defines an offset in the source array
     * @param result defines the target matrix
     */
    public static FromArrayToRef(array: ArrayLike<f64>, offset: i32, result: Matrix) {
        for (var index = 0; index < 16; index++) {
            result._m[index] = array[index + offset];
        }
        result._markAsUpdated();
    }

    /**
     * Stores an array into a matrix after having multiplied each component by a given factor
     * @param array defines the source array
     * @param offset defines the offset in the source array
     * @param scale defines the scaling factor
     * @param result defines the target matrix
     */
    public static FromFloat32ArrayToRefScaled(array: Float32Array, offset: number, scale: number, result: Matrix) {
        for (var index = 0; index < 16; index++) {
            result._m[index] = array[index + offset] * scale;
        }
        result._markAsUpdated();
    }

    /**
     * Gets an identity matrix that must not be updated
     */
    public static get IdentityReadOnly(): Matrix {
        return Matrix._identity;
    }

    /**
     * Stores a list of values (16) inside a given matrix
     * @param initialM11 defines 1st value of 1st row
     * @param initialM12 defines 2nd value of 1st row
     * @param initialM13 defines 3rd value of 1st row
     * @param initialM14 defines 4th value of 1st row
     * @param initialM21 defines 1st value of 2nd row
     * @param initialM22 defines 2nd value of 2nd row
     * @param initialM23 defines 3rd value of 2nd row
     * @param initialM24 defines 4th value of 2nd row
     * @param initialM31 defines 1st value of 3rd row
     * @param initialM32 defines 2nd value of 3rd row
     * @param initialM33 defines 3rd value of 3rd row
     * @param initialM34 defines 4th value of 3rd row
     * @param initialM41 defines 1st value of 4th row
     * @param initialM42 defines 2nd value of 4th row
     * @param initialM43 defines 3rd value of 4th row
     * @param initialM44 defines 4th value of 4th row
     * @param result defines the target matrix
     */
    public static FromValuesToRef(initialM11: number, initialM12: number, initialM13: number, initialM14: number,
        initialM21: number, initialM22: number, initialM23: number, initialM24: number,
        initialM31: number, initialM32: number, initialM33: number, initialM34: number,
        initialM41: number, initialM42: number, initialM43: number, initialM44: number, result: Matrix): void {

        const m = result._m;
        m[0] = initialM11; m[1] = initialM12; m[2] = initialM13; m[3] = initialM14;
        m[4] = initialM21; m[5] = initialM22; m[6] = initialM23; m[7] = initialM24;
        m[8] = initialM31; m[9] = initialM32; m[10] = initialM33; m[11] = initialM34;
        m[12] = initialM41; m[13] = initialM42; m[14] = initialM43; m[15] = initialM44;

        result._markAsUpdated();
    }

    /**
     * Creates new matrix from a list of values (16)
     * @param initialM11 defines 1st value of 1st row
     * @param initialM12 defines 2nd value of 1st row
     * @param initialM13 defines 3rd value of 1st row
     * @param initialM14 defines 4th value of 1st row
     * @param initialM21 defines 1st value of 2nd row
     * @param initialM22 defines 2nd value of 2nd row
     * @param initialM23 defines 3rd value of 2nd row
     * @param initialM24 defines 4th value of 2nd row
     * @param initialM31 defines 1st value of 3rd row
     * @param initialM32 defines 2nd value of 3rd row
     * @param initialM33 defines 3rd value of 3rd row
     * @param initialM34 defines 4th value of 3rd row
     * @param initialM41 defines 1st value of 4th row
     * @param initialM42 defines 2nd value of 4th row
     * @param initialM43 defines 3rd value of 4th row
     * @param initialM44 defines 4th value of 4th row
     * @returns the new matrix
     */
    public static FromValues(initialM11: number, initialM12: number, initialM13: number, initialM14: number,
        initialM21: number, initialM22: number, initialM23: number, initialM24: number,
        initialM31: number, initialM32: number, initialM33: number, initialM34: number,
        initialM41: number, initialM42: number, initialM43: number, initialM44: number): Matrix {

        var result = new Matrix();
        const m = result._m;
        m[0] = initialM11; m[1] = initialM12; m[2] = initialM13; m[3] = initialM14;
        m[4] = initialM21; m[5] = initialM22; m[6] = initialM23; m[7] = initialM24;
        m[8] = initialM31; m[9] = initialM32; m[10] = initialM33; m[11] = initialM34;
        m[12] = initialM41; m[13] = initialM42; m[14] = initialM43; m[15] = initialM44;
        result._markAsUpdated();
        return result;
    }

    /**
     * Creates a new matrix composed by merging scale (vector3), rotation (quaternion) and translation (vector3)
     * @param scale defines the scale vector3
     * @param rotation defines the rotation quaternion
     * @param translation defines the translation vector3
     * @returns a new matrix
     */
    public static Compose(scale: Vector3, rotation: Quaternion, translation: Vector3): Matrix {
        var result = new Matrix();
        Matrix.ComposeToRef(scale, rotation, translation, result);
        return result;
    }

    /**
     * Sets a matrix to a value composed by merging scale (vector3), rotation (quaternion) and translation (vector3)
     * @param scale defines the scale vector3
     * @param rotation defines the rotation quaternion
     * @param translation defines the translation vector3
     * @param result defines the target matrix
     */
    public static ComposeToRef(scale: Vector3, rotation: Quaternion, translation: Vector3, result: Matrix): void {
        let m = result._m;
        var x = rotation.x, y = rotation.y, z = rotation.z, w = rotation.w;
        var x2 = x + x, y2 = y + y, z2 = z + z;
        var xx = x * x2, xy = x * y2, xz = x * z2;
        var yy = y * y2, yz = y * z2, zz = z * z2;
        var wx = w * x2, wy = w * y2, wz = w * z2;

        var sx = scale.x, sy = scale.y, sz = scale.z;

        m[0] = (1 - (yy + zz)) * sx;
        m[1] = (xy + wz) * sx;
        m[2] = (xz - wy) * sx;
        m[3] = 0;

        m[4] = (xy - wz) * sy;
        m[5] = (1 - (xx + zz)) * sy;
        m[6] = (yz + wx) * sy;
        m[7] = 0;

        m[8] = (xz + wy) * sz;
        m[9] = (yz - wx) * sz;
        m[10] = (1 - (xx + yy)) * sz;
        m[11] = 0;

        m[12] = translation.x;
        m[13] = translation.y;
        m[14] = translation.z;
        m[15] = 1;

        result._markAsUpdated();
    }

    /**
     * Creates a new identity matrix
     * @returns a new identity matrix
     */
    public static Identity(): Matrix {
        const identity = Matrix.FromValues(
            1.0, 0.0, 0.0, 0.0,
            0.0, 1.0, 0.0, 0.0,
            0.0, 0.0, 1.0, 0.0,
            0.0, 0.0, 0.0, 1.0);
        identity._updateIdentityStatus(true);
        return identity;
    }

    /**
     * Creates a new identity matrix and stores the result in a given matrix
     * @param result defines the target matrix
     */
    public static IdentityToRef(result: Matrix): void {
        Matrix.FromValuesToRef(
            1.0, 0.0, 0.0, 0.0,
            0.0, 1.0, 0.0, 0.0,
            0.0, 0.0, 1.0, 0.0,
            0.0, 0.0, 0.0, 1.0,
            result
        );
        result._updateIdentityStatus(true);
    }

    /**
     * Creates a new zero matrix
     * @returns a new zero matrix
     */
    public static Zero(): Matrix {
        const zero = Matrix.FromValues(
            0.0, 0.0, 0.0, 0.0,
            0.0, 0.0, 0.0, 0.0,
            0.0, 0.0, 0.0, 0.0,
            0.0, 0.0, 0.0, 0.0);
        zero._updateIdentityStatus(false);
        return zero;
    }

    /**
     * Creates a new rotation matrix for "angle" radians around the X axis
     * @param angle defines the angle (in radians) to use
     * @return the new matrix
     */
    public static RotationX(angle: number): Matrix {
        var result = new Matrix();
        Matrix.RotationXToRef(angle, result);
        return result;
    }

    /**
     * Creates a new matrix as the invert of a given matrix
     * @param source defines the source matrix
     * @returns the new matrix
     */
    public static Invert(source: Matrix): Matrix {
        var result = new Matrix();
        source.invertToRef(result);
        return result;
    }

    /**
     * Creates a new rotation matrix for "angle" radians around the X axis and stores it in a given matrix
     * @param angle defines the angle (in radians) to use
     * @param result defines the target matrix
     */
    public static RotationXToRef(angle: number, result: Matrix): void {
        var s = Math.sin(angle);
        var c = Math.cos(angle);
        Matrix.FromValuesToRef(
            1.0, 0.0, 0.0, 0.0,
            0.0, c, s, 0.0,
            0.0, -s, c, 0.0,
            0.0, 0.0, 0.0, 1.0,
            result
        );

        result._updateIdentityStatus(c === 1 && s === 0);
    }

    /**
     * Creates a new rotation matrix for "angle" radians around the Y axis
     * @param angle defines the angle (in radians) to use
     * @return the new matrix
     */
    public static RotationY(angle: number): Matrix {
        var result = new Matrix();
        Matrix.RotationYToRef(angle, result);
        return result;
    }

    /**
     * Creates a new rotation matrix for "angle" radians around the Y axis and stores it in a given matrix
     * @param angle defines the angle (in radians) to use
     * @param result defines the target matrix
     */
    public static RotationYToRef(angle: number, result: Matrix): void {
        var s = Math.sin(angle);
        var c = Math.cos(angle);
        Matrix.FromValuesToRef(
            c, 0.0, -s, 0.0,
            0.0, 1.0, 0.0, 0.0,
            s, 0.0, c, 0.0,
            0.0, 0.0, 0.0, 1.0,
            result
        );

        result._updateIdentityStatus(c === 1 && s === 0);
    }

    /**
     * Creates a new rotation matrix for "angle" radians around the Z axis
     * @param angle defines the angle (in radians) to use
     * @return the new matrix
     */
    public static RotationZ(angle: number): Matrix {
        var result = new Matrix();
        Matrix.RotationZToRef(angle, result);
        return result;
    }

    /**
     * Creates a new rotation matrix for "angle" radians around the Z axis and stores it in a given matrix
     * @param angle defines the angle (in radians) to use
     * @param result defines the target matrix
     */
    public static RotationZToRef(angle: number, result: Matrix): void {
        var s = Math.sin(angle);
        var c = Math.cos(angle);
        Matrix.FromValuesToRef(
            c, s, 0.0, 0.0,
            -s, c, 0.0, 0.0,
            0.0, 0.0, 1.0, 0.0,
            0.0, 0.0, 0.0, 1.0,
            result
        );

        result._updateIdentityStatus(c === 1 && s === 0);
    }

    /**
     * Creates a new rotation matrix for "angle" radians around the given axis
     * @param axis defines the axis to use
     * @param angle defines the angle (in radians) to use
     * @return the new matrix
     */
    public static RotationAxis(axis: Vector3, angle: number): Matrix {
        var result = new Matrix();
        Matrix.RotationAxisToRef(axis, angle, result);
        return result;
    }

    /**
     * Creates a new rotation matrix for "angle" radians around the given axis and stores it in a given matrix
     * @param axis defines the axis to use
     * @param angle defines the angle (in radians) to use
     * @param result defines the target matrix
     */
    public static RotationAxisToRef(axis: Vector3, angle: number, result: Matrix): void {
        var s = Math.sin(-angle);
        var c = Math.cos(-angle);
        var c1 = 1 - c;

        axis.normalize();
        const m = result._m;
        m[0] = (axis.x * axis.x) * c1 + c;
        m[1] = (axis.x * axis.y) * c1 - (axis.z * s);
        m[2] = (axis.x * axis.z) * c1 + (axis.y * s);
        m[3] = 0.0;

        m[4] = (axis.y * axis.x) * c1 + (axis.z * s);
        m[5] = (axis.y * axis.y) * c1 + c;
        m[6] = (axis.y * axis.z) * c1 - (axis.x * s);
        m[7] = 0.0;

        m[8] = (axis.z * axis.x) * c1 - (axis.y * s);
        m[9] = (axis.z * axis.y) * c1 + (axis.x * s);
        m[10] = (axis.z * axis.z) * c1 + c;
        m[11] = 0.0;

        m[12] = 0.0;
        m[13] = 0.0;
        m[14] = 0.0;
        m[15] = 1.0;

        result._markAsUpdated();
    }

    /**
     * Takes normalised vectors and returns a rotation matrix to align "from" with "to".
     * Taken from http://www.iquilezles.org/www/articles/noacos/noacos.htm
     * @param from defines the vector to align
     * @param to defines the vector to align to
     * @param result defines the target matrix
     */
    public static RotationAlignToRef(from: Vector3, to: Vector3, result: Matrix): void {
        const v = Vector3.Cross(to, from);
        const c = Vector3.Dot(to, from);
        const k = 1 / (1 + c);

        const m = result._m;
        m[0] = v.x * v.x * k + c; m[1] = v.y * v.x * k - v.z; m[2] = v.z * v.x * k + v.y; m[3] = 0;
        m[4] = v.x * v.y * k + v.z; m[5] = v.y * v.y * k + c; m[6] = v.z * v.y * k - v.x; m[7] = 0;
        m[8] = v.x * v.z * k - v.y; m[9] = v.y * v.z * k + v.x; m[10] = v.z * v.z * k + c; m[11] = 0;
        m[12] = 0; m[13] = 0; m[14] = 0; m[15] = 1;

        result._markAsUpdated();
    }

    /**
     * Creates a rotation matrix
     * @param yaw defines the yaw angle in radians (Y axis)
     * @param pitch defines the pitch angle in radians (X axis)
     * @param roll defines the roll angle in radians (X axis)
     * @returns the new rotation matrix
     */
    public static RotationYawPitchRoll(yaw: number, pitch: number, roll: number): Matrix {
        var result = new Matrix();
        Matrix.RotationYawPitchRollToRef(yaw, pitch, roll, result);
        return result;
    }

    /**
     * Creates a rotation matrix and stores it in a given matrix
     * @param yaw defines the yaw angle in radians (Y axis)
     * @param pitch defines the pitch angle in radians (X axis)
     * @param roll defines the roll angle in radians (X axis)
     * @param result defines the target matrix
     */
    public static RotationYawPitchRollToRef(yaw: number, pitch: number, roll: number, result: Matrix): void {
        Quaternion.RotationYawPitchRollToRef(yaw, pitch, roll, MathTmp.Quaternion[0]);
        MathTmp.Quaternion[0].toRotationMatrix(result);
    }

    /**
     * Creates a scaling matrix
     * @param x defines the scale factor on X axis
     * @param y defines the scale factor on Y axis
     * @param z defines the scale factor on Z axis
     * @returns the new matrix
     */
    public static Scaling(x: number, y: number, z: number): Matrix {
        var result = new Matrix();
        Matrix.ScalingToRef(x, y, z, result);
        return result;
    }

    /**
     * Creates a scaling matrix and stores it in a given matrix
     * @param x defines the scale factor on X axis
     * @param y defines the scale factor on Y axis
     * @param z defines the scale factor on Z axis
     * @param result defines the target matrix
     */
    public static ScalingToRef(x: number, y: number, z: number, result: Matrix): void {
        Matrix.FromValuesToRef(
            x, 0.0, 0.0, 0.0,
            0.0, y, 0.0, 0.0,
            0.0, 0.0, z, 0.0,
            0.0, 0.0, 0.0, 1.0,
            result
        );

        result._updateIdentityStatus(x === 1 && y === 1 && z === 1);
    }

    /**
     * Creates a translation matrix
     * @param x defines the translation on X axis
     * @param y defines the translation on Y axis
     * @param z defines the translationon Z axis
     * @returns the new matrix
     */
    public static Translation(x: number, y: number, z: number): Matrix {
        var result = new Matrix();
        Matrix.TranslationToRef(x, y, z, result);
        return result;
    }

    /**
     * Creates a translation matrix and stores it in a given matrix
     * @param x defines the translation on X axis
     * @param y defines the translation on Y axis
     * @param z defines the translationon Z axis
     * @param result defines the target matrix
     */
    public static TranslationToRef(x: number, y: number, z: number, result: Matrix): void {
        Matrix.FromValuesToRef(
            1.0, 0.0, 0.0, 0.0,
            0.0, 1.0, 0.0, 0.0,
            0.0, 0.0, 1.0, 0.0,
            x, y, z, 1.0,
            result
        );
        result._updateIdentityStatus(x === 0 && y === 0 && z === 0);
    }

    /**
     * Returns a new Matrix whose values are the interpolated values for "gradient" (float) between the ones of the matrices "startValue" and "endValue".
     * @param startValue defines the start value
     * @param endValue defines the end value
     * @param gradient defines the gradient factor
     * @returns the new matrix
     */
    public static Lerp(startValue: Matrix, endValue: Matrix, gradient: number): Matrix {
        var result = new Matrix();
        Matrix.LerpToRef(startValue, endValue, gradient, result);
        return result;
    }

    /**
     * Set the given matrix "result" as the interpolated values for "gradient" (float) between the ones of the matrices "startValue" and "endValue".
     * @param startValue defines the start value
     * @param endValue defines the end value
     * @param gradient defines the gradient factor
     * @param result defines the Matrix object where to store data
     */
    public static LerpToRef(startValue: Matrix, endValue: Matrix, gradient: number, result: Matrix): void {
        const resultM = result._m;
        const startM = startValue.m;
        const endM = endValue.m;
        for (var index = 0; index < 16; index++) {
            resultM[index] = startM[index] * (1.0 - gradient) + endM[index] * gradient;
        }
        result._markAsUpdated();
    }

    /**
     * Builds a new matrix whose values are computed by:
     * * decomposing the the "startValue" and "endValue" matrices into their respective scale, rotation and translation matrices
     * * interpolating for "gradient" (float) the values between each of these decomposed matrices between the start and the end
     * * recomposing a new matrix from these 3 interpolated scale, rotation and translation matrices
     * @param startValue defines the first matrix
     * @param endValue defines the second matrix
     * @param gradient defines the gradient between the two matrices
     * @returns the new matrix
     */
    public static DecomposeLerp(startValue: Matrix, endValue: Matrix, gradient: number): Matrix {
        var result = new Matrix();
        Matrix.DecomposeLerpToRef(startValue, endValue, gradient, result);
        return result;
    }

    /**
     * Update a matrix to values which are computed by:
     * * decomposing the the "startValue" and "endValue" matrices into their respective scale, rotation and translation matrices
     * * interpolating for "gradient" (float) the values between each of these decomposed matrices between the start and the end
     * * recomposing a new matrix from these 3 interpolated scale, rotation and translation matrices
     * @param startValue defines the first matrix
     * @param endValue defines the second matrix
     * @param gradient defines the gradient between the two matrices
     * @param result defines the target matrix
     */
    public static DecomposeLerpToRef(startValue: Matrix, endValue: Matrix, gradient: number, result: Matrix) {
        var startScale = MathTmp.Vector3[0];
        var startRotation = MathTmp.Quaternion[0];
        var startTranslation = MathTmp.Vector3[1];
        startValue.decompose(startScale, startRotation, startTranslation);

        var endScale = MathTmp.Vector3[2];
        var endRotation = MathTmp.Quaternion[1];
        var endTranslation = MathTmp.Vector3[3];
        endValue.decompose(endScale, endRotation, endTranslation);

        var resultScale = MathTmp.Vector3[4];
        Vector3.LerpToRef(startScale, endScale, gradient, resultScale);
        var resultRotation = MathTmp.Quaternion[2];
        Quaternion.SlerpToRef(startRotation, endRotation, gradient, resultRotation);

        var resultTranslation = MathTmp.Vector3[5];
        Vector3.LerpToRef(startTranslation, endTranslation, gradient, resultTranslation);

        Matrix.ComposeToRef(resultScale, resultRotation, resultTranslation, result);
    }

    /**
     * Gets a new rotation matrix used to rotate an entity so as it looks at the target vector3, from the eye vector3 position, the up vector3 being oriented like "up"
     * This function works in left handed mode
     * @param eye defines the final position of the entity
     * @param target defines where the entity should look at
     * @param up defines the up vector for the entity
     * @returns the new matrix
     */
    public static LookAtLH(eye: Vector3, target: Vector3, up: Vector3): Matrix {
        var result = new Matrix();
        Matrix.LookAtLHToRef(eye, target, up, result);
        return result;
    }

    /**
     * Sets the given "result" Matrix to a rotation matrix used to rotate an entity so that it looks at the target vector3, from the eye vector3 position, the up vector3 being oriented like "up".
     * This function works in left handed mode
     * @param eye defines the final position of the entity
     * @param target defines where the entity should look at
     * @param up defines the up vector for the entity
     * @param result defines the target matrix
     */
    public static LookAtLHToRef(eye: Vector3, target: Vector3, up: Vector3, result: Matrix): void {
        const xAxis = MathTmp.Vector3[0];
        const yAxis = MathTmp.Vector3[1];
        const zAxis = MathTmp.Vector3[2];

        // Z axis
        target.subtractToRef(eye, zAxis);
        zAxis.normalize();

        // X axis
        Vector3.CrossToRef(up, zAxis, xAxis);

        const xSquareLength = xAxis.lengthSquared();
        if (xSquareLength === 0) {
            xAxis.x = 1.0;
        } else {
            xAxis.normalizeFromLength(Math.sqrt(xSquareLength));
        }

        // Y axis
        Vector3.CrossToRef(zAxis, xAxis, yAxis);
        yAxis.normalize();

        // Eye angles
        var ex = -Vector3.Dot(xAxis, eye);
        var ey = -Vector3.Dot(yAxis, eye);
        var ez = -Vector3.Dot(zAxis, eye);

        Matrix.FromValuesToRef(
            xAxis.x, yAxis.x, zAxis.x, 0.0,
            xAxis.y, yAxis.y, zAxis.y, 0.0,
            xAxis.z, yAxis.z, zAxis.z, 0.0,
            ex, ey, ez, 1.0,
            result
        );
    }

    /**
     * Gets a new rotation matrix used to rotate an entity so as it looks at the target vector3, from the eye vector3 position, the up vector3 being oriented like "up"
     * This function works in right handed mode
     * @param eye defines the final position of the entity
     * @param target defines where the entity should look at
     * @param up defines the up vector for the entity
     * @returns the new matrix
     */
    public static LookAtRH(eye: Vector3, target: Vector3, up: Vector3): Matrix {
        var result = new Matrix();
        Matrix.LookAtRHToRef(eye, target, up, result);
        return result;
    }

    /**
     * Sets the given "result" Matrix to a rotation matrix used to rotate an entity so that it looks at the target vector3, from the eye vector3 position, the up vector3 being oriented like "up".
     * This function works in right handed mode
     * @param eye defines the final position of the entity
     * @param target defines where the entity should look at
     * @param up defines the up vector for the entity
     * @param result defines the target matrix
     */
    public static LookAtRHToRef(eye: Vector3, target: Vector3, up: Vector3, result: Matrix): void {
        const xAxis = MathTmp.Vector3[0];
        const yAxis = MathTmp.Vector3[1];
        const zAxis = MathTmp.Vector3[2];

        // Z axis
        eye.subtractToRef(target, zAxis);
        zAxis.normalize();

        // X axis
        Vector3.CrossToRef(up, zAxis, xAxis);

        const xSquareLength = xAxis.lengthSquared();
        if (xSquareLength === 0) {
            xAxis.x = 1.0;
        } else {
            xAxis.normalizeFromLength(Math.sqrt(xSquareLength));
        }

        // Y axis
        Vector3.CrossToRef(zAxis, xAxis, yAxis);
        yAxis.normalize();

        // Eye angles
        var ex = -Vector3.Dot(xAxis, eye);
        var ey = -Vector3.Dot(yAxis, eye);
        var ez = -Vector3.Dot(zAxis, eye);

        Matrix.FromValuesToRef(
            xAxis.x, yAxis.x, zAxis.x, 0.0,
            xAxis.y, yAxis.y, zAxis.y, 0.0,
            xAxis.z, yAxis.z, zAxis.z, 0.0,
            ex, ey, ez, 1.0,
            result
        );
    }

    /**
     * Create a left-handed orthographic projection matrix
     * @param width defines the viewport width
     * @param height defines the viewport height
     * @param znear defines the near clip plane
     * @param zfar defines the far clip plane
     * @returns a new matrix as a left-handed orthographic projection matrix
     */
    public static OrthoLH(width: number, height: number, znear: number, zfar: number): Matrix {
        var matrix = new Matrix();
        Matrix.OrthoLHToRef(width, height, znear, zfar, matrix);
        return matrix;
    }

    /**
     * Store a left-handed orthographic projection to a given matrix
     * @param width defines the viewport width
     * @param height defines the viewport height
     * @param znear defines the near clip plane
     * @param zfar defines the far clip plane
     * @param result defines the target matrix
     */
    public static OrthoLHToRef(width: number, height: number, znear: number, zfar: number, result: Matrix): void {
        let n = znear;
        let f = zfar;

        let a = 2.0 / width;
        let b = 2.0 / height;
        let c = 2.0 / (f - n);
        let d = -(f + n) / (f - n);

        Matrix.FromValuesToRef(
            a, 0.0, 0.0, 0.0,
            0.0, b, 0.0, 0.0,
            0.0, 0.0, c, 0.0,
            0.0, 0.0, d, 1.0,
            result
        );

        result._updateIdentityStatus(a === 1 && b === 1 && c === 1 && d === 0);
    }

    /**
     * Create a left-handed orthographic projection matrix
     * @param left defines the viewport left coordinate
     * @param right defines the viewport right coordinate
     * @param bottom defines the viewport bottom coordinate
     * @param top defines the viewport top coordinate
     * @param znear defines the near clip plane
     * @param zfar defines the far clip plane
     * @returns a new matrix as a left-handed orthographic projection matrix
     */
    public static OrthoOffCenterLH(left: number, right: number, bottom: number, top: number, znear: number, zfar: number): Matrix {
        var matrix = new Matrix();
        Matrix.OrthoOffCenterLHToRef(left, right, bottom, top, znear, zfar, matrix);
        return matrix;
    }

    /**
     * Stores a left-handed orthographic projection into a given matrix
     * @param left defines the viewport left coordinate
     * @param right defines the viewport right coordinate
     * @param bottom defines the viewport bottom coordinate
     * @param top defines the viewport top coordinate
     * @param znear defines the near clip plane
     * @param zfar defines the far clip plane
     * @param result defines the target matrix
     */
    public static OrthoOffCenterLHToRef(left: number, right: number, bottom: number, top: number, znear: number, zfar: number, result: Matrix): void {
        let n = znear;
        let f = zfar;

        let a = 2.0 / (right - left);
        let b = 2.0 / (top - bottom);
        let c = 2.0 / (f - n);
        let d = -(f + n) / (f - n);
        let i0 = (left + right) / (left - right);
        let i1 = (top + bottom) / (bottom - top);

        Matrix.FromValuesToRef(
            a, 0.0, 0.0, 0.0,
            0.0, b, 0.0, 0.0,
            0.0, 0.0, c, 0.0,
            i0, i1, d, 1.0,
            result
        );

        result._markAsUpdated();
    }

    /**
     * Creates a right-handed orthographic projection matrix
     * @param left defines the viewport left coordinate
     * @param right defines the viewport right coordinate
     * @param bottom defines the viewport bottom coordinate
     * @param top defines the viewport top coordinate
     * @param znear defines the near clip plane
     * @param zfar defines the far clip plane
     * @returns a new matrix as a right-handed orthographic projection matrix
     */
    public static OrthoOffCenterRH(left: number, right: number, bottom: number, top: number, znear: number, zfar: number): Matrix {
        var matrix = new Matrix();
        Matrix.OrthoOffCenterRHToRef(left, right, bottom, top, znear, zfar, matrix);
        return matrix;
    }

    /**
     * Stores a right-handed orthographic projection into a given matrix
     * @param left defines the viewport left coordinate
     * @param right defines the viewport right coordinate
     * @param bottom defines the viewport bottom coordinate
     * @param top defines the viewport top coordinate
     * @param znear defines the near clip plane
     * @param zfar defines the far clip plane
     * @param result defines the target matrix
     */
    public static OrthoOffCenterRHToRef(left: number, right: number, bottom: number, top: number, znear: number, zfar: number, result: Matrix): void {
        Matrix.OrthoOffCenterLHToRef(left, right, bottom, top, znear, zfar, result);
        result._m[10] *= -1; // No need to call _markAsUpdated as previous function already called it and let _isIdentityDirty to true
    }

    /**
     * Creates a left-handed perspective projection matrix
     * @param width defines the viewport width
     * @param height defines the viewport height
     * @param znear defines the near clip plane
     * @param zfar defines the far clip plane
     * @returns a new matrix as a left-handed perspective projection matrix
     */
    public static PerspectiveLH(width: number, height: number, znear: number, zfar: number): Matrix {
        var matrix = new Matrix();

        let n = znear;
        let f = zfar;

        let a = 2.0 * n / width;
        let b = 2.0 * n / height;
        let c = (f + n) / (f - n);
        let d = -2.0 * f * n / (f - n);

        Matrix.FromValuesToRef(
            a, 0.0, 0.0, 0.0,
            0.0, b, 0.0, 0.0,
            0.0, 0.0, c, 1.0,
            0.0, 0.0, d, 0.0,
            matrix
        );

        matrix._updateIdentityStatus(false);
        return matrix;
    }

    /**
     * Creates a left-handed perspective projection matrix
     * @param fov defines the horizontal field of view
     * @param aspect defines the aspect ratio
     * @param znear defines the near clip plane
     * @param zfar defines the far clip plane
     * @returns a new matrix as a left-handed perspective projection matrix
     */
    public static PerspectiveFovLH(fov: number, aspect: number, znear: number, zfar: number): Matrix {
        var matrix = new Matrix();
        Matrix.PerspectiveFovLHToRef(fov, aspect, znear, zfar, matrix);
        return matrix;
    }

    /**
     * Stores a left-handed perspective projection into a given matrix
     * @param fov defines the horizontal field of view
     * @param aspect defines the aspect ratio
     * @param znear defines the near clip plane
     * @param zfar defines the far clip plane
     * @param result defines the target matrix
     * @param isVerticalFovFixed defines it the fov is vertically fixed (default) or horizontally
     */
    public static PerspectiveFovLHToRef(fov: number, aspect: number, znear: number, zfar: number, result: Matrix, isVerticalFovFixed = true): void {
        let n = znear;
        let f = zfar;

        let t = 1.0 / (Math.tan(fov * 0.5));
        let a = isVerticalFovFixed ? (t / aspect) : t;
        let b = isVerticalFovFixed ? t : (t * aspect);
        let c = (f + n) / (f - n);
        let d = -2.0 * f * n / (f - n);

        Matrix.FromValuesToRef(
            a, 0.0, 0.0, 0.0,
            0.0, b, 0.0, 0.0,
            0.0, 0.0, c, 1.0,
            0.0, 0.0, d, 0.0,
            result
        );
        result._updateIdentityStatus(false);
    }

    /**
     * Creates a right-handed perspective projection matrix
     * @param fov defines the horizontal field of view
     * @param aspect defines the aspect ratio
     * @param znear defines the near clip plane
     * @param zfar defines the far clip plane
     * @returns a new matrix as a right-handed perspective projection matrix
     */
    public static PerspectiveFovRH(fov: number, aspect: number, znear: number, zfar: number): Matrix {
        var matrix = new Matrix();
        Matrix.PerspectiveFovRHToRef(fov, aspect, znear, zfar, matrix);
        return matrix;
    }

    /**
     * Stores a right-handed perspective projection into a given matrix
     * @param fov defines the horizontal field of view
     * @param aspect defines the aspect ratio
     * @param znear defines the near clip plane
     * @param zfar defines the far clip plane
     * @param result defines the target matrix
     * @param isVerticalFovFixed defines it the fov is vertically fixed (default) or horizontally
     */
    public static PerspectiveFovRHToRef(fov: number, aspect: number, znear: number, zfar: number, result: Matrix, isVerticalFovFixed = true): void {
        //alternatively this could be expressed as:
        //    m = PerspectiveFovLHToRef
        //    m[10] *= -1.0;
        //    m[11] *= -1.0;

        let n = znear;
        let f = zfar;

        let t = 1.0 / (Math.tan(fov * 0.5));
        let a = isVerticalFovFixed ? (t / aspect) : t;
        let b = isVerticalFovFixed ? t : (t * aspect);
        let c = -(f + n) / (f - n);
        let d = -2 * f * n / (f - n);

        Matrix.FromValuesToRef(
            a, 0.0, 0.0, 0.0,
            0.0, b, 0.0, 0.0,
            0.0, 0.0, c, -1.0,
            0.0, 0.0, d, 0.0,
            result
        );

        result._updateIdentityStatus(false);
    }

    /**
     * Stores a perspective projection for WebVR info a given matrix
     * @param fov defines the field of view
     * @param znear defines the near clip plane
     * @param zfar defines the far clip plane
     * @param result defines the target matrix
     * @param rightHanded defines if the matrix must be in right-handed mode (false by default)
     */
    public static PerspectiveFovWebVRToRef(fov: { upDegrees: number, downDegrees: number, leftDegrees: number, rightDegrees: number }, znear: number, zfar: number, result: Matrix, rightHanded = false): void {

        var rightHandedFactor = rightHanded ? -1 : 1;

        var upTan = Math.tan(fov.upDegrees * Math.PI / 180.0);
        var downTan = Math.tan(fov.downDegrees * Math.PI / 180.0);
        var leftTan = Math.tan(fov.leftDegrees * Math.PI / 180.0);
        var rightTan = Math.tan(fov.rightDegrees * Math.PI / 180.0);
        var xScale = 2.0 / (leftTan + rightTan);
        var yScale = 2.0 / (upTan + downTan);
        const m = result._m;
        m[0] = xScale;
        m[1] = m[2] = m[3] = m[4] = 0.0;
        m[5] = yScale;
        m[6] = m[7] = 0.0;
        m[8] = ((leftTan - rightTan) * xScale * 0.5);
        m[9] = -((upTan - downTan) * yScale * 0.5);
        m[10] = -zfar / (znear - zfar);
        m[11] = 1.0 * rightHandedFactor;
        m[12] = m[13] = m[15] = 0.0;
        m[14] = -(2.0 * zfar * znear) / (zfar - znear);

        result._markAsUpdated();
    }

    /**
     * Computes a complete transformation matrix
     * @param viewport defines the viewport to use
     * @param world defines the world matrix
     * @param view defines the view matrix
     * @param projection defines the projection matrix
     * @param zmin defines the near clip plane
     * @param zmax defines the far clip plane
     * @returns the transformation matrix
     */
    public static GetFinalMatrix(viewport: Viewport, world: Matrix, view: Matrix, projection: Matrix, zmin: number, zmax: number): Matrix {
        var cw = viewport.width;
        var ch = viewport.height;
        var cx = viewport.x;
        var cy = viewport.y;

        var viewportMatrix = Matrix.FromValues(
            cw / 2.0, 0.0, 0.0, 0.0,
            0.0, -ch / 2.0, 0.0, 0.0,
            0.0, 0.0, zmax - zmin, 0.0,
            cx + cw / 2.0, ch / 2.0 + cy, zmin, 1.0);

        var matrix = MathTmp.Matrix[0];
        world.multiplyToRef(view, matrix);
        matrix.multiplyToRef(projection, matrix);
        return matrix.multiply(viewportMatrix);
    }

    /**
     * Extracts a 2x2 matrix from a given matrix and store the result in a Float32Array
     * @param matrix defines the matrix to use
     * @returns a new Float32Array array with 4 elements : the 2x2 matrix extracted from the given matrix
     */
    public static GetAsMatrix2x2(matrix: Matrix): Float32Array {
        const m = matrix.m;

        let theArray: Float32Array = new Float32Array(4);

        theArray[0] = m[0];
        theArray[1] = m[1];
        theArray[4] = m[4];
        theArray[5] = m[5];

        return theArray;
    }
    /**
     * Extracts a 3x3 matrix from a given matrix and store the result in a Float32Array
     * @param matrix defines the matrix to use
     * @returns a new Float32Array array with 9 elements : the 3x3 matrix extracted from the given matrix
     */
    public static GetAsMatrix3x3(matrix: Matrix): Float32Array {
        const m = matrix.m;

        let theArray: Float32Array = new Float32Array(9);
        
        theArray[0] = m[0];
        theArray[1] = m[1];
        theArray[2] = m[2];
        theArray[4] = m[4];
        theArray[5] = m[5];
        theArray[6] = m[6];
        theArray[8] = m[8];
        theArray[9] = m[9];
        theArray[10] = m[10];

        return theArray;
    }

    /**
     * Compute the transpose of a given matrix
     * @param matrix defines the matrix to transpose
     * @returns the new matrix
     */
    public static Transpose(matrix: Matrix): Matrix {
        var result = new Matrix();
        Matrix.TransposeToRef(matrix, result);
        return result;
    }

    /**
     * Compute the transpose of a matrix and store it in a target matrix
     * @param matrix defines the matrix to transpose
     * @param result defines the target matrix
     */
    public static TransposeToRef(matrix: Matrix, result: Matrix): void {
        const rm = result._m;
        const mm = matrix.m;
        rm[0] = mm[0];
        rm[1] = mm[4];
        rm[2] = mm[8];
        rm[3] = mm[12];

        rm[4] = mm[1];
        rm[5] = mm[5];
        rm[6] = mm[9];
        rm[7] = mm[13];

        rm[8] = mm[2];
        rm[9] = mm[6];
        rm[10] = mm[10];
        rm[11] = mm[14];

        rm[12] = mm[3];
        rm[13] = mm[7];
        rm[14] = mm[11];
        rm[15] = mm[15];
        // identity-ness does not change when transposing
        result._updateIdentityStatus((matrix as Matrix)._isIdentity, (matrix as Matrix)._isIdentityDirty);
    }

    /**
     * Computes a reflection matrix from a plane
     * @param plane defines the reflection plane
     * @returns a new matrix
     */
    public static Reflection(plane: Plane): Matrix {
        var matrix = new Matrix();
        Matrix.ReflectionToRef(plane, matrix);
        return matrix;
    }

    /**
     * Computes a reflection matrix from a plane
     * @param plane defines the reflection plane
     * @param result defines the target matrix
     */
    public static ReflectionToRef(plane: Plane, result: Matrix): void {
        plane.normalize();
        var x = plane.normal.x;
        var y = plane.normal.y;
        var z = plane.normal.z;
        var temp = -2 * x;
        var temp2 = -2 * y;
        var temp3 = -2 * z;
        Matrix.FromValuesToRef(
            temp * x + 1, temp2 * x, temp3 * x, 0.0,
            temp * y, temp2 * y + 1, temp3 * y, 0.0,
            temp * z, temp2 * z, temp3 * z + 1, 0.0,
            temp * plane.d, temp2 * plane.d, temp3 * plane.d, 1.0,
            result
        );
    }

    /**
     * Sets the given matrix as a rotation matrix composed from the 3 left handed axes
     * @param xaxis defines the value of the 1st axis
     * @param yaxis defines the value of the 2nd axis
     * @param zaxis defines the value of the 3rd axis
     * @param result defines the target matrix
     */
    public static FromXYZAxesToRef(xaxis: Vector3, yaxis: Vector3, zaxis: Vector3, result: Matrix) {
        Matrix.FromValuesToRef(
            xaxis.x, xaxis.y, xaxis.z, 0.0,
            yaxis.x, yaxis.y, yaxis.z, 0.0,
            zaxis.x, zaxis.y, zaxis.z, 0.0,
            0.0, 0.0, 0.0, 1.0,
            result
        );
    }

    /**
     * Creates a rotation matrix from a quaternion and stores it in a target matrix
     * @param quat defines the quaternion to use
     * @param result defines the target matrix
     */
    public static FromQuaternionToRef(quat: Quaternion, result: Matrix) {
        var xx = quat.x * quat.x;
        var yy = quat.y * quat.y;
        var zz = quat.z * quat.z;
        var xy = quat.x * quat.y;
        var zw = quat.z * quat.w;
        var zx = quat.z * quat.x;
        var yw = quat.y * quat.w;
        var yz = quat.y * quat.z;
        var xw = quat.x * quat.w;

        result._m[0] = 1.0 - (2.0 * (yy + zz));
        result._m[1] = 2.0 * (xy + zw);
        result._m[2] = 2.0 * (zx - yw);
        result._m[3] = 0.0;

        result._m[4] = 2.0 * (xy - zw);
        result._m[5] = 1.0 - (2.0 * (zz + xx));
        result._m[6] = 2.0 * (yz + xw);
        result._m[7] = 0.0;

        result._m[8] = 2.0 * (zx + yw);
        result._m[9] = 2.0 * (yz - xw);
        result._m[10] = 1.0 - (2.0 * (yy + xx));
        result._m[11] = 0.0;

        result._m[12] = 0.0;
        result._m[13] = 0.0;
        result._m[14] = 0.0;
        result._m[15] = 1.0;

        result._markAsUpdated();
    }
}

/**
 * Represens a plane by the equation ax + by + cz + d = 0
 */
export class Plane {
    /**
     * Normal of the plane (a,b,c)
     */
    public normal: Vector3;
    /**
     * d component of the plane
     */
    public d: number;
    /**
     * Creates a Plane object according to the given floats a, b, c, d and the plane equation : ax + by + cz + d = 0
     * @param a a component of the plane
     * @param b b component of the plane
     * @param c c component of the plane
     * @param d d component of the plane
     */
    constructor(a: number, b: number, c: number, d: number) {
        this.normal = new Vector3(a, b, c);
        this.d = d;
    }

    /**
     * @returns the plane coordinates as a new array of 4 elements [a, b, c, d].
     */
    public asArray(): number[] {
        return [this.normal.x, this.normal.y, this.normal.z, this.d];
    }

    // Methods
    /**
     * @returns a new plane copied from the current Plane.
     */
    public clone(): Plane {
        return new Plane(this.normal.x, this.normal.y, this.normal.z, this.d);
    }
    /**
     * @returns the string "Plane".
     */
    public getClassName(): string {
        return "Plane";
    }
    /**
     * @returns the Plane hash code.
     */
    public getHashCode(): number {
        let hash = this.normal.getHashCode();
        hash = (hash * 397) ^ (this.d | 0);
        return hash;
    }
    /**
     * Normalize the current Plane in place.
     * @returns the updated Plane.
     */
    public normalize(): Plane {
        var norm = (Math.sqrt((this.normal.x * this.normal.x) + (this.normal.y * this.normal.y) + (this.normal.z * this.normal.z)));
        var magnitude = 0.0;

        if (norm !== 0) {
            magnitude = 1.0 / norm;
        }
        this.normal.x *= magnitude;
        this.normal.y *= magnitude;
        this.normal.z *= magnitude;
        this.d *= magnitude;
        return this;
    }
    /**
     * Applies a transformation the plane and returns the result
     * @param transformation the transformation matrix to be applied to the plane
     * @returns a new Plane as the result of the transformation of the current Plane by the given matrix.
     */
    public transform(transformation: Matrix): Plane {
        const transposedMatrix = MathTmp.Matrix[0];
        Matrix.TransposeToRef(transformation, transposedMatrix);
        const m = transposedMatrix.m;
        var x = this.normal.x;
        var y = this.normal.y;
        var z = this.normal.z;
        var d = this.d;

        var normalX = x * m[0] + y * m[1] + z * m[2] + d * m[3];
        var normalY = x * m[4] + y * m[5] + z * m[6] + d * m[7];
        var normalZ = x * m[8] + y * m[9] + z * m[10] + d * m[11];
        var finalD = x * m[12] + y * m[13] + z * m[14] + d * m[15];

        return new Plane(normalX, normalY, normalZ, finalD);
    }

    /**
     * Calcualtte the dot product between the point and the plane normal
     * @param point point to calculate the dot product with
     * @returns the dot product (float) of the point coordinates and the plane normal.
     */
    public dotCoordinate(point: Vector3): number {
        return ((((this.normal.x * point.x) + (this.normal.y * point.y)) + (this.normal.z * point.z)) + this.d);
    }

    /**
     * Updates the current Plane from the plane defined by the three given points.
     * @param point1 one of the points used to contruct the plane
     * @param point2 one of the points used to contruct the plane
     * @param point3 one of the points used to contruct the plane
     * @returns the updated Plane.
     */
    public copyFromPoints(point1: Vector3, point2: Vector3, point3: Vector3): Plane {
        var x1 = point2.x - point1.x;
        var y1 = point2.y - point1.y;
        var z1 = point2.z - point1.z;
        var x2 = point3.x - point1.x;
        var y2 = point3.y - point1.y;
        var z2 = point3.z - point1.z;
        var yz = (y1 * z2) - (z1 * y2);
        var xz = (z1 * x2) - (x1 * z2);
        var xy = (x1 * y2) - (y1 * x2);
        var pyth = (Math.sqrt((yz * yz) + (xz * xz) + (xy * xy)));
        var invPyth;

        if (pyth !== 0) {
            invPyth = 1.0 / pyth;
        }
        else {
            invPyth = 0.0;
        }

        this.normal.x = yz * invPyth;
        this.normal.y = xz * invPyth;
        this.normal.z = xy * invPyth;
        this.d = -((this.normal.x * point1.x) + (this.normal.y * point1.y) + (this.normal.z * point1.z));

        return this;
    }

    /**
     * Checks if the plane is facing a given direction
     * @param direction the direction to check if the plane is facing
     * @param epsilon value the dot product is compared against (returns true if dot <= epsilon)
     * @returns True is the vector "direction"  is the same side than the plane normal.
     */
    public isFrontFacingTo(direction: Vector3, epsilon: number): boolean {
        var dot = Vector3.Dot(this.normal, direction);
        return (dot <= epsilon);
    }

    /**
     * Calculates the distance to a point
     * @param point point to calculate distance to
     * @returns the signed distance (float) from the given point to the Plane.
     */
    public signedDistanceTo(point: Vector3): number {
        return Vector3.Dot(point, this.normal) + this.d;
    }

    // Statics
    /**
     * Creates a plane from an  array
     * @param array the array to create a plane from
     * @returns a new Plane from the given array.
     */
    static FromArray(array: ArrayLike<f64>): Plane {
        return new Plane(array[0], array[1], array[2], array[3]);
    }
    /**
     * Creates a plane from three points
     * @param point1 point used to create the plane
     * @param point2 point used to create the plane
     * @param point3 point used to create the plane
     * @returns a new Plane defined by the three given points.
     */
    static FromPoints(point1: Vector3, point2: Vector3, point3: Vector3): Plane {
        var result = new Plane(0.0, 0.0, 0.0, 0.0);
        result.copyFromPoints(point1, point2, point3);
        return result;
    }
    /**
     * Creates a plane from an origin point and a normal
     * @param origin origin of the plane to be constructed
     * @param normal normal of the plane to be constructed
     * @returns a new Plane the normal vector to this plane at the given origin point.
     * Note : the vector "normal" is updated because normalized.
     */
    static FromPositionAndNormal(origin: Vector3, normal: Vector3): Plane {
        var result = new Plane(0.0, 0.0, 0.0, 0.0);
        normal.normalize();
        result.normal = normal;
        result.d = -(normal.x * origin.x + normal.y * origin.y + normal.z * origin.z);
        return result;
    }

    /**
     * Calculates the distance from a plane and a point
     * @param origin origin of the plane to be constructed
     * @param normal normal of the plane to be constructed
     * @param point point to calculate distance to
     * @returns the signed distance between the plane defined by the normal vector at the "origin"" point and the given other point.
     */
    static SignedDistanceToPlaneFromPositionAndNormal(origin: Vector3, normal: Vector3, point: Vector3): number {
        var d = -(normal.x * origin.x + normal.y * origin.y + normal.z * origin.z);
        return Vector3.Dot(point, normal) + d;
    }
}
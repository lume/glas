import { Vector3 } from './Vector3'
import { Matrix } from './Matrix'
import { Quaternion } from './Quaternion';
import { ArrayTools } from '../Misc/ArrayTools'

/**
 * @hidden
 * Same as Tmp but not exported to keep it only for math functions to avoid conflicts
 */
export class MathTmp {
    public static Vector3: Vector3[] = ArrayTools.BuildArray(6, Vector3.Zero);
    public static Matrix: Matrix[] = ArrayTools.BuildArray(2, Matrix.Identity);
    public static Quaternion: Quaternion[] = ArrayTools.BuildArray(3, Quaternion.Zero);
}
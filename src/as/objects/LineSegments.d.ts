import {Geometry} from './../core/Geometry'
import {Material} from './../materials/Material'
import {Line} from './Line'
import {BufferGeometry} from '../core/BufferGeometry'

/**
 * @deprecated
 */
export const LineStrip: f32
/**
 * @deprecated
 */
export const LinePieces: f32

export class LineSegments extends Line {
	constructor(geometry?: Geometry | BufferGeometry, material?: Material | Material[], mode?: f32)

	type: 'LineSegments'
	isLineSegments: true
}

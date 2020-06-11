import {Color} from './../math/Color'
import {Texture} from './../textures/Texture'
import {MaterialParameters, Material} from './Material'

export interface SpriteMaterialParameters extends MaterialParameters {
	color?: Color | string | f32
	map?: Texture
	rotation?: f32
	sizeAttenuation?: boolean
}

export class SpriteMaterial extends Material {
	constructor(parameters?: SpriteMaterialParameters)

	color: Color
	map: Texture | null
	rotation: f32
	sizeAttenuation: boolean
	isSpriteMaterial: true

	setValues(parameters: SpriteMaterialParameters): void
	copy(source: SpriteMaterial): this
}

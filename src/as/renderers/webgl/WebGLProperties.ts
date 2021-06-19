/**
 * @author fordacious / fordacious.github.io
 * @author Joe Pea / http://github.com/trusktr
 */

// NOTE The WebGLProperties class from Three.js was nothing more than a Map,
// with a convenience helper for returning a newly-created value in case get was
// called on an object that was not yet added. We removed the unnecessary
// methods, and we made it non-generic so to fit in AS's strict type system.
//
// Instead of having one WebGLProperties class as in Three.js, we will have
// differing classes (f.e. MaterialProperties) depending on what types of
// properties they contain.

import {WebGLFramebuffer, WebGLRenderbuffer, WebGLTexture} from '../../../../node_modules/aswebglue/src/WebGL'
import {Texture} from '../../textures/Texture'
import {Material} from './../../materials/Material'
import {WebGLProgram} from './WebGLProgram'
import {RenderTarget} from './WebGLRenderLists'

// TODO update MapWithDefault to the version using extends instead of composition once the following is fixed:
// https://discord.com/channels/721472913886281818/721497900932137090/832291205906956290
// {{

/** @abstract */
export class MapWithDefault<Key, Value> {
	map: Map<Key, Value> = new Map()

	get(key: Key): Value {
		let value: Value | null = null

		if (!this.map.has(key)) this.map.set(key, (value = this.createValue()))
		else value = this.map.get(key)

		return value
	}

	/** @abstract */
	protected createValue(): Value {
		throw new Error('Subclass should implement')
	}
}

// /** @abstract */
// export class MapWithDefault<Key, Value> extends Map<Key, Value> {
// 	get(key: Key): Value {
// 		let value: Value | null = null

// 		if (!this.has(key)) this.set(key, (value = this.createValue()))
// 		else value = super.get(key)

// 		return value
// 	}

// 	/** @abstract */
// 	protected createValue(): Value {
// 		throw new Error('Subclass should implement')
// 	}
// }

// }}

// export class RenderItemProps {
// 	buffers: null = null // TODO
// }

// export class RenderItemProperties extends MapWithDefault<RenderItem, RenderItemProps> {
// 	protected createValue(): RenderItemProps {
// 		return new RenderItemProps()
// 	}
// }

// TODO
class EnvMap {
	isCubeTexture: boolean = false
	_needsFlipEnvMap: boolean = false
}

export class MatProps {
	program: WebGLProgram | null = null
	// clippingState // TODO, used in WebGLClipping
	envMap: EnvMap | null = null // TODO, used in WebGLMaterials
}

export class MaterialProperties extends MapWithDefault<Material, MatProps> {
	protected createValue(): MatProps {
		return new MatProps()
	}
}

export class EnvMapProps {
	__maxMipLevel: i32 = 0
}

export class EnvMapProperties extends MapWithDefault<EnvMap, EnvMapProps> {
	protected createValue(): EnvMapProps {
		return new EnvMapProps()
	}
}

export class RenderTargetProps {
	__webglFramebuffer: WebGLFramebuffer = -1 // -1 means null
	__webglFramebuffers: Array<WebGLFramebuffer> | null = null
	__webglDepthbuffer: WebGLRenderbuffer = -1 // -1 means null
	__webglDepthbuffers: Array<WebGLRenderbuffer> | null = null
	__webglMultisampledFramebuffer: WebGLFramebuffer = -1 // -1 means null
	__webglColorRenderbuffer: WebGLRenderbuffer = -1 // -1 means null
	__webglDepthRenderbuffer: WebGLRenderbuffer = -1 // -1 means null
}

export class RenderTargetProperties extends MapWithDefault<RenderTarget, RenderTargetProps> {
	protected createValue(): RenderTargetProps {
		return new RenderTargetProps()
	}
}

export class TextureProps {
	__version: i32 = -1
	__maxMipLevel: i32 = 0 // Is this a correct initial value?
	__webglInit: boolean = false
	__webglTexture: WebGLTexture = -1 // -1 means null
	__currentAnisotropy: i32 = 0 // Is this a correct initial value?
}

export class TextureProperties extends MapWithDefault<Texture, TextureProps> {
	protected createValue(): TextureProps {
		return new TextureProps()
	}
}

export class WebGLProperties {
	// TODO make these all getters that create the *Properties objects lazily when needed.

	material: MaterialProperties = new MaterialProperties()
	texture: TextureProperties = new TextureProperties()
	renterTarget: RenderTargetProperties = new RenderTargetProperties()
	envMap: EnvMapProperties = new EnvMapProperties()
}

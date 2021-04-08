/**
 * @author mrdoob / http://mrdoob.com/
 * @author alteredq / http://alteredqualia.com/
 * @author Joe Pea / http://github.com/trusktr
 */

import {Plane} from '../math/Plane'
// import {Shader} from '../renderers/shaders/ShaderLib'
import {EventDispatcher} from '../core/EventDispatcher'
import {Event} from '../core/Event'
// import {WebGLRenderer} from '../renderers/WebGLRenderer'
import {
	BlendingDstFactor,
	BlendingEquation,
	Blending,
	BlendingSrcFactor,
	DepthModes,
	Side,
	Colors,
	NormalBlending,
	NoColors,
	AddEquation,
	LessEqualDepth,
	ShadowSide,
	Precision,
} from '../constants'
import {generateUUID} from '../math/MathUtils'

// Materials //////////////////////////////////////////////////////////////////////////////////

let materialId: i32 = 0

// TODO ?
// export interface MaterialParameters {
// 	alphaTest?: f32
// 	blendDst?: BlendingDstFactor
// 	blendDstAlpha?: f32
// 	blendEquation?: BlendingEquation
// 	blendEquationAlpha?: f32
// 	blending?: Blending
// 	blendSrc?: BlendingSrcFactor | BlendingDstFactor
// 	blendSrcAlpha?: f32
// 	clipIntersection?: boolean
// 	clippingPlanes?: Plane[]
// 	clipShadows?: boolean
// 	colorWrite?: boolean
// 	depthFunc?: DepthModes
// 	depthTest?: boolean
// 	depthWrite?: boolean
// 	fog?: boolean
// 	lights?: boolean
// 	name?: string
// 	opacity?: f32
// 	overdraw?: f32
// 	polygonOffset?: boolean
// 	polygonOffsetFactor?: f32
// 	polygonOffsetUnits?: f32
// 	precision?: 'highp' | 'mediump' | 'lowp' | null
// 	premultipliedAlpha?: boolean
// 	dithering?: boolean
// 	flatShading?: boolean
// 	side?: Side
// 	shadowSide?: Side
// 	transparent?: boolean
// 	vertexColors?: Colors
// 	vertexTangents?: boolean
// 	visible?: boolean
// }

/**
 * Materials describe the appearance of objects. They are defined in a (mostly) renderer-independent way, so you don't have to rewrite materials if you decide to use a different renderer.
 */
export class Material extends EventDispatcher {
	/**
	 * Unique number of this material instance.
	 */
	id: i32 = materialId++

	/**
	 * UUID of this material instance. This gets automatically assigned, so
	 * this shouldn't be edited.
	 */
	uuid: string = generateUUID()

	/**
	 * Material name. Default is an empty string.
	 */
	name: string = ''

	/**
	 * Value is the string 'Material'. This shouldn't be changed, and can be
	 * used to find all objects of this type in a scene.
	 */
	type: string = 'Material'

	/**
	 * Used to check whether this or derived classes are materials. Default is true.
	 * You should not change this, as it used internally for optimisation.
	 */
	isMaterial: true = true

	/**
	 * Whether the material is affected by fog. Default is true.
	 */
	fog: boolean = true

	/**
	 * Whether the material is affected by lights. Default is true.
	 */
	lights: boolean = true

	/**
	 * Which blending to use when displaying objects with this material.
	 * Default is {@link NormalBlending}.
	 */
	blending: Blending = NormalBlending

	/**
	 * Defines which of the face sides will be rendered - front, back or both.
	 * Default is THREE.FrontSide. Other options are THREE.BackSide and
	 * THREE.DoubleSide.
	 */
	side: Side = Side.FrontSide

	/**
	 * Define whether the material is rendered with flat shading. Default is false.
	 */
	flatShading: boolean = false

	/**
	 * Defines whether precomputed vertex tangents are used. Default is false.
	 */
	vertexTangents: boolean = false

	/**
	 * Defines whether vertex coloring is used. Default is THREE.NoColors.
	 * Other options are VertexColors and FaceColors.
	 */
	vertexColors: Colors = NoColors

	/**
	 * Opacity. Default is 1.
	 */
	opacity: f32 = 1

	/**
	 * Defines whether this material is transparent. This has an effect on rendering as transparent objects need special treatment and are rendered after non-transparent objects.
	 * When set to true, the extent to which the material is transparent is controlled by setting it's .opacity property.
	 * Default is false.
	 */
	transparent: boolean = false

	/**
	 * Blending source. It's one of the blending mode constants defined in
	 * Three.js. Default is {@link SrcAlphaFactor}.
	 */
	blendSrc: BlendingSrcFactor = BlendingSrcFactor.SrcAlphaFactor

	/**
	 * Blending destination. It's one of the blending mode constants defined in
	 * Three.js. Default is {@link OneMinusSrcAlphaFactor}.
	 */
	blendDst: BlendingDstFactor = BlendingDstFactor.OneMinusSrcAlphaFactor

	/**
	 * Blending equation to use when applying blending. It's one of the
	 * constants defined in Three.js. Default is {@link AddEquation}.
	 */
	blendEquation: BlendingEquation = AddEquation

	/**
	 * The tranparency of the .blendSrc, between 0 to 1, or equal to -1 if
	 * disabled. Default is -1, which means it will use the value from
	 * .blendSrc.
	 */
	// TODO make sure to update parts of the code that check blendSrcAlpha for null to instead check for -1.
	blendSrcAlpha: f32 = -1

	/**
	 * The tranparency of the .blendDst. Default is null.
	 */
	// TODO update null checking to check for -1 instead
	blendDstAlpha: f32 = -1

	/**
	 * The tranparency of the .blendEquation. Default is null.
	 */
	blendEquationAlpha: f32 = -1

	/**
	 * Which depth function to use. Default is {@link LessEqualDepth}. See the
	 * depth mode constants for all possible values.
	 */
	depthFunc: DepthModes = LessEqualDepth

	/**
	 * Whether to have depth test enabled when rendering this material. Default is true.
	 */
	depthTest: boolean = true

	/**
	 * Whether rendering this material has any effect on the depth buffer. Default is true.
	 * When drawing 2D overlays it can be useful to disable the depth writing in order to layer several things together without creating z-index artifacts.
	 */
	depthWrite: boolean = true

	/**
	 * User-defined clipping planes specified as THREE.Plane objects in world
	 * space. These planes apply to the objects this material is attached to.
	 * Points in space whose signed distance to the plane is negative are
	 * clipped (not rendered). See the WebGL / clipping / intersection example.
	 * Default is null.
	 */
	clippingPlanes: Plane[] | null = null

	/**
	 * Changes the behavior of clipping planes so that only their intersection
	 * is clipped, rather than their union. Default is false.
	 */
	clipIntersection: boolean = false

	/**
	 * Defines whether to clip shadows according to the clipping planes
	 * specified on this material. Default is false.
	 */
	clipShadows: boolean = false

	/** TODO: describe shadowSide. */
	// TODO code should test for AutoSide instead of null
	shadowSide: ShadowSide = ShadowSide.AutoSide

	/**
	 * Whether to render the material's color. This can be used in conjunction
	 * with a mesh's .renderOrder property to create invisible objects that
	 * occlude other objects. Default is true.
	 */
	colorWrite: boolean = true

	/**
	 * Override the renderer's default precision for this material. Can be
	 * "highp", "mediump" or "lowp". Defaults is null.
	 */
	// TODO code should check for Precision.default instead of null
	precision: Precision = Precision.Default

	/**
	 * Whether to use polygon offset. Default is false. This corresponds to the
	 * POLYGON_OFFSET_FILL WebGL feature.
	 */
	polygonOffset: boolean = false

	/**
	 * Sets the polygon offset factor. Default is 0.
	 */
	polygonOffsetFactor: f32 = 0

	/**
	 * Sets the polygon offset units. Default is 0.
	 */
	polygonOffsetUnits: f32 = 0

	/**
	 * Whether to apply dithering to the color to remove the appearance of
	 * banding. Default is false.
	 */
	dithering: boolean = false

	/**
	 * Sets the alpha value to be used when running an alpha test. Default is 0.
	 */
	alphaTest: f32 = 0

	/**
	 * Whether to premultiply the alpha (transparency) value. See WebGL /
	 * Materials / Transparency for an example of the difference. Default is
	 * false.
	 */
	premultipliedAlpha: boolean = false

	/**
	 * Defines whether this material is visible. Default is true.
	 */
	visible: boolean = true

	/**
	 * An object that can be used to store custom data about the Material. It
	 * should not hold references to functions as these will not be cloned.
	 */
	// userData: any // No dynamic objects with random type in AS.

	/**
	 * Specifies that the material needs to be updated, WebGL wise. Set it to true if you made changes that need to be reflected in WebGL.
	 * This property is automatically set to true when instancing a new material.
	 */
	needsUpdate: boolean = true

	// /**
	//  * An optional callback that is executed immediately before the shader program is compiled. This function is called with the shader source code as a parameter. Useful for the modification of built-in materials.
	//  * @param shader Source code of the shader
	//  * @param renderer WebGLRenderer Context that is initializing the material
	//  */
	// TODO
	// onBeforeCompile: (shader: Shader, renderer: WebGLRenderer) => void = () => {}

	// /**
	//  * Sets the properties based on the values.
	//  * @param values A container with parameters.
	//  */
	// TODO This method is very dynamic JS. Possible to do in AS, perhaps with Maps? For now, just set properties directly.
	// setValues(values: MaterialParameters): this {
	// 	if (values === undefined) return this

	// 	for (var key in values) {
	// 		var newValue = values[key]

	// 		if (newValue === undefined) {
	// 			console.warn("THREE.Material: '" + key + "' parameter is undefined.")
	// 			continue
	// 		}

	// 		// for backward compatability if shading is set in the constructor
	// 		if (key === 'shading') {
	// 			console.warn(
	// 				'THREE.' + this.type + ': .shading has been removed. Use the boolean .flatShading instead.'
	// 			)
	// 			this.flatShading = newValue === FlatShading ? true : false
	// 			continue
	// 		}

	// 		var currentValue = this[key]

	// 		if (currentValue === undefined) {
	// 			console.warn('THREE.' + this.type + ": '" + key + "' is not a property of this material.")
	// 			continue
	// 		}

	// 		if (currentValue && currentValue.isColor) {
	// 			currentValue.set(newValue)
	// 		} else if (currentValue && currentValue.isVector3 && newValue && newValue.isVector3) {
	// 			currentValue.copy(newValue)
	// 		} else {
	// 			this[key] = newValue
	// 		}
	// 	}

	// 	return this
	// }

	// /**
	//  * Convert the material to three.js JSON format.
	//  * @param meta Object containing metadata such as textures or images for the material.
	//  */
	// TODO too dynamic. How to handle to/fromJSON in AS?
	// toJSON(meta?: any): any {
	// 	var isRoot = meta === undefined || typeof meta === 'string'

	// 	if (isRoot) {
	// 		meta = {
	// 			textures: {},
	// 			images: {},
	// 		}
	// 	}

	// 	var data = {
	// 		metadata: {
	// 			version: 4.5,
	// 			type: 'Material',
	// 			generator: 'Material.toJSON',
	// 		},
	// 	}

	// 	// standard Material serialization
	// 	data.uuid = this.uuid
	// 	data.type = this.type

	// 	if (this.name !== '') data.name = this.name

	// 	if (this.color && this.color.isColor) data.color = this.color.getHex()

	// 	if (this.roughness !== undefined) data.roughness = this.roughness
	// 	if (this.metalness !== undefined) data.metalness = this.metalness

	// 	if (this.emissive && this.emissive.isColor) data.emissive = this.emissive.getHex()
	// 	if (this.emissiveIntensity !== 1) data.emissiveIntensity = this.emissiveIntensity

	// 	if (this.specular && this.specular.isColor) data.specular = this.specular.getHex()
	// 	if (this.shininess !== undefined) data.shininess = this.shininess
	// 	if (this.clearCoat !== undefined) data.clearCoat = this.clearCoat
	// 	if (this.clearCoatRoughness !== undefined) data.clearCoatRoughness = this.clearCoatRoughness

	// 	if (this.map && this.map.isTexture) data.map = this.map.toJSON(meta).uuid
	// 	if (this.matcap && this.matcap.isTexture) data.matcap = this.matcap.toJSON(meta).uuid
	// 	if (this.alphaMap && this.alphaMap.isTexture) data.alphaMap = this.alphaMap.toJSON(meta).uuid
	// 	if (this.lightMap && this.lightMap.isTexture) data.lightMap = this.lightMap.toJSON(meta).uuid

	// 	if (this.aoMap && this.aoMap.isTexture) {
	// 		data.aoMap = this.aoMap.toJSON(meta).uuid
	// 		data.aoMapIntensity = this.aoMapIntensity
	// 	}

	// 	if (this.bumpMap && this.bumpMap.isTexture) {
	// 		data.bumpMap = this.bumpMap.toJSON(meta).uuid
	// 		data.bumpScale = this.bumpScale
	// 	}

	// 	if (this.normalMap && this.normalMap.isTexture) {
	// 		data.normalMap = this.normalMap.toJSON(meta).uuid
	// 		data.normalMapType = this.normalMapType
	// 		data.normalScale = this.normalScale.toArray()
	// 	}

	// 	if (this.displacementMap && this.displacementMap.isTexture) {
	// 		data.displacementMap = this.displacementMap.toJSON(meta).uuid
	// 		data.displacementScale = this.displacementScale
	// 		data.displacementBias = this.displacementBias
	// 	}

	// 	if (this.roughnessMap && this.roughnessMap.isTexture) data.roughnessMap = this.roughnessMap.toJSON(meta).uuid
	// 	if (this.metalnessMap && this.metalnessMap.isTexture) data.metalnessMap = this.metalnessMap.toJSON(meta).uuid

	// 	if (this.emissiveMap && this.emissiveMap.isTexture) data.emissiveMap = this.emissiveMap.toJSON(meta).uuid
	// 	if (this.specularMap && this.specularMap.isTexture) data.specularMap = this.specularMap.toJSON(meta).uuid

	// 	if (this.envMap && this.envMap.isTexture) {
	// 		data.envMap = this.envMap.toJSON(meta).uuid
	// 		data.reflectivity = this.reflectivity // Scale behind envMap

	// 		if (this.combine !== undefined) data.combine = this.combine
	// 		if (this.envMapIntensity !== undefined) data.envMapIntensity = this.envMapIntensity
	// 	}

	// 	if (this.gradientMap && this.gradientMap.isTexture) {
	// 		data.gradientMap = this.gradientMap.toJSON(meta).uuid
	// 	}

	// 	if (this.size !== undefined) data.size = this.size
	// 	if (this.sizeAttenuation !== undefined) data.sizeAttenuation = this.sizeAttenuation

	// 	if (this.blending !== NormalBlending) data.blending = this.blending
	// 	if (this.flatShading === true) data.flatShading = this.flatShading
	// 	if (this.side !== FrontSide) data.side = this.side
	// 	if (this.vertexColors !== NoColors) data.vertexColors = this.vertexColors

	// 	if (this.opacity < 1) data.opacity = this.opacity
	// 	if (this.transparent === true) data.transparent = this.transparent

	// 	data.depthFunc = this.depthFunc
	// 	data.depthTest = this.depthTest
	// 	data.depthWrite = this.depthWrite

	// 	// rotation (SpriteMaterial)
	// 	if (this.rotation !== 0) data.rotation = this.rotation

	// 	if (this.polygonOffset === true) data.polygonOffset = true
	// 	if (this.polygonOffsetFactor !== 0) data.polygonOffsetFactor = this.polygonOffsetFactor
	// 	if (this.polygonOffsetUnits !== 0) data.polygonOffsetUnits = this.polygonOffsetUnits

	// 	if (this.linewidth !== 1) data.linewidth = this.linewidth
	// 	if (this.dashSize !== undefined) data.dashSize = this.dashSize
	// 	if (this.gapSize !== undefined) data.gapSize = this.gapSize
	// 	if (this.scale !== undefined) data.scale = this.scale

	// 	if (this.dithering === true) data.dithering = true

	// 	if (this.alphaTest > 0) data.alphaTest = this.alphaTest
	// 	if (this.premultipliedAlpha === true) data.premultipliedAlpha = this.premultipliedAlpha

	// 	if (this.wireframe === true) data.wireframe = this.wireframe
	// 	if (this.wireframeLinewidth > 1) data.wireframeLinewidth = this.wireframeLinewidth
	// 	if (this.wireframeLinecap !== 'round') data.wireframeLinecap = this.wireframeLinecap
	// 	if (this.wireframeLinejoin !== 'round') data.wireframeLinejoin = this.wireframeLinejoin

	// 	if (this.morphTargets === true) data.morphTargets = true
	// 	if (this.skinning === true) data.skinning = true

	// 	if (this.visible === false) data.visible = false
	// 	if (JSON.stringify(this.userData) !== '{}') data.userData = this.userData

	// 	// TODO: Copied from Object3D.toJSON

	// 	function extractFromCache(cache) {
	// 		var values = []

	// 		for (var key in cache) {
	// 			var data = cache[key]
	// 			delete data.metadata
	// 			values.push(data)
	// 		}

	// 		return values
	// 	}

	// 	if (isRoot) {
	// 		var textures = extractFromCache(meta.textures)
	// 		var images = extractFromCache(meta.images)

	// 		if (textures.length > 0) data.textures = textures
	// 		if (images.length > 0) data.images = images
	// 	}

	// 	return data
	// },

	/**
	 * Return a new material with the same properties as this material.
	 */
	clone(): Material {
		return new Material().copy(this)
	}

	/**
	 * Copy the properties from the passed material into this material.
	 */
	copy(source: Material): this {
		this.name = source.name

		this.fog = source.fog
		this.lights = source.lights

		this.blending = source.blending
		this.side = source.side
		this.flatShading = source.flatShading
		this.vertexColors = source.vertexColors

		this.opacity = source.opacity
		this.transparent = source.transparent

		this.blendSrc = source.blendSrc
		this.blendDst = source.blendDst
		this.blendEquation = source.blendEquation
		this.blendSrcAlpha = source.blendSrcAlpha
		this.blendDstAlpha = source.blendDstAlpha
		this.blendEquationAlpha = source.blendEquationAlpha

		this.depthFunc = source.depthFunc
		this.depthTest = source.depthTest
		this.depthWrite = source.depthWrite

		this.colorWrite = source.colorWrite

		this.precision = source.precision

		this.polygonOffset = source.polygonOffset
		this.polygonOffsetFactor = source.polygonOffsetFactor
		this.polygonOffsetUnits = source.polygonOffsetUnits

		this.dithering = source.dithering

		this.alphaTest = source.alphaTest
		this.premultipliedAlpha = source.premultipliedAlpha

		this.visible = source.visible

		// No random dynamic objects in AS.
		// this.userData = JSON.parse(JSON.stringify(source.userData))

		this.clipShadows = source.clipShadows
		this.clipIntersection = source.clipIntersection

		const srcPlanes = source.clippingPlanes
		let dstPlanes: Plane[] | null = null

		if (srcPlanes !== null) {
			const n = srcPlanes.length
			dstPlanes = new Array(n)

			for (let i = 0; i !== n; ++i) dstPlanes[i] = srcPlanes[i].clone()
		}

		if (dstPlanes !== null) this.clippingPlanes = dstPlanes

		this.shadowSide = source.shadowSide

		return this
	}

	private disposeEvent: Event = new Event('dispose')

	/**
	 * This disposes the material. Textures of a material don't get disposed.
	 * These needs to be disposed by {@link Texture}.
	 */
	dispose(): void {
		this.dispatchEvent(this.disposeEvent)
	}
}

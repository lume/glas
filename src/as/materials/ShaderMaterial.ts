/**
 * @author alteredq / http://alteredqualia.com/
 * @author Joe Pea / http://github.com/trusktr
 */

import { Material } from './Material'
import { Side } from '../constants'

export class ShaderMaterial extends Material {
	type: string = "ShaderMaterial"
	defines: Map<string, string> = new Map()
	uniforms: Map<string, any> = new Map()
	vertexShader: string = "void main(){\n\tgl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );\n}"
	fragmentShader: string = "void main(){\n\tgl_FragColor = vec4(1.0,0.0,0.0,1.0);\n}"
	linewidth: f32 = 1
	wireframe: boolean = false
	wireframeLinewidth: f32 = 1
	morphTargets: boolean = false
	morphNormals: boolean = false
	skinning: boolean = false
	clipping: boolean = false
	lights: boolean = false
	extensions: Map<string, boolean> = new Map()

	constructor(parameters: any = null) {
		super()

		this.fog = true

		if (parameters) {
			this.setValues(parameters)
		}
	}

	private setValues(parameters: any): void {
		if (parameters.type !== undefined) this.type = parameters.type
		if (parameters.defines !== undefined) this.defines = parameters.defines
		if (parameters.uniforms !== undefined) this.uniforms = parameters.uniforms
		if (parameters.vertexShader !== undefined) this.vertexShader = parameters.vertexShader
		if (parameters.fragmentShader !== undefined) this.fragmentShader = parameters.fragmentShader
		if (parameters.linewidth !== undefined) this.linewidth = parameters.linewidth
		if (parameters.wireframe !== undefined) this.wireframe = parameters.wireframe
		if (parameters.wireframeLinewidth !== undefined) this.wireframeLinewidth = parameters.wireframeLinewidth
		if (parameters.morphTargets !== undefined) this.morphTargets = parameters.morphTargets
		if (parameters.morphNormals !== undefined) this.morphNormals = parameters.morphNormals
		if (parameters.skinning !== undefined) this.skinning = parameters.skinning
		if (parameters.clipping !== undefined) this.clipping = parameters.clipping
		if (parameters.lights !== undefined) this.lights = parameters.lights
		if (parameters.extensions !== undefined) this.extensions = parameters.extensions
		
		// Material properties
		if (parameters.side !== undefined) this.side = parameters.side
		if (parameters.opacity !== undefined) this.opacity = parameters.opacity
		if (parameters.transparent !== undefined) this.transparent = parameters.transparent
		if (parameters.alphaTest !== undefined) this.alphaTest = parameters.alphaTest
		if (parameters.depthTest !== undefined) this.depthTest = parameters.depthTest
		if (parameters.depthWrite !== undefined) this.depthWrite = parameters.depthWrite
		if (parameters.colorWrite !== undefined) this.colorWrite = parameters.colorWrite
		if (parameters.precision !== undefined) this.precision = parameters.precision
		if (parameters.polygonOffset !== undefined) this.polygonOffset = parameters.polygonOffset
		if (parameters.polygonOffsetFactor !== undefined) this.polygonOffsetFactor = parameters.polygonOffsetFactor
		if (parameters.polygonOffsetUnits !== undefined) this.polygonOffsetUnits = parameters.polygonOffsetUnits
		if (parameters.dithering !== undefined) this.dithering = parameters.dithering
		if (parameters.premultipliedAlpha !== undefined) this.premultipliedAlpha = parameters.premultipliedAlpha
		if (parameters.fog !== undefined) this.fog = parameters.fog
	}

	copy(source: ShaderMaterial): this {
		super.copy(source)

		this.fragmentShader = source.fragmentShader
		this.vertexShader = source.vertexShader

		this.uniforms = new Map()
		for (let name of source.uniforms.keys()) {
			this.uniforms.set(name, source.uniforms.get(name))
		}

		this.defines = new Map()
		for (let name of source.defines.keys()) {
			this.defines.set(name, source.defines.get(name))
		}

		this.linewidth = source.linewidth
		this.wireframe = source.wireframe
		this.wireframeLinewidth = source.wireframeLinewidth

		this.morphTargets = source.morphTargets
		this.morphNormals = source.morphNormals

		this.skinning = source.skinning
		this.clipping = source.clipping

		this.lights = source.lights

		this.extensions = new Map()
		for (let name of source.extensions.keys()) {
			this.extensions.set(name, source.extensions.get(name))
		}

		return this
	}
}
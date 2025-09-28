// r125 - WebGLPrograms implementation in AssemblyScript
import { Side, ToneMapping } from '../../constants'
import { WebGLProgram } from './WebGLProgram'
import { WebGLCapabilities } from './WebGLCapabilities'
import { WebGLExtensions } from './WebGLExtensions'

// Shader material and light interfaces (simplified for now)
export interface Material {
	type: string
	precision: string | null
	map: Texture | null
	matcap: Texture | null
	envMap: Texture | null
	lightMap: Texture | null
	aoMap: Texture | null
	emissiveMap: Texture | null
	bumpMap: Texture | null
	normalMap: Texture | null
	normalMapType: i32
	displacementMap: Texture | null
	roughnessMap: Texture | null
	metalnessMap: Texture | null
	specularMap: Texture | null
	alphaMap: Texture | null
	gradientMap: Texture | null
	combine: i32
	vertexTangents: boolean
	vertexColors: boolean
	fog: boolean
	flatShading: boolean
	sizeAttenuation: boolean
	skinning: boolean
	morphTargets: boolean
	morphNormals: boolean
	dithering: boolean
	premultipliedAlpha: boolean
	alphaTest: f32
	side: Side
	depthPacking: i32
	fragmentShader: string
	vertexShader: string
	defines: Map<string, string> | null
	onBeforeCompile: (() => void) | null
}

export interface Texture {
	isTexture: boolean
	encoding: i32
}

export interface RenderTarget {
	texture: Texture
	isWebGLRenderTarget: boolean
}

export interface Lights {
	directional: any[]
	point: any[]
	spot: any[]
	rectArea: any[]
	hemi: any[]
}

export interface Fog {
	isFogExp2: boolean
}

export interface Object3D {
	isSkinnedMesh: boolean
	skeleton: Skeleton | null
	receiveShadow: boolean
}

export interface Skeleton {
	bones: any[]
}

export interface ProgramParameters {
	shaderID: string
	precision: string
	supportsVertexTextures: boolean
	outputEncoding: i32
	map: boolean
	mapEncoding: i32
	matcap: boolean
	matcapEncoding: i32
	envMap: boolean
	envMapMode: i32
	envMapEncoding: i32
	envMapCubeUV: boolean
	lightMap: boolean
	aoMap: boolean
	emissiveMap: boolean
	emissiveMapEncoding: i32
	bumpMap: boolean
	normalMap: boolean
	objectSpaceNormalMap: boolean
	displacementMap: boolean
	roughnessMap: boolean
	metalnessMap: boolean
	specularMap: boolean
	alphaMap: boolean
	gradientMap: boolean
	combine: i32
	vertexTangents: boolean
	vertexColors: boolean
	fog: boolean
	useFog: boolean
	fogExp: boolean
	flatShading: boolean
	sizeAttenuation: boolean
	logarithmicDepthBuffer: boolean
	skinning: boolean
	maxBones: i32
	useVertexTexture: boolean
	morphTargets: boolean
	morphNormals: boolean
	maxMorphTargets: i32
	maxMorphNormals: i32
	numDirLights: i32
	numPointLights: i32
	numSpotLights: i32
	numRectAreaLights: i32
	numHemiLights: i32
	numClippingPlanes: i32
	numClipIntersection: i32
	dithering: boolean
	shadowMapEnabled: boolean
	shadowMapType: i32
	toneMapping: ToneMapping
	physicallyCorrectLights: boolean
	premultipliedAlpha: boolean
	alphaTest: f32
	doubleSided: boolean
	flipSided: boolean
	depthPacking: i32
}

export class ProgramInfo {
	code: string = ""
	program: WebGLProgram = null!
	usedTimes: i32 = 1

	constructor(program: WebGLProgram, code: string) {
		this.program = program
		this.code = code
	}

	destroy(): void {
		this.program.destroy()
	}
}

export class WebGLPrograms {
	programs: ProgramInfo[] = []

	// Shader ID mapping for different material types
	private shaderIDs: Map<string, string> = new Map()

	// Parameter names used for program code generation
	private parameterNames: string[] = [
		'precision',
		'supportsVertexTextures',
		'map',
		'mapEncoding',
		'matcap',
		'matcapEncoding',
		'envMap',
		'envMapMode',
		'envMapEncoding',
		'lightMap',
		'aoMap',
		'emissiveMap',
		'emissiveMapEncoding',
		'bumpMap',
		'normalMap',
		'objectSpaceNormalMap',
		'displacementMap',
		'specularMap',
		'roughnessMap',
		'metalnessMap',
		'gradientMap',
		'alphaMap',
		'combine',
		'vertexColors',
		'vertexTangents',
		'fog',
		'useFog',
		'fogExp',
		'flatShading',
		'sizeAttenuation',
		'logarithmicDepthBuffer',
		'skinning',
		'maxBones',
		'useVertexTexture',
		'morphTargets',
		'morphNormals',
		'maxMorphTargets',
		'maxMorphNormals',
		'premultipliedAlpha',
		'numDirLights',
		'numPointLights',
		'numSpotLights',
		'numHemiLights',
		'numRectAreaLights',
		'shadowMapEnabled',
		'shadowMapType',
		'toneMapping',
		'physicallyCorrectLights',
		'alphaTest',
		'doubleSided',
		'flipSided',
		'numClippingPlanes',
		'numClipIntersection',
		'depthPacking',
		'dithering',
	]

	constructor(
		private renderer: any, // WebGLRenderer
		private extensions: WebGLExtensions,
		private capabilities: WebGLCapabilities,
		private textures: any // WebGLTextures
	) {
		this.initializeShaderIDs()
	}

	private initializeShaderIDs(): void {
		this.shaderIDs.set('MeshDepthMaterial', 'depth')
		this.shaderIDs.set('MeshDistanceMaterial', 'distanceRGBA')
		this.shaderIDs.set('MeshNormalMaterial', 'normal')
		this.shaderIDs.set('MeshBasicMaterial', 'basic')
		this.shaderIDs.set('MeshLambertMaterial', 'lambert')
		this.shaderIDs.set('MeshPhongMaterial', 'phong')
		this.shaderIDs.set('MeshToonMaterial', 'phong')
		this.shaderIDs.set('MeshStandardMaterial', 'physical')
		this.shaderIDs.set('MeshPhysicalMaterial', 'physical')
		this.shaderIDs.set('MeshMatcapMaterial', 'matcap')
		this.shaderIDs.set('LineBasicMaterial', 'basic')
		this.shaderIDs.set('LineDashedMaterial', 'dashed')
		this.shaderIDs.set('PointsMaterial', 'points')
		this.shaderIDs.set('ShadowMaterial', 'shadow')
		this.shaderIDs.set('SpriteMaterial', 'sprite')
	}

	private allocateBones(object: Object3D): i32 {
		if (!object.skeleton) return 0

		const skeleton = object.skeleton
		const bones = skeleton.bones

		if (this.capabilities.floatVertexTextures) {
			return 1024
		} else {
			// Default for when object is not specified
			// Leave some extra space for other uniforms
			// Limit here is ANGLE's 254 max uniform vectors (up to 54 should be safe)
			const nVertexUniforms = this.capabilities.maxVertexUniforms
			const nVertexMatrices = Math.floor((nVertexUniforms - 20) / 4) as i32

			const maxBones = Math.min(nVertexMatrices, bones.length) as i32

			if (maxBones < bones.length) {
				console.warn(
					`THREE.WebGLRenderer: Skeleton has ${bones.length} bones. This GPU supports ${maxBones}.`
				)
				return 0
			}

			return maxBones
		}
	}

	private getTextureEncodingFromMap(map: Texture | null, gammaOverrideLinear: boolean): i32 {
		const LinearEncoding = 3000 // TODO: Import from constants
		const GammaEncoding = 3001

		let encoding: i32

		if (!map) {
			encoding = LinearEncoding
		} else if (map.isTexture) {
			encoding = map.encoding
		} else if ((map as any).isWebGLRenderTarget) {
			console.warn(
				"THREE.WebGLPrograms.getTextureEncodingFromMap: don't use render targets as textures. Use their .texture property instead."
			)
			encoding = (map as any).texture.encoding
		} else {
			encoding = LinearEncoding
		}

		// Add backwards compatibility for WebGLRenderer.gammaInput/gammaOutput parameter
		if (encoding === LinearEncoding && gammaOverrideLinear) {
			encoding = GammaEncoding
		}

		return encoding
	}

	getParameters(
		material: Material,
		lights: Lights,
		shadows: any[],
		fog: Fog | null,
		nClipPlanes: i32,
		nClipIntersection: i32,
		object: Object3D
	): ProgramParameters {
		const shaderID = this.shaderIDs.get(material.type) || ''

		// Heuristics to create shader parameters according to lights in the scene
		const maxBones = object.isSkinnedMesh ? this.allocateBones(object) : 0
		let precision = this.capabilities.precision

		if (material.precision !== null) {
			precision = this.capabilities.getMaxPrecision(material.precision)

			if (precision !== material.precision) {
				console.warn(
					'THREE.WebGLProgram.getParameters:',
					material.precision,
					'not supported, using',
					precision,
					'instead.'
				)
			}
		}

		const currentRenderTarget = this.renderer.getRenderTarget()

		const parameters: ProgramParameters = {
			shaderID: shaderID,
			precision: precision,
			supportsVertexTextures: this.capabilities.vertexTextures,
			outputEncoding: this.getTextureEncodingFromMap(
				currentRenderTarget ? currentRenderTarget.texture : null,
				this.renderer.gammaOutput
			),
			map: material.map !== null,
			mapEncoding: this.getTextureEncodingFromMap(material.map, this.renderer.gammaInput),
			matcap: material.matcap !== null,
			matcapEncoding: this.getTextureEncodingFromMap(material.matcap, this.renderer.gammaInput),
			envMap: material.envMap !== null,
			envMapMode: material.envMap ? (material.envMap as any).mapping : 0,
			envMapEncoding: this.getTextureEncodingFromMap(material.envMap, this.renderer.gammaInput),
			envMapCubeUV: material.envMap && 
				((material.envMap as any).mapping === 306 || (material.envMap as any).mapping === 307), // CubeUV mappings
			lightMap: material.lightMap !== null,
			aoMap: material.aoMap !== null,
			emissiveMap: material.emissiveMap !== null,
			emissiveMapEncoding: this.getTextureEncodingFromMap(material.emissiveMap, this.renderer.gammaInput),
			bumpMap: material.bumpMap !== null,
			normalMap: material.normalMap !== null,
			objectSpaceNormalMap: material.normalMapType === 1, // ObjectSpaceNormalMap
			displacementMap: material.displacementMap !== null,
			roughnessMap: material.roughnessMap !== null,
			metalnessMap: material.metalnessMap !== null,
			specularMap: material.specularMap !== null,
			alphaMap: material.alphaMap !== null,
			gradientMap: material.gradientMap !== null,
			combine: material.combine,
			vertexTangents: material.normalMap !== null && material.vertexTangents,
			vertexColors: material.vertexColors,
			fog: fog !== null,
			useFog: material.fog,
			fogExp: fog ? fog.isFogExp2 : false,
			flatShading: material.flatShading,
			sizeAttenuation: material.sizeAttenuation,
			logarithmicDepthBuffer: this.capabilities.logarithmicDepthBuffer,
			skinning: material.skinning && maxBones > 0,
			maxBones: maxBones,
			useVertexTexture: this.capabilities.floatVertexTextures,
			morphTargets: material.morphTargets,
			morphNormals: material.morphNormals,
			maxMorphTargets: this.renderer.maxMorphTargets,
			maxMorphNormals: this.renderer.maxMorphNormals,
			numDirLights: lights.directional.length as i32,
			numPointLights: lights.point.length as i32,
			numSpotLights: lights.spot.length as i32,
			numRectAreaLights: lights.rectArea.length as i32,
			numHemiLights: lights.hemi.length as i32,
			numClippingPlanes: nClipPlanes,
			numClipIntersection: nClipIntersection,
			dithering: material.dithering,
			shadowMapEnabled: this.renderer.shadowMap.enabled && object.receiveShadow && shadows.length > 0,
			shadowMapType: this.renderer.shadowMap.type,
			toneMapping: this.renderer.toneMapping,
			physicallyCorrectLights: this.renderer.physicallyCorrectLights,
			premultipliedAlpha: material.premultipliedAlpha,
			alphaTest: material.alphaTest,
			doubleSided: material.side === Side.DoubleSide,
			flipSided: material.side === Side.BackSide,
			depthPacking: material.depthPacking
		}

		return parameters
	}

	getProgramCode(material: Material, parameters: ProgramParameters): string {
		const array: string[] = []

		if (parameters.shaderID) {
			array.push(parameters.shaderID)
		} else {
			array.push(material.fragmentShader)
			array.push(material.vertexShader)
		}

		if (material.defines !== null) {
			const defines = material.defines
			const keys = defines.keys()
			for (let i = 0; i < keys.length; i++) {
				const key = keys[i]
				array.push(key)
				array.push(defines.get(key) || '')
			}
		}

		for (let i = 0; i < this.parameterNames.length; i++) {
			const paramName = this.parameterNames[i]
			// Add parameter value to array (simplified - would need proper property access)
			array.push(paramName + ':' + this.getParameterValue(parameters, paramName))
		}

		if (material.onBeforeCompile) {
			array.push(material.onBeforeCompile.toString())
		}

		array.push(this.renderer.gammaOutput.toString())
		array.push(this.renderer.gammaFactor.toString())

		return array.join(',')
	}

	private getParameterValue(parameters: ProgramParameters, paramName: string): string {
		// Simplified parameter access - in real implementation this would use reflection
		switch (paramName) {
			case 'precision': return parameters.precision
			case 'supportsVertexTextures': return parameters.supportsVertexTextures.toString()
			case 'map': return parameters.map.toString()
			case 'mapEncoding': return parameters.mapEncoding.toString()
			// Add more cases as needed
			default: return ''
		}
	}

	acquireProgram(material: Material, shader: any, parameters: ProgramParameters, code: string): WebGLProgram {
		let program: ProgramInfo | null = null

		// Check if code has been already compiled
		for (let p = 0; p < this.programs.length; p++) {
			const programInfo = this.programs[p]

			if (programInfo.code === code) {
				program = programInfo
				++program.usedTimes
				break
			}
		}

		if (program === null) {
			const webglProgram = new WebGLProgram(
				this.renderer,
				this.extensions,
				code,
				material,
				shader,
				parameters,
				this.capabilities,
				this.textures
			)
			program = new ProgramInfo(webglProgram, code)
			this.programs.push(program)
		}

		return program.program
	}

	releaseProgram(program: WebGLProgram): void {
		// Find the program info
		for (let i = 0; i < this.programs.length; i++) {
			const programInfo = this.programs[i]
			if (programInfo.program === program) {
				if (--programInfo.usedTimes === 0) {
					// Remove from unordered set
					this.programs[i] = this.programs[this.programs.length - 1]
					this.programs.pop()

					// Free WebGL resources
					programInfo.destroy()
				}
				break
			}
		}
	}
}
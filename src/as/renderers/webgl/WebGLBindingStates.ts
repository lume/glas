// r125 - WebGLBindingStates implementation in AssemblyScript
import { WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { WebGLExtensions } from './WebGLExtensions'
import { WebGLAttributes } from './WebGLAttributes'
import { WebGLProgram } from './WebGLProgram'
import { WebGLCapabilities } from './WebGLCapabilities'
import { Object3D } from '../../core/Object3D'
import { BufferGeometry } from '../../core/BufferGeometry'
import { BufferAttribute } from '../../core/BufferAttribute'
import { Material } from '../../materials/Material'

interface BindingState {
	geometry: i32 | null
	program: i32 | null
	wireframe: boolean
	newAttributes: i32[]
	enabledAttributes: i32[]
	attributeDivisors: i32[]
	object: any
	attributes: Map<string, any>
	index: BufferAttribute | null
	attributesNum: i32
}

export class WebGLBindingStates {
	private maxVertexAttributes: i32
	private extension: any = null
	private vaoAvailable: boolean = false
	private bindingStates: Map<i32, Map<i32, Map<boolean, BindingState>>> = new Map()
	private defaultState: BindingState
	private currentState: BindingState

	constructor(
		private gl: WebGLRenderingContext,
		private extensions: WebGLExtensions,
		private attributes: WebGLAttributes,
		private capabilities: WebGLCapabilities
	) {
		this.maxVertexAttributes = this.gl.getParameter(this.gl.MAX_VERTEX_ATTRIBS) as i32

		this.extension = this.capabilities.isWebGL2 ? null : this.extensions.get('OES_vertex_array_object')
		this.vaoAvailable = this.capabilities.isWebGL2 || this.extension !== null

		this.defaultState = this.createBindingState(null)
		this.currentState = this.defaultState
	}

	setup(object: Object3D, material: Material, program: WebGLProgram, geometry: BufferGeometry, index: BufferAttribute | null): void {
		let updateBuffers = false

		if (this.vaoAvailable) {
			const state = this.getBindingState(geometry, program, material)

			if (this.currentState !== state) {
				this.currentState = state
				this.bindVertexArrayObject(this.currentState.object)
			}

			updateBuffers = this.needsUpdate(geometry, index)

			if (updateBuffers) this.saveCache(geometry, index)
		} else {
			const wireframe = (material.wireframe === true)

			if (this.currentState.geometry !== geometry.id ||
				this.currentState.program !== program.id ||
				this.currentState.wireframe !== wireframe) {

				this.currentState.geometry = geometry.id
				this.currentState.program = program.id
				this.currentState.wireframe = wireframe

				updateBuffers = true
			}
		}

		if ((object as any).isInstancedMesh === true) {
			updateBuffers = true
		}

		if (index !== null) {
			this.attributes.update(index, this.gl.ELEMENT_ARRAY_BUFFER)
		}

		if (updateBuffers) {
			this.setupVertexAttributes(object, material, program, geometry)

			if (index !== null) {
				const indexAttribute = this.attributes.get(index)
				if (indexAttribute) {
					this.gl.bindBuffer(this.gl.ELEMENT_ARRAY_BUFFER, indexAttribute.buffer)
				}
			}
		}
	}

	reset(): void {
		this.resetDefaultState()

		if (this.currentState === this.defaultState) return

		this.currentState = this.defaultState
		this.bindVertexArrayObject(this.currentState.object)
	}

	resetDefaultState(): void {
		this.defaultState.geometry = null
		this.defaultState.program = null
		this.defaultState.wireframe = false
	}

	dispose(): void {
		this.reset()

		for (let geometryId of this.bindingStates.keys()) {
			const programMap = this.bindingStates.get(geometryId)!
			
			for (let programId of programMap.keys()) {
				const stateMap = programMap.get(programId)!

				for (let wireframe of stateMap.keys()) {
					const state = stateMap.get(wireframe)!
					
					this.deleteVertexArrayObject(state.object)
					stateMap.delete(wireframe)
				}

				programMap.delete(programId)
			}

			this.bindingStates.delete(geometryId)
		}
	}

	releaseStatesOfGeometry(geometry: BufferGeometry): void {
		if (!this.bindingStates.has(geometry.id)) return

		const programMap = this.bindingStates.get(geometry.id)!

		for (let programId of programMap.keys()) {
			const stateMap = programMap.get(programId)!

			for (let wireframe of stateMap.keys()) {
				const state = stateMap.get(wireframe)!
				
				this.deleteVertexArrayObject(state.object)
				stateMap.delete(wireframe)
			}

			programMap.delete(programId)
		}

		this.bindingStates.delete(geometry.id)
	}

	releaseStatesOfProgram(program: WebGLProgram): void {
		for (let geometryId of this.bindingStates.keys()) {
			const programMap = this.bindingStates.get(geometryId)!

			if (!programMap.has(program.id)) continue

			const stateMap = programMap.get(program.id)!

			for (let wireframe of stateMap.keys()) {
				const state = stateMap.get(wireframe)!
				
				this.deleteVertexArrayObject(state.object)
				stateMap.delete(wireframe)
			}

			programMap.delete(program.id)

			if (programMap.size === 0) {
				this.bindingStates.delete(geometryId)
			}
		}
	}

	private createVertexArrayObject(): any {
		if (this.capabilities.isWebGL2) {
			return this.gl.createVertexArray()
		}

		return this.extension?.createVertexArrayOES()
	}

	private bindVertexArrayObject(vao: any): void {
		if (this.capabilities.isWebGL2) {
			this.gl.bindVertexArray(vao)
		} else if (this.extension) {
			// this.extension.bindVertexArrayOES(vao)
		}
	}

	private deleteVertexArrayObject(vao: any): void {
		if (this.capabilities.isWebGL2) {
			this.gl.deleteVertexArray(vao)
		} else if (this.extension) {
			// this.extension.deleteVertexArrayOES(vao)
		}
	}

	private getBindingState(geometry: BufferGeometry, program: WebGLProgram, material: Material): BindingState {
		const wireframe = (material.wireframe === true)

		let programMap = this.bindingStates.get(geometry.id)

		if (programMap === undefined) {
			programMap = new Map()
			this.bindingStates.set(geometry.id, programMap)
		}

		let stateMap = programMap.get(program.id)

		if (stateMap === undefined) {
			stateMap = new Map()
			programMap.set(program.id, stateMap)
		}

		let state = stateMap.get(wireframe)

		if (state === undefined) {
			state = this.createBindingState(this.createVertexArrayObject())
			stateMap.set(wireframe, state)
		}

		return state
	}

	private createBindingState(vao: any): BindingState {
		const newAttributes: i32[] = []
		const enabledAttributes: i32[] = []
		const attributeDivisors: i32[] = []

		for (let i = 0; i < this.maxVertexAttributes; i++) {
			newAttributes[i] = 0
			enabledAttributes[i] = 0
			attributeDivisors[i] = 0
		}

		return {
			geometry: null,
			program: null,
			wireframe: false,
			newAttributes: newAttributes,
			enabledAttributes: enabledAttributes,
			attributeDivisors: attributeDivisors,
			object: vao,
			attributes: new Map(),
			index: null,
			attributesNum: 0
		}
	}

	private needsUpdate(geometry: BufferGeometry, index: BufferAttribute | null): boolean {
		const cachedAttributes = this.currentState.attributes
		const geometryAttributes = geometry.attributes

		let attributesNum = 0

		for (let key of geometryAttributes.keys()) {
			attributesNum++

			const cachedAttribute = cachedAttributes.get(key)
			const geometryAttribute = geometryAttributes.get(key)

			if (cachedAttribute === undefined) return true

			if (cachedAttribute.attribute !== geometryAttribute) return true

			if (geometryAttribute && (geometryAttribute as any).data !== cachedAttribute.data) return true
		}

		if (this.currentState.attributesNum !== attributesNum) return true

		if (this.currentState.index !== index) return true

		return false
	}

	private saveCache(geometry: BufferGeometry, index: BufferAttribute | null): void {
		const cache = new Map()
		const attributes = geometry.attributes
		let attributesNum = 0

		for (let key of attributes.keys()) {
			attributesNum++

			const attribute = attributes.get(key)

			const data = attribute ? (attribute as any).data : null

			cache.set(key, {
				attribute: attribute,
				data: data
			})
		}

		this.currentState.attributes = cache
		this.currentState.attributesNum = attributesNum

		this.currentState.index = index
	}

	private setupVertexAttributes(object: Object3D, material: Material, program: WebGLProgram, geometry: BufferGeometry): void {
		if (this.capabilities.isWebGL2 === false && ((object as any).isInstancedMesh || (geometry as any).isInstancedBufferGeometry)) {
			if (this.extensions.get('ANGLE_instanced_arrays') === null) return
		}

		this.initAttributes()

		const geometryAttributes = geometry.attributes

		const programAttributes = program.getAttributes()

		// const materialDefaultAttributeValues = material.defaultAttributeValues

		for (let name of geometryAttributes.keys()) {
			const programAttribute = programAttributes.get(name)

			if (programAttribute !== undefined && programAttribute >= 0) {
				const geometryAttribute = geometryAttributes.get(name)

				if (geometryAttribute !== undefined) {
					const normalized = geometryAttribute.normalized
					const size = geometryAttribute.itemSize

					const attribute = this.attributes.get(geometryAttribute)

					if (attribute === undefined) continue

					const buffer = attribute.buffer
					const type = attribute.type
					const bytesPerElement = attribute.bytesPerElement

					if ((geometryAttribute as any).isInterleavedBufferAttribute) {
						// Handle interleaved buffer attributes
						// TODO: Implement interleaved buffer support
					} else {
						this.gl.bindBuffer(this.gl.ARRAY_BUFFER, buffer)

						this.enableAttribute(programAttribute)

						this.gl.vertexAttribPointer(programAttribute, size, type, normalized, 0, 0)

						if ((geometryAttribute as any).isInstancedBufferAttribute) {
							this.enableAttributeAndDivisor(programAttribute, (geometryAttribute as any).meshPerAttribute)
						}
					}
				}
			}
		}

		this.disableUnusedAttributes()
	}

	private initAttributes(): void {
		for (let i = 0; i < this.currentState.newAttributes.length; i++) {
			this.currentState.newAttributes[i] = 0
		}
	}

	private enableAttribute(attribute: i32): void {
		this.enableAttributeAndDivisor(attribute, 0)
	}

	private enableAttributeAndDivisor(attribute: i32, meshPerAttribute: i32): void {
		this.currentState.newAttributes[attribute] = 1

		if (this.currentState.enabledAttributes[attribute] === 0) {
			this.gl.enableVertexAttribArray(attribute)
			this.currentState.enabledAttributes[attribute] = 1
		}

		if (this.currentState.attributeDivisors[attribute] !== meshPerAttribute) {
			if (this.capabilities.isWebGL2) {
				this.gl.vertexAttribDivisor(attribute, meshPerAttribute)
			} else {
				const extension = this.extensions.get('ANGLE_instanced_arrays')
				if (extension) {
					// extension.vertexAttribDivisorANGLE(attribute, meshPerAttribute)
				}
			}

			this.currentState.attributeDivisors[attribute] = meshPerAttribute
		}
	}

	private disableUnusedAttributes(): void {
		for (let i = 0; i < this.currentState.enabledAttributes.length; i++) {
			if (this.currentState.enabledAttributes[i] !== this.currentState.newAttributes[i]) {
				this.gl.disableVertexAttribArray(i)
				this.currentState.enabledAttributes[i] = 0
			}
		}
	}
}
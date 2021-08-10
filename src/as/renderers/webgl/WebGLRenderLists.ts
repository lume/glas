/**
 * @author mrdoob / http://mrdoob.com/
 * @author Joe Pea / http://github.com/trusktr
 */

// Three.js 0.121.1

import {Object3D} from './../../core/Object3D'
import {Material} from './../../materials/Material'
import {WebGLProgram} from './WebGLProgram'
import {Group} from './../../objects/Group'
import {Scene} from './../../scenes/Scene'
import {Camera} from './../../cameras/Camera'
import {BufferGeometry} from '../../core/BufferGeometry'

// import {WebGLProperties} from './WebGLProperties' // MaterialProperties created instead of this.
import {MaterialProperties, MatProps} from './WebGLProperties'

export class RenderItem {
	id: i32
	object: Object3D
	geometry: BufferGeometry | null
	material: Material
	program: WebGLProgram
	groupOrder: f32
	renderOrder: f32
	z: f32
	group: Group | null
}

export class WebGLRenderList {
	private readonly renderItems: Map<i32, RenderItem> = new Map()
	private renderItemsIndex: i32 = 0

	/**
	 * @default []
	 */
	private readonly opaque: Array<RenderItem> = []
	/**
	 * @default []
	 */
	private readonly transparent: Array<RenderItem> = []

	private readonly defaultProgram: WebGLProgram = {id: -1} as WebGLProgram

	constructor(private properties: MaterialProperties) {}

	init(): void {
		this.renderItemsIndex = 0

		// TODO Ensure we can change length. If not, then make a new array instead
		this.opaque.length = 0
		this.transparent.length = 0
	}

	private getNextRenderItem(
		object: Object3D,
		geometry: BufferGeometry | null,
		material: Material,
		groupOrder: f32,
		z: f32,
		group: Group | null
	): RenderItem {
		let renderItem: RenderItem
		const materialProperties: MatProps = this.properties.get(material)

		let program: WebGLProgram | null = materialProperties.program
		if (!program) program = this.defaultProgram

		if (!this.renderItems.has(this.renderItemsIndex)) {
			renderItem = {
				id: object.id,
				object,
				geometry,
				material,
				program,
				groupOrder,
				renderOrder: object.renderOrder,
				z,
				group,
			} as RenderItem

			this.renderItems.set(this.renderItemsIndex, renderItem)
		} else {
			renderItem = this.renderItems.get(this.renderItemsIndex)

			renderItem.id = object.id
			renderItem.object = object
			renderItem.geometry = geometry
			renderItem.material = material
			renderItem.program = program
			renderItem.groupOrder = groupOrder
			renderItem.renderOrder = object.renderOrder
			renderItem.z = z
			renderItem.group = group
		}

		this.renderItemsIndex++

		return renderItem
	}

	push(
		object: Object3D,
		geometry: BufferGeometry | null,
		material: Material,
		groupOrder: f32,
		z: f32,
		group: Group | null
	): void {
		const renderItem = this.getNextRenderItem(object, geometry, material, groupOrder, z, group)

		;(material.transparent === true ? this.transparent : this.opaque).push(renderItem)
	}

	unshift(
		object: Object3D,
		geometry: BufferGeometry | null,
		material: Material,
		groupOrder: f32,
		z: f32,
		group: Group | null
	): void {
		const renderItem = this.getNextRenderItem(object, geometry, material, groupOrder, z, group)

		;(material.transparent === true ? this.transparent : this.opaque).unshift(renderItem)
	}

	sort(
		opaqueSort: (a: RenderItem, b: RenderItem) => i32 = painterSortStable,
		transparentSort: (a: RenderItem, b: RenderItem) => i32 = reversePainterSortStable
	): void {
		if (this.opaque.length > 1) this.opaque.sort(opaqueSort)
		if (this.transparent.length > 1) this.transparent.sort(transparentSort)
	}

	// TODO Make the properties of RenderItem nullable, so that we can use the
	// finish function to cause the objects held by the RenderItem object pool
	// to be GC'ed.
	// finish(): void {
	// 	// Clear references from inactive renderItems in the list

	// 	for (let i = this.renderItemsIndex, il = this.renderItems.length; i < il; i++) {
	// 		const renderItem = this.renderItems[i]

	// 		// TODO We can't have `f32 | null` types, so use -1 to signal same as "null". Update other parts of code.
	// 		if (renderItem.id === -1) break

	// 		renderItem.id = -1
	// 		renderItem.object = null
	// 		renderItem.geometry = null
	// 		renderItem.material = null
	// 		renderItem.program = null
	// 		renderItem.group = null
	// 	}
	// }
}

export class WebGLRenderLists {
	constructor(private properties: MaterialProperties) {}

	private lists: Map<Scene, Map<Camera, WebGLRenderList>> = new Map()

	get(scene: Scene, camera: Camera): WebGLRenderList {
		let list: WebGLRenderList

		if (!this.lists.has(scene)) {
			list = new WebGLRenderList(this.properties)
			const cameras = new Map<Camera, WebGLRenderList>()
			this.lists.set(scene, cameras)
			cameras.set(camera, list)
		} else {
			const cameras = this.lists.get(scene)

			if (!cameras.has(camera)) {
				list = new WebGLRenderList(this.properties)
				cameras.set(camera, list)
			} else {
				list = cameras.get(camera)
			}
		}

		return list
	}

	dispose(): void {
		this.lists.clear()
	}
}

export function painterSortStable(a: RenderItem, b: RenderItem): i32 {
	let val: f32 = 0.0

	if (a.groupOrder !== b.groupOrder) {
		val = a.groupOrder - b.groupOrder
	} else if (a.renderOrder !== b.renderOrder) {
		val = a.renderOrder - b.renderOrder
	} else if (a.program !== b.program) {
		val = f32(a.program.id - b.program.id)
	} else if (a.material.id !== b.material.id) {
		val = f32(a.material.id - b.material.id)
	} else if (a.z !== b.z) {
		val = a.z - b.z
	} else {
		val = f32(a.id - b.id)
	}

	return val < 0 ? -1 : val > 0 ? 1 : 0
}

export function reversePainterSortStable(a: RenderItem, b: RenderItem): i32 {
	let val: f32 = 0

	if (a.groupOrder !== b.groupOrder) {
		val = a.groupOrder - b.groupOrder
	} else if (a.renderOrder !== b.renderOrder) {
		val = a.renderOrder - b.renderOrder
	} else if (a.z !== b.z) {
		val = b.z - a.z
	} else {
		val = f32(a.id - b.id)
	}

	return val < 0 ? -1 : val > 0 ? 1 : 0
}

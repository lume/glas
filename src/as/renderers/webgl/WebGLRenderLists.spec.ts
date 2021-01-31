import {WebGLRenderLists, WebGLRenderList, RenderItem} from './WebGLRenderLists'
import {MaterialProperties} from './WebGLProperties'
import {Camera} from '../../cameras/Camera'
import {Scene} from '../../scenes/Scene'
import {Object3D} from '../../core/Object3D'
import {BufferGeometry} from '../../core/BufferGeometry'
import {Material} from '../../materials/Material'
import {Group} from '../../objects/Group'
import {WebGLProgram} from './WebGLProgram'

const m1 = new Material()
m1.transparent = true

const m2 = new Material()
m2.transparent = false

const sortList = new WebGLRenderList(new MaterialProperties())

describe('Renderers', (): void => {
	describe('WebGL', (): void => {
		describe('WebGLRenderLists', (): void => {
			test('get', (): void => {
				const properties = new MaterialProperties()

				const renderLists = new WebGLRenderLists(properties)
				const sceneA = new Scene()
				const sceneB = new Scene()
				const cameraA = new Camera()
				const cameraB = new Camera()

				const listAA = renderLists.get(sceneA, cameraA)
				const listAB = renderLists.get(sceneA, cameraB)
				const listBA = renderLists.get(sceneB, cameraA)

				expect(listAA).toStrictEqual(new WebGLRenderList(properties), 'listAA is type of WebGLRenderList.')
				expect(listAB).toStrictEqual(new WebGLRenderList(properties), 'listAB is type of WebGLRenderList.')
				expect(listBA).toStrictEqual(new WebGLRenderList(properties), 'listAB is type of WebGLRenderList.')

				// @ts-ignore private access
				expect(listAA.properties).toBe(properties, 'listAA is type of WebGLRenderList.')
				// @ts-ignore private access
				expect(listAB.properties).toBe(properties, 'listAB is type of WebGLRenderList.')
				// @ts-ignore private access
				expect(listBA.properties).toBe(properties, 'listBA is type of WebGLRenderList.')

				expect(listAA).not.toBe(listAB, 'Render lists for camera A and B with same scene are different.')
				expect(listAA).not.toBe(listBA, 'Render lists for scene A and B with same camera are different.')
				expect(listAB).not.toBe(listBA, 'Render lists are different.')

				expect(listAA).toBe(
					renderLists.get(sceneA, cameraA),
					'The same list is returned when called with the same scene, camera. (AA)'
				)
				expect(listAB).toBe(
					renderLists.get(sceneA, cameraB),
					'The same list is returned when called with the same scene, camera. (AB)'
				)
				expect(listBA).toBe(
					renderLists.get(sceneB, cameraA),
					'The same list is returned when called with the same scene, camera. (BA)'
				)
			})
		})

		describe('WebGLRenderList', (): void => {
			test('init', (): void => {
				const properties = new MaterialProperties()
				const list = new WebGLRenderList(properties)

				// @ts-ignore private access
				expect(list.transparent.length).toBe(0, 'Transparent list defaults to length 0.')
				// @ts-ignore private access
				expect(list.opaque.length).toBe(0, 'Opaque list defaults to length 0.')

				const mat1 = new Material()
				mat1.transparent = true

				list.push(new Object3D(), new BufferGeometry(), mat1, 0, 0, new Group())

				const mat2 = new Material()
				mat2.transparent = false

				list.push(new Object3D(), new BufferGeometry(), mat2, 0, 0, new Group())

				// @ts-ignore private access
				expect(list.transparent.length).toBe(1, 'Transparent list is length 1 after adding transparent item.')
				// @ts-ignore private access
				expect(list.opaque.length).toBe(1, 'Opaque list list is length 1 after adding opaque item.')

				list.init()

				// @ts-ignore private access
				expect(list.transparent.length).toBe(0, 'Transparent list is length 0 after calling init.')
				// @ts-ignore private access
				expect(list.opaque.length).toBe(0, 'Opaque list list is length 0 after calling init.')
			})

			test('push', (): void => {
				const properties = new MaterialProperties()
				const list = new WebGLRenderList(properties)

				const objA = new Object3D()
				objA.id = 0
				const matA = new Material()
				matA.transparent = true
				const proA = {id: 1} as WebGLProgram
				const geoA = new BufferGeometry()

				const objB = new Object3D()
				objB.id = 1
				const matB = new Material()
				matB.transparent = true
				const proB = {id: 2} as WebGLProgram
				const geoB = new BufferGeometry()

				const objC = new Object3D()
				objC.id = 2
				const matC = new Material()
				matC.transparent = false
				const proC = {id: 3} as WebGLProgram
				const geoC = new BufferGeometry()

				const objD = new Object3D()
				objD.id = 3
				const matD = new Material()
				matD.transparent = false
				const proD = {id: 4} as WebGLProgram
				const geoD = new BufferGeometry()

				let materialProperties = properties.get(matA)
				materialProperties.program = proA
				materialProperties = properties.get(matB)
				materialProperties.program = proB
				materialProperties = properties.get(matC)
				materialProperties.program = proC
				materialProperties = properties.get(matD)
				materialProperties.program = proD

				const group = new Group()
				list.push(objA, geoA, matA, 0, 0.5, group)

				// @ts-ignore private access
				expect(list.transparent.length).toBe(1, 'Transparent list is length 1 after adding transparent item.')
				// @ts-ignore private access
				expect(list.opaque.length).toBe(0, 'Opaque list list is length 0 after adding transparent item.')

				// @ts-ignore private access
				expect(list.transparent[0]).toStrictEqual(
					{
						id: 0,
						object: objA,
						geometry: geoA,
						material: matA,
						program: proA,
						groupOrder: 0,
						renderOrder: 0,
						z: 0.5,
						group,
					} as RenderItem,
					'The first transparent render list item is structured correctly.'
				)

				list.push(objB, geoB, matB, 1, 1.5, group)

				// @ts-ignore private access
				expect(list.transparent.length).toBe(
					2,
					'Transparent list is length 2 after adding second transparent item.'
				)
				// @ts-ignore private access
				expect(list.opaque.length).toBe(0, 'Opaque list list is length 0 after adding second transparent item.')

				// @ts-ignore private access
				expect(list.transparent[1]).toStrictEqual(
					{
						id: 1,
						object: objB,
						geometry: geoB,
						material: matB,
						program: proB,
						groupOrder: 1,
						renderOrder: 0,
						z: 1.5,
						group,
					} as RenderItem,
					'The second transparent render list item is structured correctly.'
				)

				list.push(objC, geoC, matC, 2, 2.5, group)

				// @ts-ignore private access
				expect(list.transparent.length).toBe(2, 'Transparent list is length 2 after adding first opaque item.')
				// @ts-ignore private access
				expect(list.opaque.length).toBe(1, 'Opaque list list is length 1 after adding first opaque item.')

				// @ts-ignore private access
				expect(list.opaque[0]).toStrictEqual(
					{
						id: 2,
						object: objC,
						geometry: geoC,
						material: matC,
						program: proC,
						groupOrder: 2,
						renderOrder: 0,
						z: 2.5,
						group,
					},
					'The first opaque render list item is structured correctly.'
				)

				list.push(objD, geoD, matD, 3, 3.5, group)

				// @ts-ignore private access
				expect(list.transparent.length).toBe(2, 'Transparent list is length 2 after adding second opaque item.')
				// @ts-ignore private access
				expect(list.opaque.length).toBe(2, 'Opaque list list is length 2 after adding second opaque item.')

				// @ts-ignore private access
				expect(list.opaque[1]).toStrictEqual(
					{
						id: 3,
						object: objD,
						geometry: geoD,
						material: matD,
						program: proD,
						groupOrder: 3,
						renderOrder: 0,
						z: 3.5,
						group,
					} as RenderItem,
					'The second opaque render list item is structured correctly.'
				)
			})

			test('unshift', (): void => {
				const properties = new MaterialProperties()
				const list = new WebGLRenderList(properties)

				const objA = new Object3D()
				objA.id = 0
				const matA = new Material()
				matA.transparent = true
				const proA = {id: 1} as WebGLProgram
				const geoA = new BufferGeometry()

				const objB = new Object3D()
				objB.id = 1
				const matB = new Material()
				matB.transparent = true
				const proB = {id: 2} as WebGLProgram
				const geoB = new BufferGeometry()

				const objC = new Object3D()
				objC.id = 2
				const matC = new Material()
				matC.transparent = false
				const proC = {id: 3} as WebGLProgram
				const geoC = new BufferGeometry()

				const objD = new Object3D()
				objD.id = 3
				const matD = new Material()
				matD.transparent = false
				const proD = {id: 4} as WebGLProgram
				const geoD = new BufferGeometry()

				let materialProperties = properties.get(matA)
				materialProperties.program = proA
				materialProperties = properties.get(matB)
				materialProperties.program = proB
				materialProperties = properties.get(matC)
				materialProperties.program = proC
				materialProperties = properties.get(matD)
				materialProperties.program = proD

				const group = new Group()

				list.unshift(objA, geoA, matA, 0, 0.5, group)

				// @ts-ignore private access
				expect(list.transparent.length).toBe(1, 'Transparent list is length 1 after adding transparent item.')
				// @ts-ignore private access
				expect(list.opaque.length).toBe(0, 'Opaque list list is length 0 after adding transparent item.')

				// @ts-ignore private access
				expect(list.transparent[0]).toStrictEqual(
					{
						id: 0,
						object: objA,
						geometry: geoA,
						material: matA,
						program: proA,
						groupOrder: 0,
						renderOrder: 0,
						z: 0.5,
						group,
					} as RenderItem,
					'The first transparent render list item is structured correctly.'
				)

				list.unshift(objB, geoB, matB, 1, 1.5, group)

				// @ts-ignore private access
				expect(list.transparent.length).toBe(
					2,
					'Transparent list is length 2 after adding second transparent item.'
				)
				// @ts-ignore private access
				expect(list.opaque.length).toBe(0, 'Opaque list list is length 0 after adding second transparent item.')

				// @ts-ignore private access
				expect(list.transparent[0]).toStrictEqual(
					{
						id: 1,
						object: objB,
						geometry: geoB,
						material: matB,
						program: proB,
						groupOrder: 1,
						renderOrder: 0,
						z: 1.5,
						group,
					} as RenderItem,
					'The second transparent render list item is structured correctly.'
				)

				list.unshift(objC, geoC, matC, 2, 2.5, group)

				// @ts-ignore private access
				expect(list.transparent.length).toBe(2, 'Transparent list is length 2 after adding first opaque item.')
				// @ts-ignore private access
				expect(list.opaque.length).toBe(1, 'Opaque list list is length 1 after adding first opaque item.')

				// @ts-ignore private access
				expect(list.opaque[0]).toStrictEqual(
					{
						id: 2,
						object: objC,
						geometry: geoC,
						material: matC,
						program: proC,
						groupOrder: 2,
						renderOrder: 0,
						z: 2.5,
						group,
					},
					'The first opaque render list item is structured correctly.'
				)

				list.unshift(objD, geoD, matD, 3, 3.5, group)

				// @ts-ignore private access
				expect(list.transparent.length).toBe(2, 'Transparent list is length 2 after adding second opaque item.')
				// @ts-ignore private access
				expect(list.opaque.length).toBe(2, 'Opaque list list is length 2 after adding second opaque item.')

				// @ts-ignore private access
				expect(list.opaque[0]).toStrictEqual(
					{
						id: 3,
						object: objD,
						geometry: geoD,
						material: matD,
						program: proD,
						groupOrder: 3,
						renderOrder: 0,
						z: 3.5,
						group,
					} as RenderItem,
					'The second opaque render list item is structured correctly.'
				)
			})

			test('sort', (): void => {
				const o1 = new Object3D()
				o1.id = 4
				const o2 = new Object3D()
				o2.id = 5
				const o3 = new Object3D()
				o3.id = 2
				const o4 = new Object3D()
				o4.id = 3

				const items = [o1, o2, o3, o4]

				items.forEach(item => {
					sortList.push(item, new BufferGeometry(), m1, 0, 0, new Group())
					sortList.push(item, new BufferGeometry(), m2, 0, 0, new Group())
				})

				sortList.sort(
					(a, b) => a.id - b.id,
					(a, b) => b.id - a.id
				)

				// @ts-ignore private access
				let a = sortList.opaque.map<i32>(item => item.id)
				expect(a[0]).toBe(2, 'The opaque sort is applied to the opaque items list.')
				expect(a[1]).toBe(3, 'The opaque sort is applied to the opaque items list.')
				expect(a[2]).toBe(4, 'The opaque sort is applied to the opaque items list.')
				expect(a[3]).toBe(5, 'The opaque sort is applied to the opaque items list.')

				// @ts-ignore private access
				a = sortList.transparent.map<i32>(item => item.id)
				expect(a[0]).toBe(5, 'The transparent sort is applied to the transparent items list.')
				expect(a[1]).toBe(4, 'The transparent sort is applied to the transparent items list.')
				expect(a[2]).toBe(3, 'The transparent sort is applied to the transparent items list.')
				expect(a[3]).toBe(2, 'The transparent sort is applied to the transparent items list.')
			})

			// TODO
			// test('finish', (): void => {
			// 	var list = new WebGLRenderList(properties)
			// 	var obj = {id: 'A', renderOrder: 0}
			// 	var mat = {transparent: false, program: {id: 0}}
			// 	var geom = {}

			// 	expect(list.renderItems.length === 0, 'Render items length defaults to 0.')

			// 	list.push(obj, geom, mat, 0, 0, {})
			// 	list.push(obj, geom, mat, 0, 0, {})
			// 	list.push(obj, geom, mat, 0, 0, {})
			// 	expect(list.renderItems.length === 3, 'Render items length expands as items are added.')

			// 	list.finish()
			// 	assert.deepEqual(
			// 		list.renderItems.map(item => item.object),
			// 		[obj, obj, obj],
			// 		'Render items are not cleaned if they are being used.'
			// 	)
			// 	assert.deepEqual(
			// 		list.renderItems[1],
			// 		{
			// 			id: 'A',
			// 			object: obj,
			// 			geometry: geom,
			// 			material: mat,
			// 			program: mat.program,
			// 			groupOrder: 0,
			// 			renderOrder: 0,
			// 			z: 0,
			// 			group: {},
			// 		},
			// 		'Unused render item is structured correctly before clearing.'
			// 	)

			// 	list.init()
			// 	list.push(obj, geom, mat, 0, 0, {})
			// 	expect(list.renderItems.length === 3, 'Render items length does not shrink.')

			// 	list.finish()
			// 	assert.deepEqual(
			// 		list.renderItems.map(item => item.object),
			// 		[obj, null, null],
			// 		'Render items are cleaned if they are not being used.'
			// 	)

			// 	assert.deepEqual(
			// 		list.renderItems[1],
			// 		{
			// 			id: null,
			// 			object: null,
			// 			geometry: null,
			// 			material: null,
			// 			program: null,
			// 			groupOrder: 0,
			// 			renderOrder: 0,
			// 			z: 0,
			// 			group: null,
			// 		},
			// 		'Unused render item is structured correctly before clearing.'
			// 	)
			// })
		})
	})
})

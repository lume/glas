import {Face3} from './Face3'
import {Color} from '../math/Color'
import {Vector3} from '../math/Vector3'

/**
 * @author Joe Pea / http://github.com/trusktr
 */

describe('Core', () => {
	describe('Face3', () => {
		test('invalid constructor args', () => {
			// Only the first three args are required
			// prettier-ignore
			// This works:
			expect(() => {new Face3(0, 1, 2)}).not.toThrow()
			// But an arrow function without curliy braces trips up as-pect or AS.
			// expect(() => new Face3(0, 1, 2)).not.toThrow()
			// ^ TODO Report to upstream

			expect(() => {
				new Face3(
					0,
					1,
					2,
					[new Vector3(0, 1, 0), new Vector3(1, 0, 1)], // invalid length
					[new Color(0.25, 0.5, 0.75)],
					2
				)
			}).toThrow()

			expect(() => {
				new Face3(
					0,
					1,
					2,
					[new Vector3(0, 1, 0)],
					[new Color(0.25, 0.5, 0.75), new Color()], // invalid length
					2
				)
			}).toThrow()

			expect(() => {
				new Face3(
					0,
					1,
					2,
					[], // valid length
					[], // valid length
					2
				)
			}).not.toThrow()

			expect(() => {
				new Face3(
					0,
					1,
					2,
					[new Vector3(), new Vector3(), new Vector3()], // valid length
					[new Color(), new Color(), new Color()], // valid length
					2
				)
			}).not.toThrow()
		})

		test('copy', () => {
			var instance = new Face3(0, 1, 2, [new Vector3(0, 1, 0)], [new Color(0.25, 0.5, 0.75)], 2)
			var copiedInstance = new Face3(0, 1, 2).copy(instance)

			checkCopy(copiedInstance)
			checkVertexAndColors(copiedInstance)
		})

		test('copy (more)', () => {
			var instance = new Face3(
				0,
				1,
				2,
				[new Vector3(0, 1, 0), new Vector3(1, 0, 1), new Vector3()],
				[new Color(0.25, 0.5, 0.75), new Color(1, 0, 0.4), new Color()],
				2
			)
			var copiedInstance = new Face3(0, 1, 2).copy(instance)

			checkCopy(copiedInstance)
			checkVertexAndColorArrays(copiedInstance)
		})

		test('clone', () => {
			var instance = new Face3(0, 1, 2, [new Vector3(0, 1, 0)], [new Color(0.25, 0.5, 0.75)], 2)
			var copiedInstance = instance.clone()

			checkCopy(copiedInstance)
			checkVertexAndColors(copiedInstance)
		})
	})
})

function checkCopy(copiedInstance: Face3): void {
	expect(
		copiedInstance.a === 0 && copiedInstance.b === 1 && copiedInstance.c === 2 && copiedInstance.materialIndex === 2
	).toBe(true, 'properties where copied')
}

function checkVertexAndColors(copiedInstance: Face3): void {
	expect(
		copiedInstance.normal.x === 0 &&
			copiedInstance.normal.y === 1 &&
			copiedInstance.normal.z === 0 &&
			copiedInstance.color.r === 0.25 &&
			copiedInstance.color.g === 0.5 &&
			copiedInstance.color.b === 0.75
	).toBe(true, 'properties where copied')
}

function checkVertexAndColorArrays(copiedInstance: Face3): void {
	expect(
		copiedInstance.vertexNormals[0].x === 0 &&
			copiedInstance.vertexNormals[0].y === 1 &&
			copiedInstance.vertexNormals[0].z === 0 &&
			copiedInstance.vertexNormals[1].x === 1 &&
			copiedInstance.vertexNormals[1].y === 0 &&
			copiedInstance.vertexNormals[1].z === 1 &&
			copiedInstance.vertexColors[0].r === 0.25 &&
			copiedInstance.vertexColors[0].g === 0.5 &&
			copiedInstance.vertexColors[0].b === 0.75 &&
			copiedInstance.vertexColors[1].r === 1 &&
			copiedInstance.vertexColors[1].g === 0 &&
			copiedInstance.vertexColors[1].b === 0.4
	).toBe(true, 'properties where copied')
}

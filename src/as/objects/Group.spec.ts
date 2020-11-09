import {Group} from './Group'

describe('Objects', () => {
	describe('Group', () => {
		test("it's just an Object3D (has a different semantic meaning inside WebGLRenderer)", () => {
			const group = new Group()
			expect(group.type).toBe('Group')
			expect(group.isGroup).toBe(true)
		})
	})
})

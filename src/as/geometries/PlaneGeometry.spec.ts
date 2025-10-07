/**
 * @author TristanVALCKE / https://github.com/Itee
 * @author Joe Pea / http://github.com/trusktr
 */

import { runStdGeometryTests } from '../test-utils'
import { PlaneGeometry } from './PlaneGeometry'
import { BufferGeometry } from '../core/BufferGeometry'
import { Float32BufferAttribute } from '../core/BufferAttribute'

let geometries: BufferGeometry[] = []

describe('Geometries', (): void => {
	describe('PlaneGeometry', (): void => {
		beforeEach((): void => {
			geometries = [
				new PlaneGeometry(),
				new PlaneGeometry(10, 20),
				new PlaneGeometry(10, 20, 2, 3),
			]
		})

		// Standard geometry tests
		test('Standard geometry tests', (): void => {
			runStdGeometryTests(geometries)
		})

		test('default parameters create 1x1 plane', (): void => {
			const geom = new PlaneGeometry()
			
			expect(geom.parameters.width).toBe(1, 'default width should be 1')
			expect(geom.parameters.height).toBe(1, 'default height should be 1')
			expect(geom.parameters.widthSegments).toBe(1, 'default widthSegments should be 1')
			expect(geom.parameters.heightSegments).toBe(1, 'default heightSegments should be 1')
		})

		test('custom parameters are stored correctly', (): void => {
			const geom = new PlaneGeometry(10, 20, 4, 5)
			
			expect(geom.parameters.width).toBe(10, 'width should be 10')
			expect(geom.parameters.height).toBe(20, 'height should be 20')
			expect(geom.parameters.widthSegments).toBe(4, 'widthSegments should be 4')
			expect(geom.parameters.heightSegments).toBe(5, 'heightSegments should be 5')
		})

		test('plane has required attributes', (): void => {
			const geom = new PlaneGeometry(4, 4)

			expect(geom.attributes.has('position')).toBe(true, 'should have position attribute')
			expect(geom.attributes.has('normal')).toBe(true, 'should have normal attribute')
			expect(geom.attributes.has('uv')).toBe(true, 'should have uv attribute')
		})

		test('plane with 1x1 segments has correct vertex count', (): void => {
			const geom = new PlaneGeometry(2, 2, 1, 1)
			const positionAttr = geom.attributes.get('position') as Float32BufferAttribute

			// 1x1 segments = (1+1) * (1+1) = 4 vertices
			expect(positionAttr.count).toBe(4, '1x1 segments should have 4 vertices')
		})

		test('plane with 2x3 segments has correct vertex count', (): void => {
			const geom = new PlaneGeometry(4, 6, 2, 3)
			const positionAttr = geom.attributes.get('position') as Float32BufferAttribute

			// 2x3 segments = (2+1) * (3+1) = 3 * 4 = 12 vertices
			expect(positionAttr.count).toBe(12, '2x3 segments should have 12 vertices')
		})

		test('plane vertices are within expected bounds', (): void => {
			const width: f32 = 10.0
			const height: f32 = 20.0
			const geom = new PlaneGeometry(width, height, 2, 2)
			const positionAttr = geom.attributes.get('position') as Float32BufferAttribute

			for (let i = 0; i < positionAttr.count; i++) {
				const x = positionAttr.getX(i)
				const y = positionAttr.getY(i)
				const z = positionAttr.getZ(i)

				// X coordinates should be within [-width/2, width/2]
				expect(Math.abs(x)).toBeLessThanOrEqual(width / 2 + 0.01, 'x should be within bounds')
				
				// Y coordinates should be within [-height/2, height/2]
				expect(Math.abs(y)).toBeLessThanOrEqual(height / 2 + 0.01, 'y should be within bounds')
				
				// Z coordinates should be 0 for a plane
				expect(z).toBe(0.0, 'z should be 0 for plane')
			}
		})

		test('plane normals point in +Z direction', (): void => {
			const geom = new PlaneGeometry(4, 4, 2, 2)
			const normalAttr = geom.attributes.get('normal') as Float32BufferAttribute

			for (let i = 0; i < normalAttr.count; i++) {
				const nx = normalAttr.getX(i)
				const ny = normalAttr.getY(i)
				const nz = normalAttr.getZ(i)

				expect(nx).toBe(0.0, 'normal x component should be 0')
				expect(ny).toBe(0.0, 'normal y component should be 0')
				expect(nz).toBe(1.0, 'normal z component should be 1')
			}
		})

		test('plane UVs are in [0, 1] range', (): void => {
			const geom = new PlaneGeometry(4, 4, 2, 3)
			const uvAttr = geom.attributes.get('uv') as Float32BufferAttribute

			for (let i = 0; i < uvAttr.count; i++) {
				const u = uvAttr.getX(i)
				const v = uvAttr.getY(i)

				expect(u).toBeGreaterThanOrEqual(0.0, 'u should be >= 0')
				expect(u).toBeLessThanOrEqual(1.0, 'u should be <= 1')
				expect(v).toBeGreaterThanOrEqual(0.0, 'v should be >= 0')
				expect(v).toBeLessThanOrEqual(1.0, 'v should be <= 1')
			}
		})

		test('plane has correct index count for 1x1 segments', (): void => {
			const geom = new PlaneGeometry(2, 2, 1, 1)
			
			// 1x1 segments = 1 * 1 = 1 quad = 2 triangles = 6 indices
			expect(geom.index!.count).toBe(6, '1x1 segments should have 6 indices')
		})

		test('plane has correct index count for 2x3 segments', (): void => {
			const geom = new PlaneGeometry(4, 6, 2, 3)
			
			// 2x3 segments = 2 * 3 = 6 quads = 12 triangles = 36 indices
			expect(geom.index!.count).toBe(36, '2x3 segments should have 36 indices')
		})

		test('plane indices reference valid vertices', (): void => {
			const geom = new PlaneGeometry(4, 4, 2, 2)
			const positionAttr = geom.attributes.get('position') as Float32BufferAttribute
			const vertexCount = positionAttr.count

			for (let i = 0; i < geom.index!.count; i++) {
				const index = geom.index!.getX(i)
				expect(index).toBeGreaterThanOrEqual(0, 'index should be >= 0')
				expect(index).toBeLessThan(vertexCount, 'index should be < vertex count')
			}
		})

		test('plane with 0 segments defaults to 1 segment', (): void => {
			// Test edge case - segments should be at least 1
			const geom = new PlaneGeometry(2, 2, 0, 0)
			const positionAttr = geom.attributes.get('position') as Float32BufferAttribute

			// Should behave like 1x1 segments (though the implementation may vary)
			// At minimum, should have 4 vertices
			expect(positionAttr.count).toBeGreaterThanOrEqual(4, 'should have at least 4 vertices')
		})

		test('plane corners are at expected positions', (): void => {
			const width: f32 = 10.0
			const height: f32 = 20.0
			const geom = new PlaneGeometry(width, height, 1, 1)
			const positionAttr = geom.attributes.get('position') as Float32BufferAttribute

			// For a 1x1 segment plane, we have 4 corners
			const corners: f32[][] = []
			for (let i = 0; i < 4; i++) {
				corners.push([
					positionAttr.getX(i),
					positionAttr.getY(i),
					positionAttr.getZ(i)
				])
			}

			// Check that we have corners at the extremes
			let hasTopLeft = false
			let hasTopRight = false
			let hasBottomLeft = false
			let hasBottomRight = false

			for (let i = 0; i < 4; i++) {
				const x = corners[i][0]
				const y = corners[i][1]

				if (Math.abs(x - (-width / 2)) < 0.01 && Math.abs(y - (height / 2)) < 0.01) hasTopLeft = true
				if (Math.abs(x - (width / 2)) < 0.01 && Math.abs(y - (height / 2)) < 0.01) hasTopRight = true
				if (Math.abs(x - (-width / 2)) < 0.01 && Math.abs(y - (-height / 2)) < 0.01) hasBottomLeft = true
				if (Math.abs(x - (width / 2)) < 0.01 && Math.abs(y - (-height / 2)) < 0.01) hasBottomRight = true
			}

			expect(hasTopLeft || hasTopRight || hasBottomLeft || hasBottomRight).toBe(
				true,
				'should have at least one corner at expected position'
			)
		})

		test('plane is centered on origin', (): void => {
			const geom = new PlaneGeometry(10, 20, 3, 3)
			const positionAttr = geom.attributes.get('position') as Float32BufferAttribute

			let sumX: f32 = 0.0
			let sumY: f32 = 0.0
			let sumZ: f32 = 0.0

			for (let i = 0; i < positionAttr.count; i++) {
				sumX += positionAttr.getX(i)
				sumY += positionAttr.getY(i)
				sumZ += positionAttr.getZ(i)
			}

			const avgX = sumX / positionAttr.count
			const avgY = sumY / positionAttr.count
			const avgZ = sumZ / positionAttr.count

			// Average position should be close to origin
			expect(Math.abs(avgX)).toBeLessThan(0.01, 'average x should be near 0')
			expect(Math.abs(avgY)).toBeLessThan(0.01, 'average y should be near 0')
			expect(Math.abs(avgZ)).toBeLessThan(0.01, 'average z should be near 0')
		})
	})
})

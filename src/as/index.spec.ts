import './cameras/index.spec'
import './core/index.spec'
import './geometries/index.spec'
import './lights/index.spec'
import './materials/index.spec'
import './math/index.spec'
import './objects/index.spec'
import './renderers/index.spec'
import './scenes/index.spec'

import './constants.spec'
import './utils.spec'

import './aswebglue.spec'

import {Box3} from './index'

describe('entrypoint', () => {
	it('exports some stuff', () => {
		const box = new Box3()
		expect(box instanceof Box3).toBeTruthy()
	})
})

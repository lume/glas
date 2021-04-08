import {Object3D, Layers, log} from './node_modules/glas/src/as/index'

export function main(): void {
	layers()
	object3d()
}

function layers(): void {
	const a = new Layers()
	a.set(12)
	const b = new Layers()
	b.set(12)

	log('all good!')
}

function object3d(): void {
	const a = new Object3D()
	const child1 = new Object3D()
	const child2 = new Object3D()

	a.add(child1)

	a.add(child2)

	a.remove(child1)

	a.add(child1)
	a.remove(child1)
	a.remove(child2)

	child1.add(child2)

	a.add(child2)

	log('Object3D compiles and runs')
}

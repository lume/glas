import {Layers} from './core/Layers'
import {log} from './imports'
import {Object3D} from './core/Object3D'

export function main(): void {
	// layers()
	object3d()
}

function layers(): void {
	const a = new Layers()
	a.set(12)
	const b = new Layers()
	b.set(12)

	assert(a.test(b), 'test method failed')

	// TODO this code doesn't compile, see:
	// https://github.com/AssemblyScript/assemblyscript/issues/645
	assert(a.test2(2), 'test2 failed')
	assert(!a.test2(null), 'test2 failed')

	log('all good!')
}

function object3d(): void {
	var a = new Object3D()
	var child1 = new Object3D()
	var child2 = new Object3D()

	a.add(child1)

	a.add(child2)

	a.remove(child1)

	a.add(child1)
	a.remove(child1)
	a.remove(child2)

	child1.add(child2)

	a.add(child2)
}

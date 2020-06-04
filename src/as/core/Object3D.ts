export class Object3D /*TODO: extends EventDispatcher*/ {
	static DefaultMatrixAutoUpdate: boolean = true
	name: string = ''
	type: string = 'Object3D'
	parent: Object3D | null = null
	children: Object3D[] = []
	matrixAutoUpdate: boolean = Object3D.DefaultMatrixAutoUpdate
	matrixWorldNeedsUpdate: boolean = false
	visible: boolean = true
	castShadow: boolean = false
	receiveShadow: boolean = false
	frustumCulled: boolean = true
	renderOrder: f32 = 0
	readonly isObject3D: boolean = true
	isCamera: boolean = false
	protected isLight: boolean = false
}

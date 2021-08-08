/**
 * @author mrdoob / http://mrdoob.com/
 * @author Joe Pea / http://github.com/trusktr
 */

// import { IFog } from './Fog';
import {Material} from '../materials/Material'
import {Object3D} from '../core/Object3D'
import {Event} from '../core/Event'
// import { Color } from '../math/Color';
// import { Texture } from '../textures/Texture';
// Scenes /////////////////////////////////////////////////////////////////////

/**
 * Scenes allow you to set up what and where is to be rendered by three.js. This is where you place objects, lights and cameras.
 */
export class Scene extends Object3D {
	constructor() {
		super()

		this.type = 'Scene'

		/*
		if ( typeof __THREE_DEVTOOLS__ !== undefined ) {
			__THREE_DEVTOOLS__.dispatchEvent( { type: 'scene', value: this } );
		}
		*/
	}

	isScene: boolean = true

	// 	/**
	//    * A fog instance defining the type of fog that affects everything rendered in the scene. Default is null.
	//    */
	// 	fog: IFog | null;

	/**
	 * If not null, it will force everything in the scene to be rendered with that material. Default is null.
	 */
	overrideMaterial: Material | null = null

	autoUpdate: boolean = true
	// 	background: null | Color | Texture | CubeMap | WebGLRenderTarget;

	// copy(source: this, recursive?: boolean): this {
	// 	Object3D.prototype.copy.call(this, source, recursive)

	// 	if (source.background !== null) this.background = source.background.clone()
	// 	if (source.fog !== null) this.fog = source.fog.clone()
	// 	if (source.overrideMaterial !== null) this.overrideMaterial = source.overrideMaterial.clone()

	// 	this.autoUpdate = source.autoUpdate
	// 	this.matrixAutoUpdate = source.matrixAutoUpdate

	// 	return this
	// }

	// toJSON(meta?: any): any {
	// 	var data = Object3D.prototype.toJSON.call(this, meta)

	// 	if (this.background !== null) data.object.background = this.background.toJSON(meta)
	// 	if (this.fog !== null) data.object.fog = this.fog.toJSON()

	// 	return data
	// }

	dispose(): void {
		this.dispatchEvent(new Event('dispose'))
	}
}

export class WebGLTextures {
	constructor(
		gl: any,
		extensions: any,
		state: any,
		properties: any,
		capabilities: any,
		paramThreeToGL: Function,
		info: any
	) {}

	textureUnits = 0

	resetTextureUnits() {
		this.textureUnits = 0
	}

	allocateTextureUnit() {
		const textureUnit = this.textureUnits

		if (textureUnit >= capabilities.maxTextures) {
			console.warn(
				'THREE.WebGLTextures: Trying to use ' +
					textureUnit +
					' texture units while this GPU supports only ' +
					capabilities.maxTextures
			)
		}

		this.textureUnits += 1

		return textureUnit
	}

	setTexture2D(texture: any, slot: f32): void {}
	setTextureCube(texture: any, slot: f32): void {}
	setTextureCubeDynamic(texture: any, slot: f32): void {}
	setupRenderTarget(renderTarget: any): void {}
	updateRenderTargetMipmap(renderTarget: any): void {}
}

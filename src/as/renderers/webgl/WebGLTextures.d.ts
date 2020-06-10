export class WebGLTextures {
	constructor(
		gl: any,
		extensions: any,
		state: any,
		properties: any,
		capabilities: any,
		paramThreeToGL: Function,
		info: any
	)

	setTexture2D(texture: any, slot: f32): void
	setTextureCube(texture: any, slot: f32): void
	setTextureCubeDynamic(texture: any, slot: f32): void
	setupRenderTarget(renderTarget: any): void
	updateRenderTargetMipmap(renderTarget: any): void
}

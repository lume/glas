// const util = require('util')
// const deasync = require('deasync')
// const promiseSync = deasync(util.callbackify(promise => promise))
// const importSync = specifier => promiseSync(import(specifier))
// const ASLoader = importSync('@assemblyscript/loader/index.js').default
// const {initASWebGLue, ASWebGLReady} = importSync('aswebglue/src/ASWebGLue.js')

import ASLoader from '@assemblyscript/loader/index.js'
import {initASWebGLue, ASWebGLReady} from 'aswebglue/src/ASWebGLue.js'

import path from 'path'
import fs from 'fs'

/////////////// Setup WebGL for Node.js

import webgl from 'webgl-raub'
import glfwRaub from 'glfw-raub'

const {Document} = glfwRaub

Document.setWebgl(webgl) // plug this WebGL impl into the Document

const doc = new Document()
global.document = global.window = doc
const {requestAnimationFrame} = doc

///////////// Use ASWebGLue like in a browser.

console.log('>>>>>>>>>>>', document.getElementById)
// process.exit()

const isNode = true
const wasm_file = isNode ? fs.readFileSync(path.resolve('test-cube.wasm')) : fetch('./test-cube.wasm')
var exports
var last_time = 0

// var w = window.innerWidth * 0.99
// var h = window.innerHeight * 0.99
// var cnvs = document.getElementById('cnvs')
// if (w > h) {
// 	cnvs.width = h
// 	cnvs.height = h
// } else {
// 	cnvs.width = w
// 	cnvs.height = w
// }

function renderFrame() {
	let delta = 0
	if (last_time !== 0) {
		delta = new Date().getTime() - last_time
	}
	last_time = new Date().getTime()

	// call the displayLoop function in the WASM module
	exports.displayLoop(delta)

	// requestAnimationFrame calls renderFrame the next time a frame is rendered
	requestAnimationFrame(renderFrame)
}

async function main() {
	const importObject = {
		env: {seed: Date.now, memory: new WebAssembly.Memory({initial: 100})},
		'test-cube': {
			callFn(fn) {
				// Here fn is a pointer. How to get the actual function and call it?
				console.log(fn)
			},
		},
	}
	initASWebGLue(importObject)

	// use WebAssembly.instantiateStreaming in combination with
	// fetch instead of WebAssembly.instantiate and fs.readFileSync
	let module = await ASLoader.instantiate(wasm_file, importObject)

	exports = module.instance.exports

	// console.log('start test ---------------------')
	// exports.test()
	// console.log('end test ---------------------')

	ASWebGLReady(module, importObject)
	requestAnimationFrame(renderFrame)
}

main()

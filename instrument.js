#!/usr/bin/env node

const fs = require('fs').promises
const path = require('path')
const walker = require('at-at')
const fnHeader = /function\s*\w*\s*\(.*\)\s*{/g

function instrument(folder, pattern) {
	walker.walk(folder, files => {
		for (const file of files) {
			if (!file.match(pattern)) continue
			;(async () => {
				let code = await fs.readFile(file, {encoding: 'utf8'})

				// prettier-ignore
				code = code.replace(fnHeader, match => `${match}
					if (!window.usedClasses)
						window.usedClasses = new Set;

					if (this && this.constructor)
						window.usedClasses.add(this.constructor.name);
				`)

				await fs.writeFile(file, code, {encoding: 'utf8'})
			})()
		}
	})
}

const modulePath = mod => path.resolve(process.cwd(), 'node_modules', mod)

instrument(modulePath('babylonjs'), /.max.js$/)
instrument(modulePath('babylonjs-materials'), /.materials.js$/)

// then `npm run build`, and in console you can take a look at `window.usedClasses`.

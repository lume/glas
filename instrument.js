#!/usr/bin/env node

const fs = require('fs').promises
const path = require('path')
const walker = require('at-at')
const fnHeader = /function\s*\w*\s*\(.*\)\s*{/g

function instrument(folder, pattern) {
	walker.walk(folder, files => {
		for (const file of files) {
			if (!file.match(pattern)) continue

			~(async function () {
				let code = await fs.readFile(file, {encoding: 'utf8'})

				// remove strict mode, which allows us to use arguments.callee below
				code = code.replace('"use strict"', '')
				code = code.replace("'use strict'", '')

				// prettier-ignore
				code = code.replace(fnHeader, match => `${match}
					const isObject = this && this.constructor

					if (isObject) {
						// get a list of all used classes
						if (!window.usedClasses) window.usedClasses = new Set

						window.usedClasses.add(this.constructor.name)

						let propNames = window.propertyNames
						if (!propNames) propNames = window.propertyNames = new WeakMap;

						let names = propNames.get(this.constructor)
						if (!names) propNames.set(this.constructor, names = [])
						for (const prop in this) names.push(prop)

						// get a list of all used methods
						if (!window.usedMethodsPerClass) window.usedMethodsPerClass = new Map

						let classMethods = window.usedMethodsPerClass.get(this.constructor.name)
						if (!classMethods) window.usedMethodsPerClass.set(this.constructor.name, classMethods = new Set)

						let method = arguments.callee.name
						if (method) classMethods.add(arguments.callee.name)
						else if (names.some(name => this[method = name] === arguments.callee)) classMethods.add(method)
					}
				`)

				await fs.writeFile(file, code, {encoding: 'utf8'})
			})()
		}
	})
}

function modulePath(...modPath) {
	return path.resolve(process.cwd(), 'node_modules', ...modPath)
}

instrument(modulePath('three', 'build'), /.js$/)

// then `npm run build`, and in console you can take a look at `window.usedClasses`.

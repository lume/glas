import * as fs from 'fs'
import * as path from 'path'

type IncomingMessage = import('http').IncomingMessage
type ServerResponse = import('http').ServerResponse

module.exports = function (req: IncomingMessage, _res: ServerResponse, next: () => void) {
	// If we encounter a file request in the /ts folder, and if the request
	// doesn't have a `.js` extension, then it's an import statement generated
	// by TypeScript. For example:
	//
	// import {foo} from './foo'
	//
	// So we must configure out static HTTP server to automatically add the
	// `.js` extension
	if (req.url!.startsWith('/ts/')) {
		const filePath = path.resolve(process.cwd(), 'dist' + req.url!.replace('/', path.sep))

		fs.access(filePath, function (err) {
			if (err) {
				if (err.code === 'ENOENT') {
					req.url += '.js'
					console.log('Added .js extension to file:', req.url)
				} else {
					console.error('Unable to read file at ' + req.url)
					throw err
				}
			}

			next()
		})
	} else next()
}

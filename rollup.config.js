import nodeResolve from '@rollup/plugin-node-resolve'
// import commonjs from '@rollup/plugin-commonjs'
import pkg from './package.json'

/**
 * rollup configuration file which builds a commonjs, esm, and universal
 * javascript module that will be consumed.
 *
 * @author Kara Rawson <rawsonkara@gmail.com>
 * @author Joe Pea <http://github.com/trusktr>
 */
export default [
	{
		input: 'dist/ts/index.js',
		plugins: [
			//
			nodeResolve(),
			// commonjs(),
		],
		output: [
			{file: pkg.browser, name: pkg.name, format: 'umd', name: 'LUME.GLAS'},
			{file: pkg.module, name: pkg.name, format: 'es'},
		],
	},
]

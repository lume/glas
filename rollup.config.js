import resolve from '@rollup/plugin-node-resolve';
import commonjs from '@rollup/plugin-commonjs';
import typescript from '@rollup/plugin-typescript';
import pkg from './package.json';

/**
 * rollup configuration file which builds a commonjs, esm, and universal 
 * javascript module that will be consumed.
 * 
 * @author Kara Rawson <rawsonkara@gmail.com>
 */
export default [
	{
		input: 'src/ts/index.ts',
		plugins: [
      resolve({
        browser: true
      }),
      commonjs(),
			typescript({
        exclude: [
          'src/as/**/*',
          'src/infra/**/*'
        ]
      })
		],
		output: [
      { file: pkg.browser, name: pkg.name, format: 'umd' },
			{ file: pkg.main, name: pkg.name, format: 'cjs' },
			{ file: pkg.module, name: pkg.name, format: 'es' }
		]
	}
];

import path from 'path'

const outputPath = 'dist/ts'

const baseConfig = {
	entry: './dist/ts/index.js',
	output: {path: path.resolve(outputPath)},
	// devServer: {contentBase: outputPath},
	// resolve: {extensions: ['.js', '.ts', '.tsx']},

	module: {
		rules: [
			/**
			 * Source maps
			 */
			{test: /\.js$/, use: ['source-map-loader'], enforce: 'pre'},
		],
	},
	devtool: 'source-map',
}

export default [
	{...baseConfig, output: {...baseConfig.output, filename: 'glas.esm.js'}},
	{...baseConfig, output: {...baseConfig.output, filename: 'glas.umd.js'}},
]

import path from 'path'

const outputPath = 'dist/ts'

const baseConfig = {
	entry: './dist/ts/index.js',
	output: {path: path.resolve(outputPath)},
	// devServer: {contentBase: outputPath},
	// resolve: {extensions: ['.js', '.ts', '.tsx']},

	module: {rules: [{test: /\.js$/, use: ['source-map-loader'], enforce: 'pre'}]},
	devtool: 'source-map',
	optimization: {concatenateModules: true},
}

export default [
	{
		...baseConfig,
		experiments: {outputModule: true},
		output: {...baseConfig.output, filename: 'glas.esm.js', libraryTarget: 'module'},
	},
	{
		...baseConfig,
		output: {...baseConfig.output, filename: 'glas.umd.js', libraryTarget: 'umd', library: ['LUME', 'glas']},
	},
]

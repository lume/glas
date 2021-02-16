import typescript from "@rollup/plugin-typescript";

export default {
    input: 'src/ts/index.js',
    output: {
      dir: "build",
      file: 'glas-bundle.js',
      format: 'esnext'
    },
    plugins: [typescript()],
  };
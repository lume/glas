# glas

WebGL in WebAssembly (TypeScript/AssemblyScript)

## motivation

It'd be sweet to have a high-performing WebGL engine that runs in the web via
WebAssembly and is written in a language that web developers are already
familiar with (TypeScript/JavaScript).
[AssemblyScript](https://github.com/AssemblyScript/assemblyscript) lets us write
TypeScript and compile it to WebAssembly.

## project structure

```sh
project
  ├── build/ # contains build output. This structure mirrors that of the src/ folder
  ├─┬ src/
  | ├─┬ as/ # contains AssemblyScript code which runs on the WebAssembly side
  | | ├─┬ foo/ # each folder in `src/as/` contain code for a single WebAssembly module (AssemblyScript)
  | | | └── index.ts # entry point for the WebAssembly module
  | | └── tsconfig.json # AssemblyScript compiler settings for WebAssembly─side code
  | ├─┬ ts/ # contains TypeScript code which runs on the JS side
  | | ├── index.ts # entry point for JavaScript─side code
  | | └── tsconfig.json # TypeScript compiler settings for JavaScript─side code
  | ├── infra/ # contains infrastructure code (f.e. for the static file server)
  | └── index.html # the index file that will be served to your browser
  └── *.* # any files at the root of the project are meta files like package.json, editorconfig, etc.
```

## get started

```sh
# install dependencies
npm install

# build the project
npm run build

# finally serve the files, which opens your browser:
npm run serve
```

### caveats

For now, if you edit any AssemblyScript code in `src/as/`, or modify
`src/index.html`, you will need to rerun the `npm run build` step. Then you can
refresh the browser page (if it doesn't refresh automatically, the auto-refresh
can be wonky).

Some editors (like VS Code, or Atom with atom-typescript) will automatically
compile/build/emit any file that you edit and save, into the `build/` folder, as
per the `compileOnSave` option in `src/ts/tsconfig.json` for JavaScript-side
code, so you don't need to rerun `npm run build` every time you change a
JavaScript-side TypeScript file. After saving a file and the file being emitted
to the `build/` you can refresh your browser page (if it doesn't refresh
automatically).

If your editor doesn't support `compileOnSave`, then you need to rerun `npm run build` step after making modifications to JavaScript-side code.

## TODO

-   [ ] Add a watch mode, to make things easier during development.

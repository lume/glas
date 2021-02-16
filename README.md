# GLAS

Web**GL** in WebAssembly with **A**ssembly**S**cript.

> This is a work-in-progress port of [**Three.js**](https://threejs.org), a JavaScript 3D WebGL library, into [**AssemblyScript**](https://assemblyscript.org).

## Motivation

It'd be sweet to have a high-performing WebGL engine that runs in the web via
WebAssembly and is written in a language that web developers are already
familiar with:
[JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/About_JavaScript),
in the form of [TypeScript](http://www.typescriptlang.org/) (a
superset of JavaScript with types).

Enter [AssemblyScript](https://assemblyscript.org), a
toolchain that allows us to write a strictly-typed subset of
[TypeScript](http://www.typescriptlang.org/) code and compile it to
[WebAssembly](https://developer.mozilla.org/en-US/docs/WebAssembly) (an
[assembly](https://en.wikipedia.org/wiki/Assembly_language)-like language
representing machine code) for speed.

## Status

#### <span style="background:yellow">>>>ALPHA STATE<<<</span>

The project is currently in its very early alpha stage. We have an amazing group of programmers building the initial [**ASWebGLue**](https://github.com/lume/ASWebGLue) library. This library enables AssemblyScript programs call with the browsers underlying WebGL interface. This is required before we are able render anything to the screen. A majority of the Three.js library and their unit test have been ported over.

See the current progress in the [**project board**](https://github.com/lume/glas/projects) or review our [**issues**](https://github.com/lume/glas/issues).

## Goal
Our initial port project board we're tracking all the classes that need to
be ported. The initial goal is to reproduce the following basic Three.js
demo, but entirely AssemblyScript:

> **End Goal:** https://codepen.io/trusktr/pen/EzBKYM

## [Contribute](.github/CONTRIBUTE.md)

A breif overview of the work consists of picking a Three.js class, translating it
from *JavaScript* (with TypeScript declaration files), and porting into *AssemblyScript*
(effectively merging the `.js` and `.d.ts` files).

Most logic can be ported unchanged, but sometimes there are features of plain
JS that AssemblyScript does not support. For example Assembly script does not support the `any` object or function references. Three.js APIs that accept plain object literals
with arbitrary properties need to be converted into `class` structures. Additionally all unit test files will also need to be ported over from `*.test.js` and into [**as-pect**](https://github.com/jtenner/as-pect) `*.spec.ts` files. Another thing to note, is that Three.js relys heavily on functional callbacks which will need to be converted over into managed function pointers. AssemblyScript currently does not support the `Function` keyword, but uses `$ptr` instead.

If you would like to help, awesome! We are currenty looking for help, testing, and feedback. Please read about how to [**contribute**](CONTRIBUTE.md) or view a detailed [**example**](CONTRIBUTE.md#example) of how to port some of the code.

## How It Works

We have an HTML page that loads the glas WebAssembly module and runs it, but
so far this module only instantiates an
[`Object3D`](https://threejs.org/docs/index.html#api/en/core/Object3D)
instance to show that we're able to run the module.

Later we'll eventually connect the module to a `<canvas>` element in the DOM
and actually render something.

### Build & Run

To run the example GLAS application in your browser use the following command: 

```sh
# install or update dependencies
npm install

# build and serve the project in browser
npm run start
```

Now see the devtools console in your browser tab for some output that tell us that our GLAS program has been loaded and initialized.

>NOTE: the project does not currently use `nodemon` with automatic rebuild. So you will need to execute `npm run build` again and then refresh to see the changes. 

Our goal is to get GLAS distributing as a library module so that you can include into your own application. Until this is implemented, you add you application code into the `src/as/index.ts` AssemblyScript file. This is currently the entry point for GLAS.

### Testing

Unit testing is handled by the [**as-pect**](https://github.com/jtenner/as-pect) library for AssemblyScript. It is based off of Mocha testing specifications. 

To run the tests, run the following commands in your terminal:

```sh
# run unit tests
npm test
```

The console output should report which tests pass and which tests fail.

## [Development](.github/DEVELOPMENT.md)

If you are interested in developing **GLAS** please read the detailed process on our [**development page**](.github/DEVELOPMENT.md)

### Packaging Distribution

To package the project for distribution on NPM the following command will build the project and bundle it using rollup. This package will be generated into the `./dist` directory, and can be then imported into another project. This is also helpful if you want to hack or mod the library with some custom code. It will allow you to use your own build directly in another project, rather then the NPM version.

```sh
# build the project and package bundled version
npm package
```

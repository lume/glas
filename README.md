<!-- # GLAS -->

# <a href="//lume.io"><img src="./assets/logo.svg" width="200" alt="LUME" title="LUME" /></a>

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

![](https://github.com/lume/glas/workflows/Node%20CI/badge.svg)

> #### ⚠️ ALPHA STATE

The project is currently in its very early alpha stages. We have an amazing
group of programmers building the initial
[**ASWebGLue**](https://github.com/lume/ASWebGLue) library. This library allows
AssemblyScript programs to call the browser's underlying WebGL interface. This
is required before we are able to render anything to the screen. A majority of the
Three.js libraries and their unit tests have been ported over.

See the current progress in the [**project
board**](https://github.com/lume/glas/projects) or review our
[**issues**](https://github.com/lume/glas/issues).

## Goal

Our initial port project board we're tracking all the classes that need to
be ported. The initial goal is to reproduce the following basic Three.js
demo, but entirely in AssemblyScript:

> **Initial Goal:** https://codepen.io/trusktr/pen/EzBKYM

## [Contribute](.github/CONTRIBUTING.md)

A brief overview of the work consists of picking a Three.js class, translating it
from _JavaScript_ (with TypeScript declaration files), and porting into _AssemblyScript_
(effectively merging the `.js` and `.d.ts` files).

Most logic can be ported unchanged, but sometimes there are features of plain
JS that AssemblyScript does not support. For example Assembly script does not
support `any` type. Three.js APIs that accept plain object literals with
arbitrary properties need to be converted into `class` structures with specific
property types. Additionally unit test files also need to be ported over from
`*.test.js` and into [**as-pect**](https://github.com/jtenner/as-pect)
`*.spec.ts` files.

If you would like to help, awesome! We are currently looking for help, testing,
and feedback. Please read about how to [**contribute**](.github/CONTRIBUTING.md) or view
a detailed [**example**](.github/CONTRIBUTING.md#example-of-dev-process) of how to port some of the
code.

## How It Works

We have an HTML page that loads the glas WebAssembly module and runs it, but so
far this module only instantiates an
[`Object3D`](https://threejs.org/docs/index.html#api/en/core/Object3D) instance
to show that we're able to run the module.

Later we'll eventually connect the module to a `<canvas>` element in the DOM
and actually render something.

### Build & Run

To run the example GLAS application in your browser use the following command:

```sh
# install or update dependencies
npm install

# build and serve the project in browser
npm start
```

Now see the devtools console in your browser tab for some output that tell us
that our GLAS program has been loaded and initialized.

> NOTE: the project does not currently have a watch mode with automatic
> rebuild. So you will need to execute `npm run build` again and then refresh
> to see the changes.

Our goal is to get GLAS distributed as a library on NPM so that you can include
into your own AssemblyScript application. Until this is implemented, you can
add your application code into the `src/as/index.ts` AssemblyScript file. This
is currently the entry point for GLAS.

### Testing

Unit testing is handled by the
[**as-pect**](https://github.com/jtenner/as-pect) test runner for
AssemblyScript. It is based on Mocha testing API with similar `describe` and
`it` functions, etc.

To run the tests, run the following commands in your terminal:

```sh
# run unit tests
npm test
```

The console output should report which tests pass and which tests fail.

## [Development](.github/DEVELOPMENT.md)

If you are interested in developing **GLAS** please read the detailed process
on our [**development page**](.github/DEVELOPMENT.md)

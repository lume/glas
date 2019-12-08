# glas

[![Join the chat at https://gitter.im/infamous/glas](https://badges.gitter.im/infamous/glas.svg)](https://gitter.im/infamous/glas?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Web**GL** in WebAssembly with **A**ssembly**S**cript.

This is a work-in-progress port of [Three.js](https://threejs.org), a
JavaScript 3D WebGL library, to
[AssemblyScript](https://assemblyscript.org).

## motivation

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

At the moment nothing renders to the screen yet, but we have already ported a
number of Three.js classes to AssemblyScript along with their unit tests, and
are making progress towards having a first demo.

## get started

To run the tests, run the following commands in your terminal:

```sh
# install dependencies
npm install

# run unit tests
npm test
```

We have an HTML page that loads the glas WebAssembly module and runs it, but
so far this module only instantiates an
[`Object3D`](https://threejs.org/docs/index.html#api/en/core/Object3D)
instance to show that we're able to run the module.

Later we'll eventually connect the module to a `<canvas>` element in the DOM
and actually render something.

To run the HTML page, run the following:

```sh
# build the project
npm run build

# finally serve the files, which opens your browser:
npm run serve
```

Now see the devtools console in your browser tab.

After editing code, you'll need to execute `npm run build` again and then
refresh to see the changes. TODO: add a watch mode with automatic rebuild and
browser refresh.

## development workflow

The process we have been taking so far is choosing a class from Three.js, and
sticking it into the `src/as/` folder. The file structure in `src/as/`
matches with the same file structure as in the [Three.js `src/`
folder](https://github.com/mrdoob/three.js/tree/dev/src).

The gist:

-   choose a file from the Three.js repo
-   copy it into the same structure as the Three.js repo, with a `.ts` extension, and in `src/as/` instead of just `src/` (we may have already pasted the file in our repo, check for that)
-   copy the test associatged file from the Three.js repo, with a `.spec.ts` extensions, and place it sibling to the source file
-   after porting source and test code, run `npm test` to test it

For example, when we ported the `Object3D` class from [`src/core/Object3D.js`
in the Three.js
repo](https://github.com/mrdoob/three.js/blob/dev/src/core/Object3D.js), we
placed it in our repo as `src/as/core/Object3D.ts`, in the `src/as/` instead
of just `src/` in order to distinguish the AssemblyScript code from regular
TypeScript code in `src/ts/`. We took [`src/core/Object3D.d.ts` in the
Three.js
repo](https://github.com/mrdoob/three.js/blob/dev/src/core/Object3D.d.ts) as
a starting point for the types, merging the types into the same file.
Basically we merged both `src/core/Object3D.js` and `src/core/Object3D.d.ts`
from the Three.js repo into a single `src/as/core/Object3D.ts` file in our
repo. We converted `function`-style classes in Three.js to `class`es in our
code.

Then we ported [`test/unit/src/core/Object3D.tests.js` from the Three.js
repo](https://github.com/mrdoob/three.js/blob/dev/test/unit/src/core/Object3D.tests.js)
and made it a sibling file of our Object3D.ts file, at
`src/as/core/Object3D.spec.ts`. We prefer to co-locate test files as siblings
of the source files, making them easier to navigate. Porting test code
involves converting from `QUnit`-style tests to using `as-pect`-style
`describe`, `test`, and `expect` functions.

It's a learning process consisting of trial and error learning how
AssemblyScript works and adapting the JavaScript code to work in
AssemblyScript. Much of the code can remain mostly the same, but certain
things that work in JavaScript, like object literals, don't work in
AssemblyScript. In these cases we need to convert things like object literals
to strictly types instances constructed from newly-defined `class`es that had
not previously existed in the Three.js code base.

## project structure

```sh
project
  ├── build/ # contains build output after running `npm run build`. This structure mirrors that of the src/ folder.
  ├─┬ src/
  | ├─┬ as/ # contains AssemblyScript code which is compiled into a WebAssembly module. This code runs inside the WebAssembly environment. The code in here mirrors the structure the src/ folder in the Three.js repository.
  | | ├── index.ts # entry point for the WebAssembly module.
  | | └── tsconfig.json # AssemblyScript compiler settings for WebAssembly─side code
  | ├─┬ ts/ # contains TypeScript code which runs on the JavaScript side. This code loads and runs the WebAssembly module in an HTML page.
  | | ├── index.ts # entry point for JavaScript─side code
  | | └── tsconfig.json # TypeScript compiler settings for JavaScript─side code
  | ├── infra/ # contains infrastructure code (f.e. for the static file server)
  | └── index.html # the index file that will be served to your browser. This loads the JavaScript-side entry point, which in turn runs the WebAssembly module.
  └── *.* # any files at the root of the project are meta files like package.json, editorconfig, etc.
```

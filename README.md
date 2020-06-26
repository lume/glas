# glas

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

## status

At the moment nothing renders to the screen yet, but we have already ported a
number of Three.js classes to AssemblyScript along with their unit tests, and
are making progress towards having a first demo.

See the current progress in the [project board](https://github.com/lume/glas/projects).

In the Initial Port project board we're tracking all the classes that need to
be ported. The initial goal is to reproduce the following basic Three.js
demo, but entirely AssemblyScript:

https://codepen.io/trusktr/pen/EzBKYM

## get involved

The work currently consists of picking a Three.js class and re-writing it
from JavaScript (with TypeScript declaration files) to AssemblyScript
(effectively merging the `.js` and `.d.ts` files).

Most logic can be ported unchanged, but sometimes there are features of plain
JS that AssemblyScript does not support, in which case we need to re-write it
in a different way. As an example, APIs that accept plain object literals
with arbitrary properties are not acceptable in AssemblyScript. Such things
need to be ported to structures that have specific shapes defined with
`class`es.

We also port over the `*.test.js` files that contain unit tests, and rename
them to `*.spec.ts` files.

As an example, the Three.js files `src/math/Matrix4.js`,
`src/math/Matrix4.d.ts`, and `test/unit/math/Matrix4.tests.js` get ported to
the glas equivalent of `src/as/math/Matrix4.ts` and
`src/as/math/Matrix4.spec.ts`.

For comparison, see the original files from Three.js,

-   [`three.js/src/math/Matrix4.js`](https://github.com/mrdoob/three.js/blob/r105/src/math/Matrix4.js)
-   [`three.js/src/math/Matrix4.d.ts`](https://github.com/mrdoob/three.js/blob/r105/src/math/Matrix4.d.ts)
-   [`three.js/test/unit/math/Matrix4.tests.js`](https://github.com/mrdoob/three.js/blob/r105/test/unit/src/math/Matrix4.tests.js)

and the ported files within glas:

-   [`glas/src/as/math/Matrix4.ts`](https://github.com/lume/glas/blob/3e9c3370c3d90cc0b0ceefceae79c39885cd803b/src/as/math/Matrix4.ts)
-   [`glas/src/as/math/Matrix4.spec.ts`](https://github.com/lume/glas/blob/3e9c3370c3d90cc0b0ceefceae79c39885cd803b/src/as/math/Matrix4.spec.ts)

Once a set of Three.js files (`.js`, `.d.ts`, and `.tests.js`) are ported, we
can run the unit tests (or more conveniently run them as we go during
porting).

To run the tests, run the following commands in your terminal:

```sh
# make sure dependencies are installed first
npm install

# run unit tests
npm test
```

The output will tell you which tests pass and which tests fail.

<!--
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
-->

## development process in more detail

The process we have been taking so far is choosing a class from Three.js, and
sticking it into the `src/as/` folder. The file structure in `src/as/`
matches with the same file structure as in the [Three.js `src/`
folder](https://github.com/mrdoob/three.js/tree/r105/src).

The gist of the development process is:

-   choose a file from the Three.js repo
-   copy it into the same structure as the Three.js repo, with a `.ts`
    extension, and in `src/as/` instead of just `src/` (someone may have already
    pasted the Three.js file in our repo, check for that)
-   copy the test associated with the file from the Three.js repo, but with a
    `.spec.ts` extension, and place it as a sibling to the source file
-   port the code for the source and tests of the chosen file. You can take the
    type definitions from the Three.js `.d.ts` files which are sibling to the
    `.js` files, and use those to help create the merged TypeScript
    (AssemblyScript) code.
-   after porting source and test code, run `npm test` to test it

For example, when we ported the `Object3D` class from [`src/core/Object3D.js`
in the Three.js
repo](https://github.com/mrdoob/three.js/blob/r105/src/core/Object3D.js), we
placed it in our repo as [`src/as/core/Object3D.ts`](https://github.com/lume/glas/blob/3e9c3370c3d90cc0b0ceefceae79c39885cd803b/src/as/core/Object3D.ts), inside of `src/as/`
instead of just `src/` in order to distinguish the AssemblyScript code from
regular TypeScript code in `src/ts/`. We took [`src/core/Object3D.d.ts` in
the Three.js
repo](https://github.com/mrdoob/three.js/blob/r105/src/core/Object3D.d.ts) as
a starting point for the types, merging the types into the same file.

Basically we merged both `src/core/Object3D.js` and `src/core/Object3D.d.ts`
from the Three.js repo into a single `src/as/core/Object3D.ts` file in our
repo.

During porting, we need to convert all `function`-style classes from the
Three.js source to `class` syntax in our code.

Then we ported [`test/unit/src/core/Object3D.tests.js` from the Three.js
repo](https://github.com/mrdoob/three.js/blob/r105/test/unit/src/core/Object3D.tests.js)
and made it a sibling file of our `Object3D.ts` file, at
[`src/as/core/Object3D.spec.ts`](https://github.com/lume/glas/blob/3e9c3370c3d90cc0b0ceefceae79c39885cd803b/src/as/core/Object3D.spec.ts).
We prefer to co-locate test files as siblings of the source files, making
them easier to navigate.

As you can tell from comparing the test file from Three.js and the test file
in glas, porting test code involves converting from `QUnit`-style tests to
using `as-pect`-style `describe`, `test`, and `expect` functions. See
[`as-pect` documentation](https://github.com/jtenner/as-pect) for more
details on available APIs; basically as-pect's API similar to
[Mocha.js](https://mochajs.org)+[Chai](https://www.chaijs.com) or
[Jasmine](https://jasmine.github.io/index.html).

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

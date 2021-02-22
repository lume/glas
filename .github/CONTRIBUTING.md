# Contribute to GLAS

Thank you for your interest in developing GLAS.🤘

## Overview

This project uses TypeScript, JavaScript, and AssemblyScript, and compiles most
of the code into WebAssembly. We currently recommend using `Visual Studio Code`
development environment, Node.js, and npm for package management (ships with
Node.js), etc -- see below. For Mac users recommended tools include: iTerm
terminal, brew, and zsh shell.

### Recomended Reading

-   https://threejs.org/docs/index.html#manual/en/introduction/Creating-a-scene
-   https://www.assemblyscript.org/quick-start.html

### Important Links

-   [Project Board](https://github.com/lume/glas/projects)
-   [Work Sheet](https://docs.google.com/document/d/1CojZ_Rry3a1rQnXf8KJcSiOGodTP905CVRsU-uiWQjo)
-   [Our Goal](https://codepen.io/trusktr/pen/EzBKYM)

## Prerequistes

### Soft Skills

-   Basic knowledge of 3D Objects and Rendering.
-   Fundamentals of AGILE processes, open source protocols, git.
-   Ability to make [pull requests](https://guides.github.com/activities/hello-world/) on GitHub to share code changes.
-   Proficency with the NodeJS ecosystem and ECMAScript.
-   Asking questions, no question is dumb. This stuff is uncharted.
-   Is human and breathing; sorry no zombies. =[

### Software Requirements

-   [Visual Studio Code](https://code.visualstudio.com/) (or IDE of your choice)
-   [`node` 14.x](https://nodejs.org/en/download/)
-   `npm` comes with Node. If you're in Linux, some distros ship is separately.
-   [`git`](https://git-scm.com/downloads)

## Getting Started

### Checkout Code

First we need to clone (https://github.com/lume/glas) into a cozy spot in your
`~/code` or wherever you work from. You can also clone from your own fork of
the repository.

```bash
   cd ~/code
   bash git clone https://github.com/lume/glas
```

### Project Structure

We try to keep the project root simple and free of clutter. Below is brief
overview of the organization of the project files and directories.

```sh
project
  ├── dist/ # contains build output after running `npm run build`. This structure mirrors that of the src/ folder.
  ├── examples/ # Examples that use the glas library.
  ├─┬ src/
  | ├─┬ as/ # contains AssemblyScript code which is compiled into a WebAssembly module. This code runs inside the WebAssembly environment. The code in here mirrors the structure the src/ folder in the Three.js repository.
  | | ├── index.ts # entry point for the WebAssembly module.
  | | └── tsconfig.json # AssemblyScript compiler settings for WebAssembly─side code
  | └─┬ ts/ # contains TypeScript code which runs on the JavaScript side. This code loads and runs the WebAssembly module in an HTML page.
  |   ├── index.ts # entry point for JavaScript─side code
  |   └── tsconfig.json # TypeScript compiler settings for JavaScript─side code
  └── *.* # any files at the root of the project are meta files like package.json, editorconfig, etc.
```

### Dependencies

Currently the only runtime depenedency that we rely on is
[**ASWebGLue**](https://github.com/lume/ASWebGLue) which handles the underlying
WebGL bindings. This library provides a `WebGL.ts` module that GLAS imports.
ASWebGLue also has JS glue code that gets passed into our GLAS modules via
import objects. Basically we make a WebGL calls from our program which makes a
native JavaScript calls to the JS-side WebGL functions. Pretty neat right! It
is important to note that GLAS and ASWebGLue are both compiled directly into
your AS program. ASWebGLue is not a _standalone_ runtime dependency; it is not
a standalone Wasm module that is separately loaded.

## Example of dev process

As an example, the Three.js files `src/math/Matrix4.js`,
`src/math/Matrix4.d.ts`, and `test/unit/math/Matrix4.tests.js` got ported to
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
can run the unit tests (or run them as we go during porting).

You can read more about this on the [**Development**](DEVELOPMENT.md) page

# Contribute to GLAS

Thank you for your interest in developing GLAS.🤘

## Overview

This project uses typescript, javascript, and assembly script which compiles into web assembly. We currently recommend using `Visual Studio Code` development environment
,yarn for package management, and requires node and typescript module etc -- see below. For Mac users recommended tools include: iTerm terminal, brew, and zsh shell.

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
-   Fundamentals of AGILE processes, open source protocols, and git.
-   Proficency with the NodeJS ecosystem and ECMAScripten.
-   Asking questions, no question is dumb. This stuff is uncharted.
-   Is human and breathing; sorry no zombies =[

### Software Requirements

-   [Visual Studio Code](https://code.visualstudio.com/) (or IDE of your choice)
-   [node 14.x](https://nodejs.org/en/download/)
-   [yarn](https://classic.yarnpkg.com/en/docs/install#mac-stable)
-   [git-scm](https://git-scm.com/downloads)

## Getting Started

### Checkout Code

First we need to clone (https://github.com/lume/glas) into a cozy spot in your `~/code` or wherever you work from. You can also clone from your own fork of the
repository.

```bash
   cd ~/code
   bash git clone https://github.com/lume/glas
```

### Project Structure

We try to keep the project root simple and free of clutter. Below is breif overview of the organization of the project files and directories.

```sh
project
  ├── dist/ # contains build output after running `npm run build`. This structure mirrors that of the src/ folder.
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

### Dependencies

Currently the only runtime depenedency that we rely on is the [**ASWebGLue**](https://github.com/lume/ASWebGLue) which handles the underlying WebGL bindings. This library provides us with a `webgl.ts` typescript module that the AssemblyScript Compiler links to our project when importing it into our AssemblyScript GLAS program. The library also addes these interfaces into our WASM import object that gets loaded into our browser. Basically we make a WebGL call from our program which makes a native javascript call to the underlying WebGL function. Pretty neat right! Lastly its important to note that **ASWebGLue** is compiled directly into the distributed GLAS library and your program. It is not a _standalone_ dependency that is externally loaded.

## Example [](#example)

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

You can read more about this on the [**Development**](DEVELOPMENT.md) page

# Development Process

The porting process is a learning process consisting of trial and error
learning how AssemblyScript works and adapting the JavaScript code to work in
AssemblyScript. Much of the code can remain mostly the same, but certain
things that work in JavaScript, like object literals, don't work in
AssemblyScript. In these cases we've needed to convert things like object
literals to strictly typed instances constructed from `class`es that we
defined and which had not previously existed in the Three.js code base.

For example, functions accepting options objects like

```js
function someFunction(options) {
	// ...
}
someFunction({ option1: 'foo', option2: 'bar' })
```

have been converted to a strictly typed equivalent like so:

```ts
class SomeFunctionOptions {
	option1: string
	option2: string
}
function someFunction(options: SomeFunctionOptions) {
	// ...
}
someFunction({ option1: 'foo', option2: 'bar' } as SomeFunctionOptions)
// or
const options = new SomeFunctionOptions()
options.option1 = 'foo'
options.option2 = 'bar'
someFunction(options)
```

We've also needed to convert Three.js `function`-style classes to `class`
syntax in the AS code. For example, a classes like

```js
function Mesh() {
	Object3D.call(this)
	// ...
}

Mesh.prototype = Object.create(Object3D.prototype, {
	someMethod() {
		// ...
	},
})
```

have been be converted to `class`es of the form

```js
class Mesh extends Object3D {
	constructor() {
		super()
		// ...
	}

	someMethod() {
		// ...
	}
}
```

The
[`EventDispatcher`](https://github.com/lume/glas/blob/3e9c3370c3d90cc0b0ceefceae79c39885cd803b/src/as/core/EventDispatcher.ts)
class is a prime example that needed some refactoring to allow for strict
typing to work within the confines of AssemblyScript. For example, in
Three.js, listening to and dispatching an event looks like the following:

```js
obj.addEventListener('didSomething', event => {
	log(event.target === obj) // true
	log(event.foo) // 123
	log(event.lorem) // 456
})
obj.dispatchEvent({ type: 'didSomething', foo: 123, bar: 456 })
```

As passing object literals like that doesn't work in AssemblyScript (because we
do not know what properties someone would want to pass within an event), we
changed the API to look like this:

```ts
class SomeThing extends Listener {
	// listeners must be objects with a handleEvent method.
	handleEvent(e: Event) {
		if (e.type == 'didSomething' && e.target === obj) {
			log(event.target === obj) // true

			// we need to use a conditional statement so that AssemblyScript can
			// narrow the type of event.attachment to that which we expect.
			const attachment = event.attachment
			if (attachment instanceof SomethingEventAttachment) {
				log(event) // 123
				log(event.lorem) // 456
			}
		}
	}
}

const listener = new SomeThing()

obj.addEventListener('didSomething', listener)

class SomethingEventAttachment {
	foo: f64
	bar: f64
}

const attachment: SomethingEventAttachment = { foo: 123, bar: 456 }

obj.dispatchEvent(new Event('didSomething', obj, attachment))
```

We will improve the Event API over time, but that's the initial draft. Once
AssemblyScript releases the function closures feature, we can switch back
to passing functions, instead of objects with `handleEvent` methods.

The process so far involves choosing a class from Three.js and
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

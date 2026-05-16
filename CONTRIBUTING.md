# Contributing

## Running Tests

This project uses [as-pect](https://github.com/jtenner/as-pect) for testing. Test files are `.spec.ts` files located alongside the source code.

To import a spec file for testing, add it to the test entry point at `src/as/index.spec.ts`:

```ts
import './path/to/your.spec'
```

All `.spec.ts` files must be explicitly imported — the test runner does not auto-discover spec files.

Run all tests with:

```sh
npm test
```

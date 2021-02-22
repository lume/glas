import { loadWasmModule } from './loadWasmModule.js';
/** Given a URL with slashes pointing to a file, the second to last part is considered to be the dir of the url. */
function dirname(url) {
    if (typeof url === 'string')
        url = new URL(url);
    const folders = url.pathname.split('/');
    return folders[folders.length - 2] || '/';
}
export async function runGlas(options = {}) {
    var _a;
    const module = (_a = options.module) !== null && _a !== void 0 ? _a : dirname(import.meta.url) + `../as/glas-${options.mode || 'optimized'}.wasm`;
    const start = performance.now();
    // this is currently broken, and we need a better way to test this out.
    const { exports: { main, __getString }, } = await loadWasmModule(module, {
        env: {
            // this is called by `assert()`ions in the AssemblyScript std libs.
            // Useful for debugging.
            abort(msg, file, line, column) {
                console.log(`msg: ${(msg && __getString(msg)) || msg}\n`, `file: ${(file && __getString(file)) || file}\n`, `line: ${line}\n`, `col: ${column}\n`);
            },
        },
        console: {
            log(msg) {
                console.log(`msg: ${(msg && __getString(msg)) || msg}`);
            },
        },
    });
    const end = performance.now();
    console.log(options.mode + ' module load time:', end - start);
    const start2 = performance.now();
    main();
    const end2 = performance.now();
    console.log(options.mode + ' run time:', end2 - start2);
}
//# sourceMappingURL=index.js.map
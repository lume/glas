import { instantiate } from '@lume/as-loader/index.js';
export async function run(options) {
    let module = options.module;
    if (typeof module === 'string')
        module = fetch(module);
    const start = performance.now();
    const { exports: { main, __getString }, } = await instantiate(module, {
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
    console.log('Module load time:', end - start);
    const start2 = performance.now();
    main();
    const end2 = performance.now();
    console.log('Module run time:', end2 - start2);
}
//# sourceMappingURL=index.js.map
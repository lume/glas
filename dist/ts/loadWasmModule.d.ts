export declare function loadWasmModule<T extends Record<keyof T, unknown>>(file: string, imports: any): Promise<import("@assemblyscript/loader").ResultObject & {
    exports: import("@assemblyscript/loader").ASUtil & T;
}>;
//# sourceMappingURL=loadWasmModule.d.ts.map
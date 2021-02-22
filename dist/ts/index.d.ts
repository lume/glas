declare type RunOptions = {
    mode?: 'optimized' | 'untouched';
    module?: string;
};
declare global {
    interface ImportMeta {
        url: string;
    }
}
export declare function runGlas(options?: RunOptions): Promise<void>;
export {};
//# sourceMappingURL=index.d.ts.map
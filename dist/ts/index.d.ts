import { instantiate } from '@lume/as-loader/index.js';
type ModuleSource = string | Parameters<typeof instantiate>[0];
type RunOptions = {
    module: ModuleSource;
};
declare global {
    interface ImportMeta {
        url: string;
    }
}
export declare function run(options: RunOptions): Promise<void>;
export {};
//# sourceMappingURL=index.d.ts.map
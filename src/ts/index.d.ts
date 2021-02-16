export type GlasModule = {
    main(): void
}
export type RunOptions = { mode: string }
export declare function runGlas(options: RunOptions): void
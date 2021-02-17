export type GlasModule = {
    main(): void
}
export type RunOptions = { mode: string }
export function runGlas(options: RunOptions): void
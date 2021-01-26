// this file import things passed in from JS, and exports them for use by other
// AS modules.

// @ts-ignore
// prettier-ignore
@external("console", "log")
declare function log(...data: any[]): void

export {log}

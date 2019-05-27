// this file import things passed in from JS, and exports them for use by other
// AS modules.

// @ts-ignore
// prettier-ignore
@external("env", "getFour")
declare function getFour(): i32

export {getFour}

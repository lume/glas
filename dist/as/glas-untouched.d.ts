type i8 = number;
type i16 = number;
type i32 = number;
type i64 = bigint;
type isize = number;
type u8 = number;
type u16 = number;
type u32 = number;
type u64 = bigint;
type usize = number;
type f32 = number;
type f64 = number;
type bool = boolean | number;
export class Layers {
  static wrap(ptr: usize): Layers;
  valueOf(): usize;
  mask: u32;
  set(layer: i32): void;
  enable(layer: i32): void;
  toggle(layer: i32): void;
  disable(layer: i32): void;
  test(layers: usize): bool;
  constructor();
}
export class Object3D {
  static wrap(ptr: usize): Object3D;
  valueOf(): usize;
  static DefaultMatrixAutoUpdate: bool;
  id: i32;
  name: usize;
  type: usize;
  parent: usize;
  children: usize;
  readonly position: usize;
  readonly rotation: usize;
  readonly quaternion: usize;
  readonly scale: usize;
  readonly modelViewMatrix: usize;
  matrix: usize;
  matrixWorld: usize;
  matrixAutoUpdate: bool;
  matrixWorldNeedsUpdate: bool;
  layers: usize;
  visible: bool;
  castShadow: bool;
  receiveShadow: bool;
  frustumCulled: bool;
  renderOrder: f32;
  readonly isObject3D: bool;
  isCamera: bool;
  protected isLight: bool;
  constructor();
  onBeforeRender: usize;
  onAfterRender: usize;
  add(object: usize): usize;
  remove(object: usize): usize;
  traverse(callback: usize): void;
  updateMatrix(): void;
  updateMatrixWorld(force?: bool): void;
}
export class Box3 {
  static wrap(ptr: usize): Box3;
  valueOf(): usize;
  max: usize;
  min: usize;
  readonly isBox3: bool;
  constructor(min?: usize, max?: usize);
  set(min: usize, max: usize): usize;
  setFromPoints(points: usize): usize;
  clone(): usize;
  copy(box: usize): usize;
  makeEmpty(): usize;
  isEmpty(): bool;
  getCenter(target: usize): usize;
  getSize(target: usize): usize;
  expandByPoint(point: usize): usize;
  expandByScalar(scalar: f32): usize;
  applyMatrix4(matrix: usize): usize;
  translate(offset: usize): usize;
  equals(box: usize): bool;
}
export function compareBox(a: usize, b: usize, threshold?: f32): bool;
export class HSL {
  static wrap(ptr: usize): HSL;
  valueOf(): usize;
  h: f32;
  s: f32;
  l: f32;
  constructor();
}
export class Colors {
  static wrap(ptr: usize): Colors;
  valueOf(): usize;
  static aliceblue: i32;
  static antiquewhite: i32;
  static aqua: i32;
  static aquamarine: i32;
  static azure: i32;
  static beige: i32;
  static bisque: i32;
  static black: i32;
  static blanchedalmond: i32;
  static blue: i32;
  static blueviolet: i32;
  static brown: i32;
  static burlywood: i32;
  static cadetblue: i32;
  static chartreuse: i32;
  static chocolate: i32;
  static coral: i32;
  static cornflowerblue: i32;
  static cornsilk: i32;
  static crimson: i32;
  static cyan: i32;
  static darkblue: i32;
  static darkcyan: i32;
  static darkgoldenrod: i32;
  static darkgray: i32;
  static darkgreen: i32;
  static darkgrey: i32;
  static darkkhaki: i32;
  static darkmagenta: i32;
  static darkolivegreen: i32;
  static darkorange: i32;
  static darkorchid: i32;
  static darkred: i32;
  static darksalmon: i32;
  static darkseagreen: i32;
  static darkslateblue: i32;
  static darkslategray: i32;
  static darkslategrey: i32;
  static darkturquoise: i32;
  static darkviolet: i32;
  static deeppink: i32;
  static deepskyblue: i32;
  static dimgray: i32;
  static dimgrey: i32;
  static dodgerblue: i32;
  static firebrick: i32;
  static floralwhite: i32;
  static forestgreen: i32;
  static fuchsia: i32;
  static gainsboro: i32;
  static ghostwhite: i32;
  static gold: i32;
  static goldenrod: i32;
  static gray: i32;
  static green: i32;
  static greenyellow: i32;
  static grey: i32;
  static honeydew: i32;
  static hotpink: i32;
  static indianred: i32;
  static indigo: i32;
  static ivory: i32;
  static khaki: i32;
  static lavender: i32;
  static lavenderblush: i32;
  static lawngreen: i32;
  static lemonchiffon: i32;
  static lightblue: i32;
  static lightcoral: i32;
  static lightcyan: i32;
  static lightgoldenrodyellow: i32;
  static lightgray: i32;
  static lightgreen: i32;
  static lightgrey: i32;
  static lightpink: i32;
  static lightsalmon: i32;
  static lightseagreen: i32;
  static lightskyblue: i32;
  static lightslategray: i32;
  static lightslategrey: i32;
  static lightsteelblue: i32;
  static lightyellow: i32;
  static lime: i32;
  static limegreen: i32;
  static linen: i32;
  static magenta: i32;
  static maroon: i32;
  static mediumaquamarine: i32;
  static mediumblue: i32;
  static mediumorchid: i32;
  static mediumpurple: i32;
  static mediumseagreen: i32;
  static mediumslateblue: i32;
  static mediumspringgreen: i32;
  static mediumturquoise: i32;
  static mediumvioletred: i32;
  static midnightblue: i32;
  static mintcream: i32;
  static mistyrose: i32;
  static moccasin: i32;
  static navajowhite: i32;
  static navy: i32;
  static oldlace: i32;
  static olive: i32;
  static olivedrab: i32;
  static orange: i32;
  static orangered: i32;
  static orchid: i32;
  static palegoldenrod: i32;
  static palegreen: i32;
  static paleturquoise: i32;
  static palevioletred: i32;
  static papayawhip: i32;
  static peachpuff: i32;
  static peru: i32;
  static pink: i32;
  static plum: i32;
  static powderblue: i32;
  static purple: i32;
  static rebeccapurple: i32;
  static red: i32;
  static rosybrown: i32;
  static royalblue: i32;
  static saddlebrown: i32;
  static salmon: i32;
  static sandybrown: i32;
  static seagreen: i32;
  static seashell: i32;
  static sienna: i32;
  static silver: i32;
  static skyblue: i32;
  static slateblue: i32;
  static slategray: i32;
  static slategrey: i32;
  static snow: i32;
  static springgreen: i32;
  static steelblue: i32;
  static tan: i32;
  static teal: i32;
  static thistle: i32;
  static tomato: i32;
  static turquoise: i32;
  static violet: i32;
  static wheat: i32;
  static white: i32;
  static whitesmoke: i32;
  static yellow: i32;
  static yellowgreen: i32;
  constructor();
}
export class Color {
  static wrap(ptr: usize): Color;
  valueOf(): usize;
  r: f32;
  g: f32;
  b: f32;
  constructor(r?: f32, g?: f32, b?: f32);
  readonly isColor: bool;
  setScalar(scalar: f32): usize;
  setHex(hex: i32): usize;
  setRGB(r: f32, g: f32, b: f32): usize;
  clone(): usize;
  copy(color: usize): usize;
  copyGammaToLinear(color: usize, gammaFactor?: f32): usize;
  copyLinearToGamma(color: usize, gammaFactor?: f32): usize;
  convertGammaToLinear(gammaFactor?: f32): usize;
  convertLinearToGamma(gammaFactor?: f32): usize;
  copySRGBToLinear(color: usize): usize;
  copyLinearToSRGB(color: usize): usize;
  convertSRGBToLinear(): usize;
  convertLinearToSRGB(): usize;
  getHex(): i32;
  getHexString(): usize;
  getStyle(): usize;
  add(color: usize): usize;
  addColors(color1: usize, color2: usize): usize;
  addScalar(s: f32): usize;
  sub(color: usize): usize;
  multiply(color: usize): usize;
  multiplyScalar(s: f32): usize;
  lerp(color: usize, alpha: f32): usize;
  equals(c: usize): bool;
  fromArray(array: usize, offset?: i32): usize;
  toArray(array?: usize, offset?: i32): usize;
  toJSON(): i32;
}
export enum EulerRotationOrder {
  XYZ,
  YZX,
  ZXY,
  XZY,
  YXZ,
  ZYX,
}
export class Euler {
  static wrap(ptr: usize): Euler;
  valueOf(): usize;
  static DefaultOrder: i32;
  readonly isEuler: bool;
  _x: f32;
  _y: f32;
  _z: f32;
  _order: i32;
  constructor(x?: f32, y?: f32, z?: f32, order?: i32);
  get x(): f32;
  set x(value: f32);
  get y(): f32;
  set y(value: f32);
  get z(): f32;
  set z(value: f32);
  get order(): i32;
  set order(value: i32);
  onChangeCallback: usize;
  set(x: f32, y: f32, z: f32, order?: i32): usize;
  clone(): usize;
  copy(euler: usize): usize;
  setFromRotationMatrix(m: usize, order?: i32, update?: bool): usize;
  setFromQuaternion(q: usize, order?: i32, update?: bool): usize;
  setFromVector3(v: usize, order?: i32): usize;
  equals(euler: usize): bool;
  toVector3(optionalResult?: usize): usize;
  onChange(callback: usize): usize;
}
export function eulerEquals(a: usize, b: usize, tolerance?: f32): bool;
export class Frustum {
  static wrap(ptr: usize): Frustum;
  valueOf(): usize;
  planes: usize;
  constructor(p0?: usize, p1?: usize, p2?: usize, p3?: usize, p4?: usize, p5?: usize);
  set(p0: usize, p1: usize, p2: usize, p3: usize, p4: usize, p5: usize): usize;
  clone(): usize;
  copy(frustum: usize): usize;
  setFromProjectionMatrix(m: usize): usize;
  intersectsSphere(sphere: usize): bool;
  intersectsBox(box: usize): bool;
  containsPoint(point: usize): bool;
}
export function log(msg: usize): void;
export const memory: WebAssembly.Memory;
export const table: WebAssembly.Table;
export const __setArgumentsLength: ((n: i32) => void) | undefined;

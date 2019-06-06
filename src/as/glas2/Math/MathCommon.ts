/**
 * Constant used to convert a value to gamma space
 * @ignorenaming
 */
export const ToGammaSpace = 1 / 2.2;
/**
 * Constant used to convert a value to linear space
 * @ignorenaming
 */
export const ToLinearSpace = 2.2;
/**
 * Constant used to define the minimal number value in Babylon.js
 * @ignorenaming
 */
let Epsilon = 0.001;
export { Epsilon };

//TODO: Delete this once Viewport is created.
export class Viewport {
    public width: f64;
    public height: f64;
    public x: f64;
    public y: f64;
}


import {BezierCurve} from './BezierCurve'



describe('BezierCurve', (): void => {
    describe('.Interpolate', (): void => {
        test('static function should return 22.80422097666149 when passed (5, 10, 50, 10, 50)', 
        (): void => {
            let expected = 22.80422097666149
            let result = BezierCurve.Interpolate(5, 10, 50, 10, 50)	
            expect<f64>(result).toBe(expected)
        })
    })
})

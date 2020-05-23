class Solution {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        let r = dividend / divisor
        if r > Int32.max { return Int(Int32.max) }
        if r < Int32.min { return Int(Int32.min) }
        return r
    }
}
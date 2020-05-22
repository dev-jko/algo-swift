class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var result = 0
        var n = n
        while n > 0 {
            result += n & 1
            n >>= 1
        }
        return result
    }
}
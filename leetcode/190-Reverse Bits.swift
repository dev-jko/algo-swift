class Solution {
    func reverseBits(_ n: Int) -> Int {
        var result = 0
        var n = n
        for _ in 0..<32 {
            result <<= 1
            if n & 1 == 1 { result += 1 }
            n >>= 1
        }
        return result
    }
}
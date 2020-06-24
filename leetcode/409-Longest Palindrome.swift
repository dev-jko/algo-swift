class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var map = [Character: Int]()
        for c in s {
            map[c] = (map[c] ?? 0) + 1
        }
        var odd = false
        var result = 0
        for (_, v) in map {
            if v % 2 == 0 {
                result += v
                continue
            }
            result += v - 1
            if !odd { odd = true }
        }
        return result + (odd ? 1 : 0)
    }
}
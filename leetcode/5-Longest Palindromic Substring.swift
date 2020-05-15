class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.isEmpty { return "" }
        let s = Array(s)
        var result: (Int, Int, Int) = (1, 0, 0)
        for i in 0..<s.count {
            var (j, k) = (i, i + 1)
            while j >= 0 && k < s.count {
                guard s[j] == s[k] else { break }
                if result.0 <= k - j { result = (k - j + 1, j, k)}
                j -= 1
                k += 1
            }
            (j, k) = (i - 1, i + 1)
            while j >= 0 && k < s.count {
                guard s[j] == s[k] else { break }
                if result.0 <= k - j { result = (k - j + 1, j, k)}
                j -= 1
                k += 1
            }
        }
        return String(s[result.1...result.2])
    }
}
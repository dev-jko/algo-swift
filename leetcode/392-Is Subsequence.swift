class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let s = Array(s), t = Array(t)
        var i = 0, j = 0
        while i < s.count, j < t.count {
            while j < t.count, s[i] != t[j] { j += 1 }
            guard j < t.count, s[i] == t[j] else { return false }
            i += 1
            j += 1
        }
        return i == s.count
    }
}
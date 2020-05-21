class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard s.count > 1 else { return true }
        let s = Array(s)
        var (start, end) = (0, s.count - 1)
        while start < end {
            while !(start >= end || s[start].isLetter || s[start].isNumber) { start += 1 }
            while !(start >= end || s[end].isLetter || s[end].isNumber) { end -= 1 }
            if s[start].lowercased() != s[end].lowercased() { return false }
            start += 1
            end -= 1
        }
        return true
    }
}
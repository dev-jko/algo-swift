class Solution {
    private let vowels: Set<Character> = Set("aeiouAEIOU")
    func reverseVowels(_ s: String) -> String {
        guard s.count > 1 else { return s }
        var start = 0, end = s.count - 1
        var s = Array(s)
        while true {
            while start < end && !vowels.contains(s[start]) { start += 1 }
            while start < end && !vowels.contains(s[end]) { end -= 1 }
            guard start < end else { break }
            (s[start], s[end]) = (s[end], s[start])
            start += 1
            end -= 1
        }
        return String(s)
    }
}
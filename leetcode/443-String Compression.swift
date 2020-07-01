class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        guard !chars.isEmpty else { return 0 }
        var j = 0, k = 0
        for i in 0...chars.count {
            guard i == chars.count || chars[i] != chars[k] else { continue }
            chars[j] = chars[k]
            j += 1
            if i - k > 1 {
                for c in "\(i - k)" {
                    chars[j] = c
                    j += 1
                }
            }
            k = i
        }
        return j
    }
}
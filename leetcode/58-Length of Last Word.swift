class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        if s.isEmpty { return 0 }
        var count = 0
        for c in s.reversed() {
            if c != " " {
                count += 1
                continue
            }
            else if count != 0 { return count }
        }
        return 0
    }
}
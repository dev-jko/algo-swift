class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var map = [Character: Int]()
        for c in s {
            map[c] = (map[c] ?? 0) + 1
        }
        for (i, c) in s.enumerated() {
            guard map[c] != 1 else { return i }
        }
        return -1
    }
}
class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        guard !ransomNote.isEmpty else { return true }
        guard ransomNote.count <= magazine.count else { return false }
        var map = [Character: Int]()
        for c in magazine {
            map[c] = (map[c] ?? 0) + 1
        }
        for c in ransomNote {
            guard (map[c] ?? 0) > 0 else { return false }
            map[c] = map[c]! - 1
        }
        return true
    }
}
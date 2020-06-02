import Foundation

class Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        guard !pattern.isEmpty, !str.isEmpty else { return false }
        let strs = str.components(separatedBy: " ")
        guard pattern.count == strs.count, Set(Array(pattern)).count == Set(strs).count else { return false }
        var map = [Character: String]()
        for (i, p) in pattern.enumerated() {
            if map[p] == nil { map[p] = strs[i] }
            else if map[p] != strs[i] { return false }
        }
        return true
    }
}
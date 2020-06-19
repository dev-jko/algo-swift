class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        let sum = t.map { $0.unicodeScalars.first!.value }.reduce(0, +)
        let diff = s.map { $0.unicodeScalars.first!.value }.reduce(sum, -)
        return Character(UnicodeScalar(diff)!)
    }
}

class Solution2 {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var map = [Character: Int]()
        for c in s {
            map[c] = (map[c] ?? 0) + 1
        }
        for c in t {
            guard let count = map[c] else { return c }
            map[c] = count - 1
        }
        for (k, v) in map {
            if v == -1 { return k }
        }
        return "a"
    }
}
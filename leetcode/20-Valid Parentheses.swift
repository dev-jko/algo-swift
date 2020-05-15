class Solution {
    func isValid(_ str: String) -> Bool {
        var s: [Character] = []
        for c in str {
            switch (c) {
                case "(": fallthrough
                case "[": fallthrough
                case "{": s.append(c)
                case ")":
                    guard s.last == "(" else { return false }
                    _ = s.popLast()
                case "]":
                    guard s.last == "[" else { return false }
                    _ = s.popLast()
                case "}":
                    guard s.last == "{" else { return false }
                    _ = s.popLast()
                default:
                    continue
            }
        }
        return s.isEmpty
    }
}
class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result: [String] = []

        func recur(_ m: Int, _ o: Int, _ r: String) {
            if !(m != n || o != 0) {
                result.append(r)
                return
            } else if m > n { return }
            if o > 0 { recur(m, o - 1, r + ")") }
            recur(m + 1, o + 1, r + "(")
        }

        recur(0, 0, "")
        return result
    }
}
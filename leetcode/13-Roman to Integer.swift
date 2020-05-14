class Solution {
    static let dict: [Character: Int] = ["I":1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    func romanToInt(_ s: String) -> Int {   
        var prev = 0
        var total = 0
        for c in s {
            let v = Solution.dict[c] ?? 0
            if v > prev { total += v - prev - prev }
            else { total += v }
            prev = v
        }
        return total
    }
}
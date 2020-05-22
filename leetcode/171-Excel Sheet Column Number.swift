class Solution {
    let number: [Character: Int] = ["A": 0, "B": 1, "C": 2, "D": 3,
        "E": 4, "F": 5, "G": 6, "H": 7, "I": 8, "J": 9, "K": 10,
        "L": 11, "M": 12, "N": 13, "O": 14, "P": 15, "Q": 16,
        "R": 17, "S": 18, "T": 19, "U": 20, "V": 21, "W": 22,
        "X": 23, "Y": 24, "Z": 25]
    func titleToNumber(_ s: String) -> Int {
        var result = 0
        for c in s {
            result = result * 26 + number[c]! + 1
        }
        return result
    }
}
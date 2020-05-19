class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var i = digits.count - 1
        var carry = 1
        while i >= 0 {
            digits[i] += carry
            if digits[i] >= 10 {
                carry = 1
                digits[i] -= 10
            } else { return digits }
            i -= 1
        }
        digits.insert(1, at: 0)
        return digits
    }
}
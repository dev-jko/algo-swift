class Solution {
    func addDigits(_ num: Int) -> Int {
        return 1 + (num - 1) % 9
    }
}

class Solution2 {
    func addDigits(_ num: Int) -> Int {
        var result = 0
        var num = num
        while num > 0 {
            result += num % 10
            num /= 10
        }
        if result >= 10 { return addDigits(result) }
        return result
    }
}
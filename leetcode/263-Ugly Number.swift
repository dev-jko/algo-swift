class Solution {
    func isUgly(_ num: Int) -> Bool {
        guard num > 1 else { return false }
        var num = num
        while num > 1 {
            if num % 2 == 0 { num /= 2 }
            else if num % 3 == 0 { num /= 3 }
            else if num % 5 == 0 { num /= 5 }
            else { return false }
        }
        return true
    }
}
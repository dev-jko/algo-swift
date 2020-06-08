class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var n = n
        while n % 3 == 0 { n /= 3 }
        return n == 1
    }
}
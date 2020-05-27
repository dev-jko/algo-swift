class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var p = 1
        while n > p {
            guard n % p == 0 else { return false }
            p *= 2
        }
        return true
    }
}
class Solution {
    func trailingZeroes(_ n: Int) -> Int {
        var result = 0
        var n = n
        while n > 0 {
            n /= 5
            result += n
        }
        return result
    }
}

let sol = Solution().trailingZeroes
print(sol(0))
class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n < 2 { return 1 }
        var dp = Array(repeating: 1, count: n + 1)
        for i in 2...n {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        return dp[n]
    }
}

let sol = Solution().climbStairs
print(sol(2))
print(sol(3))
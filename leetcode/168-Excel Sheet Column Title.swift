class Solution {
    let alpha: [String] = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ".map { String($0) })
    func convertToTitle(_ n: Int) -> String {
        var n = n
        var result = ""
        while n > 0 {
            n -= 1
            result = alpha[n % 26] + result
            n = n / 26
        }
        return result
    }
}

let sol = Solution().convertToTitle
for i in 1...5 {
    print(i * 26, sol(i * 26))
}

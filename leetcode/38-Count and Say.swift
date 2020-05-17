class Solution {
    func countAndSay(_ n: Int) -> String {
        var str = "1"
        var nums: [Character]
        var count: Int
        var prev: Character
        var i: Int
        for _ in 1..<n {
            nums = Array(str)
            str = ""
            i = 1
            prev = nums[0]
            count = 1
            while i < nums.count {
                if prev == nums[i] { count += 1 }
                else {
                    str += "\(count)\(prev)"
                    count = 1
                    prev = nums[i]
                }
                i += 1
            }
            if prev == nums.last { str += "\(count)\(prev)" }
        }
        return str
    }
}

class Solution2 {
    var result: [Int: String] = [1:"1", 2:"11"]
    func countAndSay(_ n: Int) -> String {
        if let r = result[n] { return r }
        let nums: [Character] = Array(countAndSay(n - 1))
        var str = ""
        var count = 1
        var prev = nums[0]
        var i = 1
        while i < nums.count {
            if prev == nums[i] { count += 1 }
            else {
                str += "\(count)\(prev)"
                count = 1
                prev = nums[i]
            }
            i += 1
        }
        if prev == nums.last { str += "\(count)\(prev)" }
        result[n] = str
        return str
    }
}

let sol = Solution()
(1...10).map(sol.countAndSay).forEach{ print($0) }
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hash: [Int: Int] = [:]
        for (index, num) in nums.enumerated() {
            let com = target - num
            if let n = hash[com] {
                return [n, index]
            }
            hash[num] = index
        }
        return []
    }
}

let nums = [2, 7, 11, 15]
let target = 9
let result = Solution().twoSum(nums, target)
print(result)

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var result: [Int] = [nums[0] < 0 ? 0 : nums[0]]
        var m = nums[0]
        for i in 1..<nums.count {
            m = max(m, nums[i])
            result.append(result[i - 1] + nums[i])
            if result[i] < 0 { result[i] = 0 }
        }
        return m >= 0 ? result.max()! : m
    }
}
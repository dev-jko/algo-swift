class Solution {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        var (x, o) = (0, nums[0])
        for i in 1..<nums.count {
            (x, o) = (max(o, x), x + nums[i])
        }
        return max(o, x)
    }
}
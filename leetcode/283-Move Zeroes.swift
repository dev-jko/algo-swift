class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var count = 0
        for i in 0..<nums.count {
            if nums[i] == 0 { count += 1 }
            else if count > 0 {
                nums[i - count] = nums[i]
                nums[i] = 0
            }
        }
    }
}
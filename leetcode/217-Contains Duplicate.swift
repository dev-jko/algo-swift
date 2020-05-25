class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let s = Set(nums)
        return s.count != nums.count
    }
}
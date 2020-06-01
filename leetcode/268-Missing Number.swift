class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        let s = (n + 1) * n / 2
        return s - nums.reduce(0, +)
    }
}
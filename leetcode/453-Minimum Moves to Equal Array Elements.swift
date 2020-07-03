class Solution {
    func minMoves(_ nums: [Int]) -> Int {
        var result = 0
        let temp = nums.min()!
        for n in nums {
            result += n - temp
        }
        return result
    }
}
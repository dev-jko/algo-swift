class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        var nums = [Int]()

        func recur(_ i: Int, _ sum: Int, _ nums: inout [Int]) {
            guard i < candidates.count else {
                if sum == target { result.append(nums) }
                return
            }
            recur(i + 1, sum, &nums)
            let sum: Int = sum + candidates[i]
            guard sum <= target else { return }
            nums.append(candidates[i])
            recur(i, sum, &nums)
            nums.removeLast()
        }

        recur(0, 0, &nums)
        return result
    }
}
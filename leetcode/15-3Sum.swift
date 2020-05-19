class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 { return [] }
        let nums = nums.sorted()
        var result: [[Int]] = []
        for i in 0..<nums.count - 2 {
            if nums[i] > 0 { break }
            if i != 0 && nums[i] == nums[i - 1] { continue }
            var (j, k) = (i + 1, nums.count - 1)
            while j < k {
                let t = nums[j] + nums[k] + nums[i]
                if t == 0 {
                    result.append([nums[i], nums[j], nums[k]])
                    while j < k && nums[j] == nums[j + 1] { j += 1 }
                    while j < k && nums[k] == nums[k - 1] { k -= 1 }
                }
                if t < 0 { j += 1 }
                else { k -= 1 }
            }
        }
        return result
    }
}

let sol = Solution().threeSum
print(sol([-1, 0, 1, 2, -1, -4]))
print(sol([0, 0, 0, 0]))
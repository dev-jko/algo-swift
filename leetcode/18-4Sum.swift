class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        if nums.count < 4 { return [] }
        let nums = nums.sorted()
        var result: [[Int]] = []
        let len = nums.count
        var (s, e, t, tt): (Int, Int, Int, Int)
        for i in 0..<len - 3 {
            if i > 0 && nums[i] == nums[i - 1] { continue }
            for j in i + 1..<len - 2 {
                if j > i + 1 && nums[j] == nums[j - 1] { continue }
                (s, e, t) = (j + 1, len - 1, nums[i] + nums[j])
                while s < e {
                    tt = nums[s] + nums[e] + t
                    if tt == target {
                        result.append([nums[i], nums[j], nums[s], nums[e]])
                        while s < e && nums[s] == nums[s + 1] { s += 1 }
                        while s < e && nums[e] == nums[e - 1] { e -= 1 }
                    }
                    if tt < target { s += 1 }
                    else { e -= 1 }
                }
            }
        }
        return result
    }
}

print(Solution().fourSum([1, 0, -1, 0], 0))
print(Solution().fourSum([1, 0, -1, 0, -2, 2], 0))
print(Solution().fourSum([0,0,0,0], 0))
print(Solution().fourSum([0,0,0,0,0], 0))
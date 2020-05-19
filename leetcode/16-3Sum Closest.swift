import Foundation

class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted()
        var (start, end, sum, temp): (Int, Int, Int, Int)
        var temp2 = Int.max
        var result = nums[0] + nums[1] + nums[2]
        for i in 0..<nums.count - 2 {
            if i > 0 && nums[i] == nums[i - 1] { continue }
            (start, end) = (i + 1, nums.count - 1)
            while start < end {
                sum = nums[i] + nums[start] + nums[end]
                if sum == target { return sum }
                else if sum > target { end -= 1 }
                else { start += 1 }
                temp = abs(target - sum)
                if temp < temp2 { result = sum; temp2 = temp }
            }
        }
        return result
    }
}

let sol = { (_ n, _ t) in print(Solution().threeSumClosest(n, t)) }
sol([-1,2,1,-4], 1)
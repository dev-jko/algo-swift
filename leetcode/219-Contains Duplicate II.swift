class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict: [Int: Int] = [:]
        for i in 0..<nums.count {
            if let j = dict[nums[i]] {
                if i - j <= k { return true }
            }
            dict[nums[i]] = i
        }
        return false
    }
}
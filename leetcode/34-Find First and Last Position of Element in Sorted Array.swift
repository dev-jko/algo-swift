class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        guard !nums.isEmpty else { return [-1, -1] }

        var s = 0, e = nums.count - 1, mid: Int
        while s < e {
            mid = s + (e - s) / 2
            if nums[mid] == target { e = mid }
            else if nums[mid] > target { e = mid - 1 }
            else { s = mid + 1 }
        }

        guard nums[s] == target else { return [-1, -1] }
        let start = s

        e = nums.count - 1
        while s < e {
            mid = s + (e - s) / 2 + 1
            if nums[mid] == target { s = mid }
            else if nums[mid] < target { s = mid + 1 }
            else { e = mid - 1 }
        }

        return [start, e]
    }
}
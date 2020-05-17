class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var (start, end) = (0, nums.count - 1)
        var mid: Int
        while start < end {
            mid = (start + end) / 2
            if nums[mid] == target { return mid }
            if nums[mid] < target { start = mid + 1 }
            else { end = mid - 1 }
        }
        return nums[start] >= target ? start : start + 1
    }
}
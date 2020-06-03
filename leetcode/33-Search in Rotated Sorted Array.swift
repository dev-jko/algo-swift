class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 2 else { return nums.firstIndex(of: target) ?? -1 }
        var (s, e) = (0, nums.count - 1)
        var mid: Int
        var pivot: Int = 0
        if nums.first! > nums.last! {
            while s <= e {
                mid = s + (e - s) / 2
                if nums[mid] > nums.last! { pivot = mid; s = mid + 1 }
                else { e = mid - 1 }
            }
            if target <= nums.last! { (s, e) = (pivot + 1, nums.count - 1) }
            else { (s, e) = (0, pivot) }
        }
        while s < e {
            mid = s + (e - s) / 2
            if nums[mid] == target { return mid }
            else if nums[mid] > target { e = mid - 1 }
            else { s = mid + 1 }
        }
        return nums[s] == target ? s : -1
    }
}
class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let n1 = Set(nums1)
        let n2 = Set(nums2)
        return Array(n1.intersection(n2))
    }
}
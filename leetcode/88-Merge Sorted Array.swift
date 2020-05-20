class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var (i, j) = (m - 1, n - 1)
        while i >= 0 && j >= 0 {
            if nums1[i] < nums2[j] {
                nums1[i + j + 1] = nums2[j]
                j -= 1
            } else {
                nums1[i + j + 1] = nums1[i]
                i -= 1
            }
        }
        while j >= 0 {
            nums1[j] = nums2[j]
            j -= 1
        }
    }
}
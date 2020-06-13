class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var map = [Int: Int]()
        for n in nums1 {
            map[n] = (map[n] ?? 0) + 1
        }
        var result = [Int]()
        for n in nums2 {
            if map[n] ?? 0 > 0 {
                map[n] = (map[n] ?? 0) - 1
                result.append(n)
            }
        }
        return result
    }
}
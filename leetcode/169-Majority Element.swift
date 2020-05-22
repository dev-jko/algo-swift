class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        let len = nums.count / 2
        for n in nums {
            dict[n] = (dict[n] ?? 0) + 1
            if dict[n]! > len { return n }
        }
        return dict.max { (e1, e2) in e1.value < e2.value }!.key
    }
}
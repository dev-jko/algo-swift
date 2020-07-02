class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var check: [Bool] = Array(repeating: false, count: nums.count + 1)
        check[0] = true
        for n in nums {
            check[n] = true
        }
        var result = [Int]()
        for i in 1..<check.count {
            if !check[i] { result.append(i) }
        }
        return result
    }
}
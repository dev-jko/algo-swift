class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result: Int = 0
        for n in nums {
            result = result ^ n
        }
        return result
    }
}

let sol = Solution().singleNumber
print(sol([2,2,1]))
print(sol([4,1,2,1,2]))
print(sol([4,1,2,1,2,6,6,10,10]))
// print(sol([]))
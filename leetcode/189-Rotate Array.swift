class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var k = k
        if nums.count < k { k %= nums.count }
        nums = nums.suffix(k) + nums.dropLast(k)
    }
}

let sol = Solution().rotate
var arr = [1,2,3,4,5,6,7]
sol(&arr, 3)
print(arr)

arr = [-1, -100, 3, 99]
sol(&arr, 2)
print(arr)


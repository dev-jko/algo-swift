class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var (s, e) = (0, numbers.count - 1)
        var t: Int
        while s < e {
            t = numbers[s] + numbers[e]
            if t == target { return [s + 1, e + 1] }
            if t > target { e -= 1 }
            else { s += 1 }
        }
        return []
    }
}
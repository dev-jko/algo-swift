class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var (i, j) = (0, height.count - 1)
        var result = 0
        while i < j {
            result = max(result, (j - i) * min(height[i], height[j]))
            if height[i] < height[j] { i += 1 }
            else { j -= 1 }
        }
        return result
    }
}
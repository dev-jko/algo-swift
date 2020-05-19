class Solution {
    func mySqrt(_ x: Int) -> Int {
        var (start, end) = (0, x / 2 + 1)
        var mid: Int
        var t: Int
        while start <= end {
            mid = (start + end) / 2
            t = mid * mid
            if t == x { return mid }
            else if t > x { end = mid - 1 }
            else { start = mid + 1 }
        }
        return start * start == x ? start : start - 1
    }
}

let sol = Solution().mySqrt
print(sol(4))
print(sol(8))
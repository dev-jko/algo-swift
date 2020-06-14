class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var start = 1, end = num / 2
        var mid: Int
        var temp: Int
        while start < end {
            mid = start + (end - start) / 2
            temp = mid * mid
            if temp == num { return true }
            else if temp < num { start = mid + 1 }
            else { end = mid - 1 }
        }
        return start * start == num
    }
}

class Solution2 {
    func isPerfectSquare(_ num: Int) -> Bool {
        var i = 1
        while i * i < num { i += 1 }
        return i * i == num
    }
}
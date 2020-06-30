class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var s = 0, e = n
        var mid: Int, temp: Int
        while s <= e {
            mid = (s + e) / 2
            temp = mid * (mid + 1) / 2
            if temp == n { return mid }
            else if temp < n { s = mid + 1 }
            else { e = mid - 1 }
        }
        return e
    }
}
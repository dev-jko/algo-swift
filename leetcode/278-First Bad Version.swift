class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var (s, e) = (1, n)
        var mid: Int
        while s < e {
            mid = s + (e - s) / 2
            if isBadVersion(mid) { e = mid }
            else { s = mid + 1 }
        }
        return s
    }
}
class Solution {
    let s: Set<Int> = {
        var s = Set<Int>()
        var n = 1
        while n <= Int32.max {
            s.insert(n)
            n *= 4
        }
        return s
    }()

    func isPowerOfFour(_ num: Int) -> Bool {
        return s.contains(num)
    }
}
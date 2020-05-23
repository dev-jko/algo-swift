class Solution {
    func isHappy(_ n: Int) -> Bool {
        func convert(_ num: Int) -> Int {
            var result = 0
            var num = num
            var t: Int
            while num > 0 {
                t = num % 10
                result += t * t
                num /= 10
            }
            return result
        }
        var temp = convert(n)
        var s: Set<Int> = [n]
        while !s.contains(temp) {
            s.insert(temp)
            temp = convert(temp)
        }
        return temp == 1
    }
}
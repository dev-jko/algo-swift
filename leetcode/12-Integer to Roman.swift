class Solution {    
    func intToRoman(_ num: Int) -> String {
        let roman = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        let keys = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        var result = ""
        var num = num
        for i in 0..<keys.count {
            let t: Int = num / keys[i]
            result.append(String(repeating: roman[i], count: t))
            num %= keys[i]
        }
        return result
    }
}

let sol = Solution().intToRoman
print(sol(3), "III")
print(sol(4), "IV")
print(sol(9), "IX")
print(sol(58), "LVIII")
print(sol(1994), "MCMXCIV")
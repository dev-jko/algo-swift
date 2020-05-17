class Solution {
    func myAtoi(_ str: String) -> Int {
        let str = Array(str)
        if str.isEmpty { return 0 }
        var i = 0
        while i < str.count && str[i] == " " { i += 1 }
        if i == str.count || (str[i] != "-" && str[i] != "+" && !str[i].isNumber) { return 0 }
        var sign = 1
        if str[i] == "-" {
            sign = -1
            i += 1
        } else if str[i] == "+" { i += 1 }
        var result = 0
        let zero: Int = Int(Character("0").asciiValue!)
        while i < str.count && str[i].isNumber {
            result = result * 10 + Int(str[i].asciiValue!) - zero
            if result > Int32.max {
                if sign > 0 { return Int(Int32.max) }
                else if result > Int(Int32.max) + 1 { return Int(Int32.min) }
            }
            i += 1
        }
        result *= sign
        return result
    }
}
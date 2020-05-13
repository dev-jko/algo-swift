class Solution {
    func reverse(_ x: Int) -> Int {
        var num = x < 0 ? -x : x 
        var result = 0
        while num > 0 {
            result = result * 10 + num % 10
            num = num / 10
        }
        result = x < 0 ? -result : result
        if result < Int32.min || result > Int32.max { 
            return 0
        }
        return result
    }
}

// class Solution {
//     func reverse(_ x: Int) -> Int {
//         let s = Array("\(x)".reversed())
//         var result = 0
//         for (i, c) in s.enumerated() {
//             if c == "0" { continue }
//             if x < 0 { result = Int("-" + s[i..<s.count-1])! }
//             else { result = Int(String(s[i..<s.count]))! }
//             break
//         }
//         if result < Int32.min || result > Int32.max { return 0 }
//         return result
//     }
// }


let inputs = [123, -123, 120, 1534236469]
inputs.map(Solution().reverse)
    .forEach{ print($0) }
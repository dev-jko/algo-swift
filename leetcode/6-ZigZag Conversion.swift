class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows < 2 { return s }
        var result: [String] = Array(repeating: "", count: numRows)
        var i = 0
        var d = 1
        for c in s {
            result[i].append(c)
            i += d
            if i == numRows - 1 { d = -1 }
            else if i == 0 { d = 1 }
        }
        return result.reduce("") { (strs, str) in strs + str }
    }
}

let input = "PAYPALISHIRING"
let numRows = 4
print(Solution().convert(input, numRows))


let input2 = "PAYPALISHIRING"
let numRows2 = 3
print(Solution().convert(input2, numRows2))

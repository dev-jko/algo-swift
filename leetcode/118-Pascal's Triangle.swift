class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows > 0 else { return [] }
        var result: [[Int]] = Array(repeating: [], count: numRows)
        result[0].append(1)
        for i in 1..<numRows {
            result[i].append(1)
            for j in 1..<i {
                result[i].append(result[i - 1][j - 1] + result[i - 1][j])
            }
            result[i].append(1)
        }
        return result
    }
}

let sol: (Int) -> () = {
    let s = Solution()
    return { n in s.generate(n).forEach{ print($0) } }
}()
sol(10)
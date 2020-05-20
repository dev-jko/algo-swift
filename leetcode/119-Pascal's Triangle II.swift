class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        guard rowIndex > 0 else { return [1] }
        var result: [Int] = [1]
        for _ in 1...rowIndex {
            let t = result
            result.append(1)
            for i in 1..<t.count {
                result[i] = t[i - 1] + t[i]
            }
        }
        return result
    }
}

let sol: (Int) -> () = {
    let s = Solution()
    return { n in print(s.getRow(n)) }
}()
sol(0)
sol(1)
sol(2)
sol(3)
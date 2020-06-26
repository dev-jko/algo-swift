class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        let ns = Array(Set(nums))
        guard ns.count > 2 else { return ns.sorted().last! }
        var maximum = [ns[0], ns[1], ns[2]].sorted(by: >)
        for i in 3..<ns.count {
            if ns[i] > maximum.last! {
                maximum.append(ns[i])
                maximum.sort(by: >)
                _ = maximum.popLast()
            }
        }
        return maximum.last!
    }
}

class Solution2 {
    func thirdMax(_ nums: [Int]) -> Int {
        let n = Array(Set(nums)).sorted()
        guard n.count > 2 else { return n.last! }
        return n[n.count - 3]
    }
}
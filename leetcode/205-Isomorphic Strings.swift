class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let str1 = Array(s)
        let str2 = Array(t)
        var (i1, i2) = (0, 0)
        var map1: [Character: Int] = [:]
        var map2: [Character: Int] = [:]
        for i in 0..<s.count {
            if map1[str1[i]] == nil {
                map1[str1[i]] = i1
                i1 += 1
            }
            if map2[str2[i]] == nil {
                map2[str2[i]] = i2
                i2 += 1
            }
            guard map1[str1[i]]! == map2[str2[i]]! else { return false }
        }
        return true
    }
}
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let s = Array(s)
        var cs: [Character: Int] = [:]
        var i = 0
        var result = 0
        for j in 0..<s.count {
            if (cs[s[j]] ?? 0) > 0 {
                i = max(cs[s[j]]!, i)
            }
            result = max(result, j - i + 1)
            cs[s[j]] = j + 1
        }
        return result
    }
}

// class Solution {
//     func lengthOfLongestSubstring(_ s: String) -> Int {
//         let s = Array(s)
//         var cs: [Character: Int] = [:]
//         var (i, j) = (0, 0)
//         var result = 0
//         while i < s.count {
//             if j < s.count && (cs[s[j]] ?? 0) == 0 {
//                 cs[s[j]] = 1
//                 j += 1
//             } else {
//                 result = max(result, j - i)
//                 cs[s[i]] = 0
//                 i += 1
//             }
//         }
//         return result
//     }
// }
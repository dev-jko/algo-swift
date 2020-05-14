class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 || (x % 10 == 0 && x != 0){ return false }
        var x = x
        var temp = 0
        while x > temp {
            temp = temp * 10 + x % 10
            x /= 10
        }
        return x == temp || x == temp / 10
    }
}

// class Solution {
//     func isPalindrome(_ x: Int) -> Bool {
//         if x < 0 { return false }
//         let s = Array(String(x))
//         for i in 0...s.count / 2 {
//             guard s[i] == s[s.count - i - 1] else { return false }
//         }
//         return true
//     }
// }
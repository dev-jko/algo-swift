class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let (a, b) = (Array(a), Array(b))
        var result = ""
        var carry = false
        var (ia, ib) = (a.count - 1, b.count - 1)
        while ia >= 0 && ib >= 0 {
            if a[ia] == "0" {
                if b[ib] == "0" {
                    if !carry { result = "0" + result }
                    else { carry = false; result = "1" + result }
                } else {
                    if !carry { result = "1" + result }
                    else { carry = true; result = "0" + result }
                }
            } else {
                if b[ib] == "0" {
                    if !carry { result = "1" + result }
                    else { carry = true; result = "0" + result }
                } else {
                    if !carry { carry = true; result = "0" + result }
                    else { carry = true; result = "1" + result }
                }
            }
            ia -= 1
            ib -= 1
        }
        while ia >= 0 {
            if a[ia] == "0" {
                if !carry { result = "0" + result }
                else { carry = false; result = "1" + result }
            } else {
                if !carry { result = "1" + result }
                else { carry = true; result = "0" + result }
            }
            ia -= 1
        }
        while ib >= 0 {
            if b[ib] == "0" {
                if !carry { result = "0" + result }
                else { carry = false; result = "1" + result }
            } else {
                if !carry { result = "1" + result }
                else { carry = true; result = "0" + result }
            }
            ib -= 1
        }
        if carry { result = "1" + result }
        return result
    }
}
class Solution {
    private let zero = Character("0").asciiValue!

    func addStrings(_ num1: String, _ num2: String) -> String {
        guard num1 != "0" || num2 != "0" else { return "0" }
        let length = max(num1.count, num2.count) + 1
        let num1 = Array(repeating: "0", count: length - num1.count) + Array(num1)
        let num2 = Array(repeating: "0", count: length - num2.count) + Array(num2)
        var result: [Character] = Array(repeating: "0", count: length)
        var n1: UInt8, n2: UInt8, temp: UInt8, carry: UInt8 = 0
        var i = length - 1
        while i >= 0 {
            n1 = num1[i].asciiValue! - zero
            n2 = num2[i].asciiValue! - zero
            temp = n1 + n2 + carry
            carry = temp / 10
            result[i] = Character(UnicodeScalar(temp % 10 + zero))
            i -= 1
        }
        return String(result.drop { $0 == "0" })
    }
}
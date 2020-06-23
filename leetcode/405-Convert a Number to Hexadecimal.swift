class Solution {
    private let hex: [String] = Array("0123456789abcdef").map { String($0) }

    func toHex(_ num: Int) -> String {
        guard num != 0 else { return "0" }
        var n = num
        var result = ""
        for _ in 0..<8 {
            guard n != 0 else { break }
            result = hex[n & 15] + result
            n = n >> 4
        }
        return result
    }
}
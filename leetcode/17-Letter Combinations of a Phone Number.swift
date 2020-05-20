class Solution {
    let key: [Character: [String]] = ["2":["a", "b", "c"], "3":["d", "e", "f"], "4":["g", "h", "i"],
        "5":["j", "k", "l"], "6":["m", "n", "o"], "7":["p", "q", "r", "s"],
        "8":["t", "u", "v"], "9":["w", "x", "y", "z"] ]

    func letterCombinations(_ digits: String) -> [String] {
        if digits.isEmpty { return [] }
        var digits: [Character] = Array(digits)
        let len = digits.count
        var result: [String] = []

        func recur(_ n: Int, _ str: String) {
            if n == len { result.append(str); return }
            for c in key[digits[n]]! {
                recur(n + 1, str + c)
            }
        }

        recur(0, "")
        return result
    }
}

let sol: (String) -> () = {
    let f = Solution().letterCombinations
    return { s in print(f(s)) }
}()
sol("23")
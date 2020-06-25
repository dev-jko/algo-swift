class Solution {
    private func _fizzBuzz(_ n: Int) -> String {
        var result = ""
        if n % 3 == 0 { result += "Fizz" }
        if n % 5 == 0 { result += "Buzz" }
        return result.isEmpty ? "\(n)" : result
    }

    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        for i in 1...n {
            result.append(_fizzBuzz(i))
        }
        return result
    }
}
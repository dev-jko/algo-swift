protocol GuessGame {
    func guess(_ n: Int) -> Int
}

extension GuessGame {
    func guess(_ n: Int) -> Int {
        return 0
    }
}

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var start = 1, end = n
        var mid: Int, temp: Int
        while start < end {
            mid = start + (end - start) / 2
            temp = guess(mid)
            if temp == 0 { return mid }
            if temp == -1 { end = mid - 1 }
            else { start = mid + 1 }
        }
        return start
    }
}
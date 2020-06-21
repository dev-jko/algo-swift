class Solution {
    private let bits = [1, 2, 4, 8, 16, 32]

    func readBinaryWatch(_ num: Int) -> [String] {
        guard num > 0 else { return ["0:00"] }
        var result = [String]()

        func minutes(_ i: Int, _ n: Int, _ h: Int, _ m: Int) {
            guard m < 60 else { return }
            if i <= 6, n == num {
                let m = m < 10 ? "0\(m)" : "\(m)"
                result.append("\(h):\(m)")
                return
            } else if i >= 6 || n > num { return }
            minutes(i + 1, n, h, m)
            minutes(i + 1, n + 1, h, m + bits[i])
        }

        func hours(_ i: Int, _ n: Int, _ h: Int) {
            guard h < 12 else { return }
            if i == 4, n <= num {
                minutes(0, n, h, 0)
                return
            } else if i >= 4 || n > num { return }
            hours(i + 1, n, h)
            hours(i + 1, n + 1, h + bits[i])
        }

        hours(0, 0, 0)
        return result
    }
}

print(Solution().readBinaryWatch(1))
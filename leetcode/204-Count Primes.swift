class Solution {
    func countPrimes(_ n: Int) -> Int {
        guard n > 2 else { return 0 }
        var primes = Array(repeating: true, count: n + 1)
        primes[0] = false
        primes[1] = false
        var count = 0
        var j: Int
        for i in 2..<n {
            guard primes[i] else { continue }
            count += 1
            j = i * i
            while j < n {
                primes[j] = false
                j += i
            }
        }
        return count
    }
}
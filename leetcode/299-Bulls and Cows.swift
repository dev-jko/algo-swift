class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        let secret = Array(secret)
        let guess = Array(guess)
        var map1 = [Character: Int]()
        var map2 = [Character: Int]()
        var (a, b) = (0, 0)
        for i in 0..<secret.count {
            guard secret[i] != guess[i] else {
                a += 1
                continue
            }
            map1[secret[i]] = (map1[secret[i]] ?? 0) + 1
            map2[guess[i]] = (map2[guess[i]] ?? 0) + 1
        }
        for k in map1.keys {
            if map2[k] != nil && map2[k]! > 0 {
                b += min(map1[k]!, map2[k]!)
            }
        }
        return "\(a)A\(b)B"
    }
}
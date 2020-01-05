let N: Int = Int(readLine()!)!
var result: [String] = readLine()!.map{ String($0) }
for _ in 1..<N {
    let next: [String] = readLine()!.map{ String($0) }
    for i in 0..<result.count {
        if result[i] != next[i] {
            result[i] = "?"
        }
    }
}
print(result.reduce(""){ $0 + $1 })
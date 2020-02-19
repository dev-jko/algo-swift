var check: [Int] = Array(repeating: 0, count: 42)
for _ in 0..<10 {
  let temp: Int = Int(readLine()!)!
  check[temp % 42] = 1
}
print(check.reduce(0, +))

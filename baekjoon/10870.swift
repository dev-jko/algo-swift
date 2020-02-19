let input: Int = Int(readLine()!)!
var fibo: [Int] = [Int](repeating: 0, count: 21)
fibo[1] = 1
for i in 2...20 {
  fibo[i] = fibo[i - 2] + fibo[i - 1]
}
print(fibo[input])

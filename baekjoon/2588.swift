let input1: Int = Int(readLine()!)!
let input2: Int = Int(readLine()!)!
var temp: Int = input2
for _ in 0..<3  {
  print(input1 * (temp % 10))
    temp /= 10
}
print(input1 * input2)

let input: Int = Int(readLine()!)!
var result: Int = 0
for i in 1..<input {
  var sum: Int = i
  var temp: Int = i
  while temp >= 10 {
    sum += temp % 10
    temp /= 10
  }
  sum += temp
  if input == sum {
    result = i
    break
  }
}
print(result)

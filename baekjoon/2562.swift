var max: Int = Int.min
var index: Int = 0
for i in 0..<9 {
  let temp: Int = Int(readLine()!)!
  if max < temp {
    max = temp
    index = i
  }
}
print(max, index + 1, separator: "\n")

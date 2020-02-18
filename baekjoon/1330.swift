let inputs: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
if inputs[0] > inputs[1] {
  print(">")
} else if inputs[0] < inputs[1] {
  print("<")
} else {
  print("==")
}

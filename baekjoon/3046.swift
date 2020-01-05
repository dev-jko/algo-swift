let inputs: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
print(inputs[1] * 2 - inputs[0])
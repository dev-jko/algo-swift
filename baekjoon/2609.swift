let inputs: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
var (a, b): (Int, Int) = (inputs[0], inputs[1])
var mod: Int = a % b
while mod > 0 {
    a = b
    b = mod
    mod = a % b
}
print(b)
print(inputs[0] * inputs[1] / b)
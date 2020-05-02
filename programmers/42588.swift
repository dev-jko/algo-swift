import Foundation


func solution(_ heights:[Int]) -> [Int] {
    let re: [Int] = heights.reversed()
    var stack: [(Int, Int)] = []
    var result: [Int] = Array.init(repeating: 0, count: heights.count)
    for (index, height) in re.enumerated() {
        while let (i, h) = stack.last {
            if h >= height {
                break
            }
            result[heights.count - i - 1] = heights.count - index
            stack.popLast()
        }
        stack.append((index, height))
    }
    return result
}


let h: [Int] = [6, 9, 5, 7, 4]
print(solution(h))


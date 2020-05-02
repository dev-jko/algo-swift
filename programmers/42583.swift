func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var answer: Int = 0
    var truck: [Int] = truck_weights.reversed()
    var bridge: [(Int, Int)] = []
    var bridgeWeight: Int = 0
    while !truck.isEmpty || !bridge.isEmpty {
        if !truck.isEmpty && bridgeWeight + truck.last! <= weight {
            let w: Int = truck.popLast()!
            bridge.append((answer, w))
            bridgeWeight += w
        }
        if bridge.last!.0 == answer {
            answer += 1
            if answer - bridge.first!.0 == bridge_length {
                let (_, w) = bridge.removeFirst()
                bridgeWeight -= w
            }
        } else {
            let (t, w) = bridge.removeFirst()
            bridgeWeight -= w
            answer = bridge_length + t
        }
    }
    return answer + 1
}

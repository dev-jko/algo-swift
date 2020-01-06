let read: (Int) -> [Int] = { _ in
    return readLine()!.split(separator: " ").map{ Int($0)! }
}
let calculate: ([Int]) -> Int = { 
    let n: Int = $0[0]
    let m: Int = $0[1]

    if n == 0 || m == 0 {
        return 0
    } else if n == m {
        return 1
    }

    var a: [Int] = Array((m - n + 1)...m)
    var b: [Int] = Array(1...n)
    for i in 0..<b.count {
        for j in 0..<a.count {
            if a[j] % b[i] == 0 {
                a[j] /= b[i]
                b[i] = 1
                break
            }
        }
    }

    return a.reduce(1, *) / b.reduce(1, *)
}

let T: Int = Int(readLine()!)!
(0..<T).map(read)
    .map(calculate)
    .map{ print($0) }
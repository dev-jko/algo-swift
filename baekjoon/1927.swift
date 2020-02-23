var heap: [Int] = Array(repeating: -1, count: 200002)
heap[0] = 0

func push(_ n: Int) {
  heap[0] += 1
  heap[heap[0]] = n
  var i: Int = heap[0]
  while i > 1 && heap[i] < heap[i / 2] {
    let temp: Int = heap[i]
    heap[i] = heap[i / 2]
    heap[i / 2] = temp
    i /= 2
  }
}

func swap(_ i: Int) {
  if i > 100000 {
    return
  } else if (heap[i * 2] == -1 && heap[i * 2 + 1] == -1)
  || (heap[i * 2] != -1 && heap[i] <= heap[i * 2]
  && heap[i * 2 + 1] != -1 && heap[i] <= heap[i * 2 + 1]) {
    return
  }
  let j: Int
  if heap[i * 2] == -1 && heap[i * 2 + 1] != -1 {
    j = i * 2 + 1
  } else if heap[i * 2] != -1 && heap[i * 2 + 1] == -1 {
    j = i * 2
  } else {
    if heap[i * 2] >= heap[i * 2 + 1] {
      j = i * 2 + 1
    } else {
      j = i * 2
    }
  }
  if heap[i] <= heap[j] {
    return
  }
  let temp: Int = heap[i]
  heap[i] = heap[j]
  heap[j] = temp
  swap(j)
}

func pop() -> Int {
  if heap[0] == 0 {
    return 0
  }
  let result: Int = heap[1]
  heap[1] = heap[heap[0]]
  heap[heap[0]] = -1
  heap[0] -= 1
  swap(1)
  return result
}

let n: Int = Int(readLine()!)!
for _ in 0..<n {
  let input: Int = Int(readLine()!)!
  if input == 0 {
    print(pop())
  } else {
    push(input)
  }
}

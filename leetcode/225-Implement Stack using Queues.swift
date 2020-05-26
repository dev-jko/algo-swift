class MyStack {
    private var q = [Int]()

    func push(_ x: Int) {
        q.append(x)
        while q[0] != x {
            q.append(q.removeFirst())
        }
    }

    func pop() -> Int {
        return q.removeFirst()
    }

    func top() -> Int {
        return q[0]
    }

    func empty() -> Bool {
        return q.isEmpty
    }
}

class MyStack2 {
    private var stack = [Int]()

    func push(_ x: Int) {
        stack.append(x)
    }

    func pop() -> Int {
        return stack.popLast()!
    }

    func top() -> Int {
        return stack.last!
    }

    func empty() -> Bool {
        return stack.isEmpty
    }
}
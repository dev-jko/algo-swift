class MyQueue {
    private var stack = [Int]()
    private var temp = [Int]()

    private func shift() {
        while !stack.isEmpty {
            temp.append(stack.popLast()!)
        }
    }

    func push(_ x: Int) {
        stack.append(x)
    }

    func pop() -> Int {
        guard temp.isEmpty else { return temp.popLast()! }
        shift()
        return temp.popLast()!
    }

    func peek() -> Int {
        guard temp.isEmpty else { return temp.last! }
        shift()
        return temp.last!
    }

    func empty() -> Bool {
        return stack.isEmpty && temp.isEmpty
    }
}
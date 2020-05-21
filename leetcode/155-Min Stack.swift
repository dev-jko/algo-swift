class MinStack {
    private var stack: [Int] = []
    private var minValue: Int = Int.max

    func push(_ x: Int) {
        stack.append(x)
        if minValue > x { minValue = x }
    }

    func pop() {
        if minValue == stack.popLast()! { minValue = stack.min() ?? Int.max }
    }

    func top() -> Int {
        return stack.last!
    }

    func getMin() -> Int {
        return minValue
    }
}
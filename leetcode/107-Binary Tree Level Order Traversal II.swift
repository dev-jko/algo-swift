public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var result: [[Int]] = []

        func dfs(_ node: TreeNode?, _ depth: Int) {
            guard let node = node else { return }
            while result.count <= depth { result.append([]) }
            result[depth].append(node.val)
            dfs(node.left, depth + 1)
            dfs(node.right, depth + 1)
        }

        dfs(root, 0)
        return result.reversed()
    }
}

class Solution1 {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        let q = Queue()
        q.push(root, 0)
        var result: [[Int]] = []
        while !q.isEmpty {
            let (node, depth) = q.pop()
            if result.count <= depth { result.append([]) }
            result[depth].append(node.val)
            if node.left != nil { q.push(node.left!, depth + 1) }
            if node.right != nil { q.push(node.right!, depth + 1) }
        }
        return result.reversed()
    }
}

class Queue {
    var head: Node?
    var tail: Node?
    var isEmpty: Bool { return head == nil }

    init() {
        self.head = nil
        self.tail = nil
    }

    func push(_ data: TreeNode, _ depth: Int) {
        let new = Node(data, depth)
        if self.isEmpty { self.head = new }
        else { tail!.next = new }
        self.tail = new
    }

    func pop() -> (TreeNode, Int) {
        let result = (self.head!.data, self.head!.depth)
        self.head = self.head!.next
        if self.head == nil { self.tail = nil }
        return result
    }

    class Node {
        var data: TreeNode
        var depth: Int
        var next: Node?

        init(_ data: TreeNode, _ depth: Int, _ next: Node? = nil) {
            self.data = data
            self.depth = depth
            self.next = next
        }
    }
}
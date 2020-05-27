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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }

        func recur(_ node: TreeNode) -> TreeNode {
            if let right = node.right { node.right = recur(right) }
            if let left = node.left { node.left = recur(left) }
            (node.left, node.right) = (node.right, node.left)
            return node
        }

        return recur(root)
    }
}
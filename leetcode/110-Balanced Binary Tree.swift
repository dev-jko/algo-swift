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
    func isBalanced(_ root: TreeNode?) -> Bool {
        func _isBalanced(_ node: TreeNode?, _ depth: Int) -> (Bool, Int) {
            guard let node = node else { return (true, depth) }
            let left = _isBalanced(node.left, depth + 1)
            let right = _isBalanced(node.right, depth + 1)
            return (left.0 && right.0 && abs(left.1 - right.1) < 2, max(left.1, right.1))
        }
        return _isBalanced(root, 0).0
    }
}
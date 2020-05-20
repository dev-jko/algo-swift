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
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        func recur(_ node: TreeNode) -> Int {
            if node.left == nil && node.right == nil { return 0 }
            let a = node.left == nil ? Int.max : recur(node.left!)
            let b = node.right == nil ? Int.max : recur(node.right!)
            return min(a, b) + 1
        }

        return recur(root)
    }
}
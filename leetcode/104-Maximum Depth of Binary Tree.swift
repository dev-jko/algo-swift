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
    func maxDepth(_ root: TreeNode?) -> Int {
        func dfs(_ node: TreeNode?, _ depth: Int) -> Int {
            guard let node = node else { return depth }
            return max(dfs(node.left, depth + 1), dfs(node.right, depth + 1))
        }

        return dfs(root, 0)
    }
}
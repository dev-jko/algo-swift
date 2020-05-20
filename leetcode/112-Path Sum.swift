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
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard let root = root else { return false }
        var flag = false

        func recur(_ node: TreeNode, _ total: Int) {
            if flag { return }
            if node.left == nil && node.right == nil {
                if total + node.val == sum { flag = true }
                return
            }
            if node.left != nil { recur(node.left!, total + node.val) }
            if node.right != nil { recur(node.right!, total + node.val) }
        }

        recur(root, 0)
        return flag
    }
}
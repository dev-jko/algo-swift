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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }

        func _isSymmetric(_ n1: TreeNode?, _ n2: TreeNode?) -> Bool {
            if n1 == nil && n2 == nil { return true }
            if n1 == nil || n2 == nil { return false }
            return n1!.val == n2!.val && _isSymmetric(n1!.left, n2!.right) && _isSymmetric(n1!.right, n2!.left)
        }

        return _isSymmetric(root.left, root.right)
    }
}
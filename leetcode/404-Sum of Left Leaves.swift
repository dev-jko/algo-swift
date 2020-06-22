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
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        var result = 0

        func recur(_ node: TreeNode?, _ isLeft: Bool) {
            guard let node = node else { return }
            if isLeft, node.left == nil, node.right == nil {
                result += node.val
                return
            }
            recur(node.left, true)
            recur(node.right, false)
        }

        recur(root, false)
        return result
    }
}
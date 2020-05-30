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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        guard let root = root else { return [] }
        var result = [String]()

        func recur(_ node: TreeNode, `path`: String) {
            let nextPath = path + "->\(node.val)"
            if node.left == nil && node.right == nil {
                result.append(nextPath)
                return
            }
            if node.left != nil { recur(node.left!, path: nextPath) }
            if node.right != nil { recur(node.right!, path: nextPath) }
        }

        let start = "\(root.val)"
        if root.left == nil && root.right == nil { result.append(start) }
        if root.left != nil { recur(root.left!, path: start) }
        if root.right != nil { recur(root.right!, path: start) }
        return result
    }
}
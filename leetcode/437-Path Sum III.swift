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
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        var result = 0

        func recur(_ node: TreeNode?, _ nums: [Int: Int]) {
            guard let node = node else { return }
            var newNums = [Int: Int]()
            var temp = node.val
            if temp == sum { result += 1 }
            newNums[temp] = 1
            for (k, v) in nums {
                temp = k + node.val
                if temp == sum { result += v }
                newNums[temp] = (newNums[temp] ?? 0) + v
            }
            recur(node.left, newNums)
            recur(node.right, newNums)
        }

        recur(root, [:])
        return result
    }
}
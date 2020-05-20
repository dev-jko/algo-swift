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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        func recur(_ start: Int, _ end: Int) -> TreeNode? {
            guard start <= end else { return nil }
            let mid: Int = (start + end) / 2
            let node = TreeNode(nums[mid])
            node.left = recur(start, mid - 1)
            node.right = recur(mid + 1, end)
            return node
        }
        return recur(0, nums.count - 1)
    }
}
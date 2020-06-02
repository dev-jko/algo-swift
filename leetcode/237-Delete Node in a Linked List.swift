public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func deleteNode(_ node: ListNode?) {
        let temp = node?.next
        node?.val = temp!.val
        node?.next = temp?.next
        temp?.next = nil
    }
}
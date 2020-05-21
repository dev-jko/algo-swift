public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard let head = head else { return false }
        var f: ListNode? = head.next
        var s: ListNode? = head
        while !(f == nil || s == nil) {
            if f === s { return true }
            f = f!.next?.next
            s = s!.next
        }
        return false
    }
}
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let head: ListNode = ListNode(0, head)
        var prev = head
        var curr = head.next
        while curr != nil {
            if curr!.val == val { prev.next = curr!.next }
            else { prev = curr! }
            curr = curr!.next
        }
        return head.next
    }
}
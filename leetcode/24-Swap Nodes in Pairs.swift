public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        let head = ListNode(0, head)
        var prev: ListNode = head
        var curr: ListNode? = head.next
        while curr?.next != nil {
            prev.next = curr!.next
            curr!.next = curr!.next!.next
            prev.next!.next = curr!
            prev = curr!
            curr = curr!.next
        }
        return head.next
    }
}
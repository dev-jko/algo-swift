public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard head?.next != nil else { return nil }
        var curr = head
        var i = 0
        while i < n && curr != nil {
            curr = curr!.next
            i += 1
        }
        let head = ListNode(0, head)
        var target: ListNode? = head
        while curr != nil {
            curr = curr!.next
            target = target!.next
        }
        target!.next = target!.next?.next
        return head.next
    }
}
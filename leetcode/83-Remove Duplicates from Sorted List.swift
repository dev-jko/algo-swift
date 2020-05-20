public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var curr: ListNode? = head
        while curr != nil && curr!.next != nil {
            if curr!.val == curr!.next!.val { curr!.next = curr!.next!.next }
            else { curr = curr!.next }
        }
        return head
    }
}
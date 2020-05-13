public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let head = ListNode(0)
        var curr: ListNode? = head
        var temp = 0
        var l1 = l1
        var l2 = l2
        while l1 != nil || l2 != nil || temp != 0 {
            if l1 != nil {
                temp += l1!.val
                l1 = l1!.next
            }
            if l2 != nil {
                temp += l2!.val
                l2 = l2!.next
            }
            let node = ListNode(temp % 10)
            temp /= 10
            curr!.next = node
            curr = curr!.next
        }
        return head.next
    }
}

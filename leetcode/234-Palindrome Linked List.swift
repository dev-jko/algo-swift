public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var list = [Int]()
        var curr = head
        while curr != nil {
            list.append(curr!.val)
            curr = curr!.next
        }
        var (i, j) = (0, list.count - 1)
        while i < j {
            guard list[i] == list[j] else { return false }
            i += 1
            j -= 1
        }
        return true
    }
}
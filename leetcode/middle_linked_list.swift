/**
 * Definition for singly-linked list.
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head         
        var fast = head        

        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        return slow
    }
}

let l6 = ListNode(6)
let l5 = ListNode(5, l6)
let l4 = ListNode(4, l5)
let l3 = ListNode(3, l4)
let l2 = ListNode(2, l3)
let l1 = ListNode(1, l2)

var node: ListNode? = l1
print("Lista :")
while let n = node {
    print(n.val)
    node = n.next
}
let s = Solution()
let middleRL = s.middleNode(l1)
if let node = middleRL {
    print("Nó do meio: \(node.val)")
} else {
    print("Lista vazia")
}
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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var current = head
        var newList: ListNode? = nil

        while current != nil {
            let nextNode = current?.next    
            current?.next = newList         
            newList = current           
            current = nextNode      
        }

        return newList
    }
}

let l4 = ListNode(5)
let l3 = ListNode(4, l4)
let l2 = ListNode(3, l3)
let l1 = ListNode(1, l2)
var node1: ListNode? = l1 
print("Original List:")
while let n = node1 {
    print(n.val)
    node1 = n.next
}
let s = Solution()
let reversedHead = s.reverseList(l1)
var node = reversedHead
print("Reversed List:")
while let n = node {
    print(n.val)
    node = n.next
}
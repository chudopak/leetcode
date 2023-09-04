import UIKit

public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() { self.val = 0; self.next = nil; }
	public init(_ val: Int) { self.val = val; self.next = nil; }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
	func deleteDuplicates(_ head: ListNode?) -> ListNode? {
		if (head == nil) {
			return head
		}
		var tmp = head
		while (tmp?.next != nil) {
			if (tmp!.val == tmp!.next!.val) {
				tmp?.next = tmp?.next?.next
			} else {
				tmp = tmp?.next
			}
		}
		return (head)
	}
}

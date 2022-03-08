import UIKit

public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() { self.val = 0; self.next = nil; }
	public init(_ val: Int) { self.val = val; self.next = nil; }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
	func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
		var tmp = head
		var newHead = head
		while (tmp != nil && tmp!.val == val) {
			newHead = newHead?.next
			tmp = tmp?.next
		}
		while (tmp != nil) {
			if (tmp?.next != nil && tmp!.next!.val == val) {
				tmp?.next = tmp?.next?.next
			} else {
				tmp = tmp?.next
			}
		}
		return (newHead)
	}
}

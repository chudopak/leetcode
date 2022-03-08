import UIKit

public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() { self.val = 0; self.next = nil; }
	public init(_ val: Int) { self.val = val; self.next = nil; }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
	func reverseList(_ head: ListNode?) -> ListNode? {
		if (head == nil || head?.next == nil) {
			return head
		}
		var tmp = head
		var tmp2 = tmp?.next
		var tmp3 = tmp2?.next
		tmp?.next = nil
		tmp2?.next = tmp
		while (tmp3 != nil) {
			tmp = tmp2
			tmp2 = tmp3
			tmp3 = tmp3?.next
			tmp2?.next = tmp
		}
		return (tmp2)
	}
}

import UIKit

public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() { self.val = 0; self.next = nil; }
	public init(_ val: Int) { self.val = val; self.next = nil; }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
	func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
		let head: ListNode? = ListNode()
		var tmp = head
		var list1 = list1
		var list2 = list2
		while (list2 != nil && list1 != nil) {
			if (list1!.val < list2!.val) {
				tmp?.next = list1
				list1 = list1?.next
			} else {
				tmp?.next = list2
				list2 = list2?.next
			}
			tmp = tmp?.next
		}
		tmp?.next = list1 != nil ? list1 : list2
		return head?.next
	}
}

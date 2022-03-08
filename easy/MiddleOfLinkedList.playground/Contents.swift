import UIKit

public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() { self.val = 0; self.next = nil; }
	public init(_ val: Int) { self.val = val; self.next = nil; }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
	func middleNode(_ head: ListNode?) -> ListNode? {
		var size = 0
		var tmp = head
		while (tmp != nil) {
			tmp = tmp?.next
			size += 1
		}
		size /= 2 + 1
		tmp = head
		while (size > 0) {
			tmp = tmp?.next
			size -= 1
		}
		return (tmp)
	}
}

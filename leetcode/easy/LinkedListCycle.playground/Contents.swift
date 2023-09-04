import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
	func hasCycle(_ head: ListNode?) -> Bool {
		if (head == nil) {
			return false
		}
		var walker = head
		var runner = head
		while (walker?.next != nil && runner?.next?.next != nil) {
			walker = walker?.next
			runner = runner?.next?.next
			if (walker === runner) {
				return true
			}
		}
		return (false)
	}
}

import UIKit



 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
 
class Solution {
	func listSize(head: ListNode?) -> Int {
		var size = 0
		var tmp = head
		while (tmp != nil) {
			tmp = tmp?.next
			size += 1
		}
		return size
	}
	
	func isPalindrome(_ head: ListNode?) -> Bool {
		if (head == nil || head?.next == nil) {
			return (true)
		}
		let size = listSize(head: head)
		let half = size / 2
		var firstPart = Array<Int>(repeating: 0, count: half)
		var tmp = head
		var i = 0
		while (i < half && tmp != nil) {
			firstPart[i] = tmp!.val
			i += 1
			tmp = tmp?.next
		}
		if (size % 2 == 1) {
			tmp = tmp?.next
		}
		i -= 1
		while (i >= 0 && tmp != nil) {
			if (firstPart[i] != tmp!.val) {
				return (false)
			}
			i -= 1
			tmp = tmp?.next
		}
		return (true)
	}
}
  

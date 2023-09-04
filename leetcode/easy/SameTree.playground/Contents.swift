import UIKit

public class TreeNode {
	public var val: Int
	public var left: TreeNode?
	public var right: TreeNode?
	public init() { self.val = 0; self.left = nil; self.right = nil; }
	public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
	public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
		self.val = val
		self.left = left
		self.right = right
	}
}

class Solution {
	var result = true
	
	func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
		if (!result) {
			return (result)
		}
		if (p == nil && q == nil) {
			return (true)
		} else if ((p == nil && q != nil) || (p != nil && q == nil)) {
			result = false
			return (false)
		} else if (p!.val != q!.val) {
			result = false
			return (false)
		}
		if (!isSameTree(p?.left, q?.left) || !isSameTree(p?.right, q?.right)) {
			result = false
			return (false)
		}
		return (true)
	}
}

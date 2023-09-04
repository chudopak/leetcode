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
	
	func findMax(_ node: TreeNode?, max: inout Int) -> Int {
		if (node == nil) {
			return (0)
		}
		let leftLength = findMax(node?.left, max: &max)
		let rightLenght = findMax(node?.right, max: &max)
		max = max < leftLength + rightLenght ? leftLength + rightLenght : max
		return (leftLength > rightLenght ? leftLength + 1 : rightLenght + 1)
	}
	
	func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
		var max = Int.min
		findMax(root, max: &max)
		return max
	}
}

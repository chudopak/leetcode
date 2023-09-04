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
	
	var dic = [Int: (summ: Int, items: Int)]()
	
	func getLevelsInfo(_ node: TreeNode?, curLvl: Int) {
		if (node == nil) {
			return
		}
		if (dic.keys.contains(curLvl)) {
			dic[curLvl]!.summ += node!.val
			dic[curLvl]!.items += 1
		} else {
			dic[curLvl] = (node!.val, 1)
		}
		getLevelsInfo(node?.left, curLvl: curLvl + 1)
		getLevelsInfo(node?.right, curLvl: curLvl + 1)
	}
	
	func averageOfLevels(_ root: TreeNode?) -> [Double] {
		getLevelsInfo(root, curLvl: 0)
		var result = Array<Double>(repeating: 0.0, count: dic.count)
		var i = 0
		while (i < dic.count) {
			result[i] = Double(dic[i]!.summ) / Double(dic[i]!.items)
			i += 1
		}
		return (result)
	}
}

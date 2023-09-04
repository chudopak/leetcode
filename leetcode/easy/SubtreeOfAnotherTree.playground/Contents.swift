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
    
    private func areIdentical(
        _ root: TreeNode?,
        _ subRoot: TreeNode?
    ) -> Bool {
        if root == nil && subRoot == nil {
            return true
        }
        if root == nil || subRoot == nil {
            return false
        }
        return root!.val == subRoot!.val
        && areIdentical(root?.left, subRoot?.left)
        && areIdentical(root?.right, subRoot?.right)
    }
    
    func isSubtree(
        _ root: TreeNode?,
        _ subRoot: TreeNode?
    ) -> Bool {
        if subRoot == nil {
            return true
        }
        if root == nil {
            return false
        }
        
        if areIdentical(root, subRoot) {
            return true
        }
        return isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
    }
}

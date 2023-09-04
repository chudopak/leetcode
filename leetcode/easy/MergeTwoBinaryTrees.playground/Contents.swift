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

// Но это не создает новое дерево, а собирает два старых
class Solution {
    func mergeTrees1(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        guard root1 != nil || root2 != nil else { return nil }
        guard root1 != nil else { return root2 }
        guard root2 != nil else { return root1 }

        root1!.val = root1!.val + root2!.val
        root1?.left = mergeTrees(root1?.left, root2?.left)
        root1?.right = mergeTrees(root1?.right, root2?.right)

        return root1
    }
    
    private func createNewTreeFromMergedTwo(
        _ root1: TreeNode?,
        _ root2: TreeNode?,
        _ newTree: TreeNode
    ) -> TreeNode? {
        guard root1 != nil || root2 != nil else { return nil }
        guard root1 != nil else {
            newTree.val = root2!.val
            newTree.left = createNewTreeFromMergedTwo(nil, root2?.left, TreeNode())
            newTree.right = createNewTreeFromMergedTwo(nil, root2?.right, TreeNode())
            return newTree
        }
        guard root2 != nil else {
            newTree.val = root1!.val
            newTree.left = createNewTreeFromMergedTwo(root1?.left, nil, TreeNode())
            newTree.right = createNewTreeFromMergedTwo(root1?.right, nil, TreeNode())
            return newTree
        }
        
        newTree.val = root1!.val + root2!.val
        newTree.left = createNewTreeFromMergedTwo(root1?.left, root2?.left, TreeNode())
        newTree.right = createNewTreeFromMergedTwo(root1?.right, root2?.right, TreeNode())
        return newTree
    }
    
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        return createNewTreeFromMergedTwo(root1, root2, TreeNode())
    }
}

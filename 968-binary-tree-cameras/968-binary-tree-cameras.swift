/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    enum State {
        case proccessing, installed, end
    }
    
    func minCameraCover(_ root: TreeNode?) -> Int {
        var ans = 0
        if status(root, &ans) == .proccessing {
            ans += 1
        }
        return ans 
    }
    
    func status(_ root: TreeNode?, _ ans: inout Int) -> State {
        guard let root = root else { return .end }
        
        let left = status(root.left, &ans)
        let right = status(root.right, &ans)
        
        if left == .proccessing || right == .proccessing {
            ans += 1
            return .installed
        }
        
        if left == .installed || right == .installed {
            return .end
        }
        
        return .proccessing
    }
}
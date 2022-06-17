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
    func minCameraCover(_ root: TreeNode?) -> Int {
        var ans = 0
        if status(root, &ans) == "Proccessing" {
            ans += 1
        }
        return ans 
    }
    
    func status(_ root: TreeNode?, _ ans: inout Int) -> String {
        guard let root = root else { return "end" }
        
        let left = status(root.left, &ans)
        let right = status(root.right, &ans)
        
        if left == "Proccessing" || right == "Proccessing" {
            ans += 1
            return "Installed"
        }
        
        if left == "Installed" || right == "Installed" {
            return "end"
        }
        
        return "Proccessing"
    }
}
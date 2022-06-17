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
        var ans = 0; return status(root, &ans) == .proccessing ? ans + 1 : ans
    }
    
    /// Find the number of need cameras. `Complexity`: O(n) time and (h) space.
    /// The `h` is the height of the recursion stack.
    /// - parameters:
    ///   - root: Custom data-type. root node of a binary tree.
    ///   - ans: The modified `ans` variable is the number of needed camera.
    /// - returns: The `State` enum value would be `proccessing`, `installed` and `end`
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
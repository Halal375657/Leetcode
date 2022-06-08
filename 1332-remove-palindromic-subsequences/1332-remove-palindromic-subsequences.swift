class Solution {
    func removePalindromeSub(_ s: String) -> Int {
        return isPalindrome(s) ? 1 : 2
    }
    
    func isPalindrome(_ input: String) -> Bool {
        guard input.count > 1 else { return true }
        var lhs = 0; var rhs = input.count - 1
        
        while lhs < rhs {
            guard input[lhs] == input[rhs] else { return false }
            
            lhs += 1; rhs -= 1
        }
        
        return true
    }
}

/// The extension method making accessable using index(like: `s[index]`) of a `String
extension StringProtocol {
    subscript(_ offset: Int) -> Element { self[index(startIndex, offsetBy: offset)]}
}
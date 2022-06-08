class Solution {
    
    /// Find the minimum number of steps(remove palindromic subsequence) to make the string empty.
    ///
    /// - parameters:
    ///  - input: The `String` consisting only letters `a` and `b`.
    /// - returns: return value would be `true` if is it palinmrome string nor `false`
    func removePalindromeSub(_ s: String) -> Int {
        return isPalindrome(s) ? 1 : 2
    }
    
    /// Identify a palindrome string. Complexity: O(n)
    /// - parameters:
    ///  - input: The `String` consisting only letters `a` and `b`.
    /// - returns: return value would be `true` if is it palinmrome string nor `false`
    func isPalindrome(_ input: String) -> Bool {
        guard input.count > 1 else { return true }
        var lhs = 0; var rhs = input.count - 1

        while lhs < rhs {
            guard input[lhs] == input[rhs] else { return false }

            lhs += 1; rhs -= 1;
        }

        return true
    }
}

/// The extension subscript making accessable a String using index(like: `s[index]`).
extension StringProtocol {
    subscript(_ offset: Int) -> Element { self[index(startIndex, offsetBy: offset)]}
}


class Solution {
    
    /// Bidirectionally iterate the array and calculate the sum of the current most left and current most right.\
    /// Move on lef-to-right if `sum` value is less than `target` value else move on right-to-left.
    /// `Complexity`: Constant space and O(n) time
    ///
    /// - parameters:
    ///   - numbers: The given integer array elements would be  -1000 to 1000 and
    ///   the array length at least 2 and no longer than 3*10ˆ4.
    ///   - target: Given integer target value is guranted that exactly match with one solution.
    /// - returns: The return integer array is the indices of the two target numbers.
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var lhs = 0; var rhs = numbers.count - 1
        
        while lhs < rhs {
            let sum = numbers[lhs] + numbers[rhs]
            if sum == target { return [lhs+1, rhs+1]}///1-indexed
            if sum < target { lhs += 1}///left-to-right
            else { rhs -= 1}///right-to-left
        }
        
        /// this statement never excute anymore according to problem defination.
        return [-1, -1]
    }
}
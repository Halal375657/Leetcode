class Solution {
    func arrayChange(_ nums: [Int], _ operations: [[Int]]) -> [Int] {
        var nums = nums
        var dictionary: [Int: Int] = [:]
        for (index, item) in nums.enumerated() {
            dictionary[item] = index
        }
        
        for operation in operations {
            nums[dictionary[operation[0]] ?? 0] = operation.last!
            dictionary[operation.last!] = dictionary[operation[0]] ?? 0
        }
        
        return nums
    }
}
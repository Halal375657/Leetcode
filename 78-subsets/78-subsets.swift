class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var ans: [[Int]] = []
        solve(nums, [], &ans, 0)
        return ans
    }
    
    func solve(_ nums: [Int], _ output: [Int], _ ans: inout [[Int]], _ currentIndex : Int) {
        
        var output = output
        
        if currentIndex >= nums.count {
            ans.append(output); return
        }
        
        solve(nums, output, &ans, currentIndex+1)
        
        let currentElement = nums[currentIndex]
        output.append(currentElement)
        solve(nums, output, &ans, currentIndex+1)
    }
}
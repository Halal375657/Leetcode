class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0; var right = height.count-1
        var maxAmount = 0
        
        while left < right {
            var minValIndex = height[left] < height[right] ? left : right
            var interval = right - left
            var currAmount = interval * height[minValIndex]
            maxAmount = currAmount > maxAmount ? currAmount : maxAmount
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return maxAmount
    }
}
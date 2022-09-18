class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        // [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
        // (0, 0) -> (0, 1) -> (1, 100) -> (100, 2) -> (2, 3) -> (3, 3) -> (3, 103) -> (103, 4) -> (4, 5) -> (5, 104) -> (5, 6)
        
        var first = 0; var second = 0;
        for val in cost{
            var temp = second
            second = val + min(first, second)
            first = temp
        }
        return min(first, second)
    }
}
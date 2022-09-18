class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        let n = cost.count
        var dp = Array(repeating: 0, count: n+2)
        for i in stride(from: n-1, to: -1, by: -1) {
            dp[i] = cost[i] + min(dp[i+1], dp[i+2])
        }
        return min(dp[0], dp[1])
    }
}
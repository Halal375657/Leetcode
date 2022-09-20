class Solution {
    func getMaximumGenerated(_ n: Int) -> Int {
        var dp = Array(repeating: 0, count: n+1)
        if n == 0 { return 0 }
        if n == 1 { return 1 }
        
        dp[0] = 0; dp[1] = 1
        var maxVal = dp[1]
        for i in 1..<(n+1) {
            dp[i] = (i % 2 == 1) ? dp[i/2] + dp[(i/2) + 1] : dp[i/2]
            maxVal = maxVal < dp[i] ? dp[i] : maxVal
        }
        
        return maxVal
    }
}
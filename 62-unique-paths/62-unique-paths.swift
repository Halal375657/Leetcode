class Solution {
    /*
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        /*
         _______
        | 1 | 1 |
         _______
        | 1 | 2 |
         _______
        | 1 | 3 |
         -------
        
        */
        
        var dp = Array(repeating: Array(repeating: 0, count: n), count: m)
        for i in 0..<m {
            dp[i][0] = 1
        }
        
        for j in 0..<n {
            dp[0][j] = 1
        }
        
        for i in 1..<m {
            for j in 1..<n {
                dp[i][j] = dp[i-1][j] + dp[i][j-1]
            }
        }
        
        return dp[m-1][n-1]
    }
    */
    
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp: Array<Int> = Array(repeating: 0, count: n)
        dp[0] = 1
        for i in 0..<m {
            for j in 1..<n {
                dp[j] += dp[j-1]
            }
        }
        
        return dp[n-1]
    }
    
}
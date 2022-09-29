class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        
        /// Inner method: check the current cell is an obstacle or not. According to problem description- `1` for obstacle cell and `0` for free cell.
        func isObstacleCell(_ row: Int, _ col: Int) -> Bool {
            return obstacleGrid[row][col] == 1
        }
        
        let totalRows = obstacleGrid.count
        let totalColumns = obstacleGrid[0].count
        var dp: [[Int]] = Array(repeating:
                                Array(repeating: 0, count: totalColumns),
                                count: totalRows)
        
        for row in 0..<totalRows {
            if isObstacleCell(row, 0) { break }
            dp[row][0] = 1
        }
        
        for col in 0..<totalColumns {
            if isObstacleCell(0, col) { break }
            dp[0][col] = 1
        }
        
        for row in 1..<totalRows {
            for col in 1..<totalColumns {
                if !isObstacleCell(row, col) {
                    dp[row][col] = dp[row][col-1] + dp[row-1][col]
                }
            }
        }
        
        return dp[totalRows-1][totalColumns-1]
    }
}
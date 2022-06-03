
class NumMatrix {

    var dp = [[Int]]()
    
    init(_ matrix: [[Int]]) {
        var n = matrix.count + 1
        var m = matrix[0].count + 1
        dp = Array(repeating: Array(repeating: 0, count: m), count: n)
        
        for row in 0..<n-1 {
            for col in 0..<m-1 {
                dp[row + 1][col + 1] = matrix[row][col] + dp[row][col+1] + dp[row+1][col] - dp[row][col]
            }
        }
        
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        
        return dp[row2+1][col2+1] - dp[row1][col2+1] - dp[row2+1][col1] + dp[row1][col1]
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */
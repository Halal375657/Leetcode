class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var transposeMatrix = Array(repeating: [Int](), count: matrix[0].count)
        
        for row in matrix {
            for (index, item) in row.enumerated() {
                transposeMatrix[index].append(item)
            }
        }
        
        return transposeMatrix
    }
}
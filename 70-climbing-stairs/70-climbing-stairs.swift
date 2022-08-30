class Solution {
    
    var result: Array<Int> = [0,1,2]
    
    init() {
        for i in 3..<46 {
            result.append(result[i-1] + result[i-2])
        }
    }
    
    func climbStairs(_ n: Int) -> Int {
        return result[n]
    }
}
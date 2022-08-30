class Solution {
    
    var lookup: Array<Int> = [0,1,2]
    
    init() {
        for i in 3..<46 {
            lookup.append(lookup[i-1] + lookup[i-2])
        }
    }
    
    func climbStairs(_ n: Int) -> Int {
        return lookup[n]
    }
}
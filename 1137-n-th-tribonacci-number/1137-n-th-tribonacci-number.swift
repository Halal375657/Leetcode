class Solution {
    
    var dpTable: [Int] = [0, 1, 1]
    
    init() {
        for i in 3..<37+1 {
            self.dpTable.append(dpTable[i-1] + dpTable[i-2] + dpTable[i-3])
        }
    }
    
    func tribonacci(_ n: Int) -> Int {
        if n == 0 { return 0}
        if n == 1 { return 1}
        
        return self.dpTable[n]
    }
}
class Solution {
    func tribonacci(_ n: Int) -> Int {
        if n == 0 { return 0}
        if n == 1 { return 1}
        
        var res = 0
        var t1 = 0; var t2 = 1; var t3 = 1;
        for i in 2..<n {
            var temp = t3
            t3 = t1 + t2 + t3
            t1 = t2; t2 = temp
        }
        
        return t3
    }
}
class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n > 0 else { return false}
        return Int(pow(Double(3), Double(31))) % n == 0
    }
    
    
}
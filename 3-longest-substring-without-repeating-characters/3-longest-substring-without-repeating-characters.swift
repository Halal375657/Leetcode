class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        /// s = "hellelflfkldsjlf"
        /// space: O(n), time: O(n)
        
        var hset: [Character: Int] = [Character: Int]()
        var ans = 0; var lhs = 0;
        for (index, ch) in s.enumerated() {
            if let prevIndex = hset[ch] {
                lhs = max(lhs, prevIndex + 1)
            }
            ans = max(ans, index - lhs + 1)
            hset[ch] = index
        }
        return ans
        
    }
}
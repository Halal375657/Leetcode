class Solution {
    func countPrefixes(_ words: [String], _ s: String) -> Int {
       // var languages: Set = ["Swift", "Java", "Python"]
        var subSet = Set<String>()
        var currSub = ""
        for ch in s{ 
            currSub = currSub + "\(ch)"
            subSet.insert(currSub)
        }
        
        var ans = 0
        for word in words {
            if subSet.contains(word) {
                ans += 1
            }
        }
        return ans
    }
}
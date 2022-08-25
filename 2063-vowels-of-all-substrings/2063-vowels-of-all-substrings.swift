class Solution {
    func countVowels(_ word: String) -> Int {
        
        let vowels: Set<Character> = Set(["a", "e", "i", "o", "u"])
        var totalSum = 0
        var vowelCount = 0
        for (index, val) in word.enumerated() {
            if vowels.contains(val) {
                vowelCount += index+1
            }
            
            totalSum += vowelCount
        }
        
        return totalSum
    }
}
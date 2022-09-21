class Solution {
    func sumEvenAfterQueries(_ nums: [Int], _ queries: [[Int]]) -> [Int] {
        var nums = nums
        var evenSub = nums.filter{ $0 % 2 == 0 }.reduce(0, +)
        var evenNumArray: Array<Int> = []
        
        for query in queries {
            if nums[query[1]] % 2 == 0 { evenSub -= nums[query[1]] }
             nums[query[1]] += query[0]
            if nums[query[1]] % 2 == 0 { evenSub += nums[query[1]] }
            evenNumArray.append(evenSub)
        }
        return evenNumArray
    }
}
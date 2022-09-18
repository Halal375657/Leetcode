class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        //row[x-1]*(rowIndex-x+1)//x
        //[1]
        //row[x-1]*(rowIndex-x+1) -> 1*(4-1+1)//1 -> 4
        //row[x-1]*(rowIndex-x+1) -> 4*(4-2+1)//2 -> 6
        //row[x-1]*(rowIndex-x+1) -> 6*(4-3+1)//3 -> 4
        //[1]
        
        var row = [1]
        guard rowIndex != 0 else { return row}
        for col in 1..<rowIndex {
           row.append(row[col - 1]*(rowIndex - col + 1) / col)
        }
        row.append(1)
        
        return row
    }
}
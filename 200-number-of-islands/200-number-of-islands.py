class Solution:
    def numIslandss(self, grid, n, m, row, col, ch) -> int:
        if grid[row][col] == '1':
            grid[row][col] = ch

            #Up
            if row - 1  >= 0:
                self.numIslandss(grid, n, m, row-1, col, ch)
            # Down
            if row + 1 < n:
                self.numIslandss(grid, n, m, row+1, col, ch)
            # Left
            if col - 1 >= 0:
                self.numIslandss(grid, n, m, row, col-1, ch)
            # Right
            if col + 1 < m:
                self.numIslandss(grid, n, m, row, col+1, ch)
    
    def numIslands(self, grid: List[List[str]]) -> int:
        if len(grid) == 0: return 0
        if len(grid[0]) == 0: return 0
        n = len(grid)
        m = len(grid[0])
        c = 0
        for row in range(n):
            for col in range(m):
                if grid[row][col] == '1':
                    c += 1
                    res = self.numIslandss(grid, n, m, row, col, chr(64+c))
        res = set()
        for row in grid:
            for col in row:
                if col != '0':
                    res.add(col)
        return len(res)
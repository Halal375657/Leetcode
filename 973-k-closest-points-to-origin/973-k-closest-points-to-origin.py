class Solution:
     
    def kClosest(self, points: List[List[int]], k: int) -> List[List[int]]:
        def eDistance(x, y):
	        return ((0 - x)**2 + (0 - y)**2)**0.5
        
        distances = [(eDistance(point[0], point[1]), point) for point in points]
        heapq.heapify(distances)
        res = [
            
        ]
        while k > 0:
            res.append(heapq.heappop(distances)[1])
            k -= 1
            
        return res
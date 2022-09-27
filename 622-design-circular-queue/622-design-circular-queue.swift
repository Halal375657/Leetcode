
class MyCircularQueue {
    
    var queue: Array<Int> = []
    var size: Int = 0
    var head: Int = 0
    var totalCurrentItem: Int = 0

    init(_ k: Int) {
        size = k
        queue = Array(repeating: -1, count: size)
    }
    
    func enQueue(_ value: Int) -> Bool {
        if isFull() { return false }
        queue[(head + totalCurrentItem) % size] = value
        totalCurrentItem += 1
        return true
    }
    
    func deQueue() -> Bool {
        if isEmpty() { return false }
        head = (head + 1) % size
        totalCurrentItem -= 1
        return true
    }
    
    func Front() -> Int {
        return isEmpty() ? -1 : queue[head]
    }
    
    func Rear() -> Int {
        print(head, queue)
        return isEmpty() ? -1 : queue[(head + totalCurrentItem - 1) % size]
    }
    
    func isEmpty() -> Bool {
        return totalCurrentItem == 0
    }
    
    func isFull() -> Bool {
        return totalCurrentItem == size
    }
}

/**
 * Your MyCircularQueue object will be instantiated and called as such:
 * let obj = MyCircularQueue(k)
 * let ret_1: Bool = obj.enQueue(value)
 * let ret_2: Bool = obj.deQueue()
 * let ret_3: Int = obj.Front()
 * let ret_4: Int = obj.Rear()
 * let ret_5: Bool = obj.isEmpty()
 * let ret_6: Bool = obj.isFull()
 */
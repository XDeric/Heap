import Cocoa


//Min Heap
/*
          2
        /   \
       8     21
      / \    /  \
    10   16 30   36
 
 */
//inorder: 10,8,16,2,30,21,36  -> left,root,right
//level order: 2,8,21,10,16,30,36

struct Heap{
    private var nodes = [2,8,10,16,21,30,36]
    
    private var orderingCriteria: (Int, Int) -> Bool
    public init(_ sort: @escaping (Int, Int) -> Bool) {
        self.orderingCriteria = sort
      }
    
    public func parentIndex(_ index: Int)-> Int{
        return (index - 1) / 2
    }
    public func leftIndex(_ index: Int)-> Int{
        return (index * 2) + 1
    }
    public func rightIndex(_ index: Int)-> Int{
        return (index * 2) + 2
    }
    
    public func pValue(_ index: Int)-> Int?{
        guard parentIndex(index) > 0 else {return nil}
        return nodes[parentIndex(index)]
    }
    public func lValue(_ index: Int)-> Int?{
        guard leftIndex(index) < nodes.count else {return nil}
        return nodes[leftIndex(index)]
    }
    public func rValue(_ index: Int)-> Int?{
        guard rightIndex(index) > nodes.count else {return nil}
        return nodes[rightIndex(index)]
    }
    
    public mutating func insert(_ item: Int){
        nodes.append(item)
        shiftUp(nodes.count - 1)
    }
    
    public mutating func shiftUp(_ index: Int){
        let child = nodes[index]
        var childIndex = index
        var parentIndex = self.parentIndex(childIndex)
        
        while childIndex > 0 && orderingCriteria(child, nodes[parentIndex]) {
            
            nodes[childIndex] = nodes[parentIndex]
            childIndex = parentIndex
            parentIndex = self.parentIndex(childIndex)
            
        }
            nodes[childIndex] = child
    }
}

var minHeap = Heap(<)

print(minHeap.pValue(1)!)

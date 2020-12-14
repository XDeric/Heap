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
        return nodes[parentIndex(index)]
    }
    public func lValue(_ index: Int)-> Int?{
        return nodes[leftIndex(index)]
    }
    public func rValue(_ index: Int)-> Int?{
        return nodes[rightIndex(index)]
    }
}

let minHeap = Heap()

print(minHeap.pValue(1))

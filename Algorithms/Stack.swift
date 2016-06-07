// https://github.com/raywenderlich/swift-algorithm-club/tree/master/Stack
// http://www.appcoda.com/swift-markdown/

import UIKit

var str = "Hello, playground"

/**
 A stack gives you a LIFO or last-in first-out order. The element you pushed last is the first one to come off with the next pop. (A very similar data structure, the queue, is FIFO or first-in first-out.)
 
 Notice that a push puts the new element at the end of the array, not the beginning. Inserting at the beginning of an array is expensive, an O(n) operation, because it requires all existing array elements to be shifted in memory. Adding at the end is O(1); it always takes the same amount of time, regardless of the size of the array.
 
 Fun fact about stacks: Each time you call a function or a method, the CPU places the return address on a stack. When the function ends, the CPU uses that return address to jump back to the caller. That's why if you call too many functions -- for example in a recursive function that never ends -- you get a so-called "stack overflow" as the CPU stack has run out of space.
 
 -- Written for Swift Algorithm Club by Matthijs Hollemans
 */

public struct Stack<T> {
    
    /// array that holds the elements inside our Stack
    private var array = [T]()
    
    /// return if the stack is empty
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    /// return number of elements in the Stack
    public var count: Int {
        return array.count
    }
    
    /// push/add an element to the end of the stack
    public mutating func push(element: T) {
        array.append(element)
    }
    
    /// pop/remove the last element from the stack
    public mutating func pop() -> T? {
        guard !isEmpty else {
            return nil
        }
        return array.removeLast()
    }
    
    /// peek/return last element in the stack
    public func peek() -> T? {
        return array.last
    }
    
}

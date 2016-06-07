//
//  Queue.swift
//  Algorithms
//
//  Created by Terry Wang on 6/7/16.
//  Copyright © 2016 Vento. All rights reserved.
//

import Foundation

/**

 A queue is a list where you can only insert new items at the back and remove items from the front. This ensures that the first item you enqueue is also the first item you dequeue. First come, first serve!
 
 Why would you need this? Well, in many algorithms you want to add objects to a temporary list at some point and then pull them off this list again at a later time. Often the order in which you add and remove these objects matters.
 
 A queue gives you a FIFO or first-in, first-out order. The element you inserted first is also the first one to come out again. It's only fair!
*/

public struct Queue<T> {
    
    /// Array storing elements in a Queue
    private var array = [T]()
    
    /// Returns if this Queue is empty
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    /// Returns the number of elements inside this Queue
    public var count: Int {
        return array.count
    }
    
    /// Add a new element at the end of a the Queue
    public mutating func enqueue(element: T) {
        array.append(element)
    }
    
    /// Remove the first element in the Queue and return it
    public mutating func dequeue() -> T? {
        guard !isEmpty else {
            return nil
        }
        return array.removeFirst()
    }
    
    /// Return first element in the Queue
    public func peek() -> T? {
        return array.first
    }
}

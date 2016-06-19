//
//  InsertionSort.swift
//  Algorithms
//
//  Created by Terry Wang on 6/7/16.
//  Copyright © 2016 Vento. All rights reserved.
//

import Foundation

// http://stackoverflow.com/questions/24437388/whats-the-underscore-representative-of-in-swift-references
// O(n^2)
func insertionSort<T:Comparable>(array:[T], _ isOrderedBefore:(T,T) -> Bool) -> [T] {
    var a = array // make a copy of the array to hold the sorted values
    for x in 1..<a.count {
        var y = x
        let temp = a[y]
        while y > 0 && isOrderedBefore(temp, a[y - 1]) {
            a[y] = a[y - 1]  // shifts up the previous elements by one position
            y  = y - 1
        }
        a[y] = temp
    }
    return a
}
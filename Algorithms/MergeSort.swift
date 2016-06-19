//
//  MergeSort.swift
//  Algorithms
//
//  Created by Terry Wang on 6/18/16.
//  Copyright © 2016 Vento. All rights reserved.
//

import Foundation

func mergeSort(array: [Int]) -> [Int] {
    
    // If the array is empty or only contains a single element, there's no way to split it into smaller pieces. 
    // You'll just return the array.
    guard array.count > 1 else { return array }
    
    // Find the middle index.
    let middleIndex = array.count / 2
    
    // Using the middle index from the previous step, recursively split the left side of the array.
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    
    // Also recursively split the right side of the array.
    let rightArray = mergeSort(Array(array[middleIndex ..< array.count]))
    
    // Finally, merge all the values together, making sure that it's always sorted.
    return merge(leftPile: leftArray, rightPile: rightArray)
}

func merge(leftPile leftPile: [Int], rightPile: [Int]) -> [Int] {


    // You need two indexes to keep track of your progress for the two arrays while merging.
    var leftIndex = 0
    var rightIndex = 0
    
    
    // This is the merged array. It's empty right now, but you'll build it up in subsequent steps by appending elements from the other arrays.
    var orderedPile = [Int]()
    
    // This while loop will compare the elements from the left and right sides, and append them to the orderedPile while making sure that the result stays in order.
    while  leftIndex < leftPile.count && rightIndex < rightPile.count {
        
        if leftPile[leftIndex] < rightPile[rightIndex] {
            orderedPile.append(leftPile[leftIndex])
            leftIndex = leftIndex + 1
        } else if leftPile[leftIndex] > rightPile[rightIndex] {
            orderedPile.append(rightPile[rightIndex])
            rightIndex = rightIndex + 1
        } else {
            // they are equal
            orderedPile.append(leftPile[leftIndex])
            leftIndex = leftIndex + 1
            orderedPile.append(rightPile[rightIndex])
            rightIndex = rightIndex + 1
        }
    }
    
    // If control exits from the previous while loop, it means that either leftPile or rightPile has its contents completely merged into the orderedPile. At this point, you no longer need to do comparisons. Just append the rest of the contents of the other array until there's no more to append.
    while leftIndex < leftPile.count {
        orderedPile.append(leftPile[leftIndex])
        leftIndex = leftIndex + 1
    }
    
    while rightIndex < rightPile.count {
        orderedPile.append(rightPile[rightIndex])
        rightIndex = rightIndex + 1
    }
    
    
    return orderedPile
}
//: Playground - noun: a place where people can play

import UIKit

func binarySearch(numbers: [Int], value: Int) -> Int? {
    //Binary Search Algorithm starts
    var left = 0;
    var right = numbers.count - 1;
    
    while left <= right {
        //Get middle index
        let middle = Int(floor(Double(left+right) / 2.0))
        
        if numbers[middle] < value { //Need to move on right section
            left = middle + 1;
        } else if numbers[middle] > value { //Need to move on left section
            right = middle - 1;
        } else { //Found the same value
            return middle;
        }
    }
    
    return nil; //numbers don't have the value
}

//Assume that numbers are already sorted array. If not, we need to sort array with sort() function and pass it to binarySearch function.
binarySearch(numbers: [1,4,7,9,12,20], value: 7)

import UIKit

// MARK: Searching Algorrithams


// MARK: 1. Linear Search
/// Goal: Find a particular value in an array.

///We have an array of generic objects. With linear search, we iterate over all the objects in the array and compare each one to the object we're looking for. If the two objects are equal, we stop and return the current array index. If not, we continue to look for the next object as long as we have objects in the array. *///*

///Linear search runs at O(n). It compares the object we are looking for with each object in the array and so the time it takes is proportional to the array length. In the worst case, we need to look at all the elements in the array.
///The best-case performance is O(1) but this case is rare because the object we're looking for has to be positioned at the start of the array to be immediately found. You might get lucky, but most of the time you won't. On average, linear search needs to look at half the objects in the array. *

func linearSearch<T: Equatable>(_ array: [T], key: T) -> Int?{

    for (index, value) in array.enumerated(){
        if value == key{
            return index
        }
    }
    return nil

}
let lSkeyIndex = linearSearch([1.1 ,2.2 ,3.3 ,4.4 ,5.5 ], key: 4.4)
if (lSkeyIndex != nil){
    print("Element found at index \(lSkeyIndex!)")
}else{
    print("Element not found")
}

// MARK: 2. Binary Search

///how binary search works:

///Split the array in half and determine whether the thing you're looking for, known as the search key, is in the left half or in the right half.
///How do you determine in which half the search key is? This is why you sorted the array first, so you can do a simple < or > comparison.
///If the search key is in the left half, you repeat the process there: split the left half into two even smaller pieces and look in which piece the search key must lie. (Likewise for when it's the right half.)
///This repeats until the search key is found. If the array cannot be split up any further, you must regrettably conclude that the search key is not present in the array.

//Iterative implementation of binary search

func iterativeBinarySearch<T: Comparable>(_ array: [T], key : T) -> Int?{
    var first = 0
    var last = array.count
    while first < last{
        var mid = Int((first + last) / 2)
        if key == array[mid]{
            return mid
        }else if key > array[mid]{
            first = mid + 1
        }else{
            last = mid - 1
        }
    }
    return nil
}

let IBSkeyIndex = iterativeBinarySearch([1 ,2 ,3 ,4 ,5,6], key: 7)
if (IBSkeyIndex != nil){
    print("Element found at index \(IBSkeyIndex!)")
}else{
    print("Element not found")
}


//Recursive implementation of binary search
func recursiveBinarySearch<T: Comparable>(_ array: [T], key : T, range: Range<Int>) -> Int?{
    if range.lowerBound >= range.upperBound {
            // If we get here, then the search key is not present in the array.
            return nil

        } else {
            // Calculate where to split the array.
            let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2

            // Is the search key in the left half?
            if array[midIndex] > key {
                return recursiveBinarySearch(array, key: key, range: range.lowerBound ..< midIndex)

            // Is the search key in the right half?
            } else if array[midIndex] < key {
                return recursiveBinarySearch(array, key: key, range: midIndex + 1 ..< range.upperBound)

            // If we get here, then we've found the search key!
            } else {
                return midIndex
            }
        }
}

let numbers = [1, 2, 3, 4, 5, 7, 12, 13, 15, 17, 19, 23, 25]
let rBSkeyIndex = recursiveBinarySearch(numbers, key: 1, range: 0 ..< numbers.count)
if (rBSkeyIndex != nil){
    print("Element found at index \(rBSkeyIndex!)")
}else{
    print("Element not found")
}



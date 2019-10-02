import Foundation

//

// 1. Find if an element is contained within a sorted array in O(log(n)) time.  Do not use recursion.

func binarySearch<T: Comparable>(arr: [T], target: T) -> Bool {
    var minIndex = 0
    var maxIndex = arr.count
    while minIndex < maxIndex {
        let middleIndex = (minIndex + maxIndex) / 2
        print(middleIndex)
        if arr[middleIndex] == target {
            return true
        }else if target < arr[middleIndex]{
            maxIndex = middleIndex - 1
            print(maxIndex)
        }else if target > arr[middleIndex]{
            minIndex = middleIndex + 1
            print(minIndex)
        }
    }
    return false
}

// 2. Find if an element is contained within a sorted array in O(log(n)) time.  Use recursion.

func recursiveBinarySearch<T: Comparable>(arr: [T], target: T) -> Bool {
    var minIndex = 0
    var maxIndex = arr.count - 1
    let middleIndex = (minIndex + maxIndex) / 2
    if target == arr[middleIndex]{
        return true
    } else if target < arr[middleIndex] {
        return binarySearch(arr: arr, target: target)
    } else {
        return binarySearch(arr: arr, target: target) }
}

// https://www.interviewbit.com/problems/matrix-search/

// 3. Find if a value is contained in a matrix of dimensions m x n. This matrix has the following properties:

// Integers in each row are sorted from left to right.
// The first integer of each row is greater than or equal to the last integer of the previous row.

func contains(value: Int, in arr: [[Int]]) -> Bool {
    var minIndex = 0
    var maxIndex = arr.count - 1
    while minIndex < maxIndex {
        let middleIndex = (minIndex + maxIndex) / 2
        if arr[middleIndex][0] == value {
            return true
        }else if value < arr[middleIndex][0]{
            maxIndex = middleIndex - 1
        }else if value > arr[middleIndex][0]{
            minIndex = middleIndex + 1
        }
    }
    let targetArr = arr[minIndex]
    return recursiveBinarySearch(arr: targetArr, target: value)
}



// https://www.techiedelight.com/find-first-or-last-occurrence-of-a-given-number-sorted-array/
// 4. Given a sorted array of integers, find the index of the last occurrence of a given number.  Your solution should work in O(log(n)) time

func lastOccurrence<T: Comparable>(of value: T, in arr: [T]) -> Int? {
    var minIndex = 0
    var maxIndex = arr.count - 1
    var index: Int? = nil
    while minIndex < maxIndex {
        let middleIndex = (minIndex + maxIndex) / 2
        if arr[middleIndex] == value {
            //minIndex = middleIndex + 1
            index = middleIndex
            break
        }else if value < arr[middleIndex] {
            maxIndex = middleIndex - 1
        }else if value > arr[middleIndex] {
            minIndex = middleIndex + 1
        }
    }
    func lastOne()-> Int?{
        while arr[index ?? 0] == value {
            index? += 1
        }
        if let index = index {return index - 1} else {return nil}
    }
    return lastOne()
}

// https://www.techiedelight.com/find-smallest-missing-element-sorted-array/
// 5. Given a sorted array of distinct non-negative integers, find the smallest missing number.  Your solution should work in O(log(n)) time

func smallestMissingNumber(in arr: [Int]) -> Int {
//    var minIndex = 0
//    var maxIndex = arr.count - 1
//    var index = 0
//    while minIndex < maxIndex {
//        let middleIndex = (minIndex + maxIndex) / 2
//        if arr[middleIndex] == middleIndex {
//            minIndex = middleIndex + 1
//        }else if middleIndex < arr[middleIndex] {
//            maxIndex = middleIndex - 1
//        }
//        
//        if middleIndex != arr[middleIndex] {
//            index = middleIndex
//            return index
//        }
//        
//    }
    
    
    
    return arr.count
}

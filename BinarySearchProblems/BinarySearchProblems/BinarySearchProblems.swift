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
    
    
    return nil
}

// https://www.techiedelight.com/find-smallest-missing-element-sorted-array/
// 5. Given a sorted array of distinct non-negative integers, find the smallest missing number.  Your solution should work in O(log(n)) time

func smallestMissingNumber(in arr: [Int]) -> Int {
    return -1
}

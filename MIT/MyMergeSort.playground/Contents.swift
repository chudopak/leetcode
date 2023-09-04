import UIKit

func merge(_ array: inout [Int], start: Int, middle: Int, end: Int) {
    var start2 = middle + 1
    var leftArray = [Int]()
    leftArray.reserveCapacity(middle - start + 1)
    var rightArray = [Int]()
    rightArray.reserveCapacity(start2 - end + 1)
    
    for i in start...middle {
        leftArray.append(array[i])
    }
    
    for i in start2...end {
        rightArray.append(array[i])
    }
//    print("left array - \(leftArray), right array - \(rightArray)")
    var start1 = 0
    start2 = 0
    var i = start
//    print("Start1 - \(start1), end1 - \(middle), start2 - \(start2) end2 - \(end)")
    while start1 < leftArray.count && start2 < rightArray.count {
        if leftArray[start1] < rightArray[start2] {
            array[i] = leftArray[start1]
            start1 += 1
        } else {
            array[i] = rightArray[start2]
            start2 += 1
        }
        i += 1
    }
    while start1 < leftArray.count {
        array[i] = leftArray[start1]
        start1 += 1
        i += 1
    }
    while start2 < rightArray.count {
        array[i] = rightArray[start2]
        start2 += 1
        i += 1
    }
}

func mergeSort(_ array: inout [Int], start: Int, end: Int) {
    if start < end {
        let middle = (start + end) / 2
        mergeSort(&array, start: start, end: middle)
        mergeSort(&array, start: middle + 1, end: end)
//        print("Start - \(start), middle - \(middle), end - \(end)")
        merge(&array, start: start, middle: middle, end: end)
    }
}

func sort(_ array: inout [Int]) {
    guard array.count > 1 else { return }
    mergeSort(&array, start: 0, end: array.count - 1)
}

var test1 = [5, 2, 3, 0, 124, 1]
var test2 = [10, 14, 28, 11, 7, 16, 30, 50, 25, 18]
var test3 = [123, 1, -1]
var test4 = [14, 14, 28, 11, 7, 16, 18, 50, 25, 18, 14, 14, 28, 11, 7, 16, 18, 50, 25, 18]
var test5 = [14, 14, 14, 14, 7]

sort(&test1)
sort(&test2)
sort(&test3)
sort(&test4)
sort(&test5)

print()
print(test1)
print()
print(test2)
print()
print(test3)
print()
print(test4)
print()
print(test5)

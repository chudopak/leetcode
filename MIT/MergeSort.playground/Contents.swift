import UIKit


func sort(array: inout [Int]) {
    guard array.count > 1 else { return }
    mergeSort(&array, start: 0, end: array.count)
}

func mergeSort(
    _ sequence: inout [Int],
    start: Int,
    end: Int
)  {
    if 1 < end - start {
        let middle = (start + end + 1) / 2
        mergeSort(&sequence, start: start, end: middle)
        mergeSort(&sequence, start: middle, end: end)
        var leftArray = Array(sequence[start..<middle])
        var rightArray = Array(sequence[middle...end])
        print("leftLen - \(leftArray.count), rightLen - \(rightArray.count), start - \(start), end - \(end)")
        merge(
            leftArray: &leftArray,
            rightArray: &rightArray,
            sequence: &sequence,
            leftLen: leftArray.count,
            rightLen: rightArray.count,
            start: start,
            end: end
        )
    }
}

func merge(
    leftArray: inout [Int],
    rightArray: inout [Int],
    sequence: inout [Int],
    leftLen: Int,
    rightLen: Int,
    start: Int,
    end: Int
) {
    if start < end {
        var i = leftLen
        var j = rightLen
        if j <= 0
            || (i > 0 && leftArray[i - 1] > rightArray[j - 1]) {
            sequence[end - 1] = leftArray[i - 1]
            i = i - 1
        } else {
            sequence[end - 1] = rightArray[j - 1]
            j = j - 1
        }
        merge(
            leftArray: &leftArray,
            rightArray: &rightArray,
            sequence: &sequence,
            leftLen: i,
            rightLen: j,
            start: start,
            end: end - 1
        )
    }
}

var test1 = [2, 3, 1, 90, 7, 6]
sort(array: &test1)
print(test1)

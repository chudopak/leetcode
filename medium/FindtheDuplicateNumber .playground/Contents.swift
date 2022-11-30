import UIKit

class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var dic = Set<Int>()
        dic.reserveCapacity(nums.count)
        for i in nums where !dic.insert(i).inserted {
            return i
        }
        return -1
    }
}

print(Solution().findDuplicate([1,3,4,2,2]))

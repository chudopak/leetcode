import UIKit

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        
        while l <= r {
            var m = (l + r) / 2
            print("l - \(l) m - \(m) r - \(r)")
            if target == nums[m] {
                return m
            }

            if nums[l] <= nums[m] {
                if target > nums[m] || target < nums[l] {
                    l = m + 1
                } else {
                    r = m - 1
                }
            } else {
                if target < nums[m] || target > nums[r] {
                    r = m - 1
                } else {
                    l = m + 1
                }
            }
        }
        return -1
    }
}

print(Solution().search([4,5,6,7,0,1,2], 0))

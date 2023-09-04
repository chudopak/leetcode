import UIKit

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        var max = nums[0]
        var currentSeq = 0
        for i in 0..<nums.count {
            currentSeq += nums[i]
            if max < currentSeq {
                max = currentSeq
            }
            if currentSeq < 0 {
                currentSeq = 0
            }
        }
        return max
    }
}

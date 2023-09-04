import UIKit

class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let set = Set(nums)
        var longestStreek = 0
        
        for num in set {
            if !set.contains(num - 1) {
                var currentNum = num
                var currentStreek = 1
                
                while set.contains(currentNum + 1) {
                    currentNum += 1
                    currentStreek += 1
                }
                longestStreek = max(longestStreek, currentStreek)
            }
        }
        return longestStreek
    }
}

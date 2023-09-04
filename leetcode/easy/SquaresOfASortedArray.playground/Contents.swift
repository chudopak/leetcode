import UIKit

class Solution {
    
    private func findLeast(_ nums: [Int]) -> Int {
        guard nums[0] < 0 else { return 0 }
        
        var prevNeg = 0
        for i in 1..<nums.count {
            if nums[i] >= 0 {
                return abs(nums[prevNeg]) < abs(nums[i]) ? prevNeg : i
            }
            prevNeg = i
        }
        return prevNeg
    }
    
    func sortedSquares(_ nums: [Int]) -> [Int] {
        guard nums[0] < 0 else { return nums.map { $0 * $0 } }
        let least = findLeast(nums)
        var newArr = [Int]()
        
        newArr.append(nums[least] * nums[least])
        var minLeft = least - 1
        var minRight = least + 1
        for _ in 1..<nums.count {
            let number: Int
            if minLeft < 0 {
                number = nums[minRight]
                minRight += 1
            } else if minRight == nums.count {
                number = nums[minLeft]
                minLeft -= 1
            } else if abs(nums[minLeft]) > abs(nums[minRight]) {
                number = nums[minRight]
                minRight += 1
            } else {
                number = nums[minLeft]
                minLeft -= 1
            }
            newArr.append(number * number)
        }
        return newArr
    }
}

let sol = Solution()
print(sol.sortedSquares([-7,-3,2,3,11]))

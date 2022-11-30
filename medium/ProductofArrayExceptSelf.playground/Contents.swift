import UIKit

class Solution1 {
    
    // Very bad in time complexity On^2
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }
        
        var array = [Int]()
        array.reserveCapacity(nums.count)
        for i in 0..<nums.count {
            var product = 1
            for j in 0..<nums.count {
                if j == i { continue }
                product *= nums[j]
            }
            array.append(product)
        }
        return array
    }
}

class Solution {
    
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }
        
        var zeroCount = 0
        
        let multiplicatioinProduct = nums.reduce(0) {
            guard $1 != .zero else {
                zeroCount += 1
                return $0
            }
            guard $0 != .zero else { return $1 }
            return $0 * $1
        }
        if zeroCount > 1 {
            return Array(repeating: 0, count: nums.count)
        } else if zeroCount == 1 {
            return nums.map { $0 == .zero ? multiplicatioinProduct : .zero }
        }
        return nums.map { multiplicatioinProduct / $0 }
    }
}

let sol = Solution()
let nums = [-1,1,0,-3,3]
print(sol.productExceptSelf(nums))

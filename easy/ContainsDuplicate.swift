import Foundation

class Solution {
	func containsDuplicate(_ nums: [Int]) -> Bool {
		// for index in 0..<nums.count {
		// 	var i = index + 1
		// 	while (i < nums.count) {
		// 		if (nums[i] == nums[index]) {
		// 			return (true)
		// 		}
		// 		i += 1
		// 	}
		// }
		// return (false)
		let set = Set<Int>(nums)
		if (set.count == nums.count) {
			return (false)
		} else {
			return (true)
		}
	}
}

let a = Solution()

print(a.containsDuplicate([1, 3, 4]))
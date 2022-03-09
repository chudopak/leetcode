import UIKit

class Solution {
	func search(_ nums: [Int], _ target: Int) -> Int {
		var lo = 0, hi = nums.count - 1
		while (lo < hi) {
			let mid = lo + (hi - lo) / 2
			if (nums[mid] == target) {
				return mid
			}
			if (target < nums[mid]) {
				hi = mid - 1
			} else {
				lo = mid
			}
		}
		return (nums[lo] == target ? lo : -1)
	}
}

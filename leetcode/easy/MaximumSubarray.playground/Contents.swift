import UIKit

func maxSubArray(_ nums: [Int]) -> Int {
	
	var value = 0
	var smax = nums[0]
	for i in nums {
		value += i
		smax = max(smax, value)
		if (value < 0) {
			value = 0
		}
	}

	return (smax)
}

print(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))

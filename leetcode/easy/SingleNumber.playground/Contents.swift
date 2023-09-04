import UIKit

func singleNumber(_ nums: [Int]) -> Int {
	var xor = 0
	for nb in nums {
		xor ^= nb
	}
	return xor
}

singleNumber([4,1,2,1,2])

import UIKit

//my solution
func findDisappearedNumbersMy(_ nums: [Int]) -> [Int] {
	var dic = Set<Int>()
	
	for i in 1...nums.count {
		dic.insert(i)
	}
	
	for i in nums {
		dic.remove(i)
	}
	return(Array<Int>(dic))
}

print(findDisappearedNumbersMy([1, 2]))

import UIKit


//check it tomorow
func maxProfit(_ prices: [Int]) -> Int {
	if (prices.count < 2) {
		return 0
	}
	var smallest = Int.max
	var maxProfit = 0
	var now = 0
	for i in 0..<prices.count {
		if (prices[i] < smallest) {
			smallest = prices[i]
		}
		now = prices[i] - smallest
		if (maxProfit < now) {
			maxProfit = now
		}
	}
	return (maxProfit)
}

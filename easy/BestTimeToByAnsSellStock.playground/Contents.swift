import UIKit

func maxProfit(_ prices: [Int]) -> Int {
	if (prices.count < 2) {
		return 0
	}
	var max = 0
	for i in 0..<prices.count {
		for j in i + 1..<prices.count {
			if (max < prices[j] - prices[i]) {
				max = prices[j] - prices[i]
			}
		}
	}
	return (max)
}

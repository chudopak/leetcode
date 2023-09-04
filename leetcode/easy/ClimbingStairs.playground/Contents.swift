import UIKit

func climbStairs(_ n: Int) -> Int {
	switch n {
	case 1:
		return (1)
	case 2:
		return (2)
	case 3:
		return (3)
	default: break
	}
	
	var one_step = 2
	var two_steps = 1
	var all_waryations = 0
	
	for _ in 2..<n {
		all_waryations = one_step + two_steps
		two_steps = one_step
		one_step = all_waryations
	}
	return (all_waryations)
}

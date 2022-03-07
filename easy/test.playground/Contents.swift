import UIKit

func test(array: [Character]) -> Character {
	var res = [Character: Int]()
	
	for ch in array {
		if res.keys.contains(ch) {
			res[ch]! += 1
		}
		else {
			res[ch] = 0
		}
	}
	
	var letter: Character = "0"
	var count = 0
	
	for (key, value) in res {
		if value > count {
			letter = key
			count = value
		}
	}
	return (letter)
}

print(test(array: ["a", "b", "c", "r", "a", "a", "b", "a"]))

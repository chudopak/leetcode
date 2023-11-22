import UIKit

class Solution {
    
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        let ransomNoteDictionary: [Character: Int] = ransomNote.reduce(into: [:]) { $0[$1, default: 0] += 1 }
        let magazine: [Character: Int] = magazine.reduce(into: [:]) { $0[$1, default: 0] += 1 }
        
        for (key, value) in ransomNoteDictionary {
            guard
                let timesLetterAppearInMagazine = magazine[key],
                timesLetterAppearInMagazine >= value
            else {
                return false
            }
        }
        return true
    }
}

print(Solution().canConstruct("a", "b"))

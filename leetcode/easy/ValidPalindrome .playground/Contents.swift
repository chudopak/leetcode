import UIKit

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var start = s.startIndex
        var end = s.index(before: s.endIndex)
        
        while start < end {
            if !s[start].isAlphanumeric { start = s.index(after: start); continue }
            if !s[end].isAlphanumeric { end = s.index(before: end); continue }
            
            if s[start].lowercased() != s[end].lowercased() {
                return false
            }
            start = s.index(after: start)
            end = s.index(before: end)
        }
        return true
    }
}

extension Character {
    var isAlphanumeric: Bool {
        return isLetter || isNumber
    }
}

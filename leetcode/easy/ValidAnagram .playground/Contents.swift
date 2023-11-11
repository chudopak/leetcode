import UIKit

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var sdic = [Character: Int]()
        s.forEach {
            sdic[$0] = sdic[$0] != nil ? sdic[$0]! + 1 : 1
        }
        for c in t {
            if let letterAppearanceCount = sdic[c],
               letterAppearanceCount > 0 {
                sdic[c]! -= 1
            } else {
                return false
            }
        }
        return sdic.values.reduce(0, +) == 0
    }
}

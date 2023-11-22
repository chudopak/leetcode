import UIKit

class Solution {

    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        var copyImage = image
        guard image[sr][sc] != color else { return image }
        solution(&copyImage, sr, sc, color, image[sr][sc])
        return copyImage
    }

    private func solution(
        _ image: inout [[Int]],
        _ sr: Int,
        _ sc: Int,
        _ color: Int,
        _ startColor: Int
    ) {
        print(sr, sc)
        if sr >= image.count || sr < 0 || sc >= image[sr].count || sc < 0 || image[sr][sc] != startColor { return }
        image[sr][sc] = color

        solution(&image, sr - 1, sc, color, startColor)
        solution(&image, sr, sc - 1, color, startColor)
        solution(&image, sr + 1, sc, color, startColor)
        solution(&image, sr, sc + 1, color, startColor)
    }
}

print(Solution().floodFill(
    [[1,1,1],[1,1,0],[1,0,1]],
    1,
    1,
    2
))

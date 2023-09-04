import UIKit

class Solution {

    private enum State {
        case free
        case used

        mutating func toggle() {
            if self == .free {
                self = .used
            } else {
                self = .free
            }
        }
    }

    private struct Coordinates {
        var x: Int
        var y: Int
    }

    func exist(_ board: [[Character]], _ word: String) -> Bool {
        guard board.count >= 1 && board[0].count >= 1 && !word.isEmpty else { return false }
        guard
            var start = findFirstLetterCoordinates(board, start: Coordinates(x: 0, y: 0), letter: word.first!)
        else {
            return false
        }

        while start.y < board.count {
            if searchWord(board, start: start, word: word) {
                return true
            }
            guard
                let increased = increseStart(board, start: start),
                let newStart = findFirstLetterCoordinates(board, start: increased, letter: word.first!)
            else {
                return false
            }
            start = newStart
        }

        return false
    }

    private func findFirstLetterCoordinates(_ board: [[Character]], start: Coordinates, letter: Character) -> Coordinates? {
        var y = start.y
        while y < board.count {
            var x = start.x
            while x < board[0].count {
                if letter == board[y][x] {
                    return Coordinates(x: x, y: y)
                }
                x += 1
            }
            y += 1
        }
        return nil
    }

    private func increseStart(_ board: [[Character]], start: Coordinates) -> Coordinates? {
        if start.y + 1 >= board.count && start.x + 1 >= board[0].count { return nil }

        if start.x + 1 >= board[0].count {
            return Coordinates(x: 0, y: start.y + 1)
        }
        return Coordinates(x: start.x + 1, y: start.y)
    }

    private func searchWord(_ board: [[Character]], start: Coordinates, word: String) -> Bool {
        // В этом методе нужно возвращаться на координату назад если буква не подходит и только перебрав все варианты возвращаться назад
        var mask = Array(repeating: Array(repeating: State.free, count: board[0].count), count: board.count)
        mask[start.y][start.x].toggle()
        let wordArray = Array(word)
        var currentLetterCoordinate = start
        for i in 1..<wordArray.count {
            if let newCoordinate = getNextCharacter(board, mask: &mask, coordinate: currentLetterCoordinate, letter: wordArray[i]) {
                currentLetterCoordinate = newCoordinate
            } else {
                return false
            }
        }
        return true
    }

    private func getNextCharacter(
        _ board: [[Character]],
        mask: inout [[State]],
        coordinate: Coordinates,
        letter: Character
    ) -> Coordinates? {
        return coordinate
    }
}

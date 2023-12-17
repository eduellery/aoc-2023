import Foundation

final class Day03: Day {
  let lines: [String]
  var characters: [[Character]] = []

  init(input: String) {
    lines = input.lines
    for line in lines {
      var chars: [Character] = []
      for char in line {
        chars.append(char)
      }
      characters.append(chars)
    } 
  }

  func part1() -> Int {
    return solve(input: characters)
  }

  func part2() -> Int {
    return solve(input: characters, checkGears: true)
  }

  func solve(input: [[Character]], checkGears: Bool = false) -> Int {
    var result = 0
    var gears: [GridPoint: [Int]] = [:]
    for x in 0..<input.count {
      var y = 0
      while y < input[0].count {
        if input[x][y].isNumber {
          var number: String = String(input[x][y])
          var lastDigit = y
          while lastDigit < input[x].count - 1 && input[x][lastDigit + 1].isNumber {
            lastDigit += 1
            number.append(input[x][lastDigit])
          }
          if checkGears {
            gears = CheckForAdjacentGearSymbols(
              input: input, row: x, startColumn: y, endColumn: lastDigit, number: Int(number)!,
              gears: gears)
          } else {
            if validateNumber(input: input, row: x, startColumn: y, endColumn: lastDigit) {
              result += Int(number)!
            }
          }
          y = lastDigit + 1
        } else {
          y += 1
        }
      }
    }

    if checkGears {
      for (_, partNumbers) in gears {
        if partNumbers.count == 2 {
          result += partNumbers[0] * partNumbers[1]
        }
      }
    }

    return result
  }

  private func validateNumber(
    input: [[Character]],
    row: Int,
    startColumn: Int,
    endColumn: Int
  ) -> Bool {
    let startX = max(row - 1, 0)
    let endX = min(row + 1, input.count - 1)
    let startY = max(startColumn - 1, 0)
    let endY = min(endColumn + 1, input[row].count - 1)
    for x in startX...endX {
      for y in startY...endY {
        if !input[x][y].isNumber && input[x][y] != "." {
          return true
        }
      }
    }
    return false
  }

  func CheckForAdjacentGearSymbols(
    input: [[Character]],
    row: Int,
    startColumn: Int,
    endColumn: Int,
    number: Int,
    gears: [GridPoint: [Int]]
  ) -> [GridPoint: [Int]] {
    var mutatedGears = gears
    let startX = max(row - 1, 0)
    let endX = min(row + 1, input.count - 1)
    let startY = max(startColumn - 1, 0)
    let endY = min(endColumn + 1, input[row].count - 1)
    for x in startX...endX {
      for y in startY...endY {
        if input[x][y] == "*" {
          let point = GridPoint(x: x, y: y)
          mutatedGears[point] =
            mutatedGears[point] != nil ? mutatedGears[point]! + [number] : [number]
        }
      }
    }
    return mutatedGears
  }
}

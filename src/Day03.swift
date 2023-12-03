import Foundation

func day03part1(input: [[Character]]) -> Int {
  var result = 0
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
        if validateNumber(input: input, row: x, startColumn: y, endColumn: lastDigit) {
          result += Int(number)!
        }
        y = lastDigit + 1
      } else {
        y += 1
      }
    }
  }
  return result
}

private func validateNumber(
  input: [[Character]],
  row: Int, startColumn: Int,
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

import Foundation

let maxCubes: [String: Int] = [
  "red": 12,
  "green": 13,
  "blue": 14,
]

public func day02part1(lines: [String]) -> Int {
  var result = 0
  for index in lines.indices {
    let games = lines[index].components(separatedBy: ";")
    var impossible = false
    for game in games {
      let red = findDigit(in: game, color: "red")
      let green = findDigit(in: game, color: "green")
      let blue = findDigit(in: game, color: "blue")
      if red > maxCubes["red"]! || green > maxCubes["green"]! || blue > maxCubes["blue"]! {
        impossible = true
        break
      }
    }
    if !impossible {
      result += index + 1
    }
  }
  return result
}

func findDigit(in input: String, color: String) -> Int {
    let pattern = "(\\d+)\\s*" + color
    
    let regex = try? NSRegularExpression(pattern: pattern)
    let results = regex?.matches(in: input, range: NSRange(input.startIndex..., in: input))
    
    if let match = results?.first,
       let range = Range(match.range(at: 1), in: input) {
        return Int(input[range]) ?? 0
    }
    
    return 0
}

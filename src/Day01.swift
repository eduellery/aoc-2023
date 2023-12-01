public func part1(lines: [String]) -> Int {
  var result: Int = 0
  for line in lines {
    if let firstChar = line.first(where: { $0.isNumber }), let lastChar = line.last(where: { $0.isNumber }) {
        if let firstNum = Int(String(firstChar)), let lastNum = Int(String(lastChar)) {
            result += firstNum * 10 + lastNum
        }
    }
  }
  return result
}
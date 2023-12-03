let numberMap: [String: Int] = [
  "zero": 0,
  "one": 1,
  "two": 2,
  "three": 3,
  "four": 4,
  "five": 5,
  "six": 6,
  "seven": 7,
  "eight": 8,
  "nine": 9,
]

func day01part1(lines: [String]) -> Int {
  return findCalibration(lines: lines)
}

func day01part2(lines: [String]) -> Int {
  return findCalibration(lines: lines, findString: true)
}

private func findCalibration(lines: [String], findString: Bool = false) -> Int {
  var result = 0

  for line in lines {
    var digits: [Int] = []
    for index in line.indices {
      let char = line[index]
      if char.isNumber {
        digits.append(Int(String(char))!)
      } else if findString {
        let remaining = line[index...]
        if let num = wordToNum(string: String(remaining), dictionary: numberMap) {
          digits.append(num)
        }
      }
    }

    if digits.count == 1 {
      result += digits.first! * 11
    } else if digits.count > 1 {
      result += digits.first! * 10 + digits.last!
    }
  }

  return result
}

private func wordToNum(string: String, dictionary: [String: Int]) -> Int? {
  for (word, num) in dictionary {
    if string.hasPrefix(word) {
      return num
    }
  }
  return nil
}

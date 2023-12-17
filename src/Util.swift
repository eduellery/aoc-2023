import Foundation

struct GridPoint: Hashable {
  var x: Int
  var y: Int
}

func getInput(path: String) -> [String] {
  var input: [String] = []
  do {
    let fileContents = try String(contentsOfFile: path, encoding: .utf8)
    let lines = fileContents.components(separatedBy: .newlines)

    // Iterate over each line and append to the array
    for line in lines {
      input.append(line)
    }
  } catch {
    print("Error reading the file: \(error)")
  }
  return input
}

func getInput(path: String) -> [[Character]] {
  var input: [[Character]] = []
  do {
    let fileContents = try String(contentsOfFile: path, encoding: .utf8)
    let lines = fileContents.components(separatedBy: .newlines)

    // Iterate over each line and append to the array
    for line in lines {
      var chars: [Character] = []
      for char in line {
        chars.append(char)
      }
      input.append(chars)
    }
  } catch {
    print("Error reading the file: \(error)")
  }
  return input
}

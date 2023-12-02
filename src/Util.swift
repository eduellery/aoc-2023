import Foundation

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

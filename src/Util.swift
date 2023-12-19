import Foundation

struct GridPoint: Hashable {
  var x: Int
  var y: Int
}

func getContent(path: String) -> String {
  var content: String = ""
  do {
    content = try String(contentsOfFile: path, encoding: .utf8)
  } catch {
    print("Error reading the file: \(error)")
  }
  return content
}

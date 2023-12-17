import Foundation

@main
struct AdventOfCode {

  static func main() {
    for day in days {
      do {
        let input = "test/" + String("\(day)").lowercased() + ".in"
        let content = try String(contentsOfFile: input, encoding: .utf8)
        day.init(input: content).run()
      } catch {
        print("Error reading the file: \(error)")
      }
    }
  }

  private static let days: [Runnable.Type] = [
    Day01.self, Day02.self, Day03.self,
  ]
}

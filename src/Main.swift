import Foundation

@main
struct AdventOfCode {

  static func main() {
    for day in days {
      day.init(input: day.input).run()
    }
  }

  private static let days: [Runnable.Type] = [
  ]
}

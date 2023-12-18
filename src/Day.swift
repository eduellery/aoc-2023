public protocol Runnable {
  init(input: String)
  func run()
}

public protocol Day: Runnable {
  associatedtype Solution1
  func part1() -> Solution1

  associatedtype Solution2
  func part2() -> Solution2
}

extension Day {
  public static var input: String { "" }
  public var day: String { String("\(Self.self)".suffix(2)) }

  public func run() {
    run(part: 1, part1)
    run(part: 2, part2)
  }

  private func run<T>(part: Int, _ fun: () -> T) {
    let solution = fun()
    print("Solution for Day \(day), Part \(part): \(solution)")
  }
}

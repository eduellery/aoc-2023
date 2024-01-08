import XCTest

@testable import AoC2023

final class Day01Tests: XCTestCase {
  let local = FileManager.default.fileExists(atPath: "resource/day01.in")
  let test1 = Day01(input: getContent(path: "resource/day01part1.test"))
  let test2 = Day01(input: getContent(path: "resource/day01part2.test"))
  lazy var input = local ? Day01(input: getContent(path: "resource/day01.in")) : Day01(input: "")

  func testDay01_part1_test() throws {
    XCTAssertEqual(test1.part1(), 142)
  }

  func testDay01_part1_solution() throws {
    try XCTSkipUnless(local)
    XCTAssertEqual(input.part1(), 55816)
  }

  func testDay01_part2_test() throws {
    XCTAssertEqual(test2.part2(), 281)
  }

  func testDay01_part2_solution() throws {
    try XCTSkipUnless(local)
    XCTAssertEqual(input.part2(), 54980)
  }
}

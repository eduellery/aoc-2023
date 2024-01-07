import XCTest

@testable import AoC2023

final class Day03Tests: XCTestCase {
  let local = FileManager.default.fileExists(atPath: "resource/day03.in")
  let test = Day03(input: getContent(path: "resource/day03.test"))
  let input = Day03(input: getContent(path: "resource/day03.in"))

  func testDay03_part1_test() throws {
    XCTAssertEqual(test.part1(), 4361)
  }

  func testDay03_part1_solution() throws {
    try XCTSkipUnless(local)
    XCTAssertEqual(input.part1(), 546312)
  }

  func testDay03_part2_test() throws {
    XCTAssertEqual(test.part2(), 467835)
  }

  func testDay03_part2_solution() throws {
    try XCTSkipUnless(local)
    XCTAssertEqual(input.part2(), 87_449_461)
  }
}

import XCTest

@testable import AoC2023

final class Day02Tests: XCTestCase {
  let local = FileManager.default.fileExists(atPath: "resource/day02.in")
  let test = Day02(input: getContent(path: "resource/day02.test"))
  let input = Day02(input: getContent(path: "resource/day02.in"))

  func testDay02_part1_test() throws {
    XCTAssertEqual(test.part1(), 8)
  }

  func testDay02_part1_solution() throws {
    try XCTSkipUnless(local)
    XCTAssertEqual(input.part1(), 2528)
  }

  func testDay02_part2_test() throws {
    XCTAssertEqual(test.part2(), 2286)
  }

  func testDay02_part2_solution() throws {
    try XCTSkipUnless(local)
    XCTAssertEqual(input.part2(), 67363)
  }
}

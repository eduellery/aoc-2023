let day01test1 = day01part1(lines: getInput(path: "test/day01part1.test"))
assert(day01test1 == 142)
let day01Part1 = day01part1(lines: getInput(path: "test/day01.in"))
assert(day01Part1 == 55816)
print("Day 01 - part 1: \(day01Part1)")
let day01test2 = day01part2(lines: getInput(path: "test/day01part2.test"))
assert(day01test2 == 281)
let day01Part2 = day01part2(lines: getInput(path: "test/day01.in"))
assert(day01Part2 == 54980)
print("Day 01 - part 2: \(day01Part2)")
let day02test1 = day02part1(lines: getInput(path: "test/day02.test"))
assert(day02test1 == 8)
let day02Part1 = day02part1(lines: getInput(path: "test/day02.in"))
assert(day02Part1 == 2528)
print("Day 02 - part 1: \(day02Part1)")
let day02test2 = day02part2(lines: getInput(path: "test/day02.test"))
assert(day02test2 == 2286)
let day02Part2 = day02part2(lines: getInput(path: "test/day02.in"))
assert(day02Part2 == 67363)
print("Day 02 - part 2: \(day02Part2)")
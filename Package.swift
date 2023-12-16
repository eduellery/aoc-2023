// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "aoc-2023",
    platforms: [ .macOS(.v14) ],
    targets: [
        .executableTarget(name: "aoc-2023", path: "src"),
        .testTarget(name: "aoc-2023-test", dependencies: [ "aoc-2023" ], path: "test")
    ]
)
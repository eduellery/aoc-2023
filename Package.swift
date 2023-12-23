// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AoC2023",
    platforms: [ .macOS(.v14) ],
    targets: [
        .executableTarget(name: "AoC2023", path: "src"),
        .testTarget(name: "AoC2023PackageTests", dependencies: [ "AoC2023" ], path: "test")
    ]
)
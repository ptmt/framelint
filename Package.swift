// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FrameLint",
    products: [
        .executable(name: "FrameLint", targets: ["FrameLintCli"]),
        .library(name: "FrameLintLib", type: .static, targets: ["FrameLint"])
    ],
    dependencies: [
        // .package(url: "https://github.com/apple/swift-tools-support-core.git", from: "0.1.3"),
         .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.6"),
        .package(url: "https://github.com/sunlubo/SwiftFFmpeg.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "FrameLint",
            dependencies: []),
        .target(
            name: "FrameLintCli",
            dependencies: ["FrameLint",
                           "SwiftFFmpeg",
                           .product(name: "ArgumentParser", package: "swift-argument-parser")
                          ]),
        .testTarget(
            name: "FrameLintTests",
            dependencies: ["FrameLint"]),
    ]
)

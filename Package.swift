// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FrameLint",
    products: [
        .executable(name: "FrameLint", targets: ["cli"])
    ],
    dependencies: [
         .package(url: "https://github.com/apple/swift-tools-support-core.git", from: "0.1.3"),
         .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.6")
    ],
    targets: [
        .target(
            name: "libFrameLint",
            dependencies: []),
        .target(
            name: "cli",
            dependencies: ["libFrameLint", .product(name: "ArgumentParser", package: "swift-argument-parser"), .product(name: "SwiftToolsSupport", package: "swift-tools-support-core")]),
        .testTarget(
            name: "FrameLintTests",
            dependencies: ["libFrameLint"]),
    ]
)

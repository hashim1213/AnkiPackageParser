// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "AnkiPackageParser",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "AnkiPackageParser",
            targets: ["AnkiPackageParser"]),
    ],
    dependencies: [
        .package(url: "https://github.com/weichsel/ZIPFoundation.git", from: "0.9.13"),
    ],
    targets: [
        .target(
            name: "AnkiPackageParser",
            dependencies: ["ZIPFoundation"],
            path: "Sources"),
        .testTarget(
            name: "AnkiPackageParserTests",
            dependencies: ["AnkiPackageParser"],
            path: "Tests"),
    ]
)


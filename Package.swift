// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PingPackage",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0"),
        .package(url: "https://github.com/Foriger/RadoSmallServer", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "PingPackage",
            dependencies: [
                .product(name: "RadoSmallServer", package: "RadoSmallServer"),
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        
    ]
)

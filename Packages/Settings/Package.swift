// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Settings",
    
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Settings",
            targets: ["Settings"])
    ], 
    dependencies: [
//        .package(url: "FoundationExtensions", branch: "main"),
        .package(path: "./FoundationExtensions")
    ],
    
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Settings", dependencies: ["FoundationExtensions"]),
        .testTarget(
            name: "SettingsTests",
            dependencies: ["Settings"])
    ]
)

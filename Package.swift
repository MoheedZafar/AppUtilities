// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppUtilities",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "AppUtilities",
            targets: ["AppUtilities"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.0"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "7.11.0")
    ],
    targets: [
        .target(
            name: "AppUtilities",
            dependencies: ["Alamofire", "Kingfisher"]
        ),
        .testTarget(
            name: "AppUtilitiesTests",
            dependencies: ["AppUtilities"]
        ),
    ]
)

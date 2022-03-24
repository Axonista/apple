// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RemocoSDK",
    products: [
        .library(
            name: "RemocoSDK",
            targets: [
                "RemocoSDKBinary"
            ]
        )
    ],
    targets: [
        .target(
            name: "RemocoSDK",
            dependencies: []),
        .binaryTarget(
            name: "RemocoSDKBinary",
            url: "https://github.com/Axonista/apple-sdk/releases/download/refs%2Fheads%2Ffeature%2Faction/apple-sdk.xcframework.zip",
            checksum: "9ddec41f98fb31637d2a651e77991025158efeb9d6be2c074fd7200b80f7910f"
        ),
        .testTarget(
            name: "RemocoSDKTests",
            dependencies: ["RemocoSDK"]),
    ]
)

// swift-tools-version:5.7.0
import PackageDescription

let package = Package(
    name: "RemocoKit",
    platforms: [
        .iOS(.v12), .tvOS(.v12), .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "RemocoKit",
            targets: ["RemocoKit"])
    ],
    targets: [
        .binaryTarget(
            name: "RemocoKit",
            url: "https://github.com/Axonista/apple/releases/download/1.44.0/RemocoKit.xcframework.zip",
            checksum: "8a57c89314ea6f4f018378b2a4ea3f535b729a34a9cec7cb59a12cfc80fc16de"
        )
    ]
)

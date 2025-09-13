// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "CCXT",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "CCXT",
            type: .static,
            targets: ["CCXT"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CCXTCore",
            // path: "Sources/CCXTCore/CCXTCore.xcframework",  // for local development
            url: "https://github.com/ccxt-native/ccxt-pro-swift/releases/download/v0.0.8/CCXTCore.xcframework.zip",
            checksum: "90a88333487b9496aaf167df87f47455cddef53babc333665c1b09e4851f8b03"
        ),
        .target(
            name: "CCXT",
            dependencies: ["CCXTCore"],
            path: "Sources/CCXT"
        )
    ]
)

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
            url: "https://github.com/ccxt-native/swift-pro/releases/download/release/CCXTCore.xcframework.zip",
            checksum: "f0776cdcfb1ec8d7d22fe1872d9c31c552efbf12d682a753e08dabcce485343b"
        ),
        .target(
            name: "CCXT",
            dependencies: ["CCXTCore"],
            path: "Sources/CCXT"
        )
    ]
)

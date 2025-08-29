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
            url: "https://github.com/ccxt-native/swift-pro/releases/download/v0.0.5/CCXTCore.xcframework.zip",
            checksum: "0eba70b8740bf1ae6e559046d58eeedeb6ce887ef7a489dfbaa3db23dca7dae5"
        ),
        .target(
            name: "CCXT",
            dependencies: ["CCXTCore"],
            path: "Sources/CCXT"
        )
    ]
)

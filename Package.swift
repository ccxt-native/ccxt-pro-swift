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
            url: "https://github.com/ccxt-native/swift-pro/releases/download/v0.0.3/CCXTCore.xcframework.zip",
            checksum: "49288c946979b1afb8f1d5b889b90f0c7c3de87edc689453cf0e730d3e2d4cc4"
        ),
        .target(
            name: "CCXT",
            dependencies: ["CCXTCore"],
            path: "Sources/CCXT"
        )
    ]
)

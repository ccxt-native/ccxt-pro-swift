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
            url: "https://github.com/ccxt-native/ccxt-pro-swift/releases/download/v0.0.7/CCXTCore.xcframework.zip",
            checksum: "4a201f51decd5e385e853c1837be006bb4580118067b6f0d18e13321ec9809b3"
        ),
        .target(
            name: "CCXT",
            dependencies: ["CCXTCore"],
            path: "Sources/CCXT"
        )
    ]
)

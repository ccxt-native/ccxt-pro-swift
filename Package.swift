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
            url: "https://github.com/ccxt-native/swift-pro/releases/download/vNaN.undefined.NaN/CCXTCore.xcframework.zip",
            checksum: "3a1fa9dac34abc23e2911b4f65234b684282c766b5fa656da145c2d71d232ac9"
        ),
        .target(
            name: "CCXT",
            dependencies: ["CCXTCore"],
            path: "Sources/CCXT"
        )
    ]
)

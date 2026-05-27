// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HyperSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "HyperSDK",
            targets: ["HyperSDK", "AirborneSDK", "HyperSDKDependencies"]
        )
    ],
    dependencies: [
        .package(name: "JuspaySafeBrowser", url: "https://github.com/juspay/juspaysafebrowser-ios.git", .exact("0.1.94")),
        .package(name: "HyperCore", url: "https://github.com/juspay/hypercore-ios.git", .exact("1.0.1"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperSDK",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.7.7/HyperSDK.zip",
            checksum: "74eae8314c94e3ffbcea645cade4297a3b7a0bc1f62e4fd8496cd3752c91ddb7"
        ),
        .binaryTarget(
            name: "AirborneSDK",
            url: "https://public.releases.juspay.in/release/ios/airborne/0.34.0/Airborne.zip",
            checksum: "16e36306d9b7fcdff667cf245ab6586b97b5d4666bc28782a2a4710e4f07b97d"
        ),
        .target(
            name: "HyperSDKDependencies",
            dependencies: [
                .product(name: "JuspaySafeBrowser", package: "JuspaySafeBrowser"),
                .product(name: "HyperCore", package: "HyperCore")
            ]
        )
    ]
)
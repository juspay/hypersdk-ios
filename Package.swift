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
            targets: ["HyperSDK", "Airborne", "HyperSDKDependencies"]
        )
    ],
    dependencies: [
        .package(name: "JuspaySafeBrowser", url: "https://github.com/juspay/juspaysafebrowser-ios.git", .exact("0.1.94")),
        .package(name: "HyperCore", url: "https://github.com/juspay/hypercore-ios.git", .exact("1.0.1"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperSDK",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.7.3/HyperSDK.zip",
            checksum: "0fd69bcce3c3dbd5ebd64ac8c45c6542b17f516259370c3f68ff877748807cb7"
        ),
        .binaryTarget(
            name: "Airborne",
            url: "https://public.releases.juspay.in/release/ios/airborne/0.33.0/Airborne.zip",
            checksum: "f1b60ec73dc66a33dde6b786bfe967e7a240aa42ce6f3c1fadae30a0d5056d45"
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
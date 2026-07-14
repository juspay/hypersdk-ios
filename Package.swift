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
        ),
        .library(
            name: "HyperUPI",
            targets: ["HyperUPI"]
        ),
        .library(
            name: "HyperQR",
            targets: ["HyperQR"]
        ),
        .library(
            name: "HyperQR",
            targets: ["HyperQR"]
        )
    ],
    dependencies: [
        .package(name: "JuspaySafeBrowser", url: "https://github.com/juspay/juspaysafebrowser-ios.git", .exact("0.1.94")),
        .package(name: "HyperCore", url: "https://github.com/juspay/hypercore-ios.git", .exact("1.0.6"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperSDK",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.8.2/HyperSDK.zip",
            checksum: "e43e3da2eed18cedfb2d658c212fe6ef0aa8b0067ad18e3e5f5cf34d699a6495"
        ),
        .binaryTarget(
            name: "AirborneSDK",
            url: "https://public.releases.juspay.in/release/ios/airborne/0.37.0/Airborne.zip",
            checksum: "c46f082129688da7a1b8a37a5867b29f6b2e1104ab210d1f1904a94e9794b97a"
        ),
        .target(
            name: "HyperSDKDependencies",
            dependencies: [
                .product(name: "JuspaySafeBrowser", package: "JuspaySafeBrowser"),
                .product(name: "HyperCore", package: "HyperCore")
            ]
        ),
        .binaryTarget(
            name: "HyperUPI",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.8.2/HyperUPI.zip",
            checksum: "9c31d8ecd111fe64d143464e31b8ed171db730ca02d09991690bf3f87cb88d6c"
        ),
        .binaryTarget(
            name: "HyperQR",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.8.2/HyperQR.zip",
            checksum: "1d8ee6d99c9ddbed70de8a27925733a42f7431a3e6ff624552f318efaf41411b"
        ),
        .binaryTarget(
            name: "HyperCardScan",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.8.2/HyperCardScan.zip",
            checksum: "6f77c436715a03a6e4d0405cb547e53ea67355915d194e825dbc9e113f74de94"
        )
    ]
)
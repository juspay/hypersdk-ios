// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HyperSDK",
    platforms: [
        .iOS(.v12)
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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.7.1/HyperSDK.zip",
            checksum: "0d4ee4ec986c8c73c1bb5c8de03372410bd807c4e1c5f4442b783de63ea135df"
        ),
        .binaryTarget(
            name: "Airborne",
            url: "https://public.releases.juspay.in/release/ios/airborne/0.30.1/Airborne.zip",
            checksum: "106c7d8780c0846b13c03ad412f09c0b9ed6bc0c90eec69a5467e0f447379b0b"
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
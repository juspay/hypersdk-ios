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
            targets: ["HyperSDK", "HyperSDKDependencies"]
        )
    ],
    dependencies: [
        .package(name: "JuspaySafeBrowser", url: "https://github.com/juspay/juspaysafebrowser-ios.git", .exact("0.1.84")),
        .package(name: "Salvator", url: "https://github.com/juspay/salvator-ios.git", .exact("1.0.6")),
    ],
    targets: [
        .binaryTarget(
            name: "HyperSDK",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.1.14/HyperSDK.zip",
            checksum: "ed8ec28e08684e9b49c1e17bf15436495284a48c6279ef987ee8485aeab8d5e8"
        ),
        .target(
            name: "HyperSDKDependencies",
            dependencies: [
                .product(name: "JuspaySafeBrowser", package: "JuspaySafeBrowser"),
                .product(name: "Salvator", package: "Salvator")
            ]
        )
    ]
)
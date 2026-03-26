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
        .package(name: "HyperCore", url: "https://github.com/juspay/hypercore-ios.git", .exact("1.0.0"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperSDK",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.6.4/HyperSDK.zip",
            checksum: "8933f98b981b458da9087a782b2a942408cd74f977a6f7ae9477c56ae3b75b48"
        ),
        .binaryTarget(
            name: "Airborne",
            url: "https://public.releases.juspay.in/release/ios/airborne/0.26.1/Airborne.zip",
            checksum: "07103b77a0672b9b71b3680ba2ccd8b2e24e831424ee03b909f090281e3febf4"
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
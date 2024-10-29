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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.1.12/HyperSDK.zip",
            checksum: "5319664c13717b7da556d5a55b8ffdf55de166d935c249f568878bde9b6400e1"
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
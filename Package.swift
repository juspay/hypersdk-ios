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
            targets: ["HyperSDK", "AirborneSDK", "JuspaySafeBrowser", "HyperSDKDependencies"]
        ),
        .library(
            name: "HyperSDKCore",
            targets: ["HyperSDK", "AirborneSDK", "HyperSDKDependencies"]
        )
    ],
    dependencies: [
        .package(name: "HyperCore", url: "https://github.com/juspay/hypercore-ios.git", .exact("1.0.7"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperSDK",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.9.7/HyperSDK.zip",
            checksum: "af317d27d7e30edcf4bce9a5e6fe88dbb3df861f403b1da23bfbd63a7d194809"
        ),
        .binaryTarget(
            name: "AirborneSDK",
            url: "https://public.releases.juspay.in/release/ios/airborne/0.43.4/Airborne.zip",
            checksum: "5c2ee1639fdf508baeeaa8ba1047f51f75e79dc498b31fb43035400751ad8c88"
        ),
        .binaryTarget(
            name: "JuspaySafeBrowser",
            url: "https://public.releases.juspay.in/release/ios/juspay-safe-browser/0.1.94/JuspaySafeBrowser.zip",
            checksum: "8c11bb36469574e622e1541561da999dec38d462b3bd5d377287ba29ba0f1159"
        ),
        .target(
            name: "HyperSDKDependencies",
            dependencies: [
                .product(name: "HyperCore", package: "HyperCore")
            ]
        )
    ]
)

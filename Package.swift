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
        .package(name: "HyperCore", url: "https://github.com/juspay/hypercore-ios.git", .exact("1.0.6"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperSDK",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.9/HyperSDK.zip",
            checksum: "e257c5bedd90a5268c3af3f347e0589ebcfaedca93e9c294e5355141b9e95bad"
        ),
        .binaryTarget(
            name: "AirborneSDK",
            url: "https://public.releases.juspay.in/release/ios/airborne/0.42.1/Airborne.zip",
            checksum: "71931bc217857c2c104a4e39befea8754e6be9dfb76ef0aa1a2d5e8ce4cafbd0"
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

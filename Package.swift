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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.9.9/HyperSDK.zip",
            checksum: "2f8e095cec67c668a73402f26fff0f3de42f7c37c5185b7ced8fe65966ce0303"
        ),
        .binaryTarget(
            name: "AirborneSDK",
            url: "https://public.releases.juspay.in/release/ios/airborne/0.45.0/Airborne.zip",
            checksum: "88b5b587df39c41addb942be019cce65e98e0ac90357a2104559056fb6186109"
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

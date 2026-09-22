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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.9.4/HyperSDK.zip",
            checksum: "13dc8b14f11f26189cea0271f2937ed4c3d2a13d1edb7700ec588d1383969ac1"
        ),
        .binaryTarget(
            name: "AirborneSDK",
            url: "https://public.releases.juspay.in/release/ios/airborne/0.37.0/Airborne.zip",
            checksum: "c46f082129688da7a1b8a37a5867b29f6b2e1104ab210d1f1904a94e9794b97a"
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
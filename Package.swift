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
        .package(name: "JuspaySafeBrowser", url: "https://github.com/juspay/juspaysafebrowser-ios.git", .exact("0.1.93")),
        .package(name: "HyperCore", url: "https://github.com/juspay/hypercore-ios.git", .exact("0.1.8"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperSDK",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.5/HyperSDK.zip",
            checksum: "676fa6dad86c45b0e6649f930040640e191eaf307a5b60b5ebe7c9c1957782ff"
        ),
        .binaryTarget(
            name: "Airborne",
            url: "https://public.releases.juspay.in/release/ios/airborne/0.14.0/Airborne.zip",
            checksum: "aa47644e07b783ba57e00e331020b1894f666ea0180f1aeade9cef458fc3c4fb"
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
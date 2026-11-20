// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationApplovinAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationApplovinAdapter",
            targets: ["TPNMediationApplovinAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.7.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkApplovinAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkApplovinAdapter/130700.2.10/AnyThinkApplovinAdapter-130700.2.10.zip",
            checksum: "b6eac5fff36b58687548b493d97bf8955488b5dc920fac2e401db7885901341b"
        ),
        .target(
            name: "TPNMediationApplovinAdapterTarget",
            dependencies: [
                "AnyThinkApplovinAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources/TPNMediationApplovinAdapterTarget"
        )
    ]
)
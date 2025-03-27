// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CloudXiOSDemoAdapter", 
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CloudXiOSDemoAdapter",
            targets: ["CloudXiOSDemoAdapter"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/cloudx-xenoss/CloudXCoreiOS.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "CloudXiOSDemoAdapter",
            url: "https://github.com/cloudx-xenoss/CloudXiOSDemoAdapter/releases/latest/download/CloudXiOSDemoAdapter.xcframework.zip",
            checksum: "<INSERT_CHECKSUM_HERE>"
        ),
        .target(
            name: "CloudXiOSDemoAdapterWrapper",
            dependencies: ["CloudXCore", "CloudXiOSDemoAdapter"]
        )
    ]
)

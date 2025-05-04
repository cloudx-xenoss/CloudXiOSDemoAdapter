// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CloudXDemoAdapter",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CloudXDemoAdapter",
            targets: ["CloudXDemoAdapter"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/cloudx-xenoss/CloudXCoreiOS.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "CloudXDemoAdapter",
            url: "https://github.com/cloudx-xenoss/CloudXiOSDemoAdapter/releases/download/1.0.5/CloudXDemoAdapter.xcframework.zip",
            checksum: "fee7125f27d3b647187aa2295617896493e62cc076ae06f93a830b20c2d7400e"
        )
    ]
)




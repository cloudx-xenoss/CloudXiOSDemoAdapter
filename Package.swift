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
            url: "https://github.com/cloudx-xenoss/CloudXiOSDemoAdapter/releases/download/1.0.6/CloudXDemoAdapter.xcframework.zip",
            checksum: "4507bfa8bc81b1a739c2e4eec9d8b9165ae7190827569112f72048f9f992cbd0"
        )
    ]
)




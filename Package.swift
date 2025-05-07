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
            url: "https://github.com/cloudx-xenoss/CloudXiOSDemoAdapter/releases/download/1.0.7/CloudXDemoAdapter.xcframework.zip",
            checksum: "a47ac4e2fc0252f48b30a5e11b780d8d6d268e32c640b26945e5c7696ed05480"
        )
    ]
)




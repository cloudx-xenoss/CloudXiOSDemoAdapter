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
            url: "https://github.com/cloudx-xenoss/CloudXiOSDemoAdapter/releases/download/1.0.3/CloudXDemoAdapter.xcframework.zip",
            checksum: "226a782f3e17808ff1598b28d346e3a28f44ecb0738daf8f5dbe1fa069f08b0c"
        )
    ]
)




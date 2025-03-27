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
            checksum: "226a782f3e17808ff1598b28d346e3a28f44ecb0738daf8f5dbe1fa069f08b0c"
        ),
        .target(
            name: "CloudXiOSDemoAdapterWrapper",
            dependencies: ["CloudXCore", "CloudXiOSDemoAdapter"]
        )
    ]
)

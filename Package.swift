// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXDigitalTurbineAdapter",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "CloudXDigitalTurbineAdapter",
            targets: ["CloudXDigitalTurbineAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM.git",
            exact: "8.5.1"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXDigitalTurbineAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-digitalturbine/releases/download/binary/8050100.0.0/CloudXDigitalTurbineAdapter.xcframework.zip",
            checksum: "88c63f5a64823fd1735c3166a857a98ac98b0edc6ed632b4ba59f23938c8040a"
        ),
        .target(
            name: "CloudXDigitalTurbineAdapterPackage",
            dependencies: [
                "CloudXDigitalTurbineAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "DTExchangeSDK", package: "dtexchangesdk-ios-spm"),
            ]
        ),
        .testTarget(
            name: "CloudXDigitalTurbineAdapterSwiftTests",
            dependencies: ["CloudXDigitalTurbineAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXDigitalTurbineAdapterObjCTests",
            dependencies: ["CloudXDigitalTurbineAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)

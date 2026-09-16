// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXDigitalTurbineAdapter",
    platforms: [
        .iOS(.v13),
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
            exact: "8.4.8"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXDigitalTurbineAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios/releases/download/adapter-digitalturbine/8.4.8.0/CloudXDigitalTurbineAdapter.xcframework.zip",
            checksum: "b0e61fe37e245923c3544e2db26f252bc6643952895d8cd999db7be9c2688e5b"
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

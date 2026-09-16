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
            exact: "8.4.10"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXDigitalTurbineAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios/releases/download/adapter-digitalturbine/8.4.10.0/CloudXDigitalTurbineAdapter.xcframework.zip",
            checksum: "49a68c87e262b7ac64ea03b77200cefaac8314a5b141ffad9bfea6eaaafdd0b9"
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

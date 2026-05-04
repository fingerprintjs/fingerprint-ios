// swift-tools-version: 5.9

import PackageDescription

let checksum = "30a1befa27fa666c9787cadf49819a78293347e517fed9a3c2c3631a160069d8"
let version = "2.15.0"

let package = Package(
    name: "FingerprintPro",
    platforms: [
        .iOS(.v13),
        .tvOS(.v15),
    ],
    products: [
        .library(
            name: "FingerprintPro",
            targets: ["FingerprintPro"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "FingerprintPro",
            url: "https://fpjs-public.s3.amazonaws.com/ios/\(version)/FingerprintPro-\(version)-\(checksum).xcframework.zip",
            checksum: checksum
        )
    ]
)

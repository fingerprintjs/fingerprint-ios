// swift-tools-version: 6.0

import PackageDescription

let checksum = "2b87281840c044e86b8949f27c2d719a84ca595ff5abb868e891e5faba75fa05"
let version = "4.3.0"

let package = Package(
    name: "Fingerprint",
    platforms: [
        .iOS(.v14),
        .tvOS(.v15),
    ],
    products: [
        .library(
            name: "Fingerprint",
            targets: ["Fingerprint"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Fingerprint",
            url: "https://fpjs-public.s3.amazonaws.com/ios/\(version)/Fingerprint-\(version)-\(checksum).xcframework.zip",
            checksum: checksum
        )
    ]
)

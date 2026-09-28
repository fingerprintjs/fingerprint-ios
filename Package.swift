// swift-tools-version: 6.0

import PackageDescription

let checksum = "c78d0de3d8a234c1b16a1ce0e1caa2c54cc297ddf12be8fb7eb1f54fee01fbe5"
let version = "4.1.0"

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

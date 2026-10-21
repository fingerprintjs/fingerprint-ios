// swift-tools-version: 6.0

import PackageDescription

let checksum = "7248922ee87ed98df9c5ba6b1bf092d5c1d7ec9c84ee702d5981dfc4e1c4a8e3"
let version = "4.2.0"

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

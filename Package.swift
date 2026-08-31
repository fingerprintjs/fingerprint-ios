// swift-tools-version: 6.0

import PackageDescription

let checksum = "3092cadecd3252da4ded3cefe4eefdd7644a32c10aee4170ad4ea5e7e88d59d3"
let version = "4.0.0"

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

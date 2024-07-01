// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TSSLPinningPublic",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TCSSSLPinningPublic",
            targets: ["sslpinning"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/datatheorem/TrustKit",
            exact: "3.0.2"
        )
    ],
    targets: [
        .binaryTarget(
            name: "TCSSSLPinningBinary",
            path: "./TCSSSLPinningPublic.xcframework"
        ),
        .target(
            name: "sslpinning",
            dependencies: [
                .target(name: "TCSSSLPinningBinary"),
                .product(name: "TrustKit", package: "TrustKit")
            ]
        )
    ]
)


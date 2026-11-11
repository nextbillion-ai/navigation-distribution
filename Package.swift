// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Nextbillion Navigation",
    products: [
        .library(
            name: "NbmapNavigation",
            targets: ["NbmapNavigation","NbmapCoreNavigation","Nbmap","Turf"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "NbmapNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.1.6/NbmapNavigation.xcframework.zip",
            checksum: "29c0e1efdc69e5ffc7926d02a958aa1ea0de6eb64f39572f878136afa8fdc147"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.1.6/NbmapCoreNavigation.xcframework.zip",
            checksum: "893694d0f297c3071a36a090a40ea225e922d414433e1f47b8bbd13b0dc3e54a"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.3.2/Nbmap.xcframework.zip",
            checksum: "6cc1bad73ae38be21a1050a8eb22c11cc23ac2e3f9a0ab91ed740498beac9919"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/nextbillion-ai/nextbillion-turf-ios/releases/download/3.0.1/Turf.xcframework.zip",
            checksum: "8f0108b812a17892bd650cf58e5fb1e842e2678f94e8f080e65ec5c9659a8b64"
        )
    ]
)


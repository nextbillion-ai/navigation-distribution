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
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.1.5/NbmapNavigation.xcframework.zip",
            checksum: "2426b9969a960e2ed068b0477d18aa3d97f26bb991a7c0e5b3904fbced1b2a7b"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.1.5/NbmapCoreNavigation.xcframework.zip",
            checksum: "7559ff259b493867bf979824d4d4f0a20e153c21dacff5d34f585dc777defe7d"
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


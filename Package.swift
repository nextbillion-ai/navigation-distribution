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
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.1.4/NbmapNavigation.xcframework.zip",
            checksum: "32745d9047ad4e36ad96f4c5abeb7055cff6e747f7efc3ab227b049d1c927cfe"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.1.4/NbmapCoreNavigation.xcframework.zip",
            checksum: "87aafa6efd446b15dccc56214125a1e626a55465e2e3f865ea3e5839c48327a9"
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


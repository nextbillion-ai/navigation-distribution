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
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.0.2/NbmapNavigation.xcframework.zip",
            checksum: "6fe8c639a3f66ee07685117dffa6b40980beb742cc0fb03d4b480ef3a972d301"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.0.2/NbmapCoreNavigation.xcframework.zip",
            checksum: "86187b790b169d076b7c9cada2d7ceb51484f61646bb1b3c6882596e82f5288c"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.2.0/Nbmap.xcframework.zip",
            checksum: "a4b27996e3bb686a1b35324b5c2f9d50e319735e22d0ceebbbbba0cf56a2da87"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/nextbillion-ai/nextbillion-turf-ios/releases/download/3.0.1/Turf.xcframework.zip",
            checksum: "8f0108b812a17892bd650cf58e5fb1e842e2678f94e8f080e65ec5c9659a8b64"
        )
    ]
)


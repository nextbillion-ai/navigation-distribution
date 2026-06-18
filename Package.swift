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
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/3.4.0/NbmapNavigation.xcframework.zip",
            checksum: "711b9ad67621c7ca2eda5e655bf0922b73baab6a2193cfb95b2d96792929be0e"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/3.4.0/NbmapCoreNavigation.xcframework.zip",
            checksum: "79e267ee5f75781b2e5a3738c98d1ec25583cba590323b80643e340213746039"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.1.6/Nbmap.xcframework.zip",
            checksum: "fd487d81e8f7790ea1c9cd5c69920c14ad3cb41ef4a2fa060872f75c5bc99a25"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/nextbillion-ai/nextbillion-turf-ios/releases/download/3.0.1/Turf.xcframework.zip",
            checksum: "8f0108b812a17892bd650cf58e5fb1e842e2678f94e8f080e65ec5c9659a8b64"
        )
    ]
)


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
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.0.1/NbmapNavigation.xcframework.zip",
            checksum: "3b8d3a441feccbb1494b85e9e7ea2b8ccd56e6f16aebeede4f34a0cdb21bb78f"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.0.1/NbmapCoreNavigation.xcframework.zip",
            checksum: "6473c5607a91dc3c7b317a7fea6a89d6dc36ab0a23497eff5ca4773350a2f036"
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


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
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.1.1/NbmapNavigation.xcframework.zip",
            checksum: "e492e42985f89087fdfb31e109fa096224fcf70cc4998a07b9b2adcf0b6bf109"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.1.1/NbmapCoreNavigation.xcframework.zip",
            checksum: "631ee26a3783b4e3305fb627986d26146c1fa29f6cae2639ee28edad9a36ea2b"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.3.0/Nbmap.xcframework.zip",
            checksum: "7825293f4d76d5d9a79cbc921a7186bff913c64e3bbd08d1fff5a18342559c0b"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/nextbillion-ai/nextbillion-turf-ios/releases/download/3.0.1/Turf.xcframework.zip",
            checksum: "8f0108b812a17892bd650cf58e5fb1e842e2678f94e8f080e65ec5c9659a8b64"
        )
    ]
)

